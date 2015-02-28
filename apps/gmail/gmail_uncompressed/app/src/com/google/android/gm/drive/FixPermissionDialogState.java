package com.google.android.gm.drive;

import android.os.*;

public class FixPermissionDialogState implements Parcelable
{
    public static final Parcelable$Creator<FixPermissionDialogState> CREATOR;
    private final boolean bap;
    private final int baq;
    private final int bar;
    private final int bas;
    
    static {
        CREATOR = (Parcelable$Creator)new f();
    }
    
    public FixPermissionDialogState(final Parcel parcel) {
        this.bap = (parcel.readInt() != 0);
        this.baq = parcel.readInt();
        this.bar = parcel.readInt();
        this.bas = parcel.readInt();
    }
    
    public FixPermissionDialogState(final boolean bap, final int baq, final int bar, final int bas) {
        this.bap = bap;
        this.baq = baq;
        this.bar = bar;
        this.bas = bas;
    }
    
    public final boolean Dm() {
        return this.bap;
    }
    
    public final int Dn() {
        return this.bar;
    }
    
    public final int Do() {
        return this.bas;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public final int getCheckedRadioButtonId() {
        return this.baq;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        int n2;
        if (this.bap) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        parcel.writeInt(n2);
        parcel.writeInt(this.baq);
        parcel.writeInt(this.bar);
        parcel.writeInt(this.bas);
    }
}
