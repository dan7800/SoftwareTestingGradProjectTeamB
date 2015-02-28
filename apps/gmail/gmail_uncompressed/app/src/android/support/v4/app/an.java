package android.support.v4.app;

import android.os.*;

public final class aN
{
    private Bundle cV;
    private final String ev;
    private CharSequence ew;
    private CharSequence[] ex;
    private boolean ey;
    
    public aN(final String ev) {
        this.ey = true;
        this.cV = new Bundle();
        if (ev == null) {
            throw new IllegalArgumentException("Result key can't be null");
        }
        this.ev = ev;
    }
    
    public final aN a(final CharSequence[] ex) {
        this.ex = ex;
        return this;
    }
    
    public final aL ar() {
        return new aL(this.ev, this.ew, this.ex, this.ey, this.cV);
    }
    
    public final aN h(final CharSequence ew) {
        this.ew = ew;
        return this;
    }
}
