package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public class qu implements SafeParcelable
{
    public static final cL CREATOR;
    public final int bXn;
    public final int bXo;
    public final String bXp;
    public final String bXq;
    public final boolean bXr;
    public final String packageName;
    public final int versionCode;
    
    static {
        CREATOR = new cL();
    }
    
    public qu(final int versionCode, final String packageName, final int bXn, final int bXo, final String bXp, final String bXq, final boolean bXr) {
        this.versionCode = versionCode;
        this.packageName = packageName;
        this.bXn = bXn;
        this.bXo = bXo;
        this.bXp = bXp;
        this.bXq = bXq;
        this.bXr = bXr;
    }
    
    public qu(final String s, final int bXn, final int bXo, final String bXp, final String bXq, final boolean b) {
        this.versionCode = 1;
        this.packageName = G.ae(s);
        this.bXn = bXn;
        this.bXo = bXo;
        this.bXp = bXp;
        this.bXq = bXq;
        this.bXr = true;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            if (!(o instanceof qu)) {
                return false;
            }
            final qu qu = (qu)o;
            if (!this.packageName.equals(qu.packageName) || this.bXn != qu.bXn || this.bXo != qu.bXo || !E.b(this.bXp, qu.bXp) || !E.b(this.bXq, qu.bXq) || this.bXr != qu.bXr) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.packageName, this.bXn, this.bXo, this.bXp, this.bXq, this.bXr });
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("PlayLoggerContext[");
        sb.append("package=").append(this.packageName).append(',');
        sb.append("versionCode=").append(this.versionCode).append(',');
        sb.append("logSource=").append(this.bXo).append(',');
        sb.append("uploadAccount=").append(this.bXp).append(',');
        sb.append("loggingId=").append(this.bXq).append(',');
        sb.append("logAndroidId=").append(this.bXr);
        sb.append("]");
        return sb.toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        cL.a(this, parcel);
    }
}
