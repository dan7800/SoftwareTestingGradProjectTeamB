package com.google.android.mail.common.base;

import java.util.*;

final class z extends j
{
    List<j> cpj;
    
    z(final List<j> cpj) {
        this.cpj = cpj;
    }
    
    @Override
    public final j a(final j j) {
        final ArrayList<j> list = new ArrayList<j>(this.cpj);
        list.add(G.ak(j));
        return new z(list);
    }
    
    @Override
    protected final void a(final y y) {
        final Iterator<j> iterator = this.cpj.iterator();
        while (iterator.hasNext()) {
            iterator.next().a(y);
        }
    }
    
    @Override
    public final boolean i(final char c) {
        final Iterator<j> iterator = this.cpj.iterator();
        while (iterator.hasNext()) {
            if (iterator.next().i(c)) {
                return true;
            }
        }
        return false;
    }
}
