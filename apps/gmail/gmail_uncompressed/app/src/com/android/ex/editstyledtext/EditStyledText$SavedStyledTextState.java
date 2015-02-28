package com.android.ex.editstyledtext;

import android.view.*;
import android.os.*;

public class EditStyledText$SavedStyledTextState extends View$BaseSavedState
{
    public int mu;
    
    EditStyledText$SavedStyledTextState(final Parcelable parcelable) {
        super(parcelable);
    }
    
    public String toString() {
        return "EditStyledText.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " bgcolor=" + this.mu + "}";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        super.writeToParcel(parcel, n);
        parcel.writeInt(this.mu);
    }
}
