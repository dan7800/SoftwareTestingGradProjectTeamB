package com.google.android.gms.location.places;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public final class PlaceFilter implements SafeParcelable
{
    public static final e CREATOR;
    final int btV;
    private final String cbA;
    private final boolean cbB;
    final List<UserDataType> cbC;
    final List<String> cbD;
    private final Set<PlaceType> cbE;
    private final Set<UserDataType> cbF;
    private final Set<String> cbG;
    final List<PlaceType> cbz;
    
    static {
        CREATOR = new e();
    }
    
    PlaceFilter(final int btV, final List<PlaceType> list, String cbA, final boolean cbB, final List<UserDataType> list2, final List<String> list3) {
        this.btV = btV;
        List<PlaceType> cbz;
        if (list == null) {
            cbz = Collections.emptyList();
        }
        else {
            cbz = Collections.unmodifiableList((List<? extends PlaceType>)list);
        }
        this.cbz = cbz;
        if (cbA == null) {
            cbA = "";
        }
        this.cbA = cbA;
        this.cbB = cbB;
        List<UserDataType> cbC;
        if (list2 == null) {
            cbC = Collections.emptyList();
        }
        else {
            cbC = Collections.unmodifiableList((List<? extends UserDataType>)list2);
        }
        this.cbC = cbC;
        List<String> cbD;
        if (list3 == null) {
            cbD = Collections.emptyList();
        }
        else {
            cbD = Collections.unmodifiableList((List<? extends String>)list3);
        }
        this.cbD = cbD;
        this.cbE = Q(this.cbz);
        this.cbF = Q(this.cbC);
        this.cbG = Q(this.cbD);
    }
    
    private static <E> Set<E> Q(final List<E> list) {
        if (list.isEmpty()) {
            return Collections.emptySet();
        }
        return Collections.unmodifiableSet((Set<? extends E>)new HashSet<E>((Collection<? extends E>)list));
    }
    
    @Deprecated
    public final String Tw() {
        return this.cbA;
    }
    
    public final boolean Tx() {
        return this.cbB;
    }
    
    public final int describeContents() {
        final e creator = PlaceFilter.CREATOR;
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (this != o) {
            if (!(o instanceof PlaceFilter)) {
                return false;
            }
            final PlaceFilter placeFilter = (PlaceFilter)o;
            if (!this.cbE.equals(placeFilter.cbE) || this.cbB != placeFilter.cbB || !this.cbF.equals(placeFilter.cbF) || !this.cbG.equals(placeFilter.cbG)) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { this.cbE, this.cbB, this.cbF, this.cbG });
    }
    
    @Override
    public final String toString() {
        return E.ad(this).e("types", this.cbE).e("placeIds", this.cbG).e("requireOpenNow", this.cbB).e("requestedUserDataTypes", this.cbF).toString();
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        final e creator = PlaceFilter.CREATOR;
        e.a(this, parcel);
    }
}
