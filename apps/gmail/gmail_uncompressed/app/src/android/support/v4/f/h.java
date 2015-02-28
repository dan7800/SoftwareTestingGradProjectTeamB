package android.support.v4.f;

import android.support.v4.f.h$android.support.v4.f.*;
import java.util.*;
import java.lang.reflect.*;

abstract class h<K, V>
{
    j gV;
    k gW;
    m gX;
    
    public static <K, V> boolean a(final Map<K, V> map, final Collection<?> collection) {
        final int size = map.size();
        final Iterator<K> iterator = map.keySet().iterator();
        while (iterator.hasNext()) {
            if (!collection.contains(iterator.next())) {
                iterator.remove();
            }
        }
        return size != map.size();
    }
    
    public static <T> boolean a(final Set<T> set, final Object o) {
        if (set != o) {
            if (o instanceof Set) {
                final Set set2 = (Set)o;
                try {
                    if (set.size() != set2.size() || !set.containsAll(set2)) {
                        return false;
                    }
                    return true;
                }
                catch (NullPointerException ex) {
                    return false;
                }
                catch (ClassCastException ex2) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }
    
    protected abstract V a(final int p0, final V p1);
    
    protected abstract void a(final K p0, final V p1);
    
    public final <T> T[] a(final T[] array, final int n) {
        final int am = this.aM();
        Object[] array2;
        if (array.length < am) {
            array2 = (Object[])Array.newInstance(array.getClass().getComponentType(), am);
        }
        else {
            array2 = array;
        }
        for (int i = 0; i < am; ++i) {
            array2[i] = this.c(i, n);
        }
        if (array2.length > am) {
            array2[am] = null;
        }
        return (T[])array2;
    }
    
    protected abstract int aM();
    
    protected abstract Map<K, V> aN();
    
    protected abstract void aO();
    
    protected abstract int c(final Object p0);
    
    protected abstract Object c(final int p0, final int p1);
    
    protected abstract int d(final Object p0);
    
    protected abstract void q(final int p0);
    
    public final Object[] u(final int n) {
        final int am = this.aM();
        final Object[] array = new Object[am];
        for (int i = 0; i < am; ++i) {
            array[i] = this.c(i, n);
        }
        return array;
    }
}
