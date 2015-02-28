package android.support.v7.widget;

import android.support.v7.internal.view.menu.*;

final class g implements y
{
    final /* synthetic */ ActionMenuPresenter Cb;
    
    private g(final ActionMenuPresenter cb) {
        this.Cb = cb;
    }
    
    @Override
    public final void a(final i i, final boolean b) {
        if (i instanceof D) {
            ((D)i).dZ().s(false);
        }
        final y dd = this.Cb.dD();
        if (dd != null) {
            dd.a(i, b);
        }
    }
    
    @Override
    public final boolean c(final i i) {
        if (i == null) {
            return false;
        }
        this.Cb.Ca = ((D)i).getItem().getItemId();
        final y dd = this.Cb.dD();
        return dd != null && dd.c(i);
    }
}
