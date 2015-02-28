package android.support.v4.view;

import android.view.*;
import android.support.v4.c.*;
import android.os.*;

public class ViewPager$SavedState extends View$BaseSavedState
{
    public static final Parcelable$Creator<ViewPager$SavedState> CREATOR;
    Parcelable jy;
    ClassLoader jz;
    int position;
    
    static {
        CREATOR = a.a((c<ViewPager$SavedState>)new aP());
    }
    
    ViewPager$SavedState(final Parcel parcel, ClassLoader classLoader) {
        super(parcel);
        if (classLoader == null) {
            classLoader = this.getClass().getClassLoader();
        }
        this.position = parcel.readInt();
        this.jy = parcel.readParcelable(classLoader);
        this.jz = classLoader;
    }
    
    public ViewPager$SavedState(final Parcelable parcelable) {
        super(parcelable);
    }
    
    public String toString() {
        return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.position + "}";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        super.writeToParcel(parcel, n);
        parcel.writeInt(this.position);
        parcel.writeParcelable(this.jy, n);
    }
}
