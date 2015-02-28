package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.wearable.*;
import android.net.*;
import java.util.*;
import android.util.*;
import java.io.*;
import android.os.*;

public class m implements SafeParcelable, a
{
    public static final Parcelable$Creator<m> CREATOR;
    private byte[] Rb;
    final int btV;
    private final Map<String, b> cnd;
    private final Uri eM;
    
    static {
        CREATOR = (Parcelable$Creator)new s();
    }
    
    m(final int btV, final Uri em, final Bundle bundle, final byte[] rb) {
        this.btV = btV;
        this.eM = em;
        final HashMap<String, DataItemAssetParcelable> cnd = new HashMap<String, DataItemAssetParcelable>();
        bundle.setClassLoader(DataItemAssetParcelable.class.getClassLoader());
        for (final String s : bundle.keySet()) {
            cnd.put(s, (DataItemAssetParcelable)bundle.getParcelable(s));
        }
        this.cnd = (Map<String, b>)cnd;
        this.Rb = rb;
    }
    
    public final Bundle VN() {
        final Bundle bundle = new Bundle();
        bundle.setClassLoader(DataItemAssetParcelable.class.getClassLoader());
        for (final Map.Entry<String, b> entry : this.cnd.entrySet()) {
            bundle.putParcelable((String)entry.getKey(), (Parcelable)new DataItemAssetParcelable(entry.getValue()));
        }
        return bundle;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public final byte[] getData() {
        return this.Rb;
    }
    
    public final Uri getUri() {
        return this.eM;
    }
    
    @Override
    public String toString() {
        final boolean loggable = Log.isLoggable("DataItem", 3);
        final StringBuilder sb = new StringBuilder("DataItemParcelable[");
        sb.append("@");
        sb.append(Integer.toHexString(this.hashCode()));
        final StringBuilder sb2 = new StringBuilder(",dataSz=");
        Serializable value;
        if (this.Rb == null) {
            value = "null";
        }
        else {
            value = this.Rb.length;
        }
        sb.append(sb2.append(value).toString());
        sb.append(", numAssets=" + this.cnd.size());
        sb.append(", uri=" + this.eM);
        if (!loggable) {
            sb.append("]");
            return sb.toString();
        }
        sb.append("]\n  assets: ");
        for (final String s : this.cnd.keySet()) {
            sb.append("\n    " + s + ": " + this.cnd.get(s));
        }
        sb.append("\n  ]");
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        s.a(this, parcel, n);
    }
}
