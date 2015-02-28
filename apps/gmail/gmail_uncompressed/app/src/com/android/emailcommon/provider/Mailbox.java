package com.android.emailcommon.provider;

import android.net.*;
import android.util.*;
import android.os.*;
import com.android.emailcommon.*;
import com.android.mail.utils.*;
import android.database.*;
import com.android.emailcommon.b.*;
import android.content.*;

public class Mailbox extends EmailContent implements Parcelable, f
{
    public static Uri CONTENT_URI;
    public static final Parcelable$Creator<Mailbox> CREATOR;
    public static final String[] XO;
    private static final String[] ZC;
    private static final String[] ZD;
    private static final String[] ZE;
    private static final SparseBooleanArray ZF;
    public static final int[] ZG;
    public static Uri Zo;
    public long Lq;
    public String Vv;
    public int XA;
    public int XB;
    public String Xy;
    public String Xz;
    public String ZA;
    public long ZB;
    public String Zp;
    public long Zq;
    public int Zr;
    public int Zs;
    public long Zt;
    public boolean Zu;
    public String Zv;
    public long Zw;
    public int Zx;
    public int Zy;
    public int Zz;
    public int dM;
    
    static {
        XO = new String[] { "_id", "displayName", "serverId", "parentServerId", "accountKey", "type", "delimiter", "syncKey", "syncLookback", "syncInterval", "syncTime", "flagVisible", "flags", "syncStatus", "parentKey", "lastTouchedTime", "uiSyncStatus", "uiLastSyncResult", "totalCount", "hierarchicalName", "lastFullSyncTime" };
        ZC = new String[] { "type" };
        ZD = new String[] { "displayName" };
        ZE = new String[] { "accountKey" };
        (ZF = new SparseBooleanArray(7)).put(0, true);
        Mailbox.ZF.put(1, false);
        Mailbox.ZF.put(5, true);
        Mailbox.ZF.put(6, false);
        Mailbox.ZF.put(65, true);
        Mailbox.ZF.put(66, true);
        ZG = new int[] { 0, 3, 4, 5, 6 };
        CREATOR = (Parcelable$Creator)new l();
    }
    
    public Mailbox() {
        this.Zu = true;
        this.XU = Mailbox.CONTENT_URI;
    }
    
    public Mailbox(final Parcel parcel) {
        this.Zu = true;
        this.XU = (Uri)parcel.readParcelable((ClassLoader)null);
        this.Ln = parcel.readLong();
        this.Xy = parcel.readString();
        this.Vv = parcel.readString();
        this.Zp = parcel.readString();
        this.Zq = parcel.readLong();
        this.Lq = parcel.readLong();
        this.Zr = parcel.readInt();
        this.Zs = parcel.readInt();
        this.Xz = parcel.readString();
        this.XA = parcel.readInt();
        this.XB = parcel.readInt();
        this.Zt = parcel.readLong();
        this.Zu = (parcel.readInt() == 1);
        this.dM = parcel.readInt();
        this.Zv = parcel.readString();
        this.Zw = parcel.readLong();
        this.Zx = parcel.readInt();
        this.Zy = parcel.readInt();
        this.Zz = parcel.readInt();
        this.ZA = parcel.readString();
        this.ZB = parcel.readLong();
    }
    
    public static Bundle G(final long n) {
        final Bundle bundle = new Bundle(2);
        bundle.putInt("__mailboxCount__", 1);
        bundle.putLong(bk(0), n);
        return bundle;
    }
    
    public static Mailbox b(final Context context, final long lq, final int zr) {
        int dm = 8;
        int xb = 0;
        switch (zr) {
            default: {
                throw new IllegalArgumentException("Bad mailbox type for newSystemMailbox: " + zr);
            }
            case 3:
            case 4: {
                xb = -1;
            }
            case 0: {
                dm = 24;
            }
            case 5:
            case 6: {
                final Mailbox mailbox = new Mailbox();
                mailbox.Lq = lq;
                mailbox.Zr = zr;
                mailbox.XB = xb;
                mailbox.Zu = true;
                int n = 0;
                switch (zr) {
                    default: {
                        throw new IllegalArgumentException("Illegal mailbox type");
                    }
                    case 0: {
                        n = d.VP;
                        break;
                    }
                    case 4: {
                        n = d.VR;
                        break;
                    }
                    case 3: {
                        n = d.VO;
                        break;
                    }
                    case 6: {
                        n = d.VU;
                        break;
                    }
                    case 5: {
                        n = d.VS;
                        break;
                    }
                    case 7: {
                        n = d.VQ;
                        break;
                    }
                    case 9: {
                        n = d.VT;
                        break;
                    }
                    case 10: {
                        n = d.VN;
                        break;
                    }
                }
                final String string = context.getString(n);
                mailbox.Xy = string;
                mailbox.Vv = string;
                mailbox.Zq = -1L;
                mailbox.dM = dm;
                return mailbox;
            }
        }
    }
    
