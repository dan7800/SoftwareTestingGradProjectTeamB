package com.google.common.collect;

import java.io.*;

class ImmutableList$SerializedForm implements Serializable
{
    private static final long serialVersionUID;
    final Object[] elements;
    
    ImmutableList$SerializedForm(final Object[] elements) {
        this.elements = elements;
    }
    
    Object readResolve() {
        return ImmutableList.f(this.elements);
    }
}
