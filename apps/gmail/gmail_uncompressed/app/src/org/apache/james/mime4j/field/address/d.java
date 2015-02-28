package org.apache.james.mime4j.field.address;

import java.util.*;
import org.apache.james.mime4j.field.address.parser.*;

final class d implements Iterator<r>
{
    private t cEt;
    private int index;
    private int len;
    
    public d(final t cEt) {
        this.cEt = cEt;
        this.len = cEt.abm();
        this.index = 0;
    }
    
    public final r aaK() {
        return this.cEt.fZ(this.index++);
    }
    
    @Override
    public final boolean hasNext() {
        return this.index < this.len;
    }
    
    @Override
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
