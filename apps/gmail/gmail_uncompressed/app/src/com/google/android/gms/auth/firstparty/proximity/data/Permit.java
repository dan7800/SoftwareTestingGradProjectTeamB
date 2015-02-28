package com.google.android.gms.auth.firstparty.proximity.data;

import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.common.internal.*;
import android.text.*;
import android.os.*;
import java.util.*;

public class Permit implements SafeParcelable
{
    public static final d CREATOR;
    final int bxf;
    final String bzA;
    final String bzB;
    final PermitAccess bzC;
    List<PermitAccess> bzD;
    final Map<String, PermitAccess> bzE;
    List<String> bzF;
    final Set<String> bzG;
    final String bzz;
    
    static {
        CREATOR = new d();
    }
    
    Permit(final int n, final String s, final String s2, final String s3, final PermitAccess permitAccess, final List<PermitAccess> list, final List<String> list2) {
        this(n, s, s2, s3, permitAccess, N(list), new HashSet<String>(list2));
    }
    
    private Permit(final int bxf, final String s, final String s2, final String s3, final PermitAccess permitAccess, final Map<String, PermitAccess> map, final Set<String> set) {
        this.bxf = bxf;
        this.bzz = G.fX(s);
        this.bzA = G.fX(s2);
        this.bzB = G.fX(s3);
        this.bzC = G.ae(permitAccess);
        HashMap<String, PermitAccess> bzE;
        if (map == null) {
            bzE = new HashMap<String, PermitAccess>();
        }
        else {
            bzE = new HashMap<String, PermitAccess>(map);
        }
        this.bzE = bzE;
        HashSet<String> bzG;
        if (set == null) {
            bzG = new HashSet<String>();
        }
        else {
            bzG = new HashSet<String>(set);
        }
        this.bzG = bzG;
    }
    
    private static Map<String, PermitAccess> N(final List<PermitAccess> list) {
        final HashMap<String, PermitAccess> hashMap = new HashMap<String, PermitAccess>();
        for (final PermitAccess permitAccess : list) {
            hashMap.put(permitAccess.getId(), permitAccess);
        }
        return hashMap;
    }
    
    public int describeContents() {
        return 0;
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o != null) {
            if (o == this) {
                return true;
            }
            if (o instanceof Permit) {
                final Permit permit = (Permit)o;
                if (TextUtils.equals((CharSequence)this.bzA, (CharSequence)permit.bzA) && TextUtils.equals((CharSequence)this.bzz, (CharSequence)permit.bzz) && TextUtils.equals((CharSequence)this.bzB, (CharSequence)permit.bzB) && this.bzC.equals(permit.bzC) && this.bzG.equals(permit.bzG) && this.bzE.equals(permit.bzE)) {
                    return true;
                }
            }
        }
        return false;
    }
    
    @Override
    public int hashCode() {
        return 31 * (31 * (31 * (31 * (31 * (527 + this.bzz.hashCode()) + this.bzA.hashCode()) + this.bzB.hashCode()) + this.bzG.hashCode()) + this.bzC.hashCode()) + this.bzE.hashCode();
    }
    
    public void writeToParcel(final Parcel parcel, final int n) {
        this.bzD = new ArrayList<PermitAccess>(this.bzE.values());
        this.bzF = new ArrayList<String>(this.bzG);
        d.a(this, parcel, n);
    }
}
