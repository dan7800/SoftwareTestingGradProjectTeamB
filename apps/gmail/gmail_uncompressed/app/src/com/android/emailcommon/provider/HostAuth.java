package com.android.emailcommon.provider;

import android.net.*;
import android.os.*;
import android.text.*;
import com.android.mail.utils.*;
import org.json.*;
import java.net.*;
import android.database.*;
import android.content.*;

public class HostAuth extends EmailContent implements Parcelable
{
    public static Uri CONTENT_URI;
    public static final Parcelable$Creator<HostAuth> CREATOR;
    public static final String[] XO;
    public String GZ;
    public String Qd;
    public String WA;
    public String Zh;
    public int Zi;
    public String Zj;
    public String Zk;
    public byte[] Zl;
    public long Zm;
    public transient Credential Zn;
    public int dM;
    
    static {
        XO = new String[] { "_id", "protocol", "address", "port", "flags", "login", "password", "domain", "certAlias", "credentialKey" };
        CREATOR = (Parcelable$Creator)new k();
    }
    
    public HostAuth() {
        this.Zk = null;
        this.Zl = null;
        this.XU = HostAuth.CONTENT_URI;
        this.Zi = -1;
        this.Zm = -1L;
    }
    
    public HostAuth(final Parcel parcel) {
        this.Zk = null;
        this.Zl = null;
        this.XU = HostAuth.CONTENT_URI;
        this.Ln = parcel.readLong();
        this.Zh = parcel.readString();
        this.WA = parcel.readString();
        this.Zi = parcel.readInt();
        this.dM = parcel.readInt();
        this.Zj = parcel.readString();
        this.Qd = parcel.readString();
        this.GZ = parcel.readString();
        this.Zk = parcel.readString();
        if ((0x10 & this.dM) != 0x0) {
            this.Zm = parcel.readLong();
            this.Zn = new Credential(parcel);
            if (this.Zn.equals(Credential.XQ)) {
                this.Zn = null;
            }
            return;
        }
        this.Zm = -1L;
    }
    
    private void a(final String zh, final String wa, final int zi, final int n, final String zk) {
        int n2 = 1;
        this.Zh = zh;
        this.dM &= 0xFFFFFFF4;
        this.dM |= (n & 0x1B);
        int n3;
        if ((n & 0x3) != 0x0) {
            n3 = n2;
        }
        else {
            n3 = 0;
        }
        if (n3 == 0 && !TextUtils.isEmpty((CharSequence)zk)) {
            throw new IllegalArgumentException("Can't use client alias on non-secure connections");
        }
        this.WA = wa;
        this.Zi = zi;
        if (this.Zi == -1) {
            if ((0x1 & this.dM) == 0x0) {
                n2 = 0;
            }
            if ("smtp".equals(this.Zh)) {
                int zi2;
                if (n2 != 0) {
                    zi2 = 465;
                }
                else {
                    zi2 = 587;
                }
                this.Zi = zi2;
            }
        }
        this.Zk = zk;
    }
    
    public static String aA(final String s) {
        return Uri.parse(s).getScheme().split("\\+")[0];
    }
    
    protected static HostAuth c(final JSONObject jsonObject) {
        try {
            final HostAuth hostAuth = new HostAuth();
            hostAuth.Zh = jsonObject.getString("protocol");
            hostAuth.WA = jsonObject.getString("address");
            hostAuth.Zi = jsonObject.getInt("port");
            hostAuth.dM = jsonObject.getInt("flags");
            hostAuth.Zj = jsonObject.getString("login");
            hostAuth.Qd = jsonObject.optString("password");
            hostAuth.GZ = jsonObject.optString("domain");
            hostAuth.Zk = jsonObject.optString("certAlias");
            final JSONObject optJSONObject = jsonObject.optJSONObject("credential");
            if (optJSONObject != null) {
                hostAuth.Zn = Credential.b(optJSONObject);
            }
            return hostAuth;
        }
        catch (JSONException ex) {
            E.b(E.TAG, (Throwable)ex, "Exception while deserializing HostAuth", new Object[0]);
            return null;
        }
    }
    
