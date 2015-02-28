package com.google.api.client.googleapis.a;

import com.google.api.client.googleapis.media.*;
import com.google.api.client.util.*;
import com.google.api.client.googleapis.*;
import java.util.*;
import java.io.*;
import com.google.api.client.http.*;

public abstract class c<T> extends GenericData
{
    private boolean cvW;
    private MediaHttpUploader cwe;
    private final a cwq;
    private final String cwr;
    private final String cws;
    private final k cwt;
    private o cwu;
    private o cwv;
    private int cww;
    private String cwx;
    private Class<T> cwy;
    
    protected c(final a a, final String s, final String s2, final k cwt, final Class<T> clazz) {
        this.cwu = new o();
        this.cww = -1;
        this.cwy = com.google.api.client.a.a.a.a.a.a.ak(clazz);
        this.cwq = com.google.api.client.a.a.a.a.a.a.ak(a);
        this.cwr = com.google.api.client.a.a.a.a.a.a.ak(s);
        this.cws = com.google.api.client.a.a.a.a.a.a.ak(s2);
        this.cwt = cwt;
        final String wz = a.WZ();
        if (wz != null) {
            this.cwu.hm(wz);
        }
    }
    
    private j Xd() {
        return new j(UriTemplate.b(this.cwq.WY(), this.cws, this));
    }
    
    public a Xc() {
        return this.cwq;
    }
    
    public final T Xe() {
        w w;
        if (this.cwe == null) {
            H.cp(this.cwe == null);
            H.cp(true);
            final t a = this.Xc().Xa().a(this.cwr, this.Xd(), this.cwt);
            new b().b(a);
            a.a(this.Xc().Xb());
            if (this.cwt == null && (this.cwr.equals("POST") || this.cwr.equals("PUT") || this.cwr.equals("PATCH"))) {
                a.b(new e());
            }
            a.XD().putAll(this.cwu);
            if (!this.cvW) {
                a.a(new h());
            }
            a.a(new d(this, a.XH(), a));
            w = a.XN();
        }
        else {
            final j xd = this.Xd();
            final boolean xl = this.Xc().Xa().a(this.cwr, xd, this.cwt).XL();
            w = this.cwe.a(this.cwu).cm(this.cvW).a(xd);
            w.XP().a(this.Xc().Xb());
            if (xl && !w.XO()) {
                throw this.a(w);
            }
        }
        this.cwv = w.XD();
        this.cww = w.getStatusCode();
        this.cwx = w.KB();
        return w.d(this.cwy);
    }
    
    protected IOException a(final w w) {
        return new HttpResponseException(w);
    }
    
    public c<T> k(final String s, final Object o) {
        return (c)super.i(s, o);
    }
}
