package com.google.android.gms.people.model;

import com.google.android.gms.common.data.*;
import com.google.android.gms.internal.*;

public final class e extends b<d>
{
    public e(final DataHolder dataHolder) {
        super(dataHolder);
    }
    
    public final d eU(final int n) {
        return new bL(this.bDT, n);
    }
    
    @Override
    public final String toString() {
        return "Owner:size=" + this.getCount();
    }
}
