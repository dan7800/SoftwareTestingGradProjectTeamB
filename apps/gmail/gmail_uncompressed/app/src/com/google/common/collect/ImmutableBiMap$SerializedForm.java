package com.google.common.collect;

class ImmutableBiMap$SerializedForm extends ImmutableMap$SerializedForm
{
    private static final long serialVersionUID;
    
    ImmutableBiMap$SerializedForm(final ImmutableBiMap<?, ?> immutableBiMap) {
        super(immutableBiMap);
    }
    
    @Override
    Object readResolve() {
        return this.a(new v<Object, Object>());
    }
}