    private static Mailbox b(final Context context, final long n, final String s) {
        final Cursor query = context.getContentResolver().query(Mailbox.CONTENT_URI, Mailbox.XO, "serverId=? and accountKey=?", new String[] { s, Long.toString(n) }, (String)null);
        if (query == null) {
            throw new ProviderUnavailableException();
        }
        try {
            Mailbox mailbox;
            if (query.moveToFirst()) {
                mailbox = EmailContent.a(context, query, Mailbox.class);
                if (query.moveToNext()) {
                    E.e(b.mW, "Multiple mailboxes named \"%s\"", s);
                }
            }
            else {
                E.d(b.mW, "Could not find mailbox at \"%s\"", s);
                mailbox = null;
            }
            return mailbox;
        }
        finally {
            query.close();
        }
    }
    
    private static String bk(final int n) {
        return String.format("__mailboxId%d__", n);
    }
    
    public static boolean bl(final int n) {
        return Mailbox.ZF.indexOfKey(n) >= 0;
    }
    
    public static long c(final Context context, final long n, final int n2) {
        return s.a(context, Mailbox.CONTENT_URI, Mailbox.XT, "type=? and accountKey=?", new String[] { Long.toString(n2), Long.toString(n) }, null, -1L);
    }
    
    public static Mailbox c(final Context context, final long n, final String s) {
        Mailbox b = b(context, n, s);
        if (b == null) {
            b = new Mailbox();
        }
        return b;
    }
    
    public static Mailbox d(final Context context, final long n, final int n2) {
        final long c = c(context, n, n2);
        if (c != -1L) {
            return v(context, c);
        }
        return null;
    }
    
    public static long[] i(final Bundle bundle) {
        int i = 0;
        final int int1 = bundle.getInt("__mailboxCount__", 0);
        long[] array;
        if (int1 > 0) {
            if (bundle.getBoolean("__push_only__", false)) {
                E.e(b.mW, "Mailboxes specified in a push only sync", new Object[0]);
            }
            if (bundle.getBoolean("__account_only__", false)) {
                E.e(b.mW, "Mailboxes specified in an account only sync", new Object[0]);
            }
            array = new long[int1];
            while (i < int1) {
                array[i] = bundle.getLong(bk(i), 0L);
                ++i;
            }
        }
        else {
            array = null;
        }
        return array;
    }
    
    public static void lR() {
        Mailbox.CONTENT_URI = Uri.parse(EmailContent.CONTENT_URI + "/mailbox");
        Mailbox.Zo = Uri.parse(EmailContent.CONTENT_URI + "/mailboxCount");
    }
    
    public static long q(final Context context, final String s) {
        return s.a(context, Mailbox.CONTENT_URI.buildUpon().appendEncodedPath(s).build(), Mailbox.ZE, null, null, null, -1L);
    }
    
    public static Mailbox v(final Context context, final long n) {
        return EmailContent.a(context, Mailbox.class, Mailbox.CONTENT_URI, Mailbox.XO, n);
    }
    
    public static String x(final Context context, final long n) {
        return s.a(context, ContentUris.withAppendedId(Mailbox.CONTENT_URI, n), Mailbox.ZD, null, null);
    }
    
