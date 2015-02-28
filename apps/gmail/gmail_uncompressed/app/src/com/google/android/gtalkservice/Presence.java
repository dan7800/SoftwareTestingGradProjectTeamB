package com.google.android.gtalkservice;

import android.os.*;
import java.util.*;

public final class Presence implements Parcelable
{
    public static final Parcelable$Creator<Presence> CREATOR;
    public static final Presence cnY;
    private int Qo;
    private boolean cnZ;
    private Presence$Show coa;
    private boolean cob;
    private List<String> coc;
    private List<String> cod;
    private int coe;
    private int cof;
    private int cog;
    private boolean coh;
    private String mStatus;
    
    static {
        cnY = new Presence();
        CREATOR = (Parcelable$Creator)new d();
    }
    
    public Presence() {
        this(Presence$Show.coi);
    }
    
    public Presence(final Parcel parcel) {
        boolean cob = true;
        this.coe = parcel.readInt();
        this.cof = parcel.readInt();
        this.cog = parcel.readInt();
        this.coh = (parcel.readInt() != 0 && cob);
        this.cnZ = (parcel.readInt() != 0 && cob);
        this.coa = Enum.valueOf(Presence$Show.class, parcel.readString());
        this.mStatus = parcel.readString();
        if (parcel.readInt() == 0) {
            cob = false;
        }
        this.cob = cob;
        if (cob) {
            final boolean coh = this.coh;
        }
        parcel.readStringList((List)(this.coc = new ArrayList<String>()));
        parcel.readStringList((List)(this.cod = new ArrayList<String>()));
        this.Qo = parcel.readInt();
    }
    
    private Presence(final Presence$Show coa) {
        this.cnZ = false;
        this.coa = coa;
        this.mStatus = null;
        this.cob = false;
        this.coc = new ArrayList<String>();
        this.cod = new ArrayList<String>();
        this.Qo = 8;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    @Override
    public final String toString() {
        if (!this.cnZ) {
            return "UNAVAILABLE";
        }
        if (this.cob) {
            return "INVISIBLE";
        }
        final StringBuilder sb = new StringBuilder(40);
        if (this.coa == Presence$Show.coi) {
            sb.append("AVAILABLE(x)");
        }
        else {
            sb.append(this.coa.toString());
        }
        if ((0x8 & this.Qo) != 0x0) {
            sb.append(" pmuc-v1");
        }
        if ((0x1 & this.Qo) != 0x0) {
            sb.append(" voice-v1");
        }
        if ((0x2 & this.Qo) != 0x0) {
            sb.append(" video-v1");
        }
        if ((0x4 & this.Qo) != 0x0) {
            sb.append(" camera-v1");
        }
        return sb.toString();
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        int n2 = 1;
        parcel.writeInt(this.coe);
        parcel.writeInt(this.cof);
        parcel.writeInt(this.cog);
        int n3;
        if (this.coh) {
            n3 = n2;
        }
        else {
            n3 = 0;
        }
        parcel.writeInt(n3);
        int n4;
        if (this.cnZ) {
            n4 = n2;
        }
        else {
            n4 = 0;
        }
        parcel.writeInt(n4);
        parcel.writeString(this.coa.toString());
        parcel.writeString(this.mStatus);
        if (!this.cob) {
            n2 = 0;
        }
        parcel.writeInt(n2);
        parcel.writeStringList((List)this.coc);
        parcel.writeStringList((List)this.cod);
        parcel.writeInt(this.Qo);
    }
}
