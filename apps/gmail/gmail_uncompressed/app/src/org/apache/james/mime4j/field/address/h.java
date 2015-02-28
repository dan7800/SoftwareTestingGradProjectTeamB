package org.apache.james.mime4j.field.address;

import java.util.*;

public final class h
{
    private ArrayList<a> cEx;
    
    public h(ArrayList<a> cEx, final boolean b) {
        if (cEx != null) {
            if (!b) {
                cEx = new ArrayList<a>(cEx);
            }
            this.cEx = cEx;
            return;
        }
        this.cEx = new ArrayList<a>(0);
    }
    
    public final g fM(final int n) {
        if (n < 0 || this.cEx.size() <= n) {
            throw new IndexOutOfBoundsException();
        }
        return this.cEx.get(n);
    }
    
    public final int size() {
        return this.cEx.size();
    }
}
