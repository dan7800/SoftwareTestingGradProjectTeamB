package com.android.emailcommon.b;

import android.net.*;
import android.text.*;
import android.database.*;
import com.android.emailcommon.*;
import com.android.mail.utils.*;
import org.apache.a.a.*;
import android.content.*;
import android.os.*;
import java.io.*;
import android.media.*;
import android.app.*;
import com.android.emailcommon.provider.*;
import android.webkit.*;

public final class a
{
    private static final String[] aaU;
    public static final String[] aaV;
    public static final String[] aaW;
    public static final String[] aaX;
    public static final String[] aaY;
    public static final String[] aaZ;
    public static final String[] aba;
    public static final String[] abb;
    public static final String[] abc;
    private static Uri abd;
    
    static {
        aaU = new String[] { "cachedFile" };
        aaV = new String[] { "*/*" };
        aaW = new String[] { "image/*", "video/*" };
        aaX = new String[] { "*/*" };
        aaY = new String[0];
        aaZ = new String[] { "*/*" };
        aba = new String[0];
        abb = new String[] { "ade", "adp", "bat", "chm", "cmd", "com", "cpl", "dll", "exe", "hta", "ins", "isp", "jse", "lib", "mde", "msc", "msp", "mst", "pif", "scr", "sct", "shb", "sys", "vb", "vbe", "vbs", "vxd", "wsc", "wsf", "wsh", "zip", "gz", "z", "tar", "tgz", "bz2" };
        abc = new String[] { "apk" };
    }
    
    public static File A(final Context context, final long n) {
        return context.getDatabasePath(n + ".db_att");
    }
    
    public static void B(final Context context, final long n) {
        final Cursor query = context.getContentResolver().query(ContentUris.withAppendedId(EmailContent$Attachment.Yh, n), a.aaU, (String)null, (String[])null, (String)null);
        try {
            while (query.moveToNext()) {
                final String string = query.getString(0);
                if (!TextUtils.isEmpty((CharSequence)string)) {
                    new File(string).delete();
                }
            }
        }
        finally {
            query.close();
        }
        query.close();
    }
    
    public static void C(final Context context, final long n) {
        final File[] listFiles = A(context, n).listFiles();
        if (listFiles != null) {
            for (final File file : listFiles) {
                if (!file.delete()) {
                    E.f(b.mW, "Failed to delete attachment file " + file.getName(), new Object[0]);
                }
            }
        }
    }
    
    private static long a(final InputStream inputStream, final OutputStream outputStream) {
        final long n = org.apache.a.a.a.b(inputStream, outputStream);
        inputStream.close();
        outputStream.flush();
        outputStream.close();
        return n;
    }
    
    public static Uri a(final ContentResolver contentResolver, Uri parse) {
        final Cursor query = contentResolver.query(parse, new String[] { "_data" }, (String)null, (String[])null, (String)null);
        if (query == null) {
            return parse;
        }
        try {
            if (query.moveToFirst()) {
                final String string = query.getString(0);
                if (string != null) {
                    parse = Uri.parse(string);
                    return parse;
                }
            }
            return parse;
        }
        finally {
            query.close();
        }
    }
    
