package com.google.android.gms.location.copresence;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class People implements SafeParcelable
{
    public static final Parcelable$Creator<People> CREATOR;
    public static final People cbb;
    public static final People cbc;
    private final int btV;
    private final List<String> caZ;
    private final int cba;
    
    static {
        CREATOR = (Parcelable$Creator)new m();
        cbb = new People(1);
        cbc = new People(2);
    }
    
    private People(final int n) {
        this(1, null, n);
    }
    
    People(final int btV, final List<String> list, final int cba) {
        this.btV = btV;
        List<String> unmodifiableList;
        if (list == null) {
            unmodifiableList = null;
        }
        else {
            unmodifiableList = Collections.unmodifiableList((List<? extends String>)list);
        }
        this.caZ = unmodifiableList;
        this.cba = cba;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final List<String> Ti() {
        return this.caZ;
    }
    
    public final int Tj() {
        return this.cba;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        m.a(this, parcel);
    }
}
