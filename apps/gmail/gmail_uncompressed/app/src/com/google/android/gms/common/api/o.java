package com.google.android.gms.common.api;

import android.view.*;
import android.support.v4.app.*;
import android.os.*;
import android.content.*;
import com.google.android.gms.common.internal.*;
import java.util.*;

public final class o
{
    private final Set<String> bCo;
    private int bCp;
    private View bCq;
    private String bCr;
    private final Map<a<?>, b> bCs;
    private k bCt;
    private int bCu;
    private q bCv;
    private Looper bCw;
    private int bCx;
    private final Set<p> bCy;
    private final Set<q> bCz;
    private String bxh;
    private final Context mContext;
    
    public o(final Context mContext) {
        this.bCo = new HashSet<String>();
        this.bCs = new HashMap<a<?>, b>();
        this.bCu = -1;
        this.bCx = 2;
        this.bCy = new HashSet<p>();
        this.bCz = new HashSet<q>();
        this.mContext = mContext;
        this.bCw = mContext.getMainLooper();
        this.bCr = mContext.getPackageName();
    }
    
    private ClientSettings Kx() {
        return new ClientSettings(this.bxh, this.bCo, this.bCp, this.bCq, this.bCr);
    }
    
    public final n Ky() {
        G.b(!this.bCs.isEmpty(), "must call addApi() to add at least one API");
        if (this.bCu >= 0) {
            final com.google.android.gms.common.api.G b = com.google.android.gms.common.api.G.b(this.bCt);
            n ev = b.ev(this.bCu);
            if (ev == null) {
                ev = new x(this.mContext.getApplicationContext(), this.bCw, this.Kx(), this.bCs, this.bCy, this.bCz, this.bCu, this.bCx);
            }
            b.a(this.bCu, ev, this.bCv);
            return ev;
        }
        return new x(this.mContext, this.bCw, this.Kx(), this.bCs, this.bCy, this.bCz, -1, this.bCx);
    }
    
    public final o a(final a<? extends d> a) {
        this.bCs.put(a, null);
        final List<v> kp = a.Kp();
        for (int size = kp.size(), i = 0; i < size; ++i) {
            this.bCo.add(kp.get(i).Kz());
        }
        return this;
    }
    
    public final <O extends c> o a(final a<O> a, final O o) {
        G.f(o, "Null options are not permitted for this Api");
        this.bCs.put((a<?>)a, (Object)o);
        final List<v> kp = a.Kp();
        for (int size = kp.size(), i = 0; i < size; ++i) {
            this.bCo.add(kp.get(i).Kz());
        }
        return this;
    }
    
    public final o a(final v v) {
        this.bCo.add(v.Kz());
        return this;
    }
    
    public final o c(final p p) {
        this.bCy.add(p);
        return this;
    }
    
    public final o c(final q q) {
        this.bCz.add(q);
        return this;
    }
    
    public final o fP(final String bxh) {
        this.bxh = bxh;
        return this;
    }
}
