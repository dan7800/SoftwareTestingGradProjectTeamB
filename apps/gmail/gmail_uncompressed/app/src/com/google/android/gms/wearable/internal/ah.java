package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import java.io.*;
import android.os.*;

public class ah implements SafeParcelable
{
    public static final Parcelable$Creator<ah> CREATOR;
    private final byte[] Rb;
    private final int bGi;
    final int btV;
    private final String cmX;
    private final String cmY;
    
    static {
        CREATOR = (Parcelable$Creator)new g();
    }
    
    ah(final int btV, final int bGi, final String cmX, final byte[] rb, final String cmY) {
        this.btV = btV;
        this.bGi = bGi;
        this.cmX = cmX;
        this.Rb = rb;
        this.cmY = cmY;
    }
    
    public final int LS() {
        return this.bGi;
    }
    
    public final String VO() {
        return this.cmY;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public final byte[] getData() {
        return this.Rb;
    }
    
    public final String getPath() {
        return this.cmX;
    }
    
    @Override
    public String toString() {
        final StringBuilder append = new StringBuilder("MessageEventParcelable[").append(this.bGi).append(",").append(this.cmX).append(", size=");
        Serializable value;
        if (this.Rb == null) {
            value = "null";
        }
        else {
            value = this.Rb.length;
        }
        return append.append(value).append("]").toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        g.a(this, parcel);
    }
}
