package com.google.common.collect;

import java.util.*;

class ImmutableSortedMap$SerializedForm extends ImmutableMap$SerializedForm
{
    private static final long serialVersionUID;
    private final Comparator<Object> comparator;
    
    ImmutableSortedMap$SerializedForm(final ImmutableSortedMap<?, ?> immutableSortedMap) {
        super(immutableSortedMap);
        this.comparator = (Comparator<Object>)immutableSortedMap.comparator();
    }
    
    @Override
    Object readResolve() {
        return this.a(new D<Object, Object>(this.comparator));
    }
}
