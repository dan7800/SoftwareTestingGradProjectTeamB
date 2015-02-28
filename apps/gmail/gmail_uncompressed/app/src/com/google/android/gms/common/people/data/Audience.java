package com.google.android.gms.common.people.data;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public final class Audience implements SafeParcelable
{
    public static final b CREATOR;
    private final List<AudienceMember> bFC;
    private final int bFD;
    @Deprecated
    private final boolean bFE;
    private final boolean bFF;
    private final int btV;
    
    static {
        CREATOR = new b();
    }
    
    Audience(final int btV, List<AudienceMember> emptyList, final int bfd, final boolean bfe, final boolean bff) {
        boolean b = true;
        if (btV == (b ? 1 : 0) && emptyList == null) {
            emptyList = Collections.emptyList();
        }
        this.btV = btV;
        this.bFC = (List<AudienceMember>)Collections.unmodifiableList((List<?>)emptyList);
        this.bFD = bfd;
        if (btV == (b ? 1 : 0)) {
            if (this.bFE = bfe) {
                b = false;
            }
            this.bFF = b;
            return;
        }
        if (this.bFF = bff) {
            b = false;
        }
        this.bFE = b;
    }
    
    Audience(final List<AudienceMember> bfc, final int bfd, final boolean bff) {
        this.btV = 2;
        this.bFC = bfc;
        this.bFD = bfd;
        this.bFF = bff;
        this.bFE = !bff;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final List<AudienceMember> Ln() {
        return this.bFC;
    }
    
    public final int Lo() {
        return this.bFD;
    }
    
    @Deprecated
    final boolean Lp() {
        return this.bFE;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (o instanceof Audience) {
            final Audience audience = (Audience)o;
            if (this.btV == audience.btV && E.b(this.bFC, audience.bFC) && this.bFD == audience.bFD && this.bFF == audience.bFF) {
                return true;
            }
        }
        return false;
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { this.btV, this.bFC, this.bFD, this.bFF });
    }
    
    public final boolean isReadOnly() {
        return this.bFF;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        b.a(this, parcel);
    }
}
