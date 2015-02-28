package com.google.android.gms.auth.firstparty.dataservice;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.auth.firstparty.shared.*;
import android.os.*;

public class TokenRequest implements SafeParcelable
{
    public static final g CREATOR;
    String acw;
    AppDescription bxQ;
    CaptchaSolution bxR;
    volatile boolean byA;
    String byV;
    volatile FACLConfig byW;
    volatile PACLConfig byX;
    String byY;
    volatile boolean byZ;
    volatile boolean byl;
    Bundle byv;
    volatile boolean bza;
    volatile boolean bzb;
    final int version;
    
    static {
        CREATOR = new g();
    }
    
    public TokenRequest() {
        this.byv = new Bundle();
        this.byY = TokenRequest$Consent.bzc.toString();
        this.version = 1;
    }
    
    TokenRequest(final int version, final String byV, final String acw, final Bundle byv, final FACLConfig byW, final PACLConfig byX, final boolean byA, final boolean byl, final String byY, final AppDescription bxQ, final CaptchaSolution bxR, final boolean byZ, final boolean bza) {
        this.byv = new Bundle();
        this.byY = TokenRequest$Consent.bzc.toString();
        this.version = version;
        this.byV = byV;
        this.acw = acw;
        this.byv = byv;
        this.byW = byW;
        this.byX = byX;
        this.byA = byA;
        this.byl = byl;
        this.byY = byY;
        this.bxQ = bxQ;
        this.bxR = bxR;
        this.byZ = byZ;
        this.bza = bza;
    }
    
    public final TokenRequest JT() {
        this.byZ = true;
        return this;
    }
    
    public final TokenRequest a(final AppDescription bxQ) {
        this.bxQ = bxQ;
        return this;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public final TokenRequest fK(final String acw) {
        this.acw = acw;
        return this;
    }
    
    public final TokenRequest fL(final String byV) {
        this.byV = byV;
        return this;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        g.a(this, parcel, n);
    }
}
