package com.google.android.gsf;

import android.os.*;

public class LoginData implements Parcelable
{
    public static final Parcelable$Creator<LoginData> CREATOR;
    public String Qc;
    public String Qd;
    public LoginData$Status cnA;
    public String cnB;
    public String cnC;
    public String cnD;
    public String cnE;
    public String cnu;
    public String cnv;
    public String cnw;
    public byte[] cnx;
    public String cny;
    public String cnz;
    public int dM;
    
    static {
        CREATOR = (Parcelable$Creator)new f();
    }
    
    public LoginData() {
        this.Qc = null;
        this.cnu = null;
        this.Qd = null;
        this.cnv = null;
        this.cnw = null;
        this.cnx = null;
        this.cny = null;
        this.cnz = null;
        this.dM = 0;
        this.cnA = null;
        this.cnB = null;
        this.cnC = null;
        this.cnD = null;
        this.cnE = null;
    }
    
    private LoginData(final Parcel parcel) {
        this.Qc = null;
        this.cnu = null;
        this.Qd = null;
        this.cnv = null;
        this.cnw = null;
        this.cnx = null;
        this.cny = null;
        this.cnz = null;
        this.dM = 0;
        this.cnA = null;
        this.cnB = null;
        this.cnC = null;
        this.cnD = null;
        this.cnE = null;
        this.Qc = parcel.readString();
        this.cnu = parcel.readString();
        this.Qd = parcel.readString();
        this.cnv = parcel.readString();
        this.cnw = parcel.readString();
        final int int1 = parcel.readInt();
        if (int1 == -1) {
            this.cnx = null;
        }
        else {
            parcel.readByteArray(this.cnx = new byte[int1]);
        }
        this.cny = parcel.readString();
        this.cnz = parcel.readString();
        this.dM = parcel.readInt();
        final String string = parcel.readString();
        if (string == null) {
            this.cnA = null;
        }
        else {
            this.cnA = LoginData$Status.valueOf(string);
        }
        this.cnB = parcel.readString();
        this.cnC = parcel.readString();
        this.cnD = parcel.readString();
        this.cnE = parcel.readString();
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeString(this.Qc);
        parcel.writeString(this.cnu);
        parcel.writeString(this.Qd);
        parcel.writeString(this.cnv);
        parcel.writeString(this.cnw);
        if (this.cnx == null) {
            parcel.writeInt(-1);
        }
        else {
            parcel.writeInt(this.cnx.length);
            parcel.writeByteArray(this.cnx);
        }
        parcel.writeString(this.cny);
        parcel.writeString(this.cnz);
        parcel.writeInt(this.dM);
        if (this.cnA == null) {
            parcel.writeString((String)null);
        }
        else {
            parcel.writeString(this.cnA.name());
        }
        parcel.writeString(this.cnB);
        parcel.writeString(this.cnC);
        parcel.writeString(this.cnD);
        parcel.writeString(this.cnE);
    }
}
