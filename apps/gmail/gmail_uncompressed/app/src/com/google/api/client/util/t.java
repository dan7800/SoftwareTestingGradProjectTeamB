package com.google.api.client.util;

import java.util.*;
import com.google.api.client.a.a.a.a.a.*;
import java.lang.reflect.*;

public final class t
{
    private static final Map<Field, t> cyE;
    private final boolean czp;
    private final Field czq;
    private final String name;
    
    static {
        cyE = new WeakHashMap<Field, t>();
    }
    
    private t(final Field czq, final String s) {
        this.czq = czq;
        String intern;
        if (s == null) {
            intern = null;
        }
        else {
            intern = s.intern();
        }
        this.name = intern;
        this.czp = m.b(this.czq.getType());
    }
    
    public static t a(final Enum<?> enum1) {
        boolean b = true;
        try {
            final t a = a(enum1.getClass().getField(enum1.name()));
            if (a == null) {
                b = false;
            }
            com.google.api.client.a.a.a.a.a.a.a(b, "enum constant missing @Value or @NullValue annotation: %s", enum1);
            return a;
        }
        catch (NoSuchFieldException ex) {
            throw new RuntimeException(ex);
        }
    }
    
    public static t a(final Field field) {
        if (field == null) {
            return null;
        }
    Label_0096_Outer:
        while (true) {
            // monitorexit(map)
            while (true) {
                String s = null;
            Label_0186:
                while (true) {
                    Label_0149: {
                        Label_0127: {
                            synchronized (t.cyE) {
                                t t = com.google.api.client.util.t.cyE.get(field);
                                final boolean enumConstant = field.isEnumConstant();
                                if (t == null && (enumConstant || !Modifier.isStatic(field.getModifiers()))) {
                                    if (!enumConstant) {
                                        break Label_0149;
                                    }
                                    final R r = field.getAnnotation(R.class);
                                    if (r == null) {
                                        break Label_0127;
                                    }
                                    s = r.Yz();
                                    if (!"##default".equals(s)) {
                                        break Label_0186;
                                    }
                                    final String name = field.getName();
                                    t = new t(field, name);
                                    com.google.api.client.util.t.cyE.put(field, t);
                                }
                                return t;
                            }
                        }
                        if (field.getAnnotation(E.class) != null) {
                            s = null;
                            continue Label_0096_Outer;
                        }
                        return null;
                    }
                    final x x = field.getAnnotation(x.class);
                    if (x == null) {
                        // monitorexit(map)
                        return null;
                    }
                    s = x.Yz();
                    field.setAccessible(true);
                    continue Label_0096_Outer;
                }
                final String name = s;
                continue;
            }
        }
    }
    
    private static Object a(final Field field, final Object o) {
        try {
            return field.get(o);
        }
        catch (IllegalAccessException ex) {
            throw new IllegalArgumentException(ex);
        }
    }
    
    public static void a(final Field field, final Object o, final Object o2) {
        if (Modifier.isFinal(field.getModifiers())) {
            final Object a = a(field, o);
            if (o2 == null) {
                if (a == null) {
                    return;
                }
            }
            else if (o2.equals(a)) {
                return;
            }
            throw new IllegalArgumentException("expected final value <" + a + "> but was <" + o2 + "> on " + field.getName() + " field in " + o.getClass().getName());
        }
        try {
            field.set(o, o2);
        }
        catch (SecurityException ex) {
            throw new IllegalArgumentException(ex);
        }
        catch (IllegalAccessException ex2) {
            throw new IllegalArgumentException(ex2);
        }
    }
    
    public final Field Yv() {
        return this.czq;
    }
    
    public final boolean Yw() {
        return Modifier.isFinal(this.czq.getModifiers());
    }
    
    public final <T extends Enum<T>> T Yx() {
        return Enum.valueOf(this.czq.getDeclaringClass(), this.czq.getName());
    }
    
    public final Object at(final Object o) {
        return a(this.czq, o);
    }
    
    public final Type getGenericType() {
        return this.czq.getGenericType();
    }
    
    public final String getName() {
        return this.name;
    }
    
    public final boolean isPrimitive() {
        return this.czp;
    }
    
    public final void k(final Object o, final Object o2) {
        a(this.czq, o, o2);
    }
}
