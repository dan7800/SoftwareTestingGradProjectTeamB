package com.google.android.gms.internal;

import java.lang.reflect.*;

public final class du
{
    private static void a(final String s, final Object o, final StringBuffer sb, final StringBuffer sb2) {
        if (o == null) {
            return;
        }
        Label_0400: {
            if (!(o instanceof dt)) {
                break Label_0400;
            }
            final int length = sb.length();
            if (s != null) {
                sb2.append(sb).append(gw(s)).append(" <\n");
                sb.append("  ");
            }
            final Class<?> class1 = o.getClass();
            for (final Field field : class1.getFields()) {
                final int modifiers = field.getModifiers();
                final String name = field.getName();
                if ((modifiers & 0x1) == 0x1 && (modifiers & 0x8) != 0x8 && !name.startsWith("_") && !name.endsWith("_")) {
                    final Class<?> type = field.getType();
                    final Object value = field.get(o);
                    if (type.isArray() && type.getComponentType() != Byte.TYPE) {
                        int length3;
                        if (value == null) {
                            length3 = 0;
                        }
                        else {
                            length3 = Array.getLength(value);
                        }
                        for (int j = 0; j < length3; ++j) {
                            a(name, Array.get(value, j), sb, sb2);
                        }
                    }
                    else {
                        a(name, value, sb, sb2);
                    }
                }
            }
            final Method[] methods = class1.getMethods();
            final int length4 = methods.length;
            int n = 0;
        Label_0372_Outer:
            while (true) {
                Label_0378: {
                    if (n >= length4) {
                        break Label_0378;
                    }
                    final String name2 = methods[n].getName();
                Label_0509_Outer:
                    while (true) {
                        if (!name2.startsWith("set")) {
                            break Label_0372;
                        }
                        final String substring = name2.substring(3);
                        try {
                            if (!(boolean)class1.getMethod("has" + substring, (Class<?>[])new Class[0]).invoke(o, new Object[0])) {
                                break Label_0372;
                            }
                            try {
                                a(substring, class1.getMethod("get" + substring, (Class<?>[])new Class[0]).invoke(o, new Object[0]), sb, sb2);
                                ++n;
                                continue Label_0372_Outer;
                                // iftrue(Label_0538:, !o instanceof byte[])
                                // iftrue(Label_0517:, !o instanceof String)
                                // iftrue(Label_0399:, s == null)
                                // iftrue(Label_0485:, string.startsWith("http") || string.length() <= 200)
                            Label_0509:
                                while (true) {
                                    Block_23: {
                                    Block_19:
                                        while (true) {
                                            Block_20: {
                                                while (true) {
                                                    final String string;
                                                    sb2.append("\"").append(gb(string)).append("\"");
                                                    break Label_0509;
                                                    Label_0517: {
                                                        break Block_23;
                                                    }
                                                    sb2.append(sb).append(gw(s)).append(": ");
                                                    break Block_20;
                                                    string = string.substring(0, 200) + "[...]";
                                                    continue Label_0509_Outer;
                                                }
                                                Label_0399: {
                                                    return;
                                                }
                                                sb2.append("\n");
                                                return;
                                                break Block_19;
                                            }
                                            String string = (String)o;
                                            continue;
                                        }
                                        sb.setLength(length);
                                        sb2.append(sb).append(">\n");
                                        return;
                                    }
                                    a((byte[])o, sb2);
                                    continue Label_0509;
                                }
                                Label_0538: {
                                    sb2.append(o);
                                }
                            }
                            catch (NoSuchMethodException ex) {}
                        }
                        catch (NoSuchMethodException ex2) {
                            continue;
                        }
                        break;
                    }
                }
                break;
            }
        }
    }
    
    private static void a(final byte[] array, final StringBuffer sb) {
        if (array == null) {
            sb.append("\"\"");
            return;
        }
        sb.append('\"');
        for (int i = 0; i < array.length; ++i) {
            final int n = 0xFF & array[i];
            if (n == 92 || n == 34) {
                sb.append('\\').append((char)n);
            }
            else if (n >= 32 && n < 127) {
                sb.append((char)n);
            }
            else {
                sb.append(String.format("\\%03o", n));
            }
        }
        sb.append('\"');
    }
    
    public static <T extends dt> String c(final T t) {
        if (t == null) {
            return "";
        }
        final StringBuffer sb = new StringBuffer();
        try {
            a(null, t, new StringBuffer(), sb);
            return sb.toString();
        }
        catch (IllegalAccessException ex) {
            return "Error printing proto: " + ex.getMessage();
        }
        catch (InvocationTargetException ex2) {
            return "Error printing proto: " + ex2.getMessage();
        }
    }
    
    private static String gb(final String s) {
        final int length = s.length();
        final StringBuilder sb = new StringBuilder(length);
        for (int i = 0; i < length; ++i) {
            final char char1 = s.charAt(i);
            if (char1 >= ' ' && char1 <= '~' && char1 != '\"' && char1 != '\'') {
                sb.append(char1);
            }
            else {
                sb.append(String.format("\\u%04x", (int)char1));
            }
        }
        return sb.toString();
    }
    
    private static String gw(final String s) {
        final StringBuffer sb = new StringBuffer();
        for (int i = 0; i < s.length(); ++i) {
            final char char1 = s.charAt(i);
            if (i == 0) {
                sb.append(Character.toLowerCase(char1));
            }
            else if (Character.isUpperCase(char1)) {
                sb.append('_').append(Character.toLowerCase(char1));
            }
            else {
                sb.append(char1);
            }
        }
        return sb.toString();
    }
}
