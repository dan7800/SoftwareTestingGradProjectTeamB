package com.google.android.gms.common.people.data;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.internal.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public final class AudienceMember implements SafeParcelable
{
    public static final c CREATOR;
    @Deprecated
    private final Bundle bDX;
    private final int bFH;
    private final String bFI;
    private final String bFJ;
    private final String bFK;
    private final String bFL;
    private final int btV;
    private final int bwX;
    
    static {
        CREATOR = new c();
    }
    
    AudienceMember(final int btV, final int bwX, final int bfh, final String bfi, final String bfj, final String bfk, final String bfl, Bundle bdx) {
        this.btV = btV;
        this.bwX = bwX;
        this.bFH = bfh;
        this.bFI = bfi;
        this.bFJ = bfj;
        this.bFK = bfk;
        this.bFL = bfl;
        if (bdx == null) {
            bdx = new Bundle();
        }
        this.bDX = bdx;
    }
    
    private AudienceMember(final int n, final String s, final String s2) {
        this(1, 1, n, s, null, s2, null, null);
    }
    
    public static AudienceMember al(final String s, final String s2) {
        Integer n = ca.bWn.get(s);
        if (n == null) {
            n = ca.bWn.get(null);
        }
        return new AudienceMember(n, s, s2);
    }
    
    public final String Iw() {
        return this.bFL;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    @Deprecated
    public final Bundle KJ() {
        return this.bDX;
    }
    
    public final int Lr() {
        return this.bFH;
    }
    
    public final String Ls() {
        return this.bFI;
    }
    
    public final String Lt() {
        return this.bFJ;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (o instanceof AudienceMember) {
            final AudienceMember audienceMember = (AudienceMember)o;
            if (this.btV == audienceMember.btV && this.bwX == audienceMember.bwX && this.bFH == audienceMember.bFH && E.b(this.bFI, audienceMember.bFI) && E.b(this.bFJ, audienceMember.bFJ)) {
                return true;
            }
        }
        return false;
    }
    
    public final String getDisplayName() {
        return this.bFK;
    }
    
    public final int getType() {
        return this.bwX;
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { this.btV, this.bwX, this.bFH, this.bFI, this.bFJ });
    }
    
    @Override
    public final String toString() {
        int n;
        if (this.bwX == 2) {
            n = 1;
        }
        else {
            n = 0;
        }
        if (n != 0) {
            return String.format("Person [%s] %s", this.bFJ, this.bFK);
        }
        int n2;
        if (this.bwX == 1 && this.bFH == -1) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        if (n2 != 0) {
            return String.format("Circle [%s] %s", this.bFI, this.bFK);
        }
        return String.format("Group [%s] %s", this.bFI, this.bFK);
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        c.a(this, parcel);
    }
}
