package com.google.android.gms.location.reporting;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.util.*;
import android.os.*;

public class ReportingState implements SafeParcelable
{
    public static final d CREATOR;
    private final int btV;
    private final boolean ceA;
    private final int ceB;
    private final Integer ceC;
    private final int cew;
    private final int cex;
    private final boolean cey;
    private final boolean cez;
    
    static {
        CREATOR = new d();
    }
    
    public ReportingState(final int btV, final int cew, final int cex, final boolean cey, final boolean cez, final boolean ceA, final int ceB, final Integer ceC) {
        this.btV = btV;
        this.cew = cew;
        this.cex = cex;
        this.cey = cey;
        this.cez = cez;
        this.ceA = ceA;
        this.ceB = ceB;
        this.ceC = ceC;
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final int TJ() {
        return a.eP(this.cew);
    }
    
    public final int TK() {
        return a.eP(this.cex);
    }
    
    public final boolean TL() {
        return this.cey;
    }
    
    public final boolean TM() {
        return this.ceA;
    }
    
    public final int TN() {
        int ceB = this.ceB;
        switch (ceB) {
            default: {
                ceB = 1;
                return ceB;
            }
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9: {
                return ceB;
            }
        }
    }
    
    final Integer TO() {
        return this.ceC;
    }
    
    public int describeContents() {
        final d creator = ReportingState.CREATOR;
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o instanceof ReportingState) {
            final ReportingState reportingState = (ReportingState)o;
            if (this.cew == reportingState.cew && this.cex == reportingState.cex && this.cey == reportingState.cey && this.cez == reportingState.cez && this.ceA == reportingState.ceA && this.ceB == reportingState.ceB && E.b(this.ceC, reportingState.ceC)) {
                return true;
            }
        }
        return false;
    }
    
    @Override
    public int hashCode() {
        return Arrays.hashCode(new Object[] { this.cew, this.cex, this.cey, this.cez, this.ceA, this.ceB, this.ceC });
    }
    
    public final boolean isActive() {
        return this.cez;
    }
    
    @Override
    public String toString() {
        final StringBuilder append = new StringBuilder("ReportingState{mReportingEnabled=").append(this.cew).append(", mHistoryEnabled=").append(this.cex).append(", mAllowed=").append(this.cey).append(", mActive=").append(this.cez).append(", mDefer=").append(this.ceA).append(", mExpectedOptInResult=").append(this.ceB).append(", mVersionCode=").append(this.btV).append(", mDeviceTag=");
        final Integer ceC = this.ceC;
        String s;
        if (ceC == null) {
            s = "(null)";
        }
        else if (Log.isLoggable("GCoreUlr", 2)) {
            s = String.valueOf(ceC);
        }
        else {
            s = "tag#" + ceC % 20;
        }
        return append.append(s).append('}').toString();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        final d creator = ReportingState.CREATOR;
        d.a(this, parcel);
    }
}
