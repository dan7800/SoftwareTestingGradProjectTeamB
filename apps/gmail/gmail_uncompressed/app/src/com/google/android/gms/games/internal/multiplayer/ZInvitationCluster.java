package com.google.android.gms.games.internal.multiplayer;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import com.google.android.gms.games.*;
import com.google.android.gms.games.multiplayer.*;
import java.util.*;
import android.os.*;

public final class ZInvitationCluster implements SafeParcelable, Invitation
{
    public static final a CREATOR;
    private final ArrayList<InvitationEntity> bOu;
    private final int btV;
    
    static {
        CREATOR = new a();
    }
    
    ZInvitationCluster(final int btV, final ArrayList<InvitationEntity> bOu) {
        this.btV = btV;
        this.bOu = bOu;
        this.Pf();
    }
    
    private void Pf() {
        b.cc(!this.bOu.isEmpty());
        final InvitationEntity invitationEntity = this.bOu.get(0);
        for (int size = this.bOu.size(), i = 1; i < size; ++i) {
            b.a(invitationEntity.Pi().equals(this.bOu.get(i).Pi()), "All the invitations must be from the same inviter");
        }
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    @Override
    public final Game OR() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }
    
    public final ArrayList<Invitation> Pg() {
        return new ArrayList<Invitation>(this.bOu);
    }
    
    @Override
    public final String Ph() {
        return this.bOu.get(0).Ph();
    }
    
    @Override
    public final Participant Pi() {
        return this.bOu.get(0).Pi();
    }
    
    @Override
    public final long Pj() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }
    
    @Override
    public final int Pk() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }
    
    @Override
    public final int Pl() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }
    
    @Override
    public final int Pm() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }
    
    public final ArrayList<Participant> Pn() {
        throw new UnsupportedOperationException("Method not supported on a cluster");
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (!(o instanceof ZInvitationCluster)) {
            return false;
        }
        if (this == o) {
            return true;
        }
        final ZInvitationCluster zInvitationCluster = (ZInvitationCluster)o;
        if (zInvitationCluster.bOu.size() != this.bOu.size()) {
            return false;
        }
        for (int size = this.bOu.size(), i = 0; i < size; ++i) {
            if (!this.bOu.get(i).equals(zInvitationCluster.bOu.get(i))) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(this.bOu.toArray());
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        a.a(this, parcel);
    }
}
