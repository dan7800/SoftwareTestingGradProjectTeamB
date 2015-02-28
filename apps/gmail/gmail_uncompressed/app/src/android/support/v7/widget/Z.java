package android.support.v7.widget;

final class z
{
    static final /* synthetic */ boolean vb;
    x[] DD;
    int DE;
    x[][] DF;
    int[] DG;
    final /* synthetic */ x[] DH;
    final /* synthetic */ y DI;
    
    static {
        vb = !GridLayout.class.desiredAssertionStatus();
    }
    
    z(final y di, final x[] dh) {
        this.DI = di;
        this.DH = dh;
        this.DD = new x[this.DH.length];
        this.DE = -1 + this.DD.length;
        this.DF = this.DI.a(this.DH);
        this.DG = new int[1 + this.DI.getCount()];
    }
    
    private void ay(final int n) {
        switch (this.DG[n]) {
            case 0: {
                this.DG[n] = 1;
                for (final x x : this.DF[n]) {
                    this.ay(x.Db.max);
                    this.DD[this.DE--] = x;
                }
                this.DG[n] = 2;
            }
            case 1: {
                if (!z.vb) {
                    throw new AssertionError();
                }
                break;
            }
        }
    }
    
    final x[] fC() {
        for (int i = 0; i < this.DF.length; ++i) {
            this.ay(i);
        }
        if (!z.vb && this.DE != -1) {
            throw new AssertionError();
        }
        return this.DD;
    }
}
