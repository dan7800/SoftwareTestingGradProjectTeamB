package android.support.v7.widget;

import android.view.*;
import android.os.*;

class Toolbar$SavedState extends View$BaseSavedState
{
    public static final Parcelable$Creator<Toolbar$SavedState> CREATOR;
    public int Gw;
    public boolean Gx;
    
    static {
        CREATOR = (Parcelable$Creator)new ab();
    }
    
    public Toolbar$SavedState(final Parcel parcel) {
        super(parcel);
        this.Gw = parcel.readInt();
        this.Gx = (parcel.readInt() != 0);
    }
    
    public Toolbar$SavedState(final Parcelable parcelable) {
        super(parcelable);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        super.writeToParcel(parcel, n);
        parcel.writeInt(this.Gw);
        int n2;
        if (this.Gx) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        parcel.writeInt(n2);
    }
}
