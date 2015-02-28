package com.android.emailcommon.service;

import android.os.*;
import android.text.*;
import com.android.emailcommon.provider.*;

public class HostAuthCompat implements Parcelable
{
    public static final Parcelable$Creator<HostAuthCompat> CREATOR;
    private String GZ;
    private String NS;
    private String Qd;
    private String Qi;
    private String Qj;
    private String WA;
    private long XR;
    private String Zh;
    private int Zi;
    private String Zj;
    private String Zk;
    private byte[] Zl;
    private int dM;
    
    static {
        CREATOR = (Parcelable$Creator)new o();
    }
    
    public HostAuthCompat(final Parcel parcel) {
        this.Zh = parcel.readString();
        this.WA = parcel.readString();
        this.Zi = parcel.readInt();
        this.dM = parcel.readInt();
        this.Zj = parcel.readString();
        this.Qd = parcel.readString();
        this.GZ = parcel.readString();
        this.Zk = parcel.readString();
        this.Zl = parcel.createByteArray();
        this.NS = parcel.readString();
        this.Qi = parcel.readString();
        this.Qj = parcel.readString();
        this.XR = parcel.readLong();
    }
    
    public HostAuthCompat(final HostAuth hostAuth) {
        this.Zh = hostAuth.Zh;
        this.WA = hostAuth.WA;
        this.Zi = hostAuth.Zi;
        this.dM = hostAuth.dM;
        this.Zj = hostAuth.Zj;
        this.Qd = hostAuth.Qd;
        this.GZ = hostAuth.GZ;
        this.Zk = hostAuth.Zk;
        this.Zl = hostAuth.Zl;
        if (hostAuth.Zn != null) {
            this.NS = hostAuth.Zn.NS;
            this.Qi = hostAuth.Zn.Qi;
            this.Qj = hostAuth.Zn.Qj;
            this.XR = hostAuth.Zn.XR;
        }
    }
    
    public int describeContents() {
        return 0;
    }
    
    public final HostAuth lY() {
        final HostAuth hostAuth = new HostAuth();
        hostAuth.Zh = this.Zh;
        hostAuth.WA = this.WA;
        hostAuth.Zi = this.Zi;
        hostAuth.dM = this.dM;
        hostAuth.Zj = this.Zj;
        hostAuth.Qd = this.Qd;
        hostAuth.GZ = this.GZ;
        hostAuth.Zk = this.Zk;
        hostAuth.Zl = this.Zl;
        if (!TextUtils.isEmpty((CharSequence)this.NS)) {
            hostAuth.Zn = new Credential();
            hostAuth.Zn.NS = this.NS;
            hostAuth.Zn.Qi = this.Qi;
            hostAuth.Zn.Qj = this.Qj;
            hostAuth.Zn.XR = this.XR;
        }
        return hostAuth;
    }
    
    @Override
    public String toString() {
        return "[protocol " + this.Zh + "]";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeString(this.Zh);
        parcel.writeString(this.WA);
        parcel.writeInt(this.Zi);
        parcel.writeInt(this.dM);
        parcel.writeString(this.Zj);
        parcel.writeString(this.Qd);
        parcel.writeString(this.GZ);
        parcel.writeString(this.Zk);
        parcel.writeByteArray(this.Zl);
        parcel.writeString(this.NS);
        parcel.writeString(this.Qi);
        parcel.writeString(this.Qj);
        parcel.writeLong(this.XR);
    }
}
