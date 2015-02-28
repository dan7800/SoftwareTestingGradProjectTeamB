package com.google.android.gms.wearable;

import com.google.android.gms.common.internal.safeparcel.*;
import android.net.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class Asset implements SafeParcelable
{
    public static final Parcelable$Creator<Asset> CREATOR;
    private byte[] Rb;
    final int btV;
    private String cmM;
    public ParcelFileDescriptor cmN;
    public Uri uri;
    
    static {
        CREATOR = (Parcelable$Creator)new c();
    }
    
    Asset(final int btV, final byte[] rb, final String cmM, final ParcelFileDescriptor cmN, final Uri uri) {
        this.btV = btV;
        this.Rb = rb;
        this.cmM = cmM;
        this.cmN = cmN;
        this.uri = uri;
    }
    
    public final String VK() {
        return this.cmM;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            if (!(o instanceof Asset)) {
                return false;
            }
            final Asset asset = (Asset)o;
            if (!E.b(this.Rb, asset.Rb) || !E.b(this.cmM, asset.cmM) || !E.b(this.cmN, asset.cmN) || !E.b(this.uri, asset.uri)) {
                return false;
            }
        }
        return true;
    }
    
    public final byte[] getData() {
        return this.Rb;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.Rb, this.cmM, this.cmN, this.uri });
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("Asset[@");
        sb.append(Integer.toHexString(this.hashCode()));
        if (this.cmM == null) {
            sb.append(", nodigest");
        }
        else {
            sb.append(", ");
            sb.append(this.cmM);
        }
        if (this.Rb != null) {
            sb.append(", size=");
            sb.append(this.Rb.length);
        }
        if (this.cmN != null) {
            sb.append(", fd=");
            sb.append(this.cmN);
        }
        if (this.uri != null) {
            sb.append(", uri=");
            sb.append(this.uri);
        }
        sb.append("]");
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        c.a(this, parcel, n | 0x1);
    }
}
