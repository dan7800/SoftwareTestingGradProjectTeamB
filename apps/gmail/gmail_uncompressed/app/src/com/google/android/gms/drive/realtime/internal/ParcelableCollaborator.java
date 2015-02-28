package com.google.android.gms.drive.realtime.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import android.os.*;

public class ParcelableCollaborator implements SafeParcelable
{
    public static final Parcelable$Creator<ParcelableCollaborator> CREATOR;
    final String bFK;
    final boolean bIR;
    final boolean bIS;
    final String bIT;
    final String bIU;
    final String bIV;
    final String bIW;
    final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    ParcelableCollaborator(final int btV, final boolean bir, final boolean bis, final String bit, final String biu, final String bfk, final String biv, final String biw) {
        this.btV = btV;
        this.bIR = bir;
        this.bIS = bis;
        this.bIT = bit;
        this.bIU = biu;
        this.bFK = bfk;
        this.bIV = biv;
        this.bIW = biw;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        return this == o || (o instanceof ParcelableCollaborator && this.bIT.equals(((ParcelableCollaborator)o).bIT));
    }
    
    @Override
    public int hashCode() {
        return this.bIT.hashCode();
    }
    
    @Override
    public String toString() {
        return "Collaborator [isMe=" + this.bIR + ", isAnonymous=" + this.bIS + ", sessionId=" + this.bIT + ", userId=" + this.bIU + ", displayName=" + this.bFK + ", color=" + this.bIV + ", photoUrl=" + this.bIW + "]";
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.a(this, parcel);
    }
}
