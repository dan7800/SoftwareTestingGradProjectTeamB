package com.google.common.collect;

import java.io.*;
import com.google.common.base.*;

final class NaturalOrdering extends Ordering<Comparable> implements Serializable
{
    static final NaturalOrdering cCb;
    private static final long serialVersionUID;
    
    static {
        cCb = new NaturalOrdering();
    }
    
    private Object readResolve() {
        return NaturalOrdering.cCb;
    }
    
    @Override
    public final String toString() {
        return "Ordering.natural()";
    }
}
