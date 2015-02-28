package android.support.v7.widget;

import java.util.*;
import android.util.*;
import java.lang.reflect.*;

final class GridLayout$Assoc<K, V> extends ArrayList<Pair<K, V>>
{
    private final Class<K> keyType;
    private final Class<V> valueType;
    
    private GridLayout$Assoc(final Class<K> keyType, final Class<V> valueType) {
        this.keyType = keyType;
        this.valueType = valueType;
    }
    
    public static <K, V> GridLayout$Assoc<K, V> a(final Class<K> clazz, final Class<V> clazz2) {
        return new GridLayout$Assoc<K, V>(clazz, clazz2);
    }
    
    public final void c(final K k, final V v) {
        this.add((Pair<K, V>)Pair.create((Object)k, (Object)v));
    }
    
    public final E<K, V> fq() {
        final int size = this.size();
        final Object[] array = (Object[])Array.newInstance(this.keyType, size);
        final Object[] array2 = (Object[])Array.newInstance(this.valueType, size);
        for (int i = 0; i < size; ++i) {
            array[i] = this.get(i).first;
            array2[i] = this.get(i).second;
        }
        return new E<K, V>(array, array2, (byte)0);
    }
}
