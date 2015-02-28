package com.google.android.gm.preference;

import android.preference.*;
import android.os.*;

class IntegerPickerPreference$SavedState extends Preference$BaseSavedState
{
    public static final Parcelable$Creator<IntegerPickerPreference$SavedState> CREATOR;
    int value;
    
    static {
        CREATOR = (Parcelable$Creator)new p();
    }
    
    public IntegerPickerPreference$SavedState(final Parcel parcel) {
        super(parcel);
        this.value = parcel.readInt();
    }
    
    public IntegerPickerPreference$SavedState(final Parcelable parcelable) {
        super(parcelable);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        super.writeToParcel(parcel, n);
        parcel.writeInt(this.value);
    }
}
