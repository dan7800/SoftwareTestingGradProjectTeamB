package com.google.android.gms.common.server.response;

import com.google.android.gms.common.a.*;
import java.util.*;
import com.google.android.gms.common.internal.safeparcel.*;
import com.google.android.gms.internal.*;
import com.google.android.gms.common.internal.*;
import android.os.*;
import java.io.*;

public abstract class FastJsonResponse
{
    protected static <O, I> I a(final FastJsonResponse$Field<I, O> fastJsonResponse$Field, Object convertBack) {
        if (((FastJsonResponse$Field<Object, Object>)fastJsonResponse$Field).bFV != null) {
            convertBack = fastJsonResponse$Field.convertBack(convertBack);
        }
        return (I)convertBack;
    }
    
    private static void a(final StringBuilder sb, final FastJsonResponse$Field fastJsonResponse$Field, final Object o) {
        if (fastJsonResponse$Field.Lx() == 11) {
            sb.append(((FastJsonResponse)fastJsonResponse$Field.LD().cast(o)).toString());
            return;
        }
        if (fastJsonResponse$Field.Lx() == 7) {
            sb.append("\"");
            sb.append(e.gb((String)o));
            sb.append("\"");
            return;
        }
        sb.append(o);
    }
    
    private static void a(final StringBuilder sb, final FastJsonResponse$Field fastJsonResponse$Field, final ArrayList<Object> list) {
        sb.append("[");
        for (int i = 0; i < list.size(); ++i) {
            if (i > 0) {
                sb.append(",");
            }
            final Object value = list.get(i);
            if (value != null) {
                a(sb, fastJsonResponse$Field, value);
            }
        }
        sb.append("]");
    }
    
    public abstract HashMap<String, FastJsonResponse$Field<?, ?>> Lu();
    
    protected abstract Object Lv();
    
    protected abstract boolean Lw();
    
    protected boolean a(final FastJsonResponse$Field fastJsonResponse$Field) {
        if (fastJsonResponse$Field.Lz() != 11) {
            fastJsonResponse$Field.LB();
            return this.Lw();
        }
        if (fastJsonResponse$Field.LA()) {
            fastJsonResponse$Field.LB();
            throw new UnsupportedOperationException("Concrete type arrays not supported");
        }
        fastJsonResponse$Field.LB();
        throw new UnsupportedOperationException("Concrete types not supported");
    }
    
    protected Object b(final FastJsonResponse$Field fastJsonResponse$Field) {
        final String lb = fastJsonResponse$Field.LB();
        if (fastJsonResponse$Field.LD() != null) {
            fastJsonResponse$Field.LB();
            this.Lv();
            (new Object[1])[0] = fastJsonResponse$Field.LB();
            fastJsonResponse$Field.LA();
            try {
                return this.getClass().getMethod("get" + Character.toUpperCase(lb.charAt(0)) + lb.substring(1), (Class<?>[])new Class[0]).invoke(this, new Object[0]);
            }
            catch (Exception ex) {
                throw new RuntimeException(ex);
            }
        }
        fastJsonResponse$Field.LB();
        return this.Lv();
    }
    
    @Override
    public String toString() {
        final HashMap<String, FastJsonResponse$Field<?, ?>> lu = this.Lu();
        final StringBuilder sb = new StringBuilder(100);
        for (final String s : lu.keySet()) {
            final FastJsonResponse$Field<Object, Object> fastJsonResponse$Field = lu.get(s);
            if (this.a(fastJsonResponse$Field)) {
                final HashMap<String, String> a = a((FastJsonResponse$Field<HashMap<String, String>, Object>)fastJsonResponse$Field, this.b(fastJsonResponse$Field));
                if (sb.length() == 0) {
                    sb.append("{");
                }
                else {
                    sb.append(",");
                }
                sb.append("\"").append(s).append("\":");
                if (a == null) {
                    sb.append("null");
                }
                else {
                    switch (fastJsonResponse$Field.Lz()) {
                        default: {
                            if (fastJsonResponse$Field.Ly()) {
                                a(sb, fastJsonResponse$Field, (ArrayList<Object>)a);
                                continue;
                            }
                            a(sb, fastJsonResponse$Field, a);
                            continue;
                        }
                        case 8: {
                            sb.append("\"").append(c.k((byte[])(Object)a)).append("\"");
                            continue;
                        }
                        case 9: {
                            sb.append("\"").append(c.l((byte[])(Object)a)).append("\"");
                            continue;
                        }
                        case 10: {
                            f.a(sb, a);
                            continue;
                        }
                    }
                }
            }
        }
        if (sb.length() > 0) {
            sb.append("}");
        }
        else {
            sb.append("{}");
        }
        return sb.toString();
    }
}