    public static void a(final Context context, final InputStream inputStream, final EmailContent$Attachment emailContent$Attachment) {
        while (true) {
            final Uri withAppendedId = ContentUris.withAppendedId(EmailContent$Attachment.CONTENT_URI, emailContent$Attachment.Ln);
            final ContentValues contentValues = new ContentValues();
            final long ln = emailContent$Attachment.Ln;
            final long lq = emailContent$Attachment.Lq;
        Label_0275_Outer:
            while (true) {
                while (true) {
                    try {
                        final ContentResolver contentResolver = context.getContentResolver();
                        if (emailContent$Attachment.Yw == 0) {
                            final Uri c = c(lq, ln);
                            final long n = a(inputStream, contentResolver.openOutputStream(c));
                            final String s = c.toString();
                            contentValues.put("size", n);
                            contentValues.put("contentUri", s);
                            contentValues.put("uiState", 3);
                            context.getContentResolver().update(withAppendedId, contentValues, (String)null, (String[])null);
                            return;
                        }
                        if (!s.mk()) {
                            break;
                        }
                        if (TextUtils.isEmpty((CharSequence)emailContent$Attachment.Yl)) {
                            E.e(b.mW, "Trying to save an attachment with no name: %d", ln);
                            throw new IOException("Can't save an attachment with no name");
                        }
                    }
                    catch (IOException ex2) {
                        contentValues.put("uiState", 1);
                        continue;
                    }
                    break;
                }
                final File externalStoragePublicDirectory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS);
                externalStoragePublicDirectory.mkdirs();
                final File a = s.a(externalStoragePublicDirectory, emailContent$Attachment.Yl);
                final long n = a(inputStream, new FileOutputStream(a));
                final String absolutePath = a.getAbsolutePath();
                MediaScannerConnection.scanFile(context, new String[] { absolutePath }, (String[])null, (MediaScannerConnection$OnScanCompletedListener)null);
                Label_0325: {
                    if (!TextUtils.isEmpty((CharSequence)emailContent$Attachment.Ym)) {
                        break Label_0325;
                    }
                    String ym = "application/octet-stream";
                    try {
                        while (true) {
                            final DownloadManager downloadManager = (DownloadManager)context.getSystemService("download");
                            final String s = downloadManager.getUriForDownloadedFile(downloadManager.addCompletedDownload(emailContent$Attachment.Yl, emailContent$Attachment.Yl, false, ym, absolutePath, n, true)).toString();
                            continue Label_0275_Outer;
                            ym = emailContent$Attachment.Ym;
                            continue;
                        }
                    }
                    catch (IllegalArgumentException ex) {
                        E.b(E.TAG, ex, "IAE from DownloadManager while saving attachment", new Object[0]);
                        throw new IOException(ex);
                    }
                }
                break;
            }
            break;
        }
        E.e(b.mW, "Trying to save an attachment without external storage?", new Object[0]);
        throw new IOException();
    }
    
    public static String aB(final String s) {
        final boolean empty = TextUtils.isEmpty((CharSequence)s);
        String lowerCase = null;
        if (!empty) {
            final int lastIndex = s.lastIndexOf(46);
            lowerCase = null;
            if (lastIndex > 0) {
                final int n = -1 + s.length();
                lowerCase = null;
                if (lastIndex < n) {
                    lowerCase = s.substring(lastIndex + 1).toLowerCase();
                }
            }
        }
        return lowerCase;
    }
    
    public static File b(final Context context, final long n, final long n2) {
        return new File(A(context, n), Long.toString(n2));
    }
    
    public static Uri c(final long n, final long n2) {
        if (a.abd == null) {
            a.abd = Uri.parse(EmailContent$Attachment.Yi);
        }
        return a.abd.buildUpon().appendPath(Long.toString(n)).appendPath(Long.toString(n2)).appendPath("RAW").build();
    }
    
    public static void c(final Context context, final long n, final long n2) {
        final Cursor query = context.getContentResolver().query(ContentUris.withAppendedId(EmailContent$Attachment.Yh, n2), EmailContent$Attachment.XT, (String)null, (String[])null, (String)null);
        try {
            while (query.moveToNext()) {
                b(context, n, query.getLong(0)).delete();
            }
        }
        finally {
            query.close();
        }
        query.close();
    }
    
    public static void d(final Context context, final long n, final long n2) {
        final Cursor query = context.getContentResolver().query(g.CONTENT_URI, g.YI, "mailboxKey=?", new String[] { Long.toString(n2) }, (String)null);
        try {
            while (query.moveToNext()) {
                c(context, n, query.getLong(0));
            }
        }
        finally {
            query.close();
        }
        query.close();
    }
    
    public static String u(final String s, String string) {
        final String ab = aB(s);
        final boolean equalsIgnoreCase = "text/plain".equalsIgnoreCase(string);
        if ("eml".equals(ab)) {
            string = "message/rfc822";
        }
        else {
            boolean b;
            if (equalsIgnoreCase || "application/octet-stream".equalsIgnoreCase(string)) {
                b = true;
            }
            else {
                b = false;
            }
            if (b || TextUtils.isEmpty((CharSequence)string)) {
                if (!TextUtils.isEmpty((CharSequence)ab)) {
                    final String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(ab);
                    if (TextUtils.isEmpty((CharSequence)mimeTypeFromExtension)) {
                        if (!equalsIgnoreCase) {
                            string = "application/" + ab;
                        }
                    }
                    else {
                        string = mimeTypeFromExtension;
                    }
                }
                else {
                    string = null;
                }
            }
        }
        String s2;
        if (TextUtils.isEmpty((CharSequence)string)) {
            if (equalsIgnoreCase) {
                s2 = "text/plain";
            }
            else {
                s2 = "application/octet-stream";
            }
        }
        else {
            s2 = string;
        }
        return s2.toLowerCase();
    }
}
