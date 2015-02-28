package com.google.android.gms.appdatasearch;

import java.util.*;

public final class i
{
    private final j bwk;
    private final int bwl;
    final /* synthetic */ SearchResults bwm;
    
    i(final SearchResults bwm, final int bwl, final j bwk) {
        this.bwm = bwm;
        this.bwk = bwk;
        this.bwl = bwl;
    }
    
    public final String fG(final String s) {
        final Map map = this.bwk.bwo[this.bwm.bwg[this.bwl]];
        Map<String, l> map2;
        if (map == null) {
            final Map[] a = this.bwk.bwo;
            final int n = this.bwm.bwg[this.bwl];
            final HashMap<String, l> hashMap = new HashMap<String, l>();
            a[n] = hashMap;
            map2 = hashMap;
        }
        else {
            map2 = (Map<String, l>)map;
        }
        l l = map2.get(s);
        if (l == null) {
            final int[] intArray = this.bwm.bwd[this.bwm.bwg[this.bwl]].getIntArray(s);
            final byte[] byteArray = this.bwm.bwe[this.bwm.bwg[this.bwl]].getByteArray(s);
            if (intArray == null || byteArray == null) {
                l = null;
            }
            else {
                l = new l(intArray, byteArray);
                map2.put(s, l);
            }
        }
        if (l == null) {
            return null;
        }
        return l.en(this.bwl);
    }
    
    public final boolean fH(final String s) {
        if (this.bwm.bwc == null) {
            return false;
        }
        final boolean[] booleanArray = this.bwm.bwc[this.bwm.bwg[this.bwl]].getBooleanArray(s);
        if (booleanArray == null) {
            throw new IllegalArgumentException("Tag " + s + " with corpus " + this.bwm.bwh[this.bwm.bwg[this.bwl]] + " doesn't exist");
        }
        return booleanArray[this.bwl];
    }
}
