package com.google.analytics.tracking.android;

import android.content.*;
import java.util.*;
import android.app.*;
import android.text.*;

public final class m
{
    private static m aSg;
    private Timer aQB;
    private k aSA;
    private TimerTask aSB;
    private boolean aSC;
    private boolean aSh;
    private String aSi;
    private String aSj;
    private String aSk;
    private int aSl;
    private boolean aSm;
    private Double aSn;
    private boolean aSo;
    private boolean aSp;
    private Thread.UncaughtExceptionHandler aSq;
    private boolean aSr;
    private int aSs;
    private long aSt;
    private long aSu;
    private final Map<String, String> aSv;
    private ah aSw;
    private X aSx;
    private J aSy;
    private ad aSz;
    private Context mContext;
    
    private m() {
        this.aSh = false;
        this.aSl = 1800;
        this.aSr = false;
        this.aSs = 0;
        this.aSv = new HashMap<String, String>();
        this.aSw = null;
        this.aSC = false;
        this.aSA = new n(this);
    }
    
    public static m BE() {
        if (m.aSg == null) {
            m.aSg = new m();
        }
        return m.aSg;
    }
    
    public static ah BF() {
        if (BE().mContext == null) {
            throw new IllegalStateException("You must call EasyTracker.getInstance().setContext(context) or startActivity(activity) before calling getTracker()");
        }
        return BE().aSw;
    }
    
    private void BG() {
        synchronized (this) {
            if (this.aQB != null) {
                this.aQB.cancel();
                this.aQB = null;
            }
        }
    }
    
    public final void e(final Activity context) {
        this.setContext((Context)context);
        if (this.aSh) {
            this.BG();
            if (!this.aSC && this.aSs == 0) {
                int n;
                if (this.aSt == 0L || (this.aSt > 0L && this.aSA.currentTimeMillis() > this.aSu + this.aSt)) {
                    n = 1;
                }
                else {
                    n = 0;
                }
                if (n != 0) {
                    this.aSw.BH();
                    final boolean aSr = this.aSr;
                }
            }
            this.aSC = true;
            ++this.aSs;
            if (this.aSr) {
                final ah aSw = this.aSw;
                final String canonicalName = context.getClass().getCanonicalName();
                String string;
                if (this.aSv.containsKey(canonicalName)) {
                    string = this.aSv.get(canonicalName);
                }
                else {
                    string = this.aSx.getString(canonicalName);
                    if (string == null) {
                        string = canonicalName;
                    }
                    this.aSv.put(canonicalName, string);
                }
                aSw.ba(string);
            }
        }
    }
    
    public final void f(final Activity context) {
        this.setContext((Context)context);
        if (this.aSh) {
            --this.aSs;
            this.aSs = Math.max(0, this.aSs);
            this.aSu = this.aSA.currentTimeMillis();
            if (this.aSs == 0) {
                this.BG();
                this.aSB = new p(this, (byte)0);
                (this.aQB = new Timer("waitForActivityStart")).schedule(this.aSB, 1000L);
            }
        }
    }
    
    public final void setContext(final Context context) {
        boolean b = true;
        if (context == null) {
            Q.cW("Context cannot be null");
        }
        else {
            final u bi = u.BI();
            final Y aSx = new Y(context.getApplicationContext());
            final J as = J.aS(context.getApplicationContext());
            if (context == null) {
                Q.cW("Context cannot be null");
            }
            if (this.mContext == null) {
                this.mContext = context.getApplicationContext();
                this.aSy = as;
                this.aSz = bi;
                this.aSx = aSx;
                this.aSi = this.aSx.getString("ga_trackingId");
                if (TextUtils.isEmpty((CharSequence)this.aSi)) {
                    this.aSi = this.aSx.getString("ga_api_key");
                    if (TextUtils.isEmpty((CharSequence)this.aSi)) {
                        Q.cW("EasyTracker requested, but missing required ga_trackingId");
                        this.aSw = new o(this);
                        return;
                    }
                }
                this.aSh = b;
                this.aSj = this.aSx.getString("ga_appName");
                this.aSk = this.aSx.getString("ga_appVersion");
                this.aSm = this.aSx.getBoolean("ga_debug");
                this.aSn = this.aSx.df("ga_sampleFrequency");
                if (this.aSn == null) {
                    this.aSn = new Double(this.aSx.getInt("ga_sampleRate", 100));
                }
                this.aSl = this.aSx.getInt("ga_dispatchPeriod", 1800);
                this.aSt = 1000 * this.aSx.getInt("ga_sessionTimeout", 30);
                if (!this.aSx.getBoolean("ga_autoActivityTracking") && !this.aSx.getBoolean("ga_auto_activity_tracking")) {
                    b = false;
                }
                this.aSr = b;
                this.aSo = this.aSx.getBoolean("ga_anonymizeIp");
                this.aSp = this.aSx.getBoolean("ga_reportUncaughtExceptions");
                this.aSw = this.aSy.cS(this.aSi);
                if (!TextUtils.isEmpty((CharSequence)this.aSj)) {
                    Q.cX("setting appName to " + this.aSj);
                    this.aSw.cO(this.aSj);
                }
                if (this.aSk != null) {
                    this.aSw.cP(this.aSk);
                }
                this.aSw.bI(this.aSo);
                this.aSw.b(this.aSn);
                this.aSy.bL(this.aSm);
                this.aSz.dw(this.aSl);
                if (this.aSp) {
                    Thread.UncaughtExceptionHandler aSq = this.aSq;
                    if (aSq == null) {
                        aSq = new r(this.aSw, this.aSz, Thread.getDefaultUncaughtExceptionHandler(), this.mContext);
                    }
                    Thread.setDefaultUncaughtExceptionHandler(aSq);
                }
            }
        }
    }
}
