package com.google.android.gms.internal;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.maps.model.*;
import android.net.*;
import com.google.android.gms.location.places.*;
import com.google.android.gms.common.internal.*;
import java.util.*;
import android.os.*;

public final class nq extends a implements SafeParcelable
{
    public static final aV CREATOR;
    private final String bKo;
    private final Bundle bVe;
    private final LatLng bVf;
    private final float bVg;
    private final LatLngBounds bVh;
    private final String bVi;
    private final Uri bVj;
    private final boolean bVk;
    private final float bVl;
    private final int bVm;
    private final long bVn;
    private final List<PlaceType> bVo;
    private final String bVp;
    private final List<String> bVq;
    @Deprecated
    private final ns bVr;
    private final boolean bVs;
    private final Map<PlaceType, String> bVt;
    private final TimeZone bVu;
    private Locale bVv;
    private aX bVw;
    final int btV;
    private final String bxx;
    private final String bzz;
    private final String mName;
    
    static {
        CREATOR = new aV();
    }
    
    nq(final int btV, final String bzz, final List<PlaceType> list, final Bundle bVe, final String mName, final String bKo, final String bxx, final String bVp, final List<String> bVq, final LatLng bVf, final float bVg, final LatLngBounds bVh, final String bVi, final Uri bVj, final boolean bVk, final float bVl, final int bVm, final long bVn, final boolean bVs, final ns bVr) {
        this.btV = btV;
        this.bzz = bzz;
        this.bVo = Collections.unmodifiableList((List<? extends PlaceType>)list);
        this.bVe = bVe;
        this.mName = mName;
        this.bKo = bKo;
        this.bxx = bxx;
        this.bVp = bVp;
        this.bVq = bVq;
        this.bVf = bVf;
        this.bVg = bVg;
        this.bVh = bVh;
        this.bVi = bVi;
        this.bVj = bVj;
        this.bVk = bVk;
        this.bVl = bVl;
        this.bVm = bVm;
        this.bVn = bVn;
        final HashMap<PlaceType, String> hashMap = new HashMap<PlaceType, String>();
        for (final String s : bVe.keySet()) {
            hashMap.put(PlaceType.gx(s), bVe.getString(s));
        }
        this.bVt = (Map<PlaceType, String>)Collections.unmodifiableMap((Map<?, ?>)hashMap);
        this.bVu = TimeZone.getTimeZone(this.bVi);
        this.bVv = null;
        this.bVs = bVs;
        this.bVr = bVr;
    }
    
    private void gs(final String s) {
        if (this.bVs && this.bVw != null) {
            this.bVw.aj(this.bzz, s);
        }
    }
    
    public final Uri RA() {
        this.gs("getWebsiteUri");
        return this.bVj;
    }
    
    public final String RB() {
        this.gs("getPhoneNumber");
        return this.bxx;
    }
    
    public final String RC() {
        this.gs("getRegularOpenHours");
        return this.bVp;
    }
    
    public final List<String> RD() {
        this.gs("getAttributions");
        return this.bVq;
    }
    
    public final boolean RE() {
        this.gs("isPermanentlyClosed");
        return this.bVk;
    }
    
    public final int RF() {
        this.gs("getPriceLevel");
        return this.bVm;
    }
    
    public final long RG() {
        return this.bVn;
    }
    
    public final boolean RH() {
        return this.bVs;
    }
    
    public final Bundle RI() {
        return this.bVe;
    }
    
    public final String RJ() {
        return this.bVi;
    }
    
    @Deprecated
    public final ns RK() {
        return this.bVr;
    }
    
    public final List<PlaceType> Rw() {
        this.gs("getTypes");
        return this.bVo;
    }
    
    public final LatLng Rx() {
        this.gs("getLatLng");
        return this.bVf;
    }
    
    public final float Ry() {
        this.gs("getLevelNumber");
        return this.bVg;
    }
    
    public final LatLngBounds Rz() {
        this.gs("getViewport");
        return this.bVh;
    }
    
    public final int describeContents() {
        final aV creator = nq.CREATOR;
        return 0;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (this != o) {
            if (!(o instanceof nq)) {
                return false;
            }
            final nq nq = (nq)o;
            if (!this.bzz.equals(nq.bzz) || !E.b(this.bVv, nq.bVv) || this.bVn != nq.bVn) {
                return false;
            }
        }
        return true;
    }
    
    public final String getAddress() {
        this.gs("getAddress");
        return this.bKo;
    }
    
    public final String getId() {
        this.gs("getId");
        return this.bzz;
    }
    
    public final String getName() {
        this.gs("getName");
        return this.mName;
    }
    
    public final float getRating() {
        this.gs("getRating");
        return this.bVl;
    }
    
    @Override
    public final int hashCode() {
        return Arrays.hashCode(new Object[] { this.bzz, this.bVv, this.bVn });
    }
    
    @Override
    public final String toString() {
        return E.ad(this).e("id", this.bzz).e("types", this.bVo).e("locale", this.bVv).e("name", this.mName).e("address", this.bKo).e("phoneNumber", this.bxx).e("regularOpenHours", this.bVp).e("latlng", this.bVf).e("levelNumber", this.bVg).e("viewport", this.bVh).e("timeZone", this.bVi).e("websiteUri", this.bVj).e("isPermanentlyClosed", this.bVk).e("priceLevel", this.bVm).e("timestampSecs", this.bVn).toString();
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        final aV creator = nq.CREATOR;
        aV.a(this, parcel, n);
    }
}
