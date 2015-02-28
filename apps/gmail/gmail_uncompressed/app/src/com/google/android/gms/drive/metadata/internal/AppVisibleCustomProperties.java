package com.google.android.gms.drive.metadata.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public final class AppVisibleCustomProperties implements SafeParcelable, Iterable<CustomProperty>
{
    public static final Parcelable$Creator<AppVisibleCustomProperties> CREATOR;
    public static final AppVisibleCustomProperties bIf;
    final List<CustomProperty> bIg;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
        bIf = new a().Mc();
    }
    
    AppVisibleCustomProperties(final int btV, final Collection<CustomProperty> collection) {
        this.btV = btV;
        G.ae(collection);
        this.bIg = new ArrayList<CustomProperty>(collection);
    }
    
    private AppVisibleCustomProperties(final Collection<CustomProperty> collection) {
        this(1, collection);
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final Iterator<CustomProperty> iterator() {
        return this.bIg.iterator();
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        b.a(this, parcel);
    }
}
