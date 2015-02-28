package android.support.v7.internal.widget;

import android.view.*;
import android.os.*;

class AbsSpinnerCompat$SavedState extends View$BaseSavedState
{
    public static final Parcelable$Creator<AbsSpinnerCompat$SavedState> CREATOR;
    int position;
    long yI;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
    }
    
    AbsSpinnerCompat$SavedState(final Parcel parcel) {
        super(parcel);
        this.yI = parcel.readLong();
        this.position = parcel.readInt();
    }
    
    AbsSpinnerCompat$SavedState(final Parcelable parcelable) {
        super(parcelable);
    }
    
    public String toString() {
        return "AbsSpinner.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " selectedId=" + this.yI + " position=" + this.position + "}";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        super.writeToParcel(parcel, n);
        parcel.writeLong(this.yI);
        parcel.writeInt(this.position);
    }
}
