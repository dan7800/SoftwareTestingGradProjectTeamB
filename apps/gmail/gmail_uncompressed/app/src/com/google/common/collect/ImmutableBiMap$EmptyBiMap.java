package com.google.common.collect;

import java.util.*;

class ImmutableBiMap$EmptyBiMap extends ImmutableBiMap<Object, Object>
{
    @Override
    final boolean YW() {
        return false;
    }
    
    @Override
    final ImmutableMap<Object, Object> Zj() {
        return EmptyImmutableMap.cAr;
    }
    
    @Override
    public final ImmutableBiMap<Object, Object> Zk() {
        return this;
    }
    
    Object readResolve() {
        return ImmutableBiMap.Zm();
    }
}
