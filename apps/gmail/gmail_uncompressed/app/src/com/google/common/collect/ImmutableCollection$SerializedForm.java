package com.google.common.collect;

import java.io.*;

class ImmutableCollection$SerializedForm implements Serializable
{
    private static final long serialVersionUID;
    final Object[] elements;
    
    ImmutableCollection$SerializedForm(final Object[] elements) {
        this.elements = elements;
    }
    
    Object readResolve() {
        if (this.elements.length == 0) {
            return ImmutableCollection.cAw;
        }
        return new ImmutableCollection$ArrayImmutableCollection(aB.o(this.elements));
    }
}
