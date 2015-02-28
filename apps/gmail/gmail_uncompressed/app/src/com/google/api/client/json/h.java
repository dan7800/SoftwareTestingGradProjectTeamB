package com.google.api.client.json;

import java.util.concurrent.locks.*;
import java.lang.reflect.*;
import java.math.*;
import com.google.api.client.util.*;
import java.util.*;

public abstract class h
{
    private static WeakHashMap<Class<?>, Field> cyd;
    private static final Lock cye;
    
    static {
        h.cyd = new WeakHashMap<Class<?>, Field>();
        cye = new ReentrantLock();
    }
    
    private JsonToken Yf() {
        final JsonToken wg = this.WG();
        JsonToken wq;
        if (wg == null) {
            wq = this.WQ();
        }
        else {
            wq = wg;
        }
        H.c(wq != null, "no JSON input found");
        return wq;
    }
    
    private JsonToken Yg() {
        final JsonToken yf = this.Yf();
        switch (i.cvv[yf.ordinal()]) {
            default: {
                return yf;
            }
            case 1: {
                final JsonToken wq = this.WQ();
                H.c(wq == JsonToken.cyj || wq == JsonToken.cyi, wq);
                return wq;
            }
            case 2: {
                return this.WQ();
            }
        }
    }
    
    private final Object a(final Field field, final Type type, final ArrayList<Type> list, final a a, final boolean b) {
        final Type a2 = m.a(list, type);
        Class<?> a3;
        if (a2 instanceof Class) {
            a3 = (Class<b>)a2;
        }
        else {
            a3 = null;
        }
        if (a2 instanceof ParameterizedType) {
            a3 = O.a((ParameterizedType)a2);
        }
        if (a3 != Void.class) {
            final JsonToken wg = this.WG();
            Label_1340: {
                Label_1289: {
                    Label_1060: {
                        Label_0995: {
                            Label_0406: {
                                try {
                                    switch (i.cvv[this.WG().ordinal()]) {
                                        default: {
                                            throw new IllegalArgumentException("unexpected JSON node type: " + wg);
                                        }
                                        case 2:
                                        case 3: {
                                            break;
                                        }
                                        case 1:
                                        case 4:
                                        case 5: {
                                            break Label_0406;
                                        }
                                        case 6:
                                        case 7: {
                                            break Label_0995;
                                        }
                                        case 8:
                                        case 9: {
                                            break Label_1060;
                                        }
                                        case 10: {
                                            break Label_1289;
                                        }
                                        case 11: {
                                            break Label_1340;
                                        }
                                    }
                                }
                                catch (IllegalArgumentException ex) {
                                    final StringBuilder sb = new StringBuilder();
                                    final String wf = this.WF();
                                    if (wf != null) {
                                        sb.append("key ").append(wf);
                                    }
                                    if (field != null) {
                                        if (wf != null) {
                                            sb.append(", ");
                                        }
                                        sb.append("field ").append(field);
                                    }
                                    throw new IllegalArgumentException(sb.toString(), ex);
                                }
                                final boolean d = O.d(a2);
                                com.google.api.client.a.a.a.a.a.a.a(a2 == null || d || (a3 != null && O.b(a3, Collection.class)), "expected collection or array type but got %s", a2);
                                final Object o = m.c(a2);
                                Type type2;
                                if (d) {
                                    type2 = O.e(a2);
                                }
                                else if (a3 != null && Iterable.class.isAssignableFrom(a3)) {
                                    type2 = O.f(a2);
                                }
                                else {
                                    type2 = null;
                                }
                                final Type a4 = m.a(list, type2);
                                for (JsonToken jsonToken = this.Yg(); jsonToken != JsonToken.cyg; jsonToken = this.WQ()) {
                                    ((Collection<Object>)o).add(this.a(field, a4, list, a, true));
                                }
                                if (d) {
                                    return O.a((Collection<?>)o, O.b(list, a4));
                                }
                                return o;
                            }
                            com.google.api.client.a.a.a.a.a.a.a(!O.d(a2), "expected object or map type but got %s", a2);
                            Field g;
                            if (b) {
                                g = g(a3);
                            }
                            else {
                                g = null;
                            }
                            int n;
                            if (a3 != null && O.b(a3, Map.class)) {
                                n = 1;
                            }
                            else {
                                n = 0;
                            }
                            Object o;
                            if (g != null) {
                                o = new b();
                            }
                            else if (n == 0 && a3 != null) {
                                o = O.k(a3);
                            }
                            else {
                                o = m.j(a3);
                            }
                            final int size = list.size();
                            if (a2 != null) {
                                list.add(a2);
                            }
                            if (n != 0 && !GenericData.class.isAssignableFrom(a3)) {
                                Type g2;
                                if (Map.class.isAssignableFrom(a3)) {
                                    g2 = O.g(a2);
                                }
                                else {
                                    g2 = null;
                                }
                                if (g2 != null) {
                                    this.a(field, (Map<String, Object>)o, g2, list, a);
                                    return o;
                                }
                            }
                            if (o instanceof b) {
                                ((b)o).a(this.WH());
                            }
                            JsonToken jsonToken2 = this.Yg();
                            final Class<? extends Collection> class1 = ((Collection<Object>)o).getClass();
                            final k h = k.h(class1);
                            final boolean assignable = GenericData.class.isAssignableFrom(class1);
                            if (!assignable && Map.class.isAssignableFrom(class1)) {
                                this.a(null, (Map<String, Object>)o, O.g(class1), list, a);
                            }
                            else {
                                while (jsonToken2 == JsonToken.cyj) {
                                    final String text = this.getText();
                                    this.WQ();
                                    final t hw = h.hw(text);
                                    if (hw != null) {
                                        if (hw.Yw() && !hw.isPrimitive()) {
                                            throw new IllegalArgumentException("final array/object fields are not supported");
                                        }
                                        final Field yv = hw.Yv();
                                        final int size2 = list.size();
                                        list.add(yv.getGenericType());
                                        final Object a5 = this.a(yv, hw.getGenericType(), list, a, true);
                                        list.remove(size2);
                                        hw.k(o, a5);
                                    }
                                    else if (assignable) {
                                        ((b)o).i(text, this.a(null, null, list, a, true));
                                    }
                                    else {
                                        this.WR();
                                    }
                                    jsonToken2 = this.WQ();
                                }
                            }
                            if (a2 != null) {
                                list.remove(size);
                            }
                            if (g != null) {
                                final Object value = ((b)o).get(g.getName());
                                H.c(value != null, "No value specified for @JsonPolymorphicTypeMap field");
                                final String string = value.toString();
                                final com.google.api.client.json.k[] yh = g.getAnnotation(j.class).Yh();
                                final int length = yh.length;
                                int n2 = 0;
                                Type yj;
                                while (true) {
                                    yj = null;
                                    if (n2 >= length) {
                                        break;
                                    }
                                    final com.google.api.client.json.k k = yh[n2];
                                    if (k.Yi().equals(string)) {
                                        yj = k.Yj();
                                        break;
                                    }
                                    ++n2;
                                }
                                H.c(yj != null, "No TypeDef annotation found with key: " + string);
                                final d wh = this.WH();
                                final h gs = wh.gS(wh.toString(o));
                                gs.Yf();
                                return gs.a(field, yj, list, null, false);
                            }
                            return o;
                        }
                        com.google.api.client.a.a.a.a.a.a.a(a2 == null || a3 == Boolean.TYPE || (a3 != null && a3.isAssignableFrom(Boolean.class)), "expected type Boolean or boolean but got %s", a2);
                        if (wg == JsonToken.cyn) {
                            return Boolean.TRUE;
                        }
                        return Boolean.FALSE;
                    }
                    H.c(field == null || field.getAnnotation(l.class) == null, "number type formatted as a JSON number cannot use @JsonString annotation");
                    if (a3 == null || a3.isAssignableFrom(BigDecimal.class)) {
                        return this.WM();
                    }
                    if (a3 == BigInteger.class) {
                        return this.WL();
                    }
                    if (a3 == Double.class || a3 == Double.TYPE) {
                        return this.WN();
                    }
                    if (a3 == Long.class || a3 == Long.TYPE) {
                        return this.WO();
                    }
                    if (a3 == Float.class || a3 == Float.TYPE) {
                        return this.WK();
                    }
                    if (a3 == Integer.class || a3 == Integer.TYPE) {
                        return this.getIntValue();
                    }
                    if (a3 == Short.class || a3 == Short.TYPE) {
                        return this.WJ();
                    }
                    if (a3 == Byte.class || a3 == Byte.TYPE) {
                        return this.WI();
                    }
                    throw new IllegalArgumentException("expected numeric type but got " + a2);
                }
                H.c(a3 == null || !Number.class.isAssignableFrom(a3) || (field != null && field.getAnnotation(l.class) != null), "number field formatted as a JSON string must use the @JsonString annotation");
                return m.a(a2, this.getText());
            }
            H.c(a3 == null || !a3.isPrimitive(), "primitive number field but found a JSON null");
            if (a3 != null && (0x600 & a3.getModifiers()) != 0x0) {
                if (O.b(a3, Collection.class)) {
                    return m.i(m.c(a2).getClass());
                }
                if (O.b(a3, Map.class)) {
                    return m.i(m.j(a3).getClass());
                }
            }
            return m.i(O.b(list, a2));
        }
        this.WR();
        return null;
    }
    
