package android.support.v7.app;

import android.graphics.drawable.*;
import android.content.*;
import android.app.*;

final class z implements u
{
    final Activity pe;
    D pf;
    
    private z(final Activity pe) {
        this.pe = pe;
    }
    
    @Override
    public final void Z(final int n) {
        this.pf = C.a(this.pf, this.pe, n);
    }
    
    @Override
    public final void b(final Drawable drawable, final int n) {
        this.pe.getActionBar().setDisplayShowHomeEnabled(true);
        final D pf = this.pf;
        this.pf = C.a(this.pe, drawable, n);
        this.pe.getActionBar().setDisplayShowHomeEnabled(false);
    }
    
    @Override
    public final Context cO() {
        final ActionBar actionBar = this.pe.getActionBar();
        if (actionBar != null) {
            return actionBar.getThemedContext();
        }
        return (Context)this.pe;
    }
    
    @Override
    public final Drawable cQ() {
        return C.d(this.pe);
    }
}
