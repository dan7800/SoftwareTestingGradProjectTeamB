package android.support.v7.widget;

import android.view.*;

final class u extends A
{
    final /* synthetic */ t Da;
    private int size;
    
    u(final t da) {
        this.Da = da;
        super((byte)0);
    }
    
    @Override
    protected final int I(final boolean b) {
        return Math.max(super.I(b), this.size);
    }
    
    @Override
    protected final int a(final GridLayout gridLayout, final View view, final w w, final int n, final boolean b) {
        return Math.max(0, super.a(gridLayout, view, w, n, b));
    }
    
    @Override
    protected final void r(final int n, final int n2) {
        super.r(n, n2);
        this.size = Math.max(this.size, n + n2);
    }
    
    @Override
    protected final void reset() {
        super.reset();
        this.size = Integer.MIN_VALUE;
    }
}
