package com.google.api.client.util;

import com.google.api.client.a.a.a.a.a.*;
import java.lang.reflect.*;
import java.util.*;

public final class k
{
    private static final Map<Class<?>, k> cyE;
    private static final Map<Class<?>, k> cyF;
    private final Class<?> cyG;
    private final boolean cyH;
    private final IdentityHashMap<String, t> cyI;
    final List<String> cyJ;
    
    static {
        cyE = new WeakHashMap<Class<?>, k>();
        cyF = new WeakHashMap<Class<?>, k>();
    }
    
    private k(final Class<?> cyG, final boolean cyH) {
        this.cyI = new IdentityHashMap<String, t>();
        this.cyG = cyG;
        this.cyH = cyH;
        H.c(!cyH || !cyG.isEnum(), "cannot ignore case on an enum: " + cyG);
        final TreeSet<String> set = new TreeSet<String>(new l(this));
        for (final Field field : cyG.getDeclaredFields()) {
            final t a = t.a(field);
            if (a != null) {
                final String name = a.getName();
                String intern;
                if (cyH) {
                    intern = name.toLowerCase().intern();
                }
                else {
                    intern = name;
                }
                final t t = this.cyI.get(intern);
                final boolean b = t == null;
                final Object[] array = new Object[4];
                String s;
                if (cyH) {
                    s = "case-insensitive ";
                }
                else {
                    s = "";
                }
                array[0] = s;
                array[1] = intern;
                array[2] = field;
                Object yv;
                if (t == null) {
                    yv = null;
                }
                else {
                    yv = t.Yv();
                }
                array[3] = yv;
                com.google.api.client.a.a.a.a.a.a.a(b, "two fields have the same %sname <%s>: %s and %s", array);
                this.cyI.put(intern, a);
                set.add(intern);
            }
        }
        final Class<?> superclass = cyG.getSuperclass();
        if (superclass != null) {
            final k a2 = a(superclass, cyH);
            set.addAll(a2.cyJ);
            for (final Map.Entry<String, t> entry : a2.cyI.entrySet()) {
                final String s2 = entry.getKey();
                if (!this.cyI.containsKey(s2)) {
                    this.cyI.put(s2, entry.getValue());
                }
            }
        }
        Object cyJ;
        if (set.isEmpty()) {
            cyJ = Collections.emptyList();
        }
        else {
            cyJ = Collections.unmodifiableList((List<?>)new ArrayList<Object>(set));
        }
        this.cyJ = (List<String>)cyJ;
    }
    
    public static k a(final Class<?> clazz, final boolean b) {
        if (clazz == null) {
            return null;
        }
        while (true) {
            Label_0064: {
                if (!b) {
                    break Label_0064;
                }
                final Map<Class<?>, k> map = k.cyF;
                synchronized (map) {
                    k k = map.get(clazz);
                    if (k == null) {
                        k = new k(clazz, b);
                        map.put(clazz, k);
                    }
                    return k;
                }
            }
            final Map<Class<?>, k> map = k.cyE;
            continue;
        }
    }
    
    public static k h(final Class<?> clazz) {
        return a(clazz, false);
    }
    
    public final boolean Yo() {
        return this.cyH;
    }
    
    public final Collection<t> Yp() {
        return Collections.unmodifiableCollection((Collection<? extends t>)this.cyI.values());
    }
    
    public final Field getField(final String s) {
        final t hw = this.hw(s);
        if (hw == null) {
            return null;
        }
        return hw.Yv();
    }
    
    public final t hw(String s) {
        if (s != null) {
            if (this.cyH) {
                s = s.toLowerCase();
            }
            s = s.intern();
        }
        return this.cyI.get(s);
    }
    
    public final boolean isEnum() {
        return this.cyG.isEnum();
    }
}
