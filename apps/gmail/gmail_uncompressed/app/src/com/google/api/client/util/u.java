package com.google.api.client.util;

import java.util.*;

final class u implements Iterator<Map.Entry<String, Object>>
{
    private boolean czs;
    private final Iterator<Map.Entry<String, Object>> czt;
    private final Iterator<Map.Entry<String, Object>> czu;
    final /* synthetic */ GenericData czv;
    
    u(final GenericData czv, final q q) {
        this.czv = czv;
        this.czt = q.Yr();
        this.czu = czv.czr.entrySet().iterator();
    }
    
    @Override
    public final boolean hasNext() {
        return this.czt.hasNext() || this.czu.hasNext();
    }
    
    @Override
    public final void remove() {
        if (this.czs) {
            this.czu.remove();
        }
        this.czt.remove();
    }
}
