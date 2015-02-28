package com.google.analytics.tracking.android;

import java.text.*;
import java.util.*;
import android.text.*;

public class ah
{
    private static final DecimalFormat aVw;
    private volatile boolean aVA;
    private long aVB;
    private long aVC;
    private boolean aVD;
    private final aj aVx;
    private final ai aVy;
    private volatile boolean aVz;
    
    static {
        aVw = new DecimalFormat("0.######", new DecimalFormatSymbols(Locale.US));
    }
    
    ah() {
        this.aVz = false;
        this.aVA = false;
        this.aVB = 120000L;
        this.aVD = true;
        this.aVx = null;
        this.aVy = null;
    }
    
    ah(final String s, final aj aVx) {
        this.aVz = false;
        this.aVA = false;
        this.aVB = 120000L;
        this.aVD = true;
        if (s == null) {
            throw new IllegalArgumentException("trackingId cannot be null");
        }
        this.aVx = aVx;
        (this.aVy = new ai((byte)0)).set("trackingId", s);
        this.aVy.set("sampleRate", "100");
        this.aVy.E("sessionControl", "start");
        this.aVy.set("useSecure", Boolean.toString(true));
    }
    
    private void Ci() {
        if (this.aVz) {
            throw new IllegalStateException("Tracker closed");
        }
    }
    
    private boolean Cj() {
        while (true) {
            boolean b = true;
            Label_0103: {
                synchronized (this) {
                    if (this.aVD) {
                        final long currentTimeMillis = System.currentTimeMillis();
                        if (this.aVB < 120000L) {
                            final long n = currentTimeMillis - this.aVC;
                            if (n > 0L) {
                                this.aVB = Math.min(120000L, n + this.aVB);
                            }
                        }
                        this.aVC = currentTimeMillis;
                        if (this.aVB < 2000L) {
                            break Label_0103;
                        }
                        this.aVB -= 2000L;
                    }
                    return b;
                }
            }
            Q.db("Excessive tracking detected.  Tracking call ignored.");
            b = false;
            return b;
        }
    }
    
    private void c(final String s, Map<String, String> hashMap) {
        this.aVA = true;
        if (hashMap == null) {
            hashMap = new HashMap<String, String>();
        }
        hashMap.put("hitType", s);
        this.aVy.a(hashMap, true);
        if (!this.Cj()) {
            Q.db("Too many hits sent too quickly, throttling invoked.");
        }
        else {
            this.aVx.d(this.aVy.Cl());
        }
        this.aVy.Ck();
    }
    
    public void BH() {
        this.Ci();
        GAUsage.BX().a(GAUsage$Field.aTZ);
        this.aVy.E("sessionControl", "start");
    }
    
    public void a(final String s, final long n, final String s2, final String s3) {
        this.Ci();
        GAUsage.BX().a(GAUsage$Field.aTU);
        GAUsage.BX().bK(true);
        this.c("timing", this.b(s, n, s2, s3));
        GAUsage.BX().bK(false);
    }
    
    public void a(final String s, final String s2, final String s3, final Long n) {
        this.Ci();
        GAUsage.BX().a(GAUsage$Field.aTP);
        GAUsage.BX().bK(true);
        this.c("event", this.b(s, s2, s3, n));
        GAUsage.BX().bK(false);
    }
    
    public Map<String, String> b(final String s, final long n, final String s2, final String s3) {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("timingCategory", s);
        hashMap.put("timingValue", Long.toString(n));
        hashMap.put("timingVar", s2);
        hashMap.put("timingLabel", s3);
        GAUsage.BX().a(GAUsage$Field.aUw);
        return hashMap;
    }
    
    public Map<String, String> b(final String s, final String s2, final String s3, final Long n) {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("eventCategory", s);
        hashMap.put("eventAction", s2);
        hashMap.put("eventLabel", s3);
        if (n != null) {
            hashMap.put("eventValue", Long.toString(n));
        }
        GAUsage.BX().a(GAUsage$Field.aUL);
        return hashMap;
    }
    
    public void b(final double n) {
        GAUsage.BX().a(GAUsage$Field.aUj);
        this.aVy.set("sampleRate", Double.toString(n));
    }
    
    public void bI(final boolean b) {
        GAUsage.BX().a(GAUsage$Field.aUh);
        this.aVy.set("anonymizeIp", Boolean.toString(b));
    }
    
    public void ba(final String s) {
        this.Ci();
        if (TextUtils.isEmpty((CharSequence)s)) {
            throw new IllegalStateException("trackView requires a appScreen to be set");
        }
        GAUsage.BX().a(GAUsage$Field.aTO);
        this.aVy.set("description", s);
        this.c("appview", null);
    }
    
    public void cO(final String s) {
        if (this.aVA) {
            Q.db("Tracking already started, setAppName call ignored");
            return;
        }
        if (TextUtils.isEmpty((CharSequence)s)) {
            Q.db("setting appName to empty value not allowed, call ignored");
            return;
        }
        GAUsage.BX().a(GAUsage$Field.aUb);
        this.aVy.set("appName", s);
    }
    
    public void cP(final String s) {
        if (this.aVA) {
            Q.db("Tracking already started, setAppVersion call ignored");
            return;
        }
        GAUsage.BX().a(GAUsage$Field.aUd);
        this.aVy.set("appVersion", s);
    }
    
    public void cQ(final String s) {
        this.Ci();
        GAUsage.BX().a(GAUsage$Field.aTR);
        GAUsage.BX().bK(true);
        this.c("exception", this.k(s, true));
        GAUsage.BX().bK(false);
    }
    
    public void f(final int n, final String s) {
        if (n <= 0) {
            Q.da("index must be > 0, ignoring setCustomDimension call for " + n + ", " + s);
            return;
        }
        this.aVy.E(ak.f("customDimension", n), s);
    }
    
    public Map<String, String> k(final String s, final boolean b) {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("exDescription", s);
        hashMap.put("exFatal", Boolean.toString(true));
        GAUsage.BX().a(GAUsage$Field.aUu);
        return hashMap;
    }
}
