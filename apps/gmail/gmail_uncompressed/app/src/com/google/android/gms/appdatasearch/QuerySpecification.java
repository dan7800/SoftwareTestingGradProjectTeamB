package com.google.android.gms.appdatasearch;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class QuerySpecification implements SafeParcelable
{
    public static final S CREATOR;
    final int btV;
    public final int buH;
    public final int buI;
    public final int buJ;
    public final boolean bvf;
    public final List<String> bvg;
    public final List<Section> bvh;
    public final boolean bvi;
    public final boolean bvj;
    
    static {
        CREATOR = new S();
    }
    
    QuerySpecification(final int btV, final boolean bvf, final List<String> bvg, final List<Section> bvh, final boolean bvi, final int buH, final int buI, final boolean bvj, final int buJ) {
        this.btV = btV;
        this.bvf = bvf;
        this.bvg = bvg;
        this.bvh = bvh;
        this.bvi = bvi;
        this.buH = buH;
        this.buI = buI;
        this.bvj = bvj;
        this.buJ = buJ;
    }
    
    public int describeContents() {
        final S creator = QuerySpecification.CREATOR;
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final S creator = QuerySpecification.CREATOR;
        S.a(this, parcel);
    }
}
