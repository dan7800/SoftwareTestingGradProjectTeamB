package com.google.common.collect;

import java.io.*;

class ImmutableAsList$SerializedForm implements Serializable
{
    private static final long serialVersionUID;
    final ImmutableCollection<?> collection;
    
    ImmutableAsList$SerializedForm(final ImmutableCollection<?> collection) {
        this.collection = collection;
    }
    
    Object readResolve() {
        return this.collection.Zp();
    }
}
