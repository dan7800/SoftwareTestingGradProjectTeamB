package android.support.v4.widget;

import android.view.*;
import android.os.*;

class SlidingPaneLayout$SavedState extends View$BaseSavedState
{
    public static final Parcelable$Creator<SlidingPaneLayout$SavedState> CREATOR;
    boolean mT;
    
    static {
        CREATOR = (Parcelable$Creator)new R();
    }
    
    private SlidingPaneLayout$SavedState(final Parcel parcel) {
        super(parcel);
        this.mT = (parcel.readInt() != 0);
    }
    
    SlidingPaneLayout$SavedState(final Parcelable parcelable) {
        super(parcelable);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        super.writeToParcel(parcel, n);
        int n2;
        if (this.mT) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        parcel.writeInt(n2);
    }
}
