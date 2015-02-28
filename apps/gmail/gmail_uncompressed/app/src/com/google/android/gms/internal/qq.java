package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public class qq implements SafeParcelable
{
    public static final cJ CREATOR;
    public final long bXc;
    public final byte[] bXd;
    public final Bundle bXe;
    public final String tag;
    public final int versionCode;
    
    static {
        CREATOR = new cJ();
    }
    
    qq(final int versionCode, final long bXc, final String tag, final byte[] bXd, final Bundle bXe) {
        this.versionCode = versionCode;
        this.bXc = bXc;
        this.tag = tag;
        this.bXd = bXd;
        this.bXe = bXe;
    }
    
    public qq(final long bXc, final String tag, final byte[] array, final String... array2) {
        this.versionCode = 1;
        this.bXc = bXc;
        this.tag = tag;
        this.bXd = null;
        this.bXe = G(array2);
    }
    
    private static Bundle G(final String... array) {
        Bundle bundle = null;
        if (array != null) {
            if (array.length % 2 != 0) {
                throw new IllegalArgumentException("extras must have an even number of elements");
            }
            final int n = array.length / 2;
            bundle = null;
            if (n != 0) {
                bundle = new Bundle(n);
                for (int i = 0; i < n; ++i) {
                    bundle.putString(array[i * 2], array[1 + i * 2]);
                }
            }
        }
        return bundle;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("tag=").append(this.tag).append(",");
        sb.append("eventTime=").append(this.bXc).append(",");
        if (this.bXe != null && !this.bXe.isEmpty()) {
            sb.append("keyValues=");
            for (final String s : this.bXe.keySet()) {
                sb.append("(").append(s).append(",");
                sb.append(this.bXe.getString(s)).append(")");
                sb.append(" ");
            }
        }
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        cJ.a(this, parcel);
    }
}
