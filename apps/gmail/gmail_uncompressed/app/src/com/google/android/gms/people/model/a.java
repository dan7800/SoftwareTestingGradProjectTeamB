package com.google.android.gms.people.model;

import com.google.android.gms.common.data.*;
import com.google.android.gms.internal.*;

public final class a extends c<com.google.android.gms.people.model.b>
{
    public a(final DataHolder dataHolder) {
        super(dataHolder);
    }
    
    @Override
    public final String toString() {
        return "AutocompleteList:size=" + this.getCount();
    }
}
