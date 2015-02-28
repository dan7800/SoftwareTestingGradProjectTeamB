package com.google.api.client.util;

import java.util.*;

public class GenericData extends AbstractMap<String, Object> implements Cloneable
{
    final k cwV;
    Map<String, Object> czr;
    
    public GenericData() {
        this(EnumSet.noneOf(GenericData$Flags.class));
    }
    
    public GenericData(final EnumSet<GenericData$Flags> set) {
        this.czr = (Map<String, Object>)a.Yk();
        this.cwV = k.a(this.getClass(), set.contains(GenericData$Flags.czx));
    }
    
    public GenericData WT() {
        try {
            final GenericData genericData = (GenericData)super.clone();
            m.j(this, genericData);
            genericData.czr = m.clone(this.czr);
            return genericData;
        }
        catch (CloneNotSupportedException ex) {
            throw new IllegalStateException(ex);
        }
    }
    
    public final k Yy() {
        return this.cwV;
    }
    
    @Override
    public Set<Entry<String, Object>> entrySet() {
        return new v(this);
    }
    
    @Override
    public final Object get(final Object o) {
        if (!(o instanceof String)) {
            return null;
        }
        String lowerCase = (String)o;
        final t hw = this.cwV.hw(lowerCase);
        if (hw != null) {
            return hw.at(this);
        }
        if (this.cwV.Yo()) {
            lowerCase = lowerCase.toLowerCase();
        }
        return this.czr.get(lowerCase);
    }
    
    public GenericData i(String lowerCase, final Object o) {
        final t hw = this.cwV.hw(lowerCase);
        if (hw != null) {
            hw.k(this, o);
            return this;
        }
        if (this.cwV.Yo()) {
            lowerCase = lowerCase.toLowerCase();
        }
        this.czr.put(lowerCase, o);
        return this;
    }
    
    public final Object o(String lowerCase, final Object o) {
        final t hw = this.cwV.hw(lowerCase);
        if (hw != null) {
            final Object at = hw.at(this);
            hw.k(this, o);
            return at;
        }
        if (this.cwV.Yo()) {
            lowerCase = lowerCase.toLowerCase();
        }
        return this.czr.put(lowerCase, o);
    }
    
    @Override
    public final void putAll(final Map<? extends String, ?> map) {
        for (final Map.Entry<String, V> entry : map.entrySet()) {
            this.i(entry.getKey(), entry.getValue());
        }
    }
    
    @Override
    public final Object remove(final Object o) {
        if (!(o instanceof String)) {
            return null;
        }
        String lowerCase = (String)o;
        if (this.cwV.hw(lowerCase) != null) {
            throw new UnsupportedOperationException();
        }
        if (this.cwV.Yo()) {
            lowerCase = lowerCase.toLowerCase();
        }
        return this.czr.remove(lowerCase);
    }
}
