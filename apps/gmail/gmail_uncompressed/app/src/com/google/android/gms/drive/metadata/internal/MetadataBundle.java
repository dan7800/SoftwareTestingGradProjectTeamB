package com.google.android.gms.drive.metadata.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.drive.internal.*;
import com.google.android.gms.drive.metadata.*;
import java.util.*;
import com.google.android.gms.common.internal.*;
import android.os.*;

public final class MetadataBundle implements SafeParcelable
{
    public static final Parcelable$Creator<MetadataBundle> CREATOR;
    final Bundle bIj;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new i();
    }
    
    MetadataBundle(final int btV, final Bundle bundle) {
        this.btV = btV;
        (this.bIj = G.ae(bundle)).setClassLoader(this.getClass().getClassLoader());
        final ArrayList<String> list = new ArrayList<String>();
        for (final String s : this.bIj.keySet()) {
            if (f.gc(s) == null) {
                list.add(s);
                Z.ak("MetadataBundle", "Ignored unknown metadata field in bundle: " + s);
            }
        }
        final Iterator<Object> iterator2 = list.iterator();
        while (iterator2.hasNext()) {
            this.bIj.remove((String)iterator2.next());
        }
    }
    
    private MetadataBundle(final Bundle bundle) {
        this(1, bundle);
    }
    
    public static MetadataBundle a(final MetadataBundle metadataBundle) {
        return new MetadataBundle(new Bundle(metadataBundle.bIj));
    }
    
    public final Set<a<?>> Md() {
        final HashSet<a<?>> set = new HashSet<a<?>>();
        final Iterator<String> iterator = this.bIj.keySet().iterator();
        while (iterator.hasNext()) {
            set.add(f.gc(iterator.next()));
        }
        return set;
    }
    
    public final <T> T a(final a<T> a) {
        return a.w(this.bIj);
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof MetadataBundle)) {
            return false;
        }
        final MetadataBundle metadataBundle = (MetadataBundle)o;
        final Set keySet = this.bIj.keySet();
        if (!keySet.equals(metadataBundle.bIj.keySet())) {
            return false;
        }
        for (final String s : keySet) {
            if (!E.b(this.bIj.get(s), metadataBundle.bIj.get(s))) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        final Iterator<String> iterator = this.bIj.keySet().iterator();
        int n = 1;
        while (iterator.hasNext()) {
            n = n * 31 + this.bIj.get((String)iterator.next()).hashCode();
        }
        return n;
    }
    
    @Override
    public final String toString() {
        return "MetadataBundle [values=" + this.bIj + "]";
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        i.a(this, parcel);
    }
}
