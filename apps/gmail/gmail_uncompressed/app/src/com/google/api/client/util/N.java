package com.google.api.client.util;

import java.util.*;
import com.google.api.client.a.a.a.a.a.*;

final class n extends AbstractMap<String, Object>
{
    final k cwV;
    final Object jr;
    
    n(final Object jr, final boolean b) {
        this.jr = jr;
        this.cwV = k.a(jr.getClass(), b);
        H.cp(!this.cwV.isEnum());
    }
    
    public final q Yq() {
        return new q(this);
    }
    
    @Override
    public final boolean containsKey(final Object o) {
        return this.get(o) != null;
    }
    
    @Override
    public final Object get(final Object o) {
        if (o instanceof String) {
            final t hw = this.cwV.hw((String)o);
            if (hw != null) {
                return hw.at(this.jr);
            }
        }
        return null;
    }
}
