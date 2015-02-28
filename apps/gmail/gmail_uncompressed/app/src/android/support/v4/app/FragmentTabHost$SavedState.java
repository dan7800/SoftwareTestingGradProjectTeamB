package android.support.v4.app;

import android.view.*;
import android.os.*;

class FragmentTabHost$SavedState extends View$BaseSavedState
{
    public static final Parcelable$Creator<FragmentTabHost$SavedState> CREATOR;
    String h;
    
    static {
        CREATOR = (Parcelable$Creator)new x();
    }
    
    private FragmentTabHost$SavedState(final Parcel parcel) {
        super(parcel);
        this.h = parcel.readString();
    }
    
    FragmentTabHost$SavedState(final Parcelable parcelable) {
        super(parcelable);
    }
    
    public String toString() {
        return "FragmentTabHost.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " curTab=" + this.h + "}";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        super.writeToParcel(parcel, n);
        parcel.writeString(this.h);
    }
}
