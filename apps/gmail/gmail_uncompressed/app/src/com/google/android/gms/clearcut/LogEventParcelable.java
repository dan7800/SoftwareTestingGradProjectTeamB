package com.google.android.gms.clearcut;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.internal.*;
import com.google.a.a.a.a.a.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class LogEventParcelable implements SafeParcelable
{
    public static final e CREATOR;
    public qu bBM;
    public byte[] bBN;
    public final d bBO;
    public final c bBP;
    public final int versionCode;
    
    static {
        CREATOR = new e();
    }
    
    LogEventParcelable(final int versionCode, final qu bbm, final byte[] bbn) {
        this.versionCode = versionCode;
        this.bBM = bbm;
        this.bBN = bbn;
        this.bBO = null;
        this.bBP = null;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            if (!(o instanceof LogEventParcelable)) {
                return false;
            }
            final LogEventParcelable logEventParcelable = (LogEventParcelable)o;
            if (this.versionCode != logEventParcelable.versionCode || !E.b(this.bBM, logEventParcelable.bBM) || !Arrays.equals(this.bBN, logEventParcelable.bBN) || !E.b(this.bBO, logEventParcelable.bBO) || !E.b(this.bBP, logEventParcelable.bBP)) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.versionCode, this.bBM, this.bBN, this.bBO, this.bBP });
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder("LogEventParcelable[");
        sb.append(this.versionCode);
        sb.append(", ");
        sb.append(this.bBM);
        sb.append(", ");
        String s;
        if (this.bBN == null) {
            s = null;
        }
        else {
            s = new String(this.bBN);
        }
        sb.append(s);
        sb.append(", ");
        sb.append(this.bBO);
        sb.append(", ");
        sb.append(this.bBP);
        sb.append("]");
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        e.a(this, parcel, n);
    }
}
