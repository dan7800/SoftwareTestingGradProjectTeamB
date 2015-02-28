package android.support.v4.f;

import java.util.*;

public class n<K, V>
{
    static Object[] hd;
    static int he;
    static Object[] hf;
    static int hg;
    int gO;
    int[] hh;
    Object[] hi;
    
    public n() {
        this.hh = c.gG;
        this.hi = c.gI;
        this.gO = 0;
    }
    
    public n(final int n) {
        if (n == 0) {
            this.hh = c.gG;
            this.hi = c.gI;
        }
        else {
            this.v(n);
        }
        this.gO = 0;
    }
    
    private static void a(final int[] array, final Object[] array2, final int n) {
        Label_0076: {
            if (array.length != 8) {
                break Label_0076;
            }
            synchronized (a.class) {
                if (n.hg < 10) {
                    array2[0] = n.hf;
                    array2[1] = array;
                    for (int i = -1 + (n << 1); i >= 2; --i) {
                        array2[i] = null;
                    }
                    n.hf = array2;
                    ++n.hg;
                }
                return;
            }
        }
        if (array.length != 4) {
            return;
        }
        synchronized (a.class) {
            if (n.he < 10) {
                array2[0] = n.hd;
                array2[1] = array;
                for (int j = -1 + (n << 1); j >= 2; --j) {
                    array2[j] = null;
                }
                n.hd = array2;
                ++n.he;
            }
        }
    }
    
    private int aR() {
        final int go = this.gO;
        int a;
        if (go == 0) {
            a = -1;
        }
        else {
            a = c.a(this.hh, go, 0);
            if (a >= 0 && this.hi[a << 1] != null) {
                int n;
                for (n = a + 1; n < go && this.hh[n] == 0; ++n) {
                    if (this.hi[n << 1] == null) {
                        return n;
                    }
                }
                --a;
                while (a >= 0 && this.hh[a] == 0) {
                    if (this.hi[a << 1] == null) {
                        return a;
                    }
                    --a;
                }
                return ~n;
            }
        }
        return a;
    }
    
    private int indexOf(final Object o, final int n) {
        final int go = this.gO;
        int a;
        if (go == 0) {
            a = -1;
        }
        else {
            a = c.a(this.hh, go, n);
            if (a >= 0 && !o.equals(this.hi[a << 1])) {
                int n2;
                for (n2 = a + 1; n2 < go && this.hh[n2] == n; ++n2) {
                    if (o.equals(this.hi[n2 << 1])) {
                        return n2;
                    }
                }
                --a;
                while (a >= 0 && this.hh[a] == n) {
                    if (o.equals(this.hi[a << 1])) {
                        return a;
                    }
                    --a;
                }
                return ~n2;
            }
        }
        return a;
    }
    
    private void v(final int n) {
        while (true) {
            Label_0104: {
                if (n != 8) {
                    break Label_0104;
                }
                synchronized (a.class) {
                    if (n.hf != null) {
                        final Object[] hf = n.hf;
                        this.hi = hf;
                        n.hf = (Object[])hf[0];
                        this.hh = (int[])hf[1];
                        hf[0] = (hf[1] = null);
                        --n.hg;
                        return;
                    }
                    // monitorexit(a.class)
                    this.hh = new int[n];
                    this.hi = new Object[n << 1];
                    return;
                }
            }
            if (n == 4) {
                synchronized (a.class) {
                    if (n.hd != null) {
                        final Object[] hd = n.hd;
                        this.hi = hd;
                        n.hd = (Object[])hd[0];
                        this.hh = (int[])hd[1];
                        hd[0] = (hd[1] = null);
                        --n.he;
                        return;
                    }
                }
                // monitorexit(a.class)
                continue;
            }
            continue;
        }
    }
    
    public void clear() {
        if (this.gO != 0) {
            a(this.hh, this.hi, this.gO);
            this.hh = c.gG;
            this.hi = c.gI;
            this.gO = 0;
        }
    }
    
    public boolean containsKey(final Object o) {
        return this.indexOfKey(o) >= 0;
    }
    
    public boolean containsValue(final Object o) {
        return this.indexOfValue(o) >= 0;
    }
    
    public final void ensureCapacity(final int n) {
        if (this.hh.length < n) {
            final int[] hh = this.hh;
            final Object[] hi = this.hi;
            this.v(n);
            if (this.gO > 0) {
                System.arraycopy(hh, 0, this.hh, 0, this.gO);
                System.arraycopy(hi, 0, this.hi, 0, this.gO << 1);
            }
            a(hh, hi, this.gO);
        }
    }
    
    @Override
    public boolean equals(final Object o) {
        if (this != o) {
            if (o instanceof Map) {
                final Map map = (Map)o;
                if (this.size() != map.size()) {
                    return false;
                }
                int i = 0;
                try {
                    while (i < this.gO) {
                        final K key = this.keyAt(i);
                        final V value = this.valueAt(i);
                        final Object value2 = map.get(key);
                        if (value == null) {
                            if (value2 != null || !map.containsKey(key)) {
                                return false;
                            }
                        }
                        else if (!value.equals(value2)) {
                            return false;
                        }
                        ++i;
                    }
                    return true;
                }
                catch (NullPointerException ex) {
                    return false;
                }
                catch (ClassCastException ex2) {
                    return false;
                }
                return false;
            }
            return false;
        }
        return true;
    }
    
