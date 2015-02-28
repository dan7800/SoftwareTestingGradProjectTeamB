package com.google.android.gms.drive.query.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.query.*;
import android.os.*;

public class FilterHolder implements SafeParcelable
{
    public static final Parcelable$Creator<FilterHolder> CREATOR;
    final MatchAllFilter bIA;
    final HasFilter bIB;
    private final Filter bIC;
    final ComparisonFilter<?> bIv;
    final FieldOnlyFilter bIw;
    final LogicalFilter bIx;
    final NotFilter bIy;
    final InFilter<?> bIz;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new d();
    }
    
    FilterHolder(final int btV, final ComparisonFilter<?> bIv, final FieldOnlyFilter bIw, final LogicalFilter bIx, final NotFilter bIy, final InFilter<?> bIz, final MatchAllFilter bia, final HasFilter<?> bib) {
        this.btV = btV;
        this.bIv = bIv;
        this.bIw = bIw;
        this.bIx = bIx;
        this.bIy = bIy;
        this.bIz = bIz;
        this.bIA = bia;
        this.bIB = bib;
        if (this.bIv != null) {
            this.bIC = this.bIv;
            return;
        }
        if (this.bIw != null) {
            this.bIC = this.bIw;
            return;
        }
        if (this.bIx != null) {
            this.bIC = this.bIx;
            return;
        }
        if (this.bIy != null) {
            this.bIC = this.bIy;
            return;
        }
        if (this.bIz != null) {
            this.bIC = this.bIz;
            return;
        }
        if (this.bIA != null) {
            this.bIC = this.bIA;
            return;
        }
        if (this.bIB != null) {
            this.bIC = this.bIB;
            return;
        }
        throw new IllegalArgumentException("At least one filter must be set.");
    }
    
    public final Filter Mf() {
        return this.bIC;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public String toString() {
        return String.format("FilterHolder[%s]", this.bIC);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        d.a(this, parcel, n);
    }
}
