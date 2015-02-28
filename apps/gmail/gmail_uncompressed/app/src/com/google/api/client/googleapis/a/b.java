package com.google.api.client.googleapis.a;

import com.google.api.client.util.*;
import com.google.api.client.http.*;
import com.google.api.client.a.a.a.a.a.*;

public abstract class b
{
    e cwh;
    String cwi;
    String cwj;
    String cwk;
    final F cwl;
    boolean cwm;
    boolean cwn;
    final A cwo;
    v cwp;
    
    protected b(final A a, final String s, final String s2, final F cwl, final v cwp) {
        this.cwo = a.ak(a);
        this.cwl = cwl;
        this.gW(s);
        this.gX(s2);
        this.cwp = cwp;
    }
    
    public b gW(final String s) {
        this.cwi = com.google.api.client.googleapis.a.a.gU(s);
        return this;
    }
    
    public b gX(final String s) {
        this.cwj = com.google.api.client.googleapis.a.a.gV(s);
        return this;
    }
    
    public b gY(final String cwk) {
        this.cwk = cwk;
        return this;
    }
}
