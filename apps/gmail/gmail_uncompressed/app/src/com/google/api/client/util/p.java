package com.google.api.client.util;

import java.util.*;

final class p implements Iterator<Map.Entry<String, Object>>
{
    final /* synthetic */ n cza;
    private int czb;
    private t czc;
    private Object czd;
    private boolean cze;
    private boolean czf;
    private t czg;
    
    p(final n cza) {
        this.cza = cza;
        this.czb = -1;
    }
    
    @Override
    public final boolean hasNext() {
        if (!this.czf) {
            this.czf = true;
            this.czd = null;
            while (this.czd == null && ++this.czb < this.cza.cwV.cyJ.size()) {
                this.czc = this.cza.cwV.hw(this.cza.cwV.cyJ.get(this.czb));
                this.czd = this.czc.at(this.cza.jr);
            }
        }
        return this.czd != null;
    }
    
    @Override
    public final void remove() {
        H.cq(this.czg != null && !this.cze);
        this.cze = true;
        this.czg.k(this.cza.jr, null);
    }
}
