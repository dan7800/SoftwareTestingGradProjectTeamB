package com.google.android.gm.drive;

import android.os.*;
import java.util.*;
import com.google.api.a.a.a.*;

public class PotentialFix implements Parcelable
{
    public static final Parcelable$Creator<PotentialFix> CREATOR;
    private final String baF;
    private final List<String> baG;
    private final List<String> baH;
    private final List<String> baI;
    private final boolean baJ;
    private final String baK;
    private final List<String> baL;
    
    static {
        CREATOR = (Parcelable$Creator)new k();
    }
    
    public PotentialFix(final Parcel parcel) {
        this.baF = parcel.readString();
        parcel.readStringList((List)(this.baG = new ArrayList<String>()));
        parcel.readStringList((List)(this.baH = new ArrayList<String>()));
        parcel.readStringList((List)(this.baI = new ArrayList<String>()));
        this.baJ = (parcel.readInt() != 0);
        this.baK = parcel.readString();
        parcel.readStringList((List)(this.baL = new ArrayList<String>()));
    }
    
    public PotentialFix(final d d) {
        this.baF = d.Dq();
        this.baG = d.Dr();
        this.baH = d.Ds();
        this.baJ = d.YH();
        final List<String> dt = d.Dt();
        this.baI = new ArrayList<String>();
        if (dt.contains("READER")) {
            this.baI.add("READER");
        }
        if (dt.contains("COMMENTER")) {
            this.baI.add("COMMENTER");
        }
        if (dt.contains("WRITER")) {
            this.baI.add("WRITER");
        }
        final f yi = d.YI();
        String dv;
        if (yi != null) {
            dv = yi.Dv();
        }
        else {
            dv = null;
        }
        this.baK = dv;
        final e yg = d.YG();
        List<String> dw = null;
        if (yg != null) {
            dw = yg.Dw();
        }
        this.baL = dw;
    }
    
    public static boolean dG(final String s) {
        return "ADD_COLLABORATORS".equals(s) || "INCREASE_PUBLIC_VISIBILITY".equals(s) || "INCREASE_DOMAIN_VISIBILITY".equals(s);
    }
    
    public final String Dq() {
        return this.baF;
    }
    
    public final List<String> Dr() {
        return this.baG;
    }
    
    public final List<String> Ds() {
        return this.baH;
    }
    
    public final List<String> Dt() {
        return this.baI;
    }
    
    public final boolean Du() {
        return this.baJ;
    }
    
    public final String Dv() {
        return this.baK;
    }
    
    public final List<String> Dw() {
        return this.baL;
    }
    
    public int describeContents() {
        return 0;
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        parcel.writeString(this.baF);
        parcel.writeStringList((List)this.baG);
        parcel.writeStringList((List)this.baH);
        parcel.writeStringList((List)this.baI);
        int n2;
        if (this.baJ) {
            n2 = 1;
        }
        else {
            n2 = 0;
        }
        parcel.writeInt(n2);
        parcel.writeString(this.baK);
        parcel.writeStringList((List)this.baL);
    }
}