    public V get(final Object o) {
        final int indexOfKey = this.indexOfKey(o);
        if (indexOfKey >= 0) {
            return (V)this.hi[1 + (indexOfKey << 1)];
        }
        return null;
    }
    
    @Override
    public int hashCode() {
        final int[] hh = this.hh;
        final Object[] hi = this.hi;
        final int go = this.gO;
        int n = 1;
        int i = 0;
        int n2 = 0;
        while (i < go) {
            final Object o = hi[n];
            final int n3 = hh[i];
            int hashCode;
            if (o == null) {
                hashCode = 0;
            }
            else {
                hashCode = o.hashCode();
            }
            n2 += (hashCode ^ n3);
            ++i;
            n += 2;
        }
        return n2;
    }
    
    public final int indexOfKey(final Object o) {
        if (o == null) {
            return this.aR();
        }
        return this.indexOf(o, o.hashCode());
    }
    
    final int indexOfValue(final Object o) {
        int i = 1;
        final int n = 2 * this.gO;
        final Object[] hi = this.hi;
        if (o == null) {
            while (i < n) {
                if (hi[i] == null) {
                    return i >> 1;
                }
                i += 2;
            }
        }
        else {
            while (i < n) {
                if (o.equals(hi[i])) {
                    return i >> 1;
                }
                i += 2;
            }
        }
        return -1;
    }
    
    public boolean isEmpty() {
        return this.gO <= 0;
    }
    
    public final K keyAt(final int n) {
        return (K)this.hi[n << 1];
    }
    
    public V put(final K k, final V v) {
        int n = 8;
        int n2;
        int hashCode;
        if (k == null) {
            n2 = this.aR();
            hashCode = 0;
        }
        else {
            hashCode = k.hashCode();
            n2 = this.indexOf(k, hashCode);
        }
        if (n2 >= 0) {
            final int n3 = 1 + (n2 << 1);
            final Object o = this.hi[n3];
            this.hi[n3] = v;
            return (V)o;
        }
        final int n4 = ~n2;
        if (this.gO >= this.hh.length) {
            if (this.gO >= n) {
                n = this.gO + (this.gO >> 1);
            }
            else if (this.gO < 4) {
                n = 4;
            }
            final int[] hh = this.hh;
            final Object[] hi = this.hi;
            this.v(n);
            if (this.hh.length > 0) {
                System.arraycopy(hh, 0, this.hh, 0, hh.length);
                System.arraycopy(hi, 0, this.hi, 0, hi.length);
            }
            a(hh, hi, this.gO);
        }
        if (n4 < this.gO) {
            System.arraycopy(this.hh, n4, this.hh, n4 + 1, this.gO - n4);
            System.arraycopy(this.hi, n4 << 1, this.hi, n4 + 1 << 1, this.gO - n4 << 1);
        }
        this.hh[n4] = hashCode;
        this.hi[n4 << 1] = k;
        this.hi[1 + (n4 << 1)] = v;
        ++this.gO;
        return null;
    }
    
    public V remove(final Object o) {
        final int indexOfKey = this.indexOfKey(o);
        if (indexOfKey >= 0) {
            return this.removeAt(indexOfKey);
        }
        return null;
    }
    
    public final V removeAt(final int n) {
        int n2 = 8;
        final Object o = this.hi[1 + (n << 1)];
        if (this.gO <= 1) {
            a(this.hh, this.hi, this.gO);
            this.hh = c.gG;
            this.hi = c.gI;
            this.gO = 0;
        }
        else {
            if (this.hh.length <= n2 || this.gO >= this.hh.length / 3) {
                --this.gO;
                if (n < this.gO) {
                    System.arraycopy(this.hh, n + 1, this.hh, n, this.gO - n);
                    System.arraycopy(this.hi, n + 1 << 1, this.hi, n << 1, this.gO - n << 1);
                }
                this.hi[this.gO << 1] = null;
                this.hi[1 + (this.gO << 1)] = null;
                return (V)o;
            }
            if (this.gO > n2) {
                n2 = this.gO + (this.gO >> 1);
            }
            final int[] hh = this.hh;
            final Object[] hi = this.hi;
            this.v(n2);
            --this.gO;
            if (n > 0) {
                System.arraycopy(hh, 0, this.hh, 0, n);
                System.arraycopy(hi, 0, this.hi, 0, n << 1);
            }
            if (n < this.gO) {
                System.arraycopy(hh, n + 1, this.hh, n, this.gO - n);
                System.arraycopy(hi, n + 1 << 1, this.hi, n << 1, this.gO - n << 1);
                return (V)o;
            }
        }
        return (V)o;
    }
    
    public final V setValueAt(final int n, final V v) {
        final int n2 = 1 + (n << 1);
        final Object o = this.hi[n2];
        this.hi[n2] = v;
        return (V)o;
    }
    
    public int size() {
        return this.gO;
    }
    
    @Override
    public String toString() {
        if (this.isEmpty()) {
            return "{}";
        }
        final StringBuilder sb = new StringBuilder(28 * this.gO);
        sb.append('{');
        for (int i = 0; i < this.gO; ++i) {
            if (i > 0) {
                sb.append(", ");
            }
            final K key = this.keyAt(i);
            if (key != this) {
                sb.append(key);
            }
            else {
                sb.append("(this Map)");
            }
            sb.append('=');
            final V value = this.valueAt(i);
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
    
    public final V valueAt(final int n) {
        return (V)this.hi[1 + (n << 1)];
    }
}
