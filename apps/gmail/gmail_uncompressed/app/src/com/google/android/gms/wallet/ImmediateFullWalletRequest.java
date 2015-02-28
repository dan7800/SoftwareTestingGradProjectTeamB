package com.google.android.gms.wallet;

import com.google.android.gms.common.internal.safeparcel.*;
import android.accounts.*;
import java.util.*;
import android.os.*;

public final class ImmediateFullWalletRequest implements SafeParcelable
{
    public static final Parcelable$Creator<ImmediateFullWalletRequest> CREATOR;
    Account account;
    private final int btV;
    String bzP;
    int clb;
    String clc;
    int cld;
    boolean cle;
    boolean clf;
    boolean clg;
    boolean clh;
    CountrySpecification[] cli;
    ArrayList<com.google.android.gms.identity.intents.model.CountrySpecification> clj;
    
    static {
        CREATOR = (Parcelable$Creator)new g();
    }
    
    ImmediateFullWalletRequest() {
        this.btV = 2;
    }
    
    ImmediateFullWalletRequest(final int btV, final int clb, final Account account, final String clc, final int cld, final boolean cle, final boolean clf, final boolean clg, final String bzP, final boolean clh, final CountrySpecification[] cli, final ArrayList<com.google.android.gms.identity.intents.model.CountrySpecification> clj) {
        this.btV = btV;
        this.clb = clb;
        this.account = account;
        this.clc = clc;
        this.cld = cld;
        this.cle = cle;
        this.clf = clf;
        this.clg = clg;
        this.bzP = bzP;
        this.clh = clh;
        this.cli = cli;
        this.clj = clj;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        g.a(this, parcel, n);
    }
}
