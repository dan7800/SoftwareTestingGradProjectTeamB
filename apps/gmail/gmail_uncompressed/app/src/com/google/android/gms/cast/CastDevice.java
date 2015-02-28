package com.google.android.gms.cast;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.images.*;
import java.net.*;
import java.util.*;
import com.google.android.gms.internal.*;
import android.os.*;

public class CastDevice implements SafeParcelable
{
    public static final Parcelable$Creator<CastDevice> CREATOR;
    private String bBo;
    String bBp;
    private Inet4Address bBq;
    private String bBr;
    private String bBs;
    private String bBt;
    private int bBu;
    private List<WebImage> bBv;
    private int bBw;
    private int bBx;
    private final int btV;
    
    static {
        CREATOR = (Parcelable$Creator)new b();
    }
    
    private CastDevice() {
        this(3, null, null, null, null, null, -1, new ArrayList<WebImage>(), 0, -1);
    }
    
    CastDevice(final int btV, final String bBo, final String bBp, final String bBr, final String bBs, final String bBt, final int bBu, final List<WebImage> bBv, final int bBw, final int bBx) {
        this.btV = btV;
        this.bBo = bBo;
        this.bBp = bBp;
        while (true) {
            if (this.bBp == null) {
                break Label_0052;
            }
            try {
                final InetAddress byName = InetAddress.getByName(this.bBp);
                if (byName instanceof Inet4Address) {
                    this.bBq = (Inet4Address)byName;
                }
                this.bBr = bBr;
                this.bBs = bBs;
                this.bBt = bBt;
                this.bBu = bBu;
                this.bBv = bBv;
                this.bBw = bBw;
                this.bBx = bBx;
            }
            catch (UnknownHostException ex) {
                this.bBq = null;
                continue;
            }
            break;
        }
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final String Kb() {
        return this.bBr;
    }
    
    public final String Kc() {
        return this.bBs;
    }
    
    public final String Kd() {
        return this.bBt;
    }
    
    public final int Ke() {
        return this.bBu;
    }
    
    public final List<WebImage> Kf() {
        return Collections.unmodifiableList((List<? extends WebImage>)this.bBv);
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o != this) {
            if (!(o instanceof CastDevice)) {
                return false;
            }
            final CastDevice castDevice = (CastDevice)o;
            if (this.bBo == null) {
                if (castDevice.bBo != null) {
                    return false;
                }
            }
            else if (!D.g(this.bBo, castDevice.bBo) || !D.g(this.bBq, castDevice.bBq) || !D.g(this.bBs, castDevice.bBs) || !D.g(this.bBr, castDevice.bBr) || !D.g(this.bBt, castDevice.bBt) || this.bBu != castDevice.bBu || !D.g(this.bBv, castDevice.bBv) || this.bBw != castDevice.bBw || this.bBx != castDevice.bBx) {
                return false;
            }
        }
        return true;
    }
    
    public final int getCapabilities() {
        return this.bBw;
    }
    
    public final String getDeviceId() {
        return this.bBo;
    }
    
    public final int getStatus() {
        return this.bBx;
    }
    
    @Override
    public int hashCode() {
        if (this.bBo == null) {
            return 0;
        }
        return this.bBo.hashCode();
    }
    
    @Override
    public String toString() {
        return String.format("\"%s\" (%s)", this.bBr, this.bBo);
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        b.a(this, parcel);
    }
}
