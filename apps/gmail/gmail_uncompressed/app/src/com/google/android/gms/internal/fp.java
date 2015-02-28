package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import java.util.*;
import android.os.*;

public final class fp implements SafeParcelable
{
    public static final q CREATOR;
    public final String bRY;
    public final long bSA;
    public final boolean bSB;
    public final long bSC;
    public final List<String> bSD;
    public final long bSE;
    public final String bSF;
    public final long bSG;
    public final String bSH;
    public final boolean bSI;
    public final String bSJ;
    public final String bSK;
    public final boolean bSL;
    public final boolean bSM;
    public final boolean bSN;
    public final boolean bSw;
    public final String bSx;
    public final List<String> bSy;
    public final List<String> bSz;
    public final int errorCode;
    public final int orientation;
    public final int versionCode;
    
    static {
        CREATOR = new q();
    }
    
    fp(final int versionCode, final String bry, final String bSx, final List<String> list, final int errorCode, final List<String> list2, final long bsa, final boolean bsb, final long bsc, final List<String> list3, final long bse, final int orientation, final String bsf, final long bsg, final String bsh, final boolean bsi, final String bsj, final String bsk, final boolean bsl, final boolean bsm, final boolean bSw, final boolean bsn) {
        this.versionCode = versionCode;
        this.bRY = bry;
        this.bSx = bSx;
        List<String> unmodifiableList;
        if (list != null) {
            unmodifiableList = Collections.unmodifiableList((List<? extends String>)list);
        }
        else {
            unmodifiableList = null;
        }
        this.bSy = unmodifiableList;
        this.errorCode = errorCode;
        List<String> unmodifiableList2;
        if (list2 != null) {
            unmodifiableList2 = Collections.unmodifiableList((List<? extends String>)list2);
        }
        else {
            unmodifiableList2 = null;
        }
        this.bSz = unmodifiableList2;
        this.bSA = bsa;
        this.bSB = bsb;
        this.bSC = bsc;
        List<String> unmodifiableList3;
        if (list3 != null) {
            unmodifiableList3 = Collections.unmodifiableList((List<? extends String>)list3);
        }
        else {
            unmodifiableList3 = null;
        }
        this.bSD = unmodifiableList3;
        this.bSE = bse;
        this.orientation = orientation;
        this.bSF = bsf;
        this.bSG = bsg;
        this.bSH = bsh;
        this.bSI = bsi;
        this.bSJ = bsj;
        this.bSK = bsk;
        this.bSL = bsl;
        this.bSM = bsm;
        this.bSw = bSw;
        this.bSN = bsn;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        q.a(this, parcel);
    }
}
