package android.support.v7.app;

import android.app.*;
import android.content.*;
import android.support.v4.view.*;

final class w extends E implements x
{
    private final Activity pe;
    
    public w(final Activity pe, final Context context) {
        super(context);
        this.pe = pe;
    }
    
    @Override
    final boolean cX() {
        return ad.m(this.pe.getWindow().getDecorView()) == 1;
    }
    
    @Override
    public final void p(final float n) {
        if (n == 1.0f) {
            this.m(true);
        }
        else if (n == 0.0f) {
            this.m(false);
        }
        super.q(n);
    }
}