    public static void lO() {
        HostAuth.CONTENT_URI = Uri.parse(EmailContent.CONTENT_URI + "/hostauth");
    }
    
    public static HostAuth u(final Context context, final long n) {
        return EmailContent.a(context, HostAuth.class, HostAuth.CONTENT_URI, HostAuth.XO, n);
    }
    
    public final void a(final String s, final String s2, final int n, final int n2) {
        this.a(s, s2, n, n2, null);
    }
    
    public final Credential af(final Context context) {
        if (this.Zn == null && this.Zm >= 0L) {
            this.Zn = Credential.n(context, this.Zm);
        }
        return this.Zn;
    }
    
    public final Credential ag(final Context context) {
        this.dM |= 0x10;
        if (this.Zn == null) {
            if (this.Zm >= 0L) {
                this.Zn = Credential.n(context, this.Zm);
            }
            else {
                this.Zn = new Credential();
            }
        }
        return this.Zn;
    }
    
    public final void ah(final Context context) {
        this.af(context);
    }
    
    public final void ay(final String zj) {
        this.Zj = zj;
        if (TextUtils.isEmpty((CharSequence)this.Zj)) {
            this.dM &= 0xFFFFFFFB;
            return;
        }
        this.dM |= 0x4;
    }
    
    public final void az(final String s) {
        final URI uri = new URI(s);
        final String path = uri.getPath();
        String substring;
        if (!TextUtils.isEmpty((CharSequence)path)) {
            substring = path.substring(1);
        }
        else {
            substring = null;
        }
        this.GZ = substring;
        final String userInfo = uri.getUserInfo();
        String s2;
        String s3;
        if (!TextUtils.isEmpty((CharSequence)userInfo)) {
            final String[] split = userInfo.split(":", 2);
            s2 = split[0];
            if (split.length > 1) {
                s3 = split[1];
            }
            else {
                s3 = null;
            }
        }
        else {
            s3 = null;
            s2 = null;
        }
        this.t(s2, s3);
        final String scheme = uri.getScheme();
        final String host = uri.getHost();
        final int port = uri.getPort();
        final String[] split2 = scheme.split("\\+");
        final String s4 = split2[0];
        final String[] split3 = scheme.split("\\+");
        int n2;
        if (split3.length >= 2) {
            final String s5 = split3[1];
            int n;
            if ("ssl".equals(s5)) {
                n = 1;
            }
            else if ("tls".equals(s5)) {
                n = 2;
            }
            else {
                n = 0;
            }
            if (split3.length >= 3 && "trustallcerts".equals(split3[2])) {
                n2 = (n | 0x8);
            }
            else {
                n2 = n;
            }
        }
        else {
            n2 = 0;
        }
        String s6;
        if (split2.length > 3) {
            s6 = split2[3];
        }
        else {
            final int length = split2.length;
            s6 = null;
            if (length > 2) {
                final boolean equals = "trustallcerts".equals(split2[2]);
                s6 = null;
                if (!equals) {
                    this.Zk = split2[2];
                    s6 = null;
                }
            }
        }
        this.a(s4, host, port, n2, s6);
    }
    
    @Override
    public final void b(final Cursor cursor) {
        this.XU = HostAuth.CONTENT_URI;
        this.Ln = cursor.getLong(0);
        this.Zh = cursor.getString(1);
        this.WA = cursor.getString(2);
        this.Zi = cursor.getInt(3);
        this.dM = cursor.getInt(4);
        this.Zj = cursor.getString(5);
        this.Qd = cursor.getString(6);
        this.GZ = cursor.getString(7);
        this.Zk = cursor.getString(8);
        this.Zm = cursor.getLong(9);
        if (this.Zm != -1L) {
            this.dM |= 0x10;
        }
    }
    
    public int describeContents() {
        return 0;
    }
    
