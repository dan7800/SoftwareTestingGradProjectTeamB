package com.google.api.client.util;

public final class r
{
    private int czh;
    private final int czi;
    private final double czj;
    private final double czk;
    private final int czl;
    long czm;
    private final int czn;
    private final C czo;
    
    public r() {
        this(new s());
    }
    
    protected r(final s s) {
        boolean b = true;
        this.czi = s.czi;
        this.czj = s.czj;
        this.czk = s.czk;
        this.czl = s.czl;
        this.czn = s.czn;
        this.czo = s.czo;
        H.cp(this.czi > 0 && b);
        H.cp(0.0 <= this.czj && this.czj < 1.0 && b);
        H.cp(this.czk >= 1.0 && b);
        H.cp(this.czl >= this.czi && b);
        if (this.czn <= 0) {
            b = false;
        }
        H.cp(b);
        this.reset();
    }
    
    public final long Yt() {
        if ((this.czo.nanoTime() - this.czm) / 1000000L > this.czn) {
            return -1L;
        }
        final double czj = this.czj;
        final double random = Math.random();
        final int czh = this.czh;
        final double n = czj * czh;
        final double n2 = czh - n;
        final int n3 = (int)(n2 + random * (1.0 + (n + czh - n2)));
        if (this.czh >= this.czl / this.czk) {
            this.czh = this.czl;
        }
        else {
            this.czh *= (int)this.czk;
        }
        return n3;
    }
    
    public final void reset() {
        this.czh = this.czi;
        this.czm = this.czo.nanoTime();
    }
}
