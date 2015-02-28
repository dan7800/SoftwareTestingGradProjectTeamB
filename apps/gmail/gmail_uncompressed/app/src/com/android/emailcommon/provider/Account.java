package com.android.emailcommon.provider;

import android.net.*;
import android.media.*;
import android.database.*;
import com.android.mail.utils.*;
import org.json.*;
import java.util.*;
import android.os.*;
import android.content.*;
import android.accounts.*;

public final class Account extends EmailContent implements Parcelable
{
    public static Uri CONTENT_URI;
    public static final Parcelable$Creator<Account> CREATOR;
    public static final String[] XO;
    public static final String[] XP;
    public static Uri Xw;
    public static Uri Xx;
    public String NP;
    public transient Policy PW;
    public int XA;
    public int XB;
    public long XC;
    public long XD;
    public String XE;
    @Deprecated
    private String XF;
    public String XG;
    public String XH;
    public String XI;
    public long XJ;
    public long XK;
    public transient HostAuth XL;
    public transient HostAuth XM;
    private transient boolean XN;
    public String Xy;
    public String Xz;
    public int dM;
    
    static {
        XO = new String[] { "_id", "displayName", "emailAddress", "syncKey", "syncLookback", "syncInterval", "hostAuthKeyRecv", "hostAuthKeySend", "flags", "senderName", "ringtoneUri", "protocolVersion", "securitySyncKey", "signature", "policyKey", "pingDuration", "maxAttachmentSize" };
        XP = new String[] { "_id", "flags" };
        CREATOR = (Parcelable$Creator)new a();
    }
    
    public Account() {
        this.XU = Account.CONTENT_URI;
        this.XF = RingtoneManager.getDefaultUri(2).toString();
        this.XB = -1;
        this.XA = -1;
        this.dM = 0;
    }
    
    public Account(final Parcel parcel) {
        this.XU = Account.CONTENT_URI;
        this.Ln = parcel.readLong();
        this.Xy = parcel.readString();
        this.NP = parcel.readString();
        this.Xz = parcel.readString();
        this.XA = parcel.readInt();
        this.XB = parcel.readInt();
        this.XC = parcel.readLong();
        this.XD = parcel.readLong();
        this.dM = parcel.readInt();
        parcel.readString();
        this.XE = parcel.readString();
        this.XF = parcel.readString();
        this.XG = parcel.readString();
        parcel.readInt();
        this.XH = parcel.readString();
        this.XI = parcel.readString();
        this.XJ = parcel.readLong();
        this.XL = null;
        if (parcel.readByte() == 1) {
            this.XL = new HostAuth(parcel);
        }
        this.XM = null;
        if (parcel.readByte() == 1) {
            this.XM = new HostAuth(parcel);
        }
    }
    
    public static Account a(final Context context, final long n, final ContentObserver contentObserver) {
        return EmailContent.a(context, Account.class, Account.CONTENT_URI, Account.XO, n, contentObserver);
    }
    
    public static Account a(final Context context, final String s, final ContentObserver contentObserver) {
        final Cursor query = context.getContentResolver().query(Account.CONTENT_URI, new String[] { "_id" }, "emailAddress=?", new String[] { s }, (String)null);
        Label_0048: {
            if (query == null) {
                break Label_0048;
            }
            try {
                if (!query.moveToFirst()) {
                    return null;
                }
                return a(context, query.getLong(query.getColumnIndex("_id")), contentObserver);
            }
            finally {
                if (query != null) {
                    query.close();
                }
            }
        }
    }
    
    private static Account a(final JSONObject jsonObject) {
        try {
            final Account account = new Account();
            account.Xy = jsonObject.optString("displayName");
            account.NP = jsonObject.getString("emailAddress");
            account.XA = jsonObject.getInt("syncLookback");
            account.XB = jsonObject.getInt("syncInterval");
            account.XL = HostAuth.c(jsonObject.getJSONObject("hostAuthRecv"));
            final JSONObject optJSONObject = jsonObject.optJSONObject("hostAuthSend");
            if (optJSONObject != null) {
                account.XM = HostAuth.c(optJSONObject);
            }
            account.dM = jsonObject.getInt("flags");
            account.XE = jsonObject.optString("senderName");
            account.XG = jsonObject.optString("protocolVersion");
            account.XI = jsonObject.optString("signature");
            account.XK = jsonObject.optInt("pingDuration", 0);
            return account;
        }
        catch (JSONException ex) {
            E.b(E.TAG, (Throwable)ex, "Exception while deserializing Account", new Object[0]);
            return null;
        }
    }
    
