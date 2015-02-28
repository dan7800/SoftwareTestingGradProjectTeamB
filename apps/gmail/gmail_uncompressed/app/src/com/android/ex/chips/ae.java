package com.android.ex.chips;

import android.net.*;
import android.text.util.*;

public class ae
{
    private boolean RI;
    private final String Xy;
    private final Long adT;
    private final int afp;
    private boolean afq;
    private final String afr;
    private final int afs;
    private final String aft;
    private final long afu;
    private final long afv;
    private final boolean afw;
    private final Uri afx;
    private byte[] afy;
    private final String afz;
    
    protected ae(final String xy, final String afr, final int afs, final String aft, final long afu, final Long adT, final long afv, final Uri afx, final boolean afq, final boolean ri, final String afz) {
        this.afp = 0;
        this.afq = afq;
        this.Xy = xy;
        this.afr = afr;
        this.afs = afs;
        this.aft = aft;
        this.afu = afu;
        this.adT = adT;
        this.afv = afv;
        this.afx = afx;
        this.afy = null;
        this.afw = false;
        this.RI = ri;
        this.afz = afz;
    }
    
    public static boolean H(final long n) {
        return n == -1L || n == -2L;
    }
    
    public static ae a(final String s, final int n, final String s2, final int n2, final String s3, final long n3, final Long n4, final long n5, final String s4, final String s5) {
        final String a = a(n, s, s2);
        Uri parse;
        if (s4 != null) {
            parse = Uri.parse(s4);
        }
        else {
            parse = null;
        }
        return new ae(a, s2, n2, s3, n3, n4, n5, parse, true, true, s5);
    }
    
    public static ae a(final String s, final String s2, final boolean b) {
        return new ae(s, s2, -1, null, -2L, null, -2L, null, true, b, null);
    }
    
    private static String a(final int n, final String s, final String s2) {
        if (n > 20) {
            return s;
        }
        return s2;
    }
    
    public static ae aO(final String s) {
        return new ae(s, s, -1, null, -1L, null, -1L, null, true, true, null);
    }
    
    public static ae b(final String s, final int n, final String s2, final int n2, final String s3, final long n3, final Long n4, final long n5, final String s4, final String s5) {
        final String a = a(n, s, s2);
        Uri parse;
        if (s4 != null) {
            parse = Uri.parse(s4);
        }
        else {
            parse = null;
        }
        return new ae(a, s2, n2, s3, n3, n4, n5, parse, false, true, s5);
    }
    
    public static ae i(final String s, final boolean b) {
        final Rfc822Token[] tokenize = Rfc822Tokenizer.tokenize((CharSequence)s);
        String address;
        if (tokenize.length > 0) {
            address = tokenize[0].getAddress();
        }
        else {
            address = s;
        }
        return new ae(address, address, -1, null, -1L, null, -1L, null, true, b, null);
    }
    
    public final void b(final byte[] afy) {
        synchronized (this) {
            this.afy = afy;
        }
    }
    
    public final String getDisplayName() {
        return this.Xy;
    }
    
    public final boolean isSelectable() {
        return this.afp == 0;
    }
    
    public final boolean isValid() {
        return this.RI;
    }
    
    public final int mT() {
        return this.afp;
    }
    
    public final String mU() {
        return this.afr;
    }
    
    public final int mV() {
        return this.afs;
    }
    
    public final String mW() {
        return this.aft;
    }
    
    public final long mX() {
        return this.afu;
    }
    
    public final Long mY() {
        return this.adT;
    }
    
    public final long mZ() {
        return this.afv;
    }
    
    public final boolean na() {
        return this.afq;
    }
    
    public final Uri nb() {
        return this.afx;
    }
    
    public final byte[] nc() {
        synchronized (this) {
            return this.afy;
        }
    }
    
    public final String nd() {
        return this.afz;
    }
    
    @Override
    public String toString() {
        return this.Xy + " <" + this.afr + ">, isValid=" + this.RI;
    }
}
