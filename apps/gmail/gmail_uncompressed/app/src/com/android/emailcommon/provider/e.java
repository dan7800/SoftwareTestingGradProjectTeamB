package com.android.emailcommon.provider;

import android.net.*;
import android.database.*;
import org.apache.a.a.*;
import com.android.mail.utils.*;
import java.io.*;
import android.content.*;

public final class e extends EmailContent
{
    public static Uri CONTENT_URI;
    public static final String[] XO;
    public int YA;
    public long YB;
    public long Yq;
    public String Yy;
    public String Yz;
    
    static {
        XO = new String[] { "_id", "messageKey", "htmlContentUri", "textContentUri", "sourceMessageKey", "quotedTextStartPos" };
    }
    
    public e() {
        this.XU = e.CONTENT_URI;
    }
    
    public static Uri E(final long n) {
        return EmailContent.CONTENT_URI.buildUpon().appendPath("bodyText").appendPath(Long.toString(n)).build();
    }
    
    public static Uri F(final long n) {
        return EmailContent.CONTENT_URI.buildUpon().appendPath("bodyHtml").appendPath(Long.toString(n)).build();
    }
    
    private static e b(final Context context, final Cursor cursor) {
        try {
            if (cursor.moveToFirst()) {
                return EmailContent.a(context, cursor, e.class);
            }
            return null;
        }
        finally {
            cursor.close();
        }
    }
    
    public static void lM() {
        e.CONTENT_URI = Uri.parse(EmailContent.CONTENT_URI + "/body");
    }
    
    private static String p(final Context context, final String s) {
        String s2;
        try {
            final InputStream openInputStream = context.getContentResolver().openInputStream(Uri.parse(s));
            try {
                final String i;
                s2 = (i = a.i(openInputStream));
                return i;
            }
            finally {
                openInputStream.close();
            }
        }
        catch (IOException ex2) {
            s2 = null;
            final IOException ex = ex2;
        }
        while (true) {
            try {
                return s2;
                final IOException ex;
                E.a(E.TAG, ex, "Exception while reading body content", new Object[0]);
                return s2;
            }
            catch (IOException ex) {
                continue;
            }
            break;
        }
    }
    
    public static e q(final Context context, final long n) {
        final Cursor query = context.getContentResolver().query(e.CONTENT_URI, e.XO, "messageKey=?", new String[] { Long.toString(n) }, (String)null);
        if (query == null) {
            throw new ProviderUnavailableException();
        }
        return b(context, query);
    }
    
    public static String r(final Context context, final long n) {
        return p(context, E(n).toString());
    }
    
    public static String s(final Context context, final long n) {
        return p(context, F(n).toString());
    }
    
    @Override
    public final void a(final Context context, final Cursor cursor) {
        EmailContent.lI();
        this.XU = e.CONTENT_URI;
        this.Yq = cursor.getLong(1);
        this.Yy = p(context, cursor.getString(2));
        this.Yz = p(context, cursor.getString(3));
        this.YB = cursor.getLong(4);
        this.YA = cursor.getInt(5);
    }
    
    @Override
    public final void b(final Cursor cursor) {
        throw new UnsupportedOperationException("Must have context to restore Body object");
    }
    
    @Override
    public final ContentValues lB() {
        final ContentValues contentValues = new ContentValues();
        contentValues.put("messageKey", this.Yq);
        contentValues.put("htmlContent", this.Yy);
        contentValues.put("textContent", this.Yz);
        contentValues.put("sourceMessageKey", this.YB);
        return contentValues;
    }
}
