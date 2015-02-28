package com.android.emailcommon.provider;

import android.net.*;
import android.content.*;
import com.android.emailcommon.b.*;
import android.database.*;
import com.android.mail.utils.*;
import android.os.*;
import com.android.emailcommon.*;

public abstract class EmailContent
{
    public static String AUTHORITY;
    public static Uri CONTENT_URI;
    public static final String[] XS;
    public static final String[] XT;
    public static String XX;
    public static String XY;
    public static Uri XZ;
    public static Uri Ya;
    public static Uri Yb;
    public static Uri Yc;
    public static Uri Yd;
    public static Uri Ye;
    public static String Yf;
    public static String Yg;
    public long Ln;
    public Uri XU;
    private j XV;
    private ContentObservable XW;
    private Uri eM;
    
    static {
        XS = new String[] { "count(*)" };
        XT = new String[] { "_id" };
        EmailContent.Yf = "deviceFriendlyName";
    }
    
    protected EmailContent() {
        this.eM = null;
        this.Ln = -1L;
    }
    
    public static int a(final Context context, final Uri uri, final long n) {
        return context.getContentResolver().delete(ContentUris.withAppendedId(uri, n), (String)null, (String[])null);
    }
    
    public static int a(final Context context, final Uri uri, final long n, final ContentValues contentValues) {
        return context.getContentResolver().update(ContentUris.withAppendedId(uri, n), contentValues, (String)null, (String[])null);
    }
    
    public static int a(final Context context, final Uri uri, final String s, final String[] array) {
        return (int)(Object)s.a(context, uri, EmailContent.XS, s, array, null, 0L);
    }
    
    public static <T extends EmailContent> T a(final Context context, final Cursor cursor, final Class<T> clazz) {
        try {
            final EmailContent emailContent = clazz.newInstance();
            emailContent.Ln = cursor.getLong(0);
            emailContent.a(context, cursor);
            return (T)emailContent;
        }
        catch (IllegalAccessException ex) {
            ex.printStackTrace();
        }
        catch (InstantiationException ex2) {
            ex2.printStackTrace();
            goto Label_0038;
        }
    }
    
    public static <T extends EmailContent> T a(final Context context, final Class<T> clazz, final Uri uri, final String[] array, final long n) {
        return a(context, clazz, uri, array, n, null);
    }
    
    public static <T extends EmailContent> T a(final Context context, final Class<T> clazz, final Uri uri, final String[] array, final long n, final ContentObserver contentObserver) {
        lE();
        final Cursor query = context.getContentResolver().query(ContentUris.withAppendedId(uri, n), array, (String)null, (String[])null, (String)null);
        if (query == null) {
            throw new ProviderUnavailableException();
        }
        try {
            if (query.moveToFirst()) {
                final EmailContent a = a(context, query, clazz);
                if (contentObserver != null) {
                    a.a(context, contentObserver);
                }
                return (T)a;
            }
            return null;
        }
        finally {
            query.close();
        }
    }
    
    private void a(final Context context, final ContentObserver contentObserver) {
        synchronized (this) {
            if (this.XV == null) {
                this.XV = new j(this);
                context.getContentResolver().registerContentObserver(this.lu(), true, (ContentObserver)this.XV);
                this.XW = new ContentObservable();
            }
            this.XW.registerObserver(contentObserver);
        }
    }
    
    public static boolean av(final String s) {
        return s == null || s.isEmpty() || s.equals("0");
    }
    
    public static Uri c(final Uri uri, final int n) {
        return uri.buildUpon().appendQueryParameter("limit", Integer.toString(n)).build();
    }
    
    public static void g(final Context context) {
        synchronized (EmailContent.class) {
            if (EmailContent.AUTHORITY == null) {
                EmailContent.XX = context.getResources().getString(d.VM);
                EmailContent.AUTHORITY = EmailContent.XX + ".provider";
                E.c("EmailContent", "init for " + EmailContent.AUTHORITY, new Object[0]);
                EmailContent.XY = EmailContent.XX + ".notifier";
                EmailContent.CONTENT_URI = Uri.parse("content://" + EmailContent.AUTHORITY);
                EmailContent.XZ = Uri.parse("content://" + EmailContent.XY);
                EmailContent.Ya = Uri.parse("content://" + EmailContent.AUTHORITY + "/pickTrashFolder");
                EmailContent.Yb = Uri.parse("content://" + EmailContent.AUTHORITY + "/pickSentFolder");
                EmailContent.Yc = Uri.parse("content://" + EmailContent.AUTHORITY + "/mailboxNotification");
                EmailContent.Yd = Uri.parse("content://" + EmailContent.AUTHORITY + "/mailboxMostRecentMessage");
                EmailContent.Ye = Uri.parse("content://" + EmailContent.AUTHORITY + "/accountCheck");
                EmailContent.Yg = EmailContent.XX + ".permission.ACCESS_PROVIDER";
                Account.lt();
                Mailbox.lR();
                q.lX();
                HostAuth.lO();
                Credential.lD();
                Policy.lU();
                g.lN();
                n.lT();
                o.lT();
                e.lM();
                EmailContent$Attachment.lJ();
            }
        }
    }
    
    private static void lE() {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            E.d(b.mW, new Throwable(), "Method called on the UI thread", new Object[0]);
        }
    }
    
    private void lG() {
        synchronized (this) {
            if (this.XW == null) {
                throw new IllegalStateException("Unregistering with null observable");
            }
        }
        this.XW.unregisterAll();
    }
    // monitorexit(this)
    
    public final int a(final Context context, final ContentValues contentValues) {
        if (!this.lF()) {
            throw new UnsupportedOperationException();
        }
        return context.getContentResolver().update(this.getUri(), contentValues, (String)null, (String[])null);
    }
    
    public void a(final Context context, final Cursor cursor) {
        this.b(cursor);
    }
    
    public Uri ac(final Context context) {
        if (this.lF()) {
            throw new UnsupportedOperationException();
        }
        final Uri insert = context.getContentResolver().insert(this.XU, this.lB());
        this.Ln = Long.parseLong((String)insert.getPathSegments().get(1));
        return insert;
    }
    
    public final void ae(final Context context) {
        synchronized (this) {
            if (this.XV != null) {
                this.lG();
                context.getContentResolver().unregisterContentObserver((ContentObserver)this.XV);
                this.XV = null;
            }
        }
    }
    
    public abstract void b(final Cursor p0);
    
    public final Uri getUri() {
        if (this.eM == null) {
            this.eM = ContentUris.withAppendedId(this.XU, this.Ln);
        }
        return this.eM;
    }
    
    public abstract ContentValues lB();
    
    public final boolean lF() {
        return this.Ln != -1L;
    }
    
    public final void lH() {
        synchronized (this) {
            if (this.XW != null) {
                this.XW.dispatchChange(false);
            }
        }
    }
    
    protected Uri lu() {
        throw new UnsupportedOperationException("Subclasses must override this method for content observation to work");
    }
}
