package android.support.v7.app;

import android.os.*;

class ActionBarActivityDelegateBase$PanelFeatureState$SavedState implements Parcelable
{
    public static final Parcelable$Creator<ActionBarActivityDelegateBase$PanelFeatureState$SavedState> CREATOR;
    boolean mT;
    int oI;
    Bundle oU;
    
    static {
        CREATOR = (Parcelable$Creator)new q();
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeInt(this.oI);
        int n2;
        if (this.mT) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        parcel.writeInt(n2);
        if (this.mT) {
            parcel.writeBundle(this.oU);
        }
    }
}
