package com.google.android.gms.wearable;

import com.google.android.gms.common.internal.safeparcel.*;
import android.net.*;
import java.security.*;
import com.google.android.gms.wearable.internal.*;
import android.util.*;
import java.io.*;
import java.util.*;
import android.os.*;

public class PutDataRequest implements SafeParcelable
{
    public static final Parcelable$Creator<PutDataRequest> CREATOR;
    private static final Random cmS;
    private byte[] Rb;
    final int btV;
    private final Bundle cmT;
    private final Uri eM;
    
    static {
        CREATOR = (Parcelable$Creator)new e();
        cmS = new SecureRandom();
    }
    
    PutDataRequest(final int btV, final Uri em, final Bundle cmT, final byte[] rb) {
        this.btV = btV;
        this.eM = em;
        (this.cmT = cmT).setClassLoader(DataItemAssetParcelable.class.getClassLoader());
        this.Rb = rb;
    }
    
    public final Bundle VN() {
        return this.cmT;
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
        final boolean loggable = Log.isLoggable("DataMap", 3);
        final StringBuilder sb = new StringBuilder("PutDataRequest[");
        final StringBuilder sb2 = new StringBuilder("dataSz=");
        Serializable value;
        if (this.Rb == null) {
            value = "null";
        }
        else {
            value = this.Rb.length;
        }
        sb.append(sb2.append(value).toString());
        sb.append(", numAssets=" + this.cmT.size());
        sb.append(", uri=" + this.eM);
        if (!loggable) {
            sb.append("]");
            return sb.toString();
        }
        sb.append("]\n  assets: ");
        for (final String s : this.cmT.keySet()) {
            sb.append("\n    " + s + ": " + this.cmT.getParcelable(s));
        }
        sb.append("\n  ]");
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        e.a(this, parcel, n);
    }
}
