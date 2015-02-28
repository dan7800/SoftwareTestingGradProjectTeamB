package android.support.v4.widget;

import android.view.*;
import android.os.*;

public class DrawerLayout$SavedState extends View$BaseSavedState
{
    public static final Parcelable$Creator<DrawerLayout$SavedState> CREATOR;
    int lp;
    int lq;
    int lr;
    
    static {
        CREATOR = (Parcelable$Creator)new m();
    }
    
    public DrawerLayout$SavedState(final Parcel parcel) {
        super(parcel);
        this.lp = 0;
        this.lq = 0;
        this.lr = 0;
        this.lp = parcel.readInt();
    }
    
    public DrawerLayout$SavedState(final Parcelable parcelable) {
        super(parcelable);
        this.lp = 0;
        this.lq = 0;
        this.lr = 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        super.writeToParcel(parcel, n);
        parcel.writeInt(this.lp);
    }
}
