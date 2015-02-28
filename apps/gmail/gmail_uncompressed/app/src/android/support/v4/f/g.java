package android.support.v4.f;

import java.util.*;

public class g<K, V>
{
    private final LinkedHashMap<K, V> gP;
    private int gQ;
    private int gR;
    private int gS;
    private int gT;
    private int gU;
    private int size;
    
    public g(final int gq) {
        if (gq <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.gQ = gq;
        this.gP = new LinkedHashMap<K, V>(0, 0.75f, true);
    }
    
    private void trimToSize(final int n) {
        while (true) {
            synchronized (this) {
                if (this.size < 0 || (this.gP.isEmpty() && this.size != 0)) {
                    throw new IllegalStateException(this.getClass().getName() + ".sizeOf() is reporting inconsistent results!");
                }
            }
            if (this.size <= n || this.gP.isEmpty()) {
                break;
            }
            final Map.Entry<K, V> entry = this.gP.entrySet().iterator().next();
            final K key = entry.getKey();
            final V value = entry.getValue();
            this.gP.remove(key);
            --this.size;
            ++this.gS;
            // monitorexit(this)
            this.a(true, value, null);
        }
    }
    // monitorexit(this)
    
    protected void a(final boolean b, final V v, final V v2) {
    }
    
    public final V get(final K k) {
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            final V value = this.gP.get(k);
            if (value != null) {
                ++this.gT;
                return value;
            }
            ++this.gU;
            return null;
        }
    }
    
    public final V put(final K k, final V v) {
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            ++this.gR;
            ++this.size;
            final V put = this.gP.put(k, v);
            if (put != null) {
                --this.size;
            }
            // monitorexit(this)
            if (put != null) {
                this.a(false, put, v);
            }
            this.trimToSize(this.gQ);
            return put;
        }
    }
    
    public final V remove(final K k) {
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            final V remove = this.gP.remove(k);
            if (remove != null) {
                --this.size;
            }
            // monitorexit(this)
            if (remove != null) {
                this.a(false, remove, null);
            }
            return remove;
        }
    }
    
    @Override
    public final String toString() {
        synchronized (this) {
            final int n = this.gT + this.gU;
            int n2 = 0;
            if (n != 0) {
                n2 = 100 * this.gT / n;
            }
            return String.format("LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", this.gQ, this.gT, this.gU, n2);
        }
    }
}