    @Override
    public final void b(final Cursor cursor) {
        int zu = 1;
        this.XU = Mailbox.CONTENT_URI;
        this.Ln = cursor.getLong(0);
        this.Xy = cursor.getString(zu);
        this.Vv = cursor.getString(2);
        this.Zp = cursor.getString(3);
        this.Zq = cursor.getLong(14);
        this.Lq = cursor.getLong(4);
        this.Zr = cursor.getInt(5);
        this.Zs = cursor.getInt(6);
        this.Xz = cursor.getString(7);
        this.XA = cursor.getInt(8);
        this.XB = cursor.getInt(9);
        this.Zt = cursor.getLong(10);
        if (cursor.getInt(11) != zu) {
            zu = 0;
        }
        this.Zu = (zu != 0);
        this.dM = cursor.getInt(12);
        this.Zv = cursor.getString(13);
        this.Zw = cursor.getLong(15);
        this.Zx = cursor.getInt(16);
        this.Zy = cursor.getInt(17);
        this.Zz = cursor.getInt(18);
        this.ZA = cursor.getString(19);
        this.ZB = cursor.getInt(20);
    }
    
    public int describeContents() {
        return 0;
    }
    
    public final void g(final Context context, final int zz) {
        if (zz != this.Zz) {
            final ContentValues contentValues = new ContentValues(1);
            contentValues.put("totalCount", zz);
            this.a(context, contentValues);
            this.Zz = zz;
        }
    }
    
    @Override
    public final ContentValues lB() {
        final ContentValues contentValues = new ContentValues(20);
        contentValues.put("displayName", this.Xy);
        contentValues.put("serverId", this.Vv);
        contentValues.put("parentServerId", this.Zp);
        contentValues.put("parentKey", this.Zq);
        contentValues.put("accountKey", this.Lq);
        contentValues.put("type", this.Zr);
        contentValues.put("delimiter", this.Zs);
        contentValues.put("syncKey", this.Xz);
        contentValues.put("syncLookback", this.XA);
        contentValues.put("syncInterval", this.XB);
        contentValues.put("syncTime", this.Zt);
        contentValues.put("flagVisible", this.Zu);
        contentValues.put("flags", this.dM);
        contentValues.put("syncStatus", this.Zv);
        contentValues.put("lastTouchedTime", this.Zw);
        contentValues.put("uiSyncStatus", this.Zx);
        contentValues.put("uiLastSyncResult", this.Zy);
        contentValues.put("totalCount", this.Zz);
        contentValues.put("hierarchicalName", this.ZA);
        contentValues.put("lastFullSyncTime", this.ZB);
        return contentValues;
    }
    
    public final Object[] lS() {
        final Object[] array = new Object[Mailbox.XO.length];
        array[0] = this.Ln;
        array[1] = this.Xy;
        array[2] = this.Vv;
        array[3] = this.Zp;
        array[4] = this.Lq;
        array[5] = this.Zr;
        array[6] = this.Zs;
        array[7] = this.Xz;
        array[8] = this.XA;
        array[9] = this.XB;
        array[10] = this.Zt;
        array[11] = this.Zu;
        array[12] = this.dM;
        array[13] = this.Zv;
        array[14] = this.Zq;
        array[15] = this.Zw;
        array[16] = this.Zx;
        array[17] = this.Zy;
        array[18] = this.Zz;
        array[19] = this.ZA;
        return array;
    }
    
    public String toString() {
        return "[Mailbox " + this.Ln + ": " + this.Xy + "]";
    }
    
    public final void w(final Context context, final long zb) {
        if (zb != this.ZB) {
            final ContentValues contentValues = new ContentValues(1);
            contentValues.put("lastFullSyncTime", zb);
            this.a(context, contentValues);
            this.ZB = zb;
        }
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeParcelable((Parcelable)this.XU, n);
        parcel.writeLong(this.Ln);
        parcel.writeString(this.Xy);
        parcel.writeString(this.Vv);
        parcel.writeString(this.Zp);
        parcel.writeLong(this.Zq);
        parcel.writeLong(this.Lq);
        parcel.writeInt(this.Zr);
        parcel.writeInt(this.Zs);
        parcel.writeString(this.Xz);
        parcel.writeInt(this.XA);
        parcel.writeInt(this.XB);
        parcel.writeLong(this.Zt);
        int n2;
        if (this.Zu) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        parcel.writeInt(n2);
        parcel.writeInt(this.dM);
        parcel.writeString(this.Zv);
        parcel.writeLong(this.Zw);
        parcel.writeInt(this.Zx);
        parcel.writeInt(this.Zy);
        parcel.writeInt(this.Zz);
        parcel.writeString(this.ZA);
        parcel.writeLong(this.ZB);
    }
}