    private Object a(final Type type, final boolean b, final a a) {
        try {
            if (!Void.class.equals(type)) {
                this.Yf();
            }
            return this.a(null, type, new ArrayList<Type>(), null, true);
        }
        finally {
            if (b) {
                this.close();
            }
        }
    }
    
    private void a(final Field field, final Map<String, Object> map, final Type type, final ArrayList<Type> list, final a a) {
        for (JsonToken jsonToken = this.Yg(); jsonToken == JsonToken.cyj; jsonToken = this.WQ()) {
            final String text = this.getText();
            this.WQ();
            map.put(text, this.a(field, type, list, a, true));
        }
    }
    
    private <T> T f(final Class<T> clazz) {
        try {
            return (T)this.a(clazz, false, null);
        }
        finally {
            this.close();
        }
    }
    
    private static Field g(final Class<?> clazz) {
        if (clazz == null) {
            return null;
        }
        while (true) {
            h.cye.lock();
        Label_0192_Outer:
            while (true) {
                Field field2 = null;
                Label_0321: {
                    Field field = null;
                    Label_0318: {
                        while (true) {
                        Label_0312:
                            while (true) {
                                Label_0306: {
                                    Field yv;
                                    try {
                                        if (h.cyd.containsKey(clazz)) {
                                            return h.cyd.get(clazz);
                                        }
                                        final Iterator<t> iterator = k.h(clazz).Yp().iterator();
                                        field = null;
                                        if (!iterator.hasNext()) {
                                            h.cyd.put(clazz, field);
                                            return field;
                                        }
                                        yv = iterator.next().Yv();
                                        final j j = yv.getAnnotation(j.class);
                                        if (j == null) {
                                            break Label_0318;
                                        }
                                        if (field != null) {
                                            break Label_0306;
                                        }
                                        final boolean b = true;
                                        com.google.api.client.a.a.a.a.a.a.a(b, "Class contains more than one field with @JsonPolymorphicTypeMap annotation: %s", clazz);
                                        com.google.api.client.a.a.a.a.a.a.a(m.b(yv.getType()), "Field which has the @JsonPolymorphicTypeMap, %s, is not a supported type: %s", clazz, yv.getType());
                                        final com.google.api.client.json.k[] yh = j.Yh();
                                        final HashSet<String> set = new HashSet<String>();
                                        if (yh.length <= 0) {
                                            break Label_0312;
                                        }
                                        final boolean b2 = true;
                                        H.c(b2, "@JsonPolymorphicTypeMap must have at least one @TypeDef");
                                        for (final com.google.api.client.json.k k : yh) {
                                            com.google.api.client.a.a.a.a.a.a.a(set.add(k.Yi()), "Class contains two @TypeDef annotations with identical key: %s", k.Yi());
                                        }
                                    }
                                    finally {
                                        h.cye.unlock();
                                    }
                                    field2 = yv;
                                    break Label_0321;
                                }
                                final boolean b = false;
                                continue Label_0192_Outer;
                            }
                            final boolean b2 = false;
                            continue;
                        }
                    }
                    field2 = field;
                }
                Field field = field2;
                continue;
            }
        }
    }
    
    public abstract String WF();
    
    public abstract JsonToken WG();
    
    public abstract d WH();
    
    public abstract byte WI();
    
    public abstract short WJ();
    
    public abstract float WK();
    
    public abstract BigInteger WL();
    
    public abstract BigDecimal WM();
    
    public abstract double WN();
    
    public abstract long WO();
    
    public abstract JsonToken WQ();
    
    public abstract h WR();
    
    public final Object a(final Type type) {
        return this.a(type, true, null);
    }
    
    public abstract void close();
    
    public final <T> T e(final Class<T> clazz) {
        return (T)this.f((Class<Object>)clazz);
    }
    
    public abstract int getIntValue();
    
    public abstract String getText();
    
    public final void hv(final String s) {
        this.r(Collections.singleton(s));
    }
    
    public final String r(final Set<String> set) {
        for (JsonToken jsonToken = this.Yg(); jsonToken == JsonToken.cyj; jsonToken = this.WQ()) {
            final String text = this.getText();
            this.WQ();
            if (set.contains(text)) {
                return text;
            }
            this.WR();
        }
        return null;
    }
}
