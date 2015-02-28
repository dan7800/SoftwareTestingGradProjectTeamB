package android.support.v7.internal.widget;

import android.os.*;

class SpinnerCompat$SavedState extends AbsSpinnerCompat$SavedState
{
    public static final Parcelable$Creator<SpinnerCompat$SavedState> CREATOR;
    boolean AY;
    
    static {
        CREATOR = (Parcelable$Creator)new O();
    }
    
    private SpinnerCompat$SavedState(final Parcel parcel) {
        super(parcel);
        this.AY = (parcel.readByte() != 0);
    }
    
    SpinnerCompat$SavedState(final Parcelable parcelable) {
        super(parcelable);
    }
    
    @Override
    public void writeToParcel(final Parcel parcel, final int n) {
        super.writeToParcel(parcel, n);
        boolean b;
        if (this.AY) {
            b = true;
        }
        else {
            b = false;
        }
        parcel.writeByte((byte)(byte)(b ? 1 : 0));
    }
}
