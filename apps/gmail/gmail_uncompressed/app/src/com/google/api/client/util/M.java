package com.google.api.client.util;

import java.math.*;
import java.util.concurrent.*;
import java.lang.reflect.*;
import java.util.*;

public final class m
{
    public static final Boolean cyL;
    public static final String cyM;
    public static final Character cyN;
    public static final Byte cyO;
    public static final Short cyP;
    public static final Integer cyQ;
    public static final Float cyR;
    public static final Long cyS;
    public static final Double cyT;
    public static final BigInteger cyU;
    public static final BigDecimal cyV;
    public static final DateTime cyW;
    private static final ConcurrentHashMap<Class<?>, Object> cyX;
    
    static {
        cyL = new Boolean(true);
        cyM = new String();
        cyN = new Character('\0');
        cyO = new Byte((byte)0);
        cyP = new Short((short)0);
        cyQ = new Integer(0);
        cyR = new Float(0.0f);
        cyS = new Long(0L);
        cyT = new Double(0.0);
        cyU = new BigInteger("0");
        cyV = new BigDecimal("0");
        cyW = new DateTime();
        (cyX = new ConcurrentHashMap<Class<?>, Object>()).put(Boolean.class, m.cyL);
        m.cyX.put(String.class, m.cyM);
        m.cyX.put(Character.class, m.cyN);
        m.cyX.put(Byte.class, m.cyO);
        m.cyX.put(Short.class, m.cyP);
        m.cyX.put(Integer.class, m.cyQ);
        m.cyX.put(Float.class, m.cyR);
        m.cyX.put(Long.class, m.cyS);
        m.cyX.put(Double.class, m.cyT);
        m.cyX.put(BigInteger.class, m.cyU);
        m.cyX.put(BigDecimal.class, m.cyV);
        m.cyX.put(DateTime.class, m.cyW);
    }
    
    public static Object a(final Type type, String s) {
        Class<BigDecimal> clazz;
        if (type instanceof Class) {
            clazz = (Class<BigDecimal>)type;
        }
        else {
            clazz = null;
        }
        if (type == null || clazz != null) {
            if (clazz == Void.class) {
                s = null;
            }
            else if (s != null && clazz != null && !clazz.isAssignableFrom(String.class)) {
                if (clazz == Character.class || clazz == Character.TYPE) {
                    if (s.length() != 1) {
                        throw new IllegalArgumentException("expected type Character/char but got " + clazz);
                    }
                    return s.charAt(0);
                }
                else {
                    if (clazz == Boolean.class || clazz == Boolean.TYPE) {
                        return Boolean.valueOf(s);
                    }
                    if (clazz == Byte.class || clazz == Byte.TYPE) {
                        return Byte.valueOf(s);
                    }
                    if (clazz == Short.class || clazz == Short.TYPE) {
                        return Short.valueOf(s);
                    }
                    if (clazz == Integer.class || clazz == Integer.TYPE) {
                        return Integer.valueOf(s);
                    }
                    if (clazz == Long.class || clazz == Long.TYPE) {
                        return Long.valueOf(s);
                    }
                    if (clazz == Float.class || clazz == Float.TYPE) {
                        return Float.valueOf(s);
                    }
                    if (clazz == Double.class || clazz == Double.TYPE) {
                        return Double.valueOf(s);
                    }
                    if (clazz == DateTime.class) {
                        return DateTime.hx(s);
                    }
                    if (clazz == BigInteger.class) {
                        return new BigInteger(s);
                    }
                    if (clazz == BigDecimal.class) {
                        return new BigDecimal(s);
                    }
                    if (clazz.isEnum()) {
                        return k.h(clazz).hw(s).Yx();
                    }
                    throw new IllegalArgumentException("expected primitive class, but got: " + type);
                }
            }
            return s;
        }
        throw new IllegalArgumentException("expected primitive class, but got: " + type);
    }
    
    public static Type a(final List<Type> list, final Type type) {
        Type a;
        if (type instanceof WildcardType) {
            a = O.a((WildcardType)type);
        }
        else {
            a = type;
        }
        while (a instanceof TypeVariable) {
            Type a2 = O.a(list, (TypeVariable<?>)a);
            if (a2 == null) {
                a2 = a;
            }
            if (a2 instanceof TypeVariable) {
                a = ((TypeVariable<?>)a2).getBounds()[0];
            }
            else {
                a = a2;
            }
        }
        return a;
    }
    
    public static boolean aq(final Object o) {
        return o != null && o == m.cyX.get(o.getClass());
    }
    
    public static Map<String, Object> ar(final Object o) {
        if (o == null || aq(o)) {
            return Collections.emptyMap();
        }
        if (o instanceof Map) {
            return (Map<String, Object>)o;
        }
        return new n(o, false);
    }
    
    public static boolean as(final Object o) {
        return o == null || b(o.getClass());
    }
    
    public static boolean b(final Type type) {
        Type a;
        if (type instanceof WildcardType) {
            a = O.a((WildcardType)type);
        }
        else {
            a = type;
        }
        if (!(a instanceof Class)) {
            return false;
        }
        final Class<Character> clazz = (Class<Character>)a;
        return clazz.isPrimitive() || clazz == Character.class || clazz == String.class || clazz == Integer.class || clazz == Long.class || clazz == Short.class || clazz == Byte.class || clazz == Float.class || clazz == Double.class || clazz == BigInteger.class || clazz == BigDecimal.class || clazz == DateTime.class || clazz == Boolean.class;
    }
    
