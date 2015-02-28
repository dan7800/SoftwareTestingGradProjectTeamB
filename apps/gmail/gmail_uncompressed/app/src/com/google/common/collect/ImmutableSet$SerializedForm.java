package com.google.common.collect;

import java.io.*;

class ImmutableSet$SerializedForm implements Serializable
{
    private static final long serialVersionUID;
    final Object[] elements;
    
    ImmutableSet$SerializedForm(final Object[] elements) {
        this.elements = elements;
    }
    
    Object readResolve() {
        return ImmutableSet.j(this.elements);
    }
}
