package com.google.api.client.util;

import java.util.*;

final class q extends AbstractSet<Map.Entry<String, Object>>
{
    final /* synthetic */ n cza;
    
    q(final n cza) {
        this.cza = cza;
    }
    
    public final p Yr() {
        return new p(this.cza);
    }
    
    @Override
    public final void clear() {
        final Iterator<String> iterator = this.cza.cwV.cyJ.iterator();
        while (iterator.hasNext()) {
            this.cza.cwV.hw(iterator.next()).k(this.cza.jr, null);
        }
    }
    
    @Override
    public final boolean isEmpty() {
        final Iterator<String> iterator = this.cza.cwV.cyJ.iterator();
        while (iterator.hasNext()) {
            if (this.cza.cwV.hw(iterator.next()).at(this.cza.jr) != null) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public final int size() {
        final Iterator<String> iterator = this.cza.cwV.cyJ.iterator();
        int n = 0;
        while (iterator.hasNext()) {
            int n2;
            if (this.cza.cwV.hw(iterator.next()).at(this.cza.jr) != null) {
                n2 = n + 1;
            }
            else {
                n2 = n;
            }
            n = n2;
        }
        return n;
    }
}
