package android.support.v4.f;

public class o<E> implements Cloneable
{
    private static final Object gK;
    private boolean gL;
    private Object[] gN;
    private int gO;
    private int[] hj;
    
    static {
        gK = new Object();
    }
    
    public o() {
        this(10);
    }
    
    public o(final int n) {
        this.gL = false;
        if (n == 0) {
            this.hj = c.gG;
            this.gN = c.gI;
        }
        else {
            final int r = c.r(n);
            this.hj = new int[r];
            this.gN = new Object[r];
        }
        this.gO = 0;
    }
    
    private o<E> aS() {
        o o;
        try {
            final o o2;
            o = (o2 = (o)super.clone());
            final o o3 = this;
            final int[] array = o3.hj;
            final int[] array2 = array.clone();
            final int[] array3 = array2;
            o2.hj = array3;
            final o o4 = o;
            final o o5 = this;
            final Object[] array4 = o5.gN;
            final Object[] array5 = array4.clone();
            final Object[] array6 = array5;
            o4.gN = array6;
            return o;
        }
        catch (CloneNotSupportedException ex) {
            return null;
        }
        try {
            final o o2 = o;
            final o o3 = this;
            final int[] array = o3.hj;
            final int[] array2 = array.clone();
            final int[] array3 = array2;
            o2.hj = array3;
            final o o4 = o;
            final o o5 = this;
            final Object[] array4 = o5.gN;
            final Object[] array5 = array4.clone();
            final Object[] array6 = array5;
            o4.gN = array6;
            return o;
        }
        catch (CloneNotSupportedException ex2) {
            return o;
        }
    }
    
    private void gc() {
        final int go = this.gO;
        final int[] hj = this.hj;
        final Object[] gn = this.gN;
        int i = 0;
        int go2 = 0;
        while (i < go) {
            final Object o = gn[i];
            if (o != android.support.v4.f.o.gK) {
                if (i != go2) {
                    hj[go2] = hj[i];
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
    
    public void clear() {
        final int go = this.gO;
        final Object[] gn = this.gN;
        for (int i = 0; i < go; ++i) {
            gn[i] = null;
        }
        this.gO = 0;
        this.gL = false;
    }
    
    public void delete(final int n) {
        final int a = c.a(this.hj, this.gO, n);
        if (a >= 0 && this.gN[a] != o.gK) {
            this.gN[a] = o.gK;
            this.gL = true;
        }
    }
    
    public final E get(final int n) {
        final int a = c.a(this.hj, this.gO, n);
        if (a < 0 || this.gN[a] == o.gK) {
            return null;
        }
        return (E)this.gN[a];
    }
    
    public final int indexOfKey(final int n) {
        if (this.gL) {
            this.gc();
        }
        return c.a(this.hj, this.gO, n);
    }
    
    public final int keyAt(final int n) {
        if (this.gL) {
            this.gc();
        }
        return this.hj[n];
    }
    
    public void put(final int n, final E e) {
        final int a = c.a(this.hj, this.gO, n);
        if (a >= 0) {
            this.gN[a] = e;
            return;
        }
        int n2 = ~a;
        if (n2 < this.gO && this.gN[n2] == o.gK) {
            this.hj[n2] = n;
            this.gN[n2] = e;
            return;
        }
        if (this.gL && this.gO >= this.hj.length) {
            this.gc();
            n2 = (-1 ^ c.a(this.hj, this.gO, n));
        }
        if (this.gO >= this.hj.length) {
            final int r = c.r(1 + this.gO);
            final int[] hj = new int[r];
            final Object[] gn = new Object[r];
            System.arraycopy(this.hj, 0, hj, 0, this.hj.length);
            System.arraycopy(this.gN, 0, gn, 0, this.gN.length);
            this.hj = hj;
            this.gN = gn;
        }
        if (this.gO - n2 != 0) {
            System.arraycopy(this.hj, n2, this.hj, n2 + 1, this.gO - n2);
            System.arraycopy(this.gN, n2, this.gN, n2 + 1, this.gO - n2);
        }
        this.hj[n2] = n;
        this.gN[n2] = e;
        ++this.gO;
    }
    
    public void remove(final int n) {
        this.delete(n);
    }
    
    public void removeAt(final int n) {
        if (this.gN[n] != o.gK) {
            this.gN[n] = o.gK;
            this.gL = true;
        }
    }
    
    public final int size() {
        if (this.gL) {
            this.gc();
        }
        return this.gO;
    }
    
    @Override
    public String toString() {
        if (this.size() <= 0) {
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
    
    public final E valueAt(final int n) {
        if (this.gL) {
            this.gc();
        }
        return (E)this.gN[n];
    }
}
