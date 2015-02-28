package com.google.android.gms.wallet;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import com.google.android.gms.maps.model.*;
import com.google.android.gms.wallet.wobs.*;
import android.os.*;

public final class LoyaltyWalletObject implements SafeParcelable
{
    public static final Parcelable$Creator<LoyaltyWalletObject> CREATOR;
    String acw;
    private final int btV;
    ArrayList<LatLng> clA;
    String clB;
    String clC;
    ArrayList<LabelValueRow> clD;
    boolean clE;
    ArrayList<UriData> clF;
    ArrayList<TextModuleData> clG;
    ArrayList<UriData> clH;
    LoyaltyPoints clI;
    String clp;
    String clq;
    String clr;
    String cls;
    String clt;
    String clu;
    String clv;
    String clw;
    String clx;
    ArrayList<WalletObjectMessage> cly;
    TimeInterval clz;
    int state;
    
    static {
        CREATOR = (Parcelable$Creator)new j();
    }
    
    LoyaltyWalletObject() {
        this.btV = 4;
        this.cly = new ArrayList<WalletObjectMessage>();
        this.clA = new ArrayList<LatLng>();
        this.clD = new ArrayList<LabelValueRow>();
        this.clF = new ArrayList<UriData>();
        this.clG = new ArrayList<TextModuleData>();
        this.clH = new ArrayList<UriData>();
    }
    
    LoyaltyWalletObject(final int btV, final String clp, final String clq, final String clr, final String cls, final String acw, final String clt, final String clu, final String clv, final String clw, final String clx, final int state, final ArrayList<WalletObjectMessage> cly, final TimeInterval clz, final ArrayList<LatLng> clA, final String clB, final String clC, final ArrayList<LabelValueRow> clD, final boolean clE, final ArrayList<UriData> clF, final ArrayList<TextModuleData> clG, final ArrayList<UriData> clH, final LoyaltyPoints clI) {
        this.btV = btV;
        this.clp = clp;
        this.clq = clq;
        this.clr = clr;
        this.cls = cls;
        this.acw = acw;
        this.clt = clt;
        this.clu = clu;
        this.clv = clv;
        this.clw = clw;
        this.clx = clx;
        this.state = state;
        this.cly = cly;
        this.clz = clz;
        this.clA = clA;
        this.clB = clB;
        this.clC = clC;
        this.clD = clD;
        this.clE = clE;
        this.clF = clF;
        this.clG = clG;
        this.clH = clH;
        this.clI = clI;
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        j.a(this, parcel, n);
    }
}
