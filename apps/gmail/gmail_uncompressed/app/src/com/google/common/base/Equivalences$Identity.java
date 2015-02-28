package com.google.common.base;

import java.io.*;

final class Equivalences$Identity extends Equivalence<Object> implements Serializable
{
    static final Equivalences$Identity czR;
    private static final long serialVersionUID = 1L;
    
    static {
        czR = new Equivalences$Identity();
    }
    
    private Object readResolve() {
        return Equivalences$Identity.czR;
    }
    
    @Override
    protected final int aw(final Object o) {
        return System.identityHashCode(o);
    }
    
    @Override
    protected final boolean m(final Object o, final Object o2) {
        return false;
    }
}
