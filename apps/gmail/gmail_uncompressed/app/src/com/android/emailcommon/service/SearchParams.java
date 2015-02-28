package com.android.emailcommon.service;

import android.os.*;
import android.util.*;
import com.google.common.base.*;
import java.util.*;

public class SearchParams implements Parcelable
{
    public static final Parcelable$Creator<SearchParams> CREATOR;
    public final long PJ;
    public boolean aaH;
    public final String aaI;
    public final Date aaJ;
    public final Date aaK;
    public int aaL;
    public long aaM;
    public int gY;
    
    static {
        CREATOR = (Parcelable$Creator)new G();
    }
    
    public SearchParams(final long pj, final String aaI, final long aaM) {
        this.aaH = true;
        this.aaL = 10;
        this.gY = 0;
        this.PJ = pj;
        this.aaI = aaI;
        this.aaJ = null;
        this.aaK = null;
        this.aaM = aaM;
    }
    
    public SearchParams(final Parcel parcel) {
        this.aaH = true;
        this.aaL = 10;
        this.gY = 0;
        this.PJ = parcel.readLong();
        this.aaH = (parcel.readInt() == 1);
        this.aaI = parcel.readString();
        this.aaL = parcel.readInt();
        this.gY = parcel.readInt();
        final SparseArray sparseArray = parcel.readSparseArray(this.getClass().getClassLoader());
        if (sparseArray.get(0) != null) {
            this.aaJ = new Date((long)sparseArray.get(0));
        }
        else {
            this.aaJ = null;
        }
        if (sparseArray.get(1) != null) {
            this.aaK = new Date((long)sparseArray.get(1));
            return;
        }
        this.aaK = null;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o != this) {
            if (o == null || !(o instanceof SearchParams)) {
                return false;
            }
            final SearchParams searchParams = (SearchParams)o;
            if (this.PJ != searchParams.PJ || this.aaH != searchParams.aaH || !this.aaI.equals(searchParams.aaI) || !e.b(this.aaJ, searchParams.aaJ) || !e.b(this.aaK, searchParams.aaK) || this.aaL != searchParams.aaL || this.gY != searchParams.gY) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.PJ, this.aaI, this.aaJ, this.aaK, this.aaL, this.gY });
    }
    
    @Override
    public String toString() {
        return "[SearchParams " + this.PJ + ":" + this.aaI + " (" + this.gY + ", " + this.aaL + ") {" + this.aaJ + ", " + this.aaK + "}]";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeLong(this.PJ);
        int n2;
        if (this.aaH) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        parcel.writeInt(n2);
        parcel.writeString(this.aaI);
        parcel.writeInt(this.aaL);
        parcel.writeInt(this.gY);
        final SparseArray sparseArray = new SparseArray(2);
        if (this.aaJ != null) {
            sparseArray.put(0, (Object)this.aaJ.getTime());
        }
        if (this.aaK != null) {
            sparseArray.put(1, (Object)this.aaK.getTime());
        }
        parcel.writeSparseArray(sparseArray);
    }
}
