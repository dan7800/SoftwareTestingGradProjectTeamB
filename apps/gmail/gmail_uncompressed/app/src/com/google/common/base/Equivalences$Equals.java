package com.google.common.base;

import java.io.*;

final class Equivalences$Equals extends Equivalence<Object> implements Serializable
{
    static final Equivalences$Equals czQ;
    private static final long serialVersionUID = 1L;
    
    static {
        czQ = new Equivalences$Equals();
    }
    
    private Object readResolve() {
        return Equivalences$Equals.czQ;
    }
    
    public final int aw(final Object o) {
        return o.hashCode();
    }
    
    @Override
    protected final boolean m(final Object o, final Object o2) {
        return o.equals(o2);
    }
}
