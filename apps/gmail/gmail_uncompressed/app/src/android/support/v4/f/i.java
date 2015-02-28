package android.support.v4.f;

import java.util.*;

final class i<T> implements Iterator<T>
{
    int gO;
    final int gY;
    boolean gZ;
    final /* synthetic */ h ha;
    int y;
    
    i(final h ha, final int gy) {
        this.ha = ha;
        this.gZ = false;
        this.gY = gy;
        this.gO = ha.aM();
    }
    
    @Override
    public final boolean hasNext() {
        return this.y < this.gO;
    }
    
    @Override
    public final T next() {
        final Object c = this.ha.c(this.y, this.gY);
        ++this.y;
        this.gZ = true;
        return (T)c;
    }
    
    @Override
    public final void remove() {
        if (!this.gZ) {
            throw new IllegalStateException();
        }
        --this.y;
        --this.gO;
        this.gZ = false;
        this.ha.q(this.y);
    }
}
