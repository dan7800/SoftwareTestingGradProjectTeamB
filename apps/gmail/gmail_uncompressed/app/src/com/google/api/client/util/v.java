package com.google.api.client.util;

import java.util.*;

final class v extends AbstractSet<Map.Entry<String, Object>>
{
    final /* synthetic */ GenericData czv;
    private final q czw;
    
    v(final GenericData czv) {
        this.czv = czv;
        this.czw = new n(czv, czv.cwV.Yo()).Yq();
    }
    
    @Override
    public final void clear() {
        this.czv.czr.clear();
        this.czw.clear();
    }
    
    @Override
    public final Iterator<Map.Entry<String, Object>> iterator() {
        return new u(this.czv, this.czw);
    }
    
    @Override
    public final int size() {
        return this.czv.czr.size() + this.czw.size();
    }
}
