package com.google.android.gms.internal;

import java.util.*;
import java.util.regex.*;
import java.security.*;
import android.os.*;

public final class ca
{
    public static final Map<String, Integer> bWn;
    public static Iterable<?> bWo;
    public static final Handler bWp;
    public static final String[] bWq;
    public static final Pattern bWr;
    public static final Pattern bWs;
    public static final SecureRandom bWt;
    private static final ThreadLocal<StringBuilder> bWu;
    private static final ThreadLocal<String[]> bWv;
    private static final ThreadLocal<String[]> bWw;
    private static final ThreadLocal<String[]> bWx;
    private static final ThreadLocal<String[]> bWy;
    private static final ThreadLocal<String[]> bWz;
    
    static {
        bWn = new pn$1();
        ca.bWo = new bE<Object>();
        bWp = new Handler(Looper.getMainLooper());
        bWq = new String[0];
        bWr = Pattern.compile("\\,");
        bWs = Pattern.compile("[\u2028\u2029  \u1680\u180e\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\t\u000b\f\u001c\u001d\u001e\u001f\n\r]+");
        bWt = new SecureRandom();
        bWu = new cb();
        bWv = new cc();
        bWw = new cd();
        bWx = new ce();
        bWy = new cf();
        bWz = new cg();
    }
}