    public static void ab(final Context context) {
        final ContentResolver contentResolver = context.getContentResolver();
        final Cursor query = contentResolver.query(Account.CONTENT_URI, Account.XP, "policyKey IS NOT NULL AND policyKey!=0", (String[])null, (String)null);
        try {
            while (query.moveToNext()) {
                final int int1 = query.getInt(1);
                if ((int1 & 0x20) != 0x0) {
                    final ContentValues contentValues = new ContentValues();
                    contentValues.put("flags", int1 & 0xFFFFFFDF);
                    contentResolver.update(ContentUris.withAppendedId(Account.CONTENT_URI, query.getLong(0)), contentValues, (String)null, (String[])null);
                }
            }
        }
        finally {
            query.close();
        }
        query.close();
    }
    
    public static Account au(final String s) {
        try {
            return a(new JSONObject(s));
        }
        catch (JSONException ex) {
            E.b(E.TAG, (Throwable)ex, "Could not parse json for account", new Object[0]);
            return null;
        }
    }
    
    private static long h(final Uri uri) {
        return Long.parseLong(uri.getPathSegments().get(1));
    }
    
    public static Account k(final Context context, final long n) {
        return a(context, n, null);
    }
    
    public static long l(final Context context, final long n) {
        final Cursor query = context.getContentResolver().query(Account.CONTENT_URI, Account.XT, (String)null, (String[])null, (String)null);
        if (query == null) {
            return -1L;
        }
    Label_0077_Outer:
        while (true) {
            while (true) {
                long n2 = 0L;
            Label_0125:
                while (true) {
                    long long1;
                    try {
                        if (!query.moveToFirst()) {
                            break;
                        }
                        n2 = -1L;
                        long1 = query.getLong(0);
                        if (long1 == n) {
                            return long1;
                        }
                        if (n2 != -1L) {
                            break Label_0125;
                        }
                        if (!query.moveToNext()) {
                            return long1;
                        }
                    }
                    finally {
                        if (query != null) {
                            query.close();
                        }
                    }
                    n2 = long1;
                    continue Label_0077_Outer;
                }
                long long1 = n2;
                continue;
            }
        }
        return -1L;
    }
    
    private JSONObject lC() {
        try {
            final JSONObject jsonObject = new JSONObject();
            jsonObject.putOpt("displayName", (Object)this.Xy);
            jsonObject.put("emailAddress", (Object)this.NP);
            jsonObject.put("syncLookback", this.XA);
            jsonObject.put("syncInterval", this.XB);
            jsonObject.put("hostAuthRecv", (Object)this.XL.lC());
            if (this.XM != null) {
                jsonObject.put("hostAuthSend", (Object)this.XM.lC());
            }
            jsonObject.put("flags", this.dM);
            jsonObject.putOpt("senderName", (Object)this.XE);
            jsonObject.putOpt("protocolVersion", (Object)this.XG);
            jsonObject.putOpt("signature", (Object)this.XI);
            jsonObject.put("pingDuration", this.XK);
            return jsonObject;
        }
        catch (JSONException ex) {
            E.b(E.TAG, (Throwable)ex, "Exception while serializing Account", new Object[0]);
            return null;
        }
    }
    
    public static void lt() {
        Account.CONTENT_URI = Uri.parse(EmailContent.CONTENT_URI + "/account");
        Account.Xw = Uri.parse(EmailContent.CONTENT_URI + "/resetNewMessageCount");
        Account.Xx = Uri.parse(EmailContent.XZ + "/account");
    }
    
    public static String m(final Context context, final long n) {
        final Account a = a(context, n, null);
        String aa = null;
        if (a != null) {
            aa = a.aa(context);
        }
        return aa;
    }
    
    public final void X(final Context context) {
        final Cursor query = context.getContentResolver().query(this.getUri(), Account.XO, (String)null, (String[])null, (String)null);
        try {
            query.moveToFirst();
            this.b(query);
        }
        finally {
            if (query != null) {
                query.close();
            }
        }
    }
    
    public final HostAuth Y(final Context context) {
        if (this.XM == null) {
            if (this.XD != 0L) {
                this.XM = HostAuth.u(context, this.XD);
            }
            else {
                this.XM = new HostAuth();
            }
        }
        return this.XM;
    }
    
    public final HostAuth Z(final Context context) {
        if (this.XL == null) {
            if (this.XC != 0L) {
                this.XL = HostAuth.u(context, this.XC);
            }
            else {
                this.XL = new HostAuth();
            }
        }
        return this.XL;
    }
    
