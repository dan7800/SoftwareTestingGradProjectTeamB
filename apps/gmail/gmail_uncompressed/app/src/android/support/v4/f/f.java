package android.support.v4.f;

public final class f<E> implements Cloneable
{
    private static final Object gK;
    private boolean gL;
    private long[] gM;
    private Object[] gN;
    private int gO;
    
    static {
        gK = new Object();
    }
    
    public f() {
        this((byte)0);
    }
    
    private f(final byte b) {
        this.gL = false;
        final int s = c.s(10);
        this.gM = new long[s];
        this.gN = new Object[s];
        this.gO = 0;
    }
    
    private f<E> aQ() {
        f f;
        try {
            final f f2;
            f = (f2 = (f)super.clone());
            final f f3 = this;
            final long[] array = f3.gM;
            final long[] array2 = array.clone();
            final long[] array3 = array2;
            f2.gM = array3;
            final f f4 = f;
            final f f5 = this;
            final Object[] array4 = f5.gN;
            final Object[] array5 = array4.clone();
            final Object[] array6 = array5;
            f4.gN = array6;
            return f;
        }
        catch (CloneNotSupportedException ex) {
            return null;
        }
        try {
            final f f2 = f;
            final f f3 = this;
            final long[] array = f3.gM;
            final long[] array2 = array.clone();
            final long[] array3 = array2;
            f2.gM = array3;
            final f f4 = f;
            final f f5 = this;
            final Object[] array4 = f5.gN;
            final Object[] array5 = array4.clone();
            final Object[] array6 = array5;
            f4.gN = array6;
            return f;
        }
        catch (CloneNotSupportedException ex2) {
            return f;
        }
    }
    
    private void gc() {
        final int go = this.gO;
        final long[] gm = this.gM;
        final Object[] gn = this.gN;
        int i = 0;
        int go2 = 0;
        while (i < go) {
            final Object o = gn[i];
            if (o != f.gK) {
                if (i != go2) {
                    gm[go2] = gm[i];
                    gn[go2] = o;
                    gn[i] = null;
                }
                ++go2;
            }
            ++i;
        }
        this.gL = false;
        this.gO = go2;
    }
    
    private long keyAt(final int n) {
        if (this.gL) {
            this.gc();
        }
        return this.gM[n];
    }
    
    private E valueAt(final int n) {
        if (this.gL) {
            this.gc();
        }
        return (E)this.gN[n];
    }
    
    public final E get(final long n) {
        final int a = c.a(this.gM, this.gO, n);
        if (a < 0 || this.gN[a] == f.gK) {
            return null;
        }
        return (E)this.gN[a];
    }
    
    public final void put(final long n, final E e) {
        final int a = c.a(this.gM, this.gO, n);
        if (a >= 0) {
            this.gN[a] = e;
            return;
        }
        int n2 = ~a;
        if (n2 < this.gO && this.gN[n2] == f.gK) {
            this.gM[n2] = n;
            this.gN[n2] = e;
            return;
        }
        if (this.gL && this.gO >= this.gM.length) {
            this.gc();
            n2 = (-1 ^ c.a(this.gM, this.gO, n));
        }
        if (this.gO >= this.gM.length) {
            final int s = c.s(1 + this.gO);
            final long[] gm = new long[s];
            final Object[] gn = new Object[s];
            System.arraycopy(this.gM, 0, gm, 0, this.gM.length);
            System.arraycopy(this.gN, 0, gn, 0, this.gN.length);
            this.gM = gm;
            this.gN = gn;
        }
        if (this.gO - n2 != 0) {
            System.arraycopy(this.gM, n2, this.gM, n2 + 1, this.gO - n2);
            System.arraycopy(this.gN, n2, this.gN, n2 + 1, this.gO - n2);
        }
        this.gM[n2] = n;
        this.gN[n2] = e;
        ++this.gO;
    }
    
    @Override
    public final String toString() {
        if (this.gL) {
            this.gc();
        }
        if (this.gO <= 0) {
            return "{}";
        }
        final StringBuilder sb = new StringBuilder(28 * this.gO);
        sb.append('{');
        for (int i = 0; i < this.gO; ++i) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(this.keyAt(i));
            sb.append('=');
            final E value = this.valueAt(i);
            if (value != this) {
                sb.append(value);
            }
            else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
