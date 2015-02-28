package android.support.v4.app;

import android.os.*;
import android.content.*;
import android.util.*;

final class FragmentState implements Parcelable
{
    public static final Parcelable$Creator<FragmentState> CREATOR;
    final boolean aB;
    final int aJ;
    final String aK;
    final boolean aM;
    final boolean aN;
    Bundle ar;
    final Bundle au;
    final String ci;
    Fragment cj;
    final int d;
    final int y;
    
    static {
        CREATOR = (Parcelable$Creator)new w();
    }
    
    public FragmentState(final Parcel parcel) {
        boolean am = true;
        this.ci = parcel.readString();
        this.y = parcel.readInt();
        this.aB = (parcel.readInt() != 0 && am);
        this.aJ = parcel.readInt();
        this.d = parcel.readInt();
        this.aK = parcel.readString();
        this.aN = (parcel.readInt() != 0 && am);
        if (parcel.readInt() == 0) {
            am = false;
        }
        this.aM = am;
        this.au = parcel.readBundle();
        this.ar = parcel.readBundle();
    }
    
    public FragmentState(final Fragment fragment) {
        this.ci = fragment.getClass().getName();
        this.y = fragment.y;
        this.aB = fragment.aB;
        this.aJ = fragment.aJ;
        this.d = fragment.d;
        this.aK = fragment.aK;
        this.aN = fragment.aN;
        this.aM = fragment.aM;
        this.au = fragment.au;
    }
    
    public final Fragment a(final k k, final Fragment fragment) {
        if (this.cj != null) {
            return this.cj;
        }
        if (this.au != null) {
            this.au.setClassLoader(k.getClassLoader());
        }
        this.cj = Fragment.a((Context)k, this.ci, this.au);
        if (this.ar != null) {
            this.ar.setClassLoader(k.getClassLoader());
            this.cj.ar = this.ar;
        }
        this.cj.a(this.y, fragment);
        this.cj.aB = this.aB;
        this.cj.aD = true;
        this.cj.aJ = this.aJ;
        this.cj.d = this.d;
        this.cj.aK = this.aK;
        this.cj.aN = this.aN;
        this.cj.aM = this.aM;
        this.cj.aF = k.bn;
        if (q.DEBUG) {
            Log.v("FragmentManager", "Instantiated fragment " + this.cj);
        }
        return this.cj;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        int n2 = 1;
        parcel.writeString(this.ci);
        parcel.writeInt(this.y);
        int n3;
        if (this.aB) {
            n3 = n2;
        }
        else {
            n3 = 0;
        }
        parcel.writeInt(n3);
        parcel.writeInt(this.aJ);
        parcel.writeInt(this.d);
        parcel.writeString(this.aK);
        int n4;
        if (this.aN) {
            n4 = n2;
        }
        else {
            n4 = 0;
        }
        parcel.writeInt(n4);
        if (!this.aM) {
            n2 = 0;
        }
        parcel.writeInt(n2);
        parcel.writeBundle(this.au);
        parcel.writeBundle(this.ar);
    }
}