    public final String aa(final Context context) {
        final HostAuth z = this.Z(context);
        if (z != null) {
            return z.Zh;
        }
        return null;
    }
    
    @Override
    public final Uri ac(final Context context) {
        if (this.lF()) {
            throw new UnsupportedOperationException();
        }
        if (this.XL == null && this.XM == null && this.PW != null) {
            return super.ac(context);
        }
        final ArrayList<ContentProviderOperation> list = new ArrayList<ContentProviderOperation>();
        int n;
        int n2;
        int n4;
        if (this.XL != null) {
            if (this.XL.Zn != null) {
                list.add(ContentProviderOperation.newInsert(this.XL.Zn.XU).withValues(this.XL.Zn.lB()).build());
                n = 1;
                n2 = 0;
            }
            else {
                n2 = -1;
                n = 0;
            }
            final int n3 = n + 1;
            final ContentProviderOperation$Builder insert = ContentProviderOperation.newInsert(this.XL.XU);
            insert.withValues(this.XL.lB());
            if (n2 >= 0) {
                final ContentValues contentValues = new ContentValues();
                contentValues.put("credentialKey", 0);
                insert.withValueBackReferences(contentValues);
            }
            list.add(insert.build());
            n4 = n3;
        }
        else {
            n2 = -1;
            n = -1;
            n4 = 0;
        }
        while (true) {
            Label_0501: {
                while (true) {
                    int n5 = 0;
                    Label_0305: {
                        if (this.XM == null) {
                            n5 = n4;
                            n4 = -1;
                            break Label_0305;
                        }
                        if (this.XM.Zn != null) {
                            if (this.XL.Zn == null || !this.XL.Zn.equals(this.XM.Zn)) {
                                break Label_0501;
                            }
                        }
                        else {
                            n2 = -1;
                        }
                        n5 = n4 + 1;
                        final ContentProviderOperation$Builder insert2 = ContentProviderOperation.newInsert(this.XM.XU);
                        insert2.withValues(this.XM.lB());
                        if (n2 >= 0) {
                            final ContentValues contentValues2 = new ContentValues();
                            contentValues2.put("credentialKey", n2);
                            insert2.withValueBackReferences(contentValues2);
                        }
                        list.add(insert2.build());
                    }
                    if (n < 0 && n4 < 0) {
                        break Label_0501;
                    }
                    final ContentValues contentValues3 = new ContentValues();
                    if (n >= 0) {
                        contentValues3.put("hostAuthKeyRecv", n);
                    }
                    if (n4 >= 0) {
                        contentValues3.put("hostAuthKeySend", n4);
                    }
                    final ContentProviderOperation$Builder insert3 = ContentProviderOperation.newInsert(this.XU);
                    insert3.withValues(this.lB());
                    if (contentValues3 != null) {
                        insert3.withValueBackReferences(contentValues3);
                    }
                    list.add(insert3.build());
                    try {
                        final ContentProviderResult[] applyBatch = context.getContentResolver().applyBatch(EmailContent.AUTHORITY, (ArrayList)list);
                        if (n >= 0) {
                            final long h = h(applyBatch[n].uri);
                            this.XC = h;
                            this.XL.Ln = h;
                        }
                        if (n4 >= 0) {
                            final long h2 = h(applyBatch[n4].uri);
                            this.XD = h2;
                            this.XM.Ln = h2;
                        }
                        final Uri uri = applyBatch[n5].uri;
                        this.Ln = h(uri);
                        return uri;
                        final int n6 = n4 + 1;
                        list.add(ContentProviderOperation.newInsert(this.XM.Zn.XU).withValues(this.XM.Zn.lB()).build());
                        final int n7 = n4;
                        n4 = n6;
                        n2 = n7;
                        continue;
                    }
                    catch (OperationApplicationException ex) {
                        return null;
                    }
                    catch (RemoteException ex2) {
                        return null;
                    }
                    break;
                }
            }
            final ContentValues contentValues3 = null;
            continue;
        }
    }
    
    public final String ad(final Context context) {
        if (this.XC == 0L && this.XL == null) {
            throw new IllegalStateException("Trying to load incomplete Account object");
        }
        this.Z(context).ah(context);
        if (this.XD != 0L) {
            this.Y(context);
            if (this.XM != null) {
                this.XM.ah(context);
            }
        }
        final JSONObject lc = this.lC();
        if (lc != null) {
            return lc.toString();
        }
        return null;
    }
    
    public final void aq(final String xy) {
        this.Xy = xy;
    }
    
