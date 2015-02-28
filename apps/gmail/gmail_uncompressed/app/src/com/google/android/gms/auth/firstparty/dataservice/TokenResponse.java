package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.auth.firstparty.shared.*;
import java.util.*;
import android.os.*;

public class TokenResponse implements SafeParcelable
{
    public static final h CREATOR;
    String acw;
    String bxS;
    String bxU;
    CaptchaChallenge bxV;
    String byB;
    String byG;
    String byo;
    String byp;
    String byq;
    String bzg;
    String bzh;
    boolean bzi;
    boolean bzj;
    boolean bzk;
    boolean bzl;
    List<ScopeDetail> bzm;
    boolean bzn;
    boolean bzo;
    int title;
    final int version;
    
    static {
        CREATOR = new h();
    }
    
    public TokenResponse() {
        this.version = 1;
        this.bzm = new ArrayList<ScopeDetail>();
    }
    
    TokenResponse(final int version, final String acw, final String bxS, final String byq, final String bzg, final String bxU, final String bzh, final String byo, final String byp, final boolean bzi, final boolean bzj, final boolean bzk, final boolean bzl, final CaptchaChallenge bxV, final List<ScopeDetail> bzm, final String byG, final String byB, final boolean bzn, final boolean bzo, final int title) {
        this.version = version;
        this.acw = acw;
        this.bxS = bxS;
        this.byq = byq;
        this.bzg = bzg;
        this.bxU = bxU;
        this.bzh = bzh;
        this.byo = byo;
        this.byp = byp;
        this.bzi = bzi;
        this.bzj = bzj;
        this.bzk = bzk;
        this.bzl = bzl;
        this.bxV = bxV;
        this.bzm = bzm;
        this.byG = byG;
        this.byB = byB;
        this.bzn = bzn;
        this.bzo = bzo;
        this.title = title;
    }
    
    public final String JU() {
        return this.byq;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        h.a(this, parcel, n);
    }
}
