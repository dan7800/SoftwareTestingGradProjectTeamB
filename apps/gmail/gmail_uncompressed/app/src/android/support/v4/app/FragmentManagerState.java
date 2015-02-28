package android.support.v4.app;

import android.os.*;

final class FragmentManagerState implements Parcelable
{
    public static final Parcelable$Creator<FragmentManagerState> CREATOR;
    FragmentState[] cf;
    int[] cg;
    BackStackState[] ch;
    
    static {
        CREATOR = (Parcelable$Creator)new v();
    }
    
    public FragmentManagerState() {
    }
    
    public FragmentManagerState(final Parcel parcel) {
        this.cf = (FragmentState[])parcel.createTypedArray((Parcelable$Creator)FragmentState.CREATOR);
        this.cg = parcel.createIntArray();
        this.ch = (BackStackState[])parcel.createTypedArray((Parcelable$Creator)BackStackState.CREATOR);
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeTypedArray((Parcelable[])this.cf, n);
        parcel.writeIntArray(this.cg);
        parcel.writeTypedArray((Parcelable[])this.ch, n);
    }
}