    public final void ar(final String np) {
        this.NP = np;
    }
    
    public final void as(final String xe) {
        this.XE = xe;
    }
    
    public final android.accounts.Account at(final String s) {
        return new android.accounts.Account(this.NP, s);
    }
    
    @Override
    public final void b(final Cursor cursor) {
        this.Ln = cursor.getLong(0);
        this.XU = Account.CONTENT_URI;
        this.Xy = cursor.getString(1);
        this.NP = cursor.getString(2);
        this.Xz = cursor.getString(3);
        this.XA = cursor.getInt(4);
        this.XB = cursor.getInt(5);
        this.XC = cursor.getLong(6);
        this.XD = cursor.getLong(7);
        this.dM = cursor.getInt(8);
        this.XE = cursor.getString(9);
        this.XF = cursor.getString(10);
        this.XG = cursor.getString(11);
        this.XH = cursor.getString(12);
        this.XI = cursor.getString(13);
        this.XJ = cursor.getLong(14);
        this.XK = cursor.getLong(15);
    }
    
    public final void bh(final int xb) {
        this.XB = xb;
    }
    
    public final void bi(final int xa) {
        this.XA = xa;
    }
    
    public final void bj(final int n) {
        this.dM &= 0xFFFFFFF3;
        this.dM |= (0xC & n << 2);
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final String getDisplayName() {
        return this.Xy;
    }
    
    public final int getFlags() {
        return this.dM;
    }
    
    public final long getId() {
        return this.Ln;
    }
    
    public final String ik() {
        return this.XE;
    }
    
    public final boolean isTemporary() {
        return this.XN;
    }
    
    public final int lA() {
        return (0xC & this.dM) >> 2;
    }
    
    @Override
    public final ContentValues lB() {
        final ContentValues contentValues = new ContentValues();
        contentValues.put("displayName", this.Xy);
        contentValues.put("emailAddress", this.NP);
        contentValues.put("syncKey", this.Xz);
        contentValues.put("syncLookback", this.XA);
        contentValues.put("syncInterval", this.XB);
        contentValues.put("hostAuthKeyRecv", this.XC);
        contentValues.put("hostAuthKeySend", this.XD);
        contentValues.put("flags", this.dM);
        contentValues.put("senderName", this.XE);
        contentValues.put("ringtoneUri", this.XF);
        contentValues.put("protocolVersion", this.XG);
        contentValues.put("securitySyncKey", this.XH);
        contentValues.put("signature", this.XI);
        contentValues.put("policyKey", this.XJ);
        contentValues.put("pingDuration", this.XK);
        return contentValues;
    }
    
    @Override
    protected final Uri lu() {
        return Account.CONTENT_URI;
    }
    
    public final void lv() {
        this.XN = true;
    }
    
    public final String lw() {
        return this.NP;
    }
    
    public final String lx() {
        return this.XI;
    }
    
    public final int ly() {
        return this.XB;
    }
    
    public final int lz() {
        return this.XA;
    }
    
    public final void setFlags(final int dm) {
        this.dM = dm;
    }
    
    public final String toString() {
        final StringBuilder sb = new StringBuilder("[");
        if (this.XL != null && this.XL.Zh != null) {
            sb.append(this.XL.Zh);
            sb.append(':');
        }
        if (this.Xy != null) {
            sb.append(this.Xy);
        }
        sb.append(':');
        if (this.NP != null) {
            sb.append(this.NP);
        }
        sb.append(':');
        if (this.XE != null) {
            sb.append(this.XE);
        }
        sb.append(']');
        return sb.toString();
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeLong(this.Ln);
        parcel.writeString(this.Xy);
        parcel.writeString(this.NP);
        parcel.writeString(this.Xz);
        parcel.writeInt(this.XA);
        parcel.writeInt(this.XB);
        parcel.writeLong(this.XC);
        parcel.writeLong(this.XD);
        parcel.writeInt(this.dM);
        parcel.writeString("");
        parcel.writeString(this.XE);
        parcel.writeString(this.XF);
        parcel.writeString(this.XG);
        parcel.writeInt(0);
        parcel.writeString(this.XH);
        parcel.writeString(this.XI);
        parcel.writeLong(this.XJ);
        if (this.XL != null) {
            parcel.writeByte((byte)1);
            this.XL.writeToParcel(parcel, n);
        }
        else {
            parcel.writeByte((byte)0);
        }
        if (this.XM != null) {
            parcel.writeByte((byte)1);
            this.XM.writeToParcel(parcel, n);
            return;
        }
        parcel.writeByte((byte)0);
    }
}
