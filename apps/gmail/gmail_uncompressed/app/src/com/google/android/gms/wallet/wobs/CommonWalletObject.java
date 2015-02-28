package com.google.android.gms.wallet.wobs;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import com.google.android.gms.maps.model.*;
import android.os.*;

public class CommonWalletObject implements SafeParcelable
{
    public static final Parcelable$Creator<CommonWalletObject> CREATOR;
    private final int btV;
    ArrayList<LatLng> clA;
    String clB;
    String clC;
    ArrayList<LabelValueRow> clD;
    boolean clE;
    ArrayList<UriData> clF;
    ArrayList<TextModuleData> clG;
    ArrayList<UriData> clH;
    String clp;
    String clr;
    String clt;
    String clu;
    String clv;
    String clw;
    String clx;
    ArrayList<WalletObjectMessage> cly;
    TimeInterval clz;
    String name;
    int state;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    CommonWalletObject() {
        this.btV = 1;
        this.cly = new ArrayList<WalletObjectMessage>();
        this.clA = new ArrayList<LatLng>();
        this.clD = new ArrayList<LabelValueRow>();
        this.clF = new ArrayList<UriData>();
        this.clG = new ArrayList<TextModuleData>();
        this.clH = new ArrayList<UriData>();
    }
    
    CommonWalletObject(final int btV, final String clp, final String clx, final String name, final String clr, final String clt, final String clu, final String clv, final String clw, final int state, final ArrayList<WalletObjectMessage> cly, final TimeInterval clz, final ArrayList<LatLng> clA, final String clB, final String clC, final ArrayList<LabelValueRow> clD, final boolean clE, final ArrayList<UriData> clF, final ArrayList<TextModuleData> clG, final ArrayList<UriData> clH) {
        this.btV = btV;
        this.clp = clp;
        this.clx = clx;
        this.name = name;
        this.clr = clr;
        this.clt = clt;
        this.clu = clu;
        this.clv = clv;
        this.clw = clw;
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
    }
    
    public static a VI() {
        final CommonWalletObject commonWalletObject = new CommonWalletObject();
        commonWalletObject.getClass();
        return new a(commonWalletObject, (byte)0);
    }
    
    public final int Jt() {
        return this.btV;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.a(this, parcel, n);
    }
}
