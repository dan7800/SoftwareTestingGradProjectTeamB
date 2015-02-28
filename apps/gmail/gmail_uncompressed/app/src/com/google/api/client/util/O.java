package com.google.api.client.util;

import java.util.*;
import com.google.api.client.a.a.a.a.a.*;

final class o implements Entry<String, Object>
{
    private Object cyY;
    private final t cyZ;
    final /* synthetic */ n cza;
    
    o(final n cza, final t cyZ, final Object o) {
        this.cza = cza;
        this.cyZ = cyZ;
        this.cyY = a.ak(o);
    }
    
    private String getKey() {
        String s = this.cyZ.getName();
        if (this.cza.cwV.Yo()) {
            s = s.toLowerCase();
        }
        return s;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (this != o) {
            if (!(o instanceof Entry)) {
                return false;
            }
            final Entry entry = (Entry)o;
            if (!this.getKey().equals(entry.getKey()) || !this.getValue().equals(entry.getValue())) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public final Object getValue() {
        return this.cyY;
    }
    
    @Override
    public final int hashCode() {
        return this.getKey().hashCode() ^ this.getValue().hashCode();
    }
    
    @Override
    public final Object setValue(final Object o) {
        final Object cyY = this.cyY;
        this.cyY = a.ak(o);
        this.cyZ.k(this.cza.jr, o);
        return cyY;
    }
}
