package com.google.android.gsf;

import android.content.*;
import android.os.*;

public class GoogleLoginCredentialsResult implements Parcelable
{
    public static final Parcelable$Creator<GoogleLoginCredentialsResult> CREATOR;
    private String cnj;
    private Intent cnk;
    private String mAccount;
    
    static {
        CREATOR = (Parcelable$Creator)new a();
    }
    
    public GoogleLoginCredentialsResult() {
        this.cnj = null;
        this.cnk = null;
        this.mAccount = null;
    }
    
    private GoogleLoginCredentialsResult(final Parcel parcel) {
        this.mAccount = parcel.readString();
        this.cnj = parcel.readString();
        final int int1 = parcel.readInt();
        this.cnk = null;
        if (int1 == 1) {
            (this.cnk = new Intent()).readFromParcel(parcel);
            this.cnk.setExtrasClassLoader(this.getClass().getClassLoader());
        }
    }
    
    public int describeContents() {
        if (this.cnk != null) {
            return this.cnk.describeContents();
        }
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeString(this.mAccount);
        parcel.writeString(this.cnj);
        if (this.cnk != null) {
            parcel.writeInt(1);
            this.cnk.writeToParcel(parcel, 0);
            return;
        }
        parcel.writeInt(0);
    }
}
