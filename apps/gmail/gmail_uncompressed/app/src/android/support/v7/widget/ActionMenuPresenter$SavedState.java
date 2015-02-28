package android.support.v7.widget;

import android.os.*;

class ActionMenuPresenter$SavedState implements Parcelable
{
    public static final Parcelable$Creator<ActionMenuPresenter$SavedState> CREATOR;
    public int Cg;
    
    static {
        CREATOR = (Parcelable$Creator)new h();
    }
    
    ActionMenuPresenter$SavedState() {
    }
    
    ActionMenuPresenter$SavedState(final Parcel parcel) {
        this.Cg = parcel.readInt();
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeInt(this.Cg);
    }
}