    public boolean equals(final Object o) {
        if (o instanceof HostAuth) {
            final HostAuth hostAuth = (HostAuth)o;
            if (this.Zi == hostAuth.Zi && this.Ln == hostAuth.Ln && this.dM == hostAuth.dM && TextUtils.equals((CharSequence)this.Zh, (CharSequence)hostAuth.Zh) && TextUtils.equals((CharSequence)this.WA, (CharSequence)hostAuth.WA) && TextUtils.equals((CharSequence)this.Zj, (CharSequence)hostAuth.Zj) && TextUtils.equals((CharSequence)this.Qd, (CharSequence)hostAuth.Qd) && TextUtils.equals((CharSequence)this.GZ, (CharSequence)hostAuth.GZ) && TextUtils.equals((CharSequence)this.Zk, (CharSequence)hostAuth.Zk)) {
                return true;
            }
        }
        return false;
    }
    
    public int hashCode() {
        int n = 29;
        if (this.Qd != null) {
            n = 29 + this.Qd.hashCode();
        }
        if (this.Zk != null) {
            n += this.Zk.hashCode() << 8;
        }
        return (n << 8) + this.dM;
    }
    
    @Override
    public final ContentValues lB() {
        final ContentValues contentValues = new ContentValues();
        contentValues.put("protocol", this.Zh);
        contentValues.put("address", this.WA);
        contentValues.put("port", this.Zi);
        contentValues.put("flags", this.dM);
        contentValues.put("login", this.Zj);
        contentValues.put("password", this.Qd);
        contentValues.put("domain", this.GZ);
        contentValues.put("certAlias", this.Zk);
        contentValues.put("credentialKey", this.Zm);
        contentValues.put("accountKey", 0);
        return contentValues;
    }
    
    protected final JSONObject lC() {
        try {
            final JSONObject jsonObject = new JSONObject();
            jsonObject.put("protocol", (Object)this.Zh);
            jsonObject.put("address", (Object)this.WA);
            jsonObject.put("port", this.Zi);
            jsonObject.put("flags", this.dM);
            jsonObject.put("login", (Object)this.Zj);
            jsonObject.putOpt("password", (Object)this.Qd);
            jsonObject.putOpt("domain", (Object)this.GZ);
            jsonObject.putOpt("certAlias", (Object)this.Zk);
            if (this.Zn != null) {
                jsonObject.putOpt("credential", (Object)this.Zn.lC());
            }
            return jsonObject;
        }
        catch (JSONException ex) {
            E.b(E.TAG, (Throwable)ex, "Exception while serializing HostAuth", new Object[0]);
            return null;
        }
    }
    
    public final void lP() {
        this.Zn = null;
        this.Zm = -1L;
        this.dM &= 0xFFFFFFEF;
    }
    
    public final String[] lQ() {
        String trim;
        if (this.Zj != null) {
            trim = this.Zj.trim();
        }
        else {
            trim = null;
        }
        return new String[] { trim, this.Qd };
    }
    
    public final void t(final String zj, final String qd) {
        this.Zj = zj;
        this.Qd = qd;
        if (TextUtils.isEmpty((CharSequence)this.Zj)) {
            this.dM &= 0xFFFFFFFB;
            return;
        }
        this.dM |= 0x4;
    }
    
    public String toString() {
        return "[protocol " + this.Zh + "]";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeLong(this.Ln);
        parcel.writeString(this.Zh);
        parcel.writeString(this.WA);
        parcel.writeInt(this.Zi);
        parcel.writeInt(this.dM);
        parcel.writeString(this.Zj);
        parcel.writeString(this.Qd);
        parcel.writeString(this.GZ);
        parcel.writeString(this.Zk);
        if ((0x10 & this.dM) != 0x0) {
            parcel.writeLong(this.Zm);
            if (this.Zn != null) {
                this.Zn.writeToParcel(parcel, n);
                return;
            }
            Credential.XQ.writeToParcel(parcel, n);
        }
    }
}
