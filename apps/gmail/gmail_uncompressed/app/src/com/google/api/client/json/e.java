package com.google.api.client.json;

import java.math.*;
import com.google.api.client.util.*;
import java.util.*;
import java.lang.reflect.*;

public abstract class e
{
    private void d(final boolean b, final Object o) {
        boolean b2 = true;
        if (o == null) {
            return;
        }
        final Class<?> class1 = o.getClass();
        if (m.aq(o)) {
            this.WB();
            return;
        }
        if (o instanceof String) {
            this.writeString((String)o);
            return;
        }
        if (o instanceof Number) {
            if (b) {
                this.writeString(o.toString());
                return;
            }
            if (o instanceof BigDecimal) {
                this.a((BigDecimal)o);
                return;
            }
            if (o instanceof BigInteger) {
                this.a((BigInteger)o);
                return;
            }
            if (o instanceof Long) {
                this.bd((long)o);
                return;
            }
            if (o instanceof Float) {
                final float floatValue = ((Number)o).floatValue();
                H.cp(!Float.isInfinite(floatValue) && !Float.isNaN(floatValue) && b2);
                this.D(floatValue);
                return;
            }
            if (o instanceof Integer || o instanceof Short || o instanceof Byte) {
                this.eX(((Number)o).intValue());
                return;
            }
            final double doubleValue = ((Number)o).doubleValue();
            if (Double.isInfinite(doubleValue) || Double.isNaN(doubleValue)) {
                b2 = false;
            }
            H.cp(b2);
            this.c(doubleValue);
        }
        else {
            if (o instanceof Boolean) {
                this.writeBoolean((boolean)o);
                return;
            }
            if (o instanceof DateTime) {
                this.writeString(((DateTime)o).Ys());
                return;
            }
            if (o instanceof Iterable || class1.isArray()) {
                this.WC();
                final Iterator<Object> iterator = O.au(o).iterator();
                while (iterator.hasNext()) {
                    this.d(b, iterator.next());
                }
                this.Wz();
                return;
            }
            if (!class1.isEnum()) {
                this.WD();
                final boolean b3 = o instanceof Map && !(o instanceof GenericData) && b2;
                k h;
                if (b3) {
                    h = null;
                }
                else {
                    h = k.h(class1);
                }
                for (final Map.Entry<String, Object> entry : m.ar(o).entrySet()) {
                    final Object value = entry.getValue();
                    if (value != null) {
                        final String s = entry.getKey();
                        boolean b4;
                        if (b3) {
                            b4 = b;
                        }
                        else {
                            final Field field = h.getField(s);
                            b4 = (field != null && field.getAnnotation(l.class) != null && b2);
                        }
                        this.gT(s);
                        this.d(b4, value);
                    }
                }
                this.WA();
                return;
            }
            final String name = t.a((Enum<?>)o).getName();
            if (name == null) {
                this.WB();
                return;
            }
            this.writeString(name);
        }
    }
    
    public abstract void D(final float p0);
    
    public abstract void WA();
    
    public abstract void WB();
    
    public abstract void WC();
    
    public abstract void WD();
    
    public void WE() {
    }
    
    public abstract void Wz();
    
    public abstract void a(final BigDecimal p0);
    
    public abstract void a(final BigInteger p0);
    
    public final void ao(final Object o) {
        this.d(false, o);
    }
    
    public abstract void bd(final long p0);
    
    public abstract void c(final double p0);
    
    public abstract void eX(final int p0);
    
    public abstract void flush();
    
    public abstract void gT(final String p0);
    
    public abstract void writeBoolean(final boolean p0);
    
    public abstract void writeString(final String p0);
}
