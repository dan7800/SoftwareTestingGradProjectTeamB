package com.google.android.gms.location.copresence;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.people.data.*;
import java.util.*;
import android.os.*;

public class AccessPolicy implements SafeParcelable
{
    public static final Parcelable$Creator<AccessPolicy> CREATOR;
    private static final Audience caD;
    private final int btV;
    private final int caE;
    private final long caF;
    private final AccessLock caG;
    private final Audience caH;
    private final int caI;
    private final int caJ;
    private final AclResourceId caK;
    private final String mName;
    
    static {
        CREATOR = (Parcelable$Creator)new e();
        caD = new a().D(Collections.singleton(AudienceMember.al("public", "Public"))).Lq();
    }
    
    AccessPolicy(final int btV, final int caE, final String mName, final long caF, final AccessLock caG, final Audience caH, final int caI, final int caJ, final AclResourceId caK) {
        this.btV = btV;
        this.caE = caE;
        this.mName = mName;
        this.caF = caF;
        this.caG = caG;
        this.caH = caH;
        this.caI = caI;
        this.caJ = caJ;
        this.caK = caK;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    final int SS() {
        return this.caE;
    }
    
    public final long ST() {
        return this.caF;
    }
    
    public final AccessLock SU() {
        return this.caG;
    }
    
    public final Audience SV() {
        return this.caH;
    }
    
    public final int SW() {
        return this.caI;
    }
    
    public final int SX() {
        return this.caJ;
    }
    
    public final AclResourceId SY() {
        return this.caK;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public final String getName() {
        return this.mName;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        e.a(this, parcel, n);
    }
}
