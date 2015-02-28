package android.support.v4.widget;

import android.os.*;
import android.content.*;
import android.graphics.*;

public final class s
{
    private static final v lx;
    private Object lw;
    
    static {
        if (Build$VERSION.SDK_INT >= 14) {
            lx = new u();
            return;
        }
        lx = new t();
    }
    
    public s(final Context context) {
        this.lw = s.lx.d(context);
    }
    
    public final boolean bV() {
        return s.lx.F(this.lw);
    }
    
    public final boolean draw(final Canvas canvas) {
        return s.lx.a(this.lw, canvas);
    }
    
    public final boolean f(final float n) {
        return s.lx.a(this.lw, n);
    }
    
    public final void finish() {
        s.lx.E(this.lw);
    }
    
    public final boolean isFinished() {
        return s.lx.D(this.lw);
    }
    
    public final void setSize(final int n, final int n2) {
        s.lx.a(this.lw, n, n2);
    }
}
