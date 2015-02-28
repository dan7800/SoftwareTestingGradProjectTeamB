package com.google.android.gms.wallet;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public final class MaskedWalletRequest implements SafeParcelable
{
    public static final Parcelable$Creator<MaskedWalletRequest> CREATOR;
    private final int btV;
    String ckM;
    String ckR;
    String clL;
    String clM;
    boolean clN;
    boolean clO;
    boolean clP;
    boolean clQ;
    Cart cla;
    boolean cle;
    boolean clf;
    boolean clg;
    CountrySpecification[] cli;
    ArrayList<com.google.android.gms.identity.intents.model.CountrySpecification> clj;
    
    static {
        CREATOR = (Parcelable$Creator)new l();
    }
    
    MaskedWalletRequest() {
        this.btV = 3;
        this.clP = true;
        this.clQ = true;
    }
    
    MaskedWalletRequest(final int btV, final String ckR, final boolean cle, final boolean clf, final boolean clg, final String clL, final String ckM, final String clM, final Cart cla, final boolean clN, final boolean clO, final CountrySpecification[] cli, final boolean clP, final boolean clQ, final ArrayList<com.google.android.gms.identity.intents.model.CountrySpecification> clj) {
        this.btV = btV;
        this.ckR = ckR;
        this.cle = cle;
        this.clf = clf;
        this.clg = clg;
        this.clL = clL;
        this.ckM = ckM;
        this.clM = clM;
        this.cla = cla;
        this.clN = clN;
        this.clO = clO;
        this.cli = cli;
        this.clP = clP;
        this.clQ = clQ;
        this.clj = clj;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        l.a(this, parcel, n);
    }
}
