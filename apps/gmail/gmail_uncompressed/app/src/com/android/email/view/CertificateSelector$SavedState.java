package com.android.email.view;

import android.view.*;
import android.os.*;

public class CertificateSelector$SavedState extends View$BaseSavedState
{
    public static final Parcelable$Creator<CertificateSelector$SavedState> CREATOR;
    final String mValue;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    private CertificateSelector$SavedState(final Parcel parcel) {
        super(parcel);
        this.mValue = parcel.readString();
    }
    
    CertificateSelector$SavedState(final Parcelable parcelable, final String mValue) {
        super(parcelable);
        this.mValue = mValue;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        super.writeToParcel(parcel, n);
        parcel.writeString(this.mValue);
    }
}