    public static Collection<Object> c(final Type type) {
        Type a;
        if (type instanceof WildcardType) {
            a = O.a((WildcardType)type);
        }
        else {
            a = type;
        }
        Type rawType;
        if (a instanceof ParameterizedType) {
            rawType = ((ParameterizedType)a).getRawType();
        }
        else {
            rawType = a;
        }
        Class<Collection<Object>> clazz;
        if (rawType instanceof Class) {
            clazz = (Class<Collection<Object>>)rawType;
        }
        else {
            clazz = null;
        }
        if (rawType == null || rawType instanceof GenericArrayType || (clazz != null && (clazz.isArray() || clazz.isAssignableFrom(ArrayList.class)))) {
            return new ArrayList<Object>();
        }
        if (clazz == null) {
            throw new IllegalArgumentException("unable to create new instance of type: " + rawType);
        }
        if (clazz.isAssignableFrom(HashSet.class)) {
            return new HashSet<Object>();
        }
        if (clazz.isAssignableFrom(TreeSet.class)) {
            return new TreeSet<Object>();
        }
        return O.k(clazz);
    }
    
    public static <T> T clone(final T t) {
        if (t == null || b(t.getClass())) {
            return t;
        }
        if (t instanceof GenericData) {
            return (T)((GenericData)t).WT();
        }
        final Class<?> class1 = t.getClass();
        Object o;
        if (class1.isArray()) {
            o = Array.newInstance(class1.getComponentType(), Array.getLength(t));
        }
        else if (t instanceof a) {
            o = ((a)t).Yl();
        }
        else {
            o = O.k(class1);
        }
        j(t, o);
        return (T)o;
    }
    
    public static <T> T i(final Class<?> clazz) {
        int n = 0;
        final Object value = m.cyX.get(clazz);
        if (value == null) {
            synchronized (m.cyX) {
                Object o = m.cyX.get(clazz);
                if (o == null) {
                    if (clazz.isArray()) {
                        Class<?> componentType = clazz;
                        do {
                            componentType = (Class<?>)componentType.getComponentType();
                            ++n;
                        } while (componentType.isArray());
                        o = Array.newInstance(componentType, new int[n]);
                    }
                    else if (clazz.isEnum()) {
                        final t hw = k.h(clazz).hw(null);
                        com.google.api.client.a.a.a.a.a.a.a(hw, "enum missing constant with @NullValue annotation: %s", clazz);
                        o = hw.Yx();
                    }
                    else {
                        o = O.k(clazz);
                    }
                    m.cyX.put(clazz, o);
                }
                return (T)o;
            }
        }
        return (T)value;
    }
    
    public static Map<String, Object> j(final Class<?> clazz) {
        if (clazz == null || clazz.isAssignableFrom(a.class)) {
            return (Map<String, Object>)a.Yk();
        }
        if (clazz.isAssignableFrom(TreeMap.class)) {
            return new TreeMap<String, Object>();
        }
        return O.k(clazz);
    }
    
    public static void j(final Object o, final Object o2) {
        boolean b = true;
        int i = 0;
        final Class<?> class1 = o.getClass();
        H.cp(class1 == o2.getClass() && b);
        if (class1.isArray()) {
            if (Array.getLength(o) != Array.getLength(o2)) {
                b = false;
            }
            H.cp(b);
            for (final Object next : O.au(o)) {
                final int n = i + 1;
                Array.set(o2, i, clone(next));
                i = n;
            }
        }
        else if (Collection.class.isAssignableFrom(class1)) {
            final Collection collection = (Collection)o;
            if (ArrayList.class.isAssignableFrom(class1)) {
                ((ArrayList)o2).ensureCapacity(collection.size());
            }
            final Collection collection2 = (Collection)o2;
            final Iterator<T> iterator2 = collection.iterator();
            while (iterator2.hasNext()) {
                collection2.add(clone((Object)iterator2.next()));
            }
        }
        else {
            final boolean assignable = GenericData.class.isAssignableFrom(class1);
            if (assignable || !Map.class.isAssignableFrom(class1)) {
                k k;
                if (assignable) {
                    k = ((GenericData)o).cwV;
                }
                else {
                    k = com.google.api.client.util.k.h(class1);
                }
                final Iterator<String> iterator3 = k.cyJ.iterator();
                while (iterator3.hasNext()) {
                    final t hw = k.hw(iterator3.next());
                    if (!hw.Yw() && (!assignable || !hw.isPrimitive())) {
                        final Object at = hw.at(o);
                        if (at == null) {
                            continue;
                        }
                        hw.k(o2, clone(at));
                    }
                }
            }
            else if (a.class.isAssignableFrom(class1)) {
                final a a = (a)o2;
                for (a a2 = (a)o; i < a2.size(); ++i) {
                    a.set(i, clone((Object)a2.az(i)));
                }
            }
            else {
                final Map map = (Map)o2;
                for (final Map.Entry<Object, V> entry : ((Map)o).entrySet()) {
                    map.put(entry.getKey(), clone(entry.getValue()));
                }
            }
        }
    }
}
