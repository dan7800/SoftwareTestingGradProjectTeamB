package com.google.api.client.util;

import java.io.*;
import java.util.*;

public final class DateTime implements Serializable
{
    private static final TimeZone GMT;
    private static final long serialVersionUID = 1L;
    private final boolean dateOnly;
    private final int tzShift;
    private final long value;
    
    static {
        GMT = TimeZone.getTimeZone("GMT");
    }
    
    public DateTime() {
        this(false, 0L, null);
    }
    
    private DateTime(final boolean dateOnly, final long value, final Integer n) {
        this.dateOnly = dateOnly;
        this.value = value;
        int intValue;
        if (dateOnly) {
            intValue = 0;
        }
        else if (n == null) {
            intValue = TimeZone.getDefault().getOffset(value) / 60000;
        }
        else {
            intValue = n;
        }
        this.tzShift = intValue;
    }
    
    private static void a(final StringBuilder sb, int n, int n2) {
        if (n < 0) {
            sb.append('-');
            n = -n;
        }
        for (int i = n; i > 0; i /= 10, --n2) {}
        for (int j = 0; j < n2; ++j) {
            sb.append('0');
        }
        if (n != 0) {
            sb.append(n);
        }
    }
    
    public static DateTime hx(final String s) {
        int int1;
        int n;
        int int2;
        int length;
        boolean b;
        long n2;
        Integer value;
        int n3;
        int n4;
        int int3;
        int int4;
        int int5;
        GregorianCalendar gregorianCalendar;
        int n5;
        int int6;
        long timeInMillis;
        int n6;
        long n7;
        int n8;
        Label_0158_Outer:Label_0066_Outer:
        while (true) {
            Label_0066:Label_0354_Outer:
            while (true) {
                while (true) {
                    Label_0378: {
                        while (true) {
                        Label_0137_Outer:
                            while (true) {
                                try {
                                    int1 = Integer.parseInt(s.substring(0, 4));
                                    n = -1 + Integer.parseInt(s.substring(5, 7));
                                    int2 = Integer.parseInt(s.substring(8, 10));
                                    length = s.length();
                                    if (length > 10 && Character.toUpperCase(s.charAt(10)) == 'T') {
                                        break Label_0378;
                                    }
                                    break Label_0137_Outer;
                                    return new DateTime(b, n2, value);
                                    // iftrue(Label_0232:, Character.toUpperCase(s.charAt(n3)) != 'Z')
                                    // iftrue(Label_0384:, s.charAt(19) != '.')
                                    // iftrue(Label_0341:, length <= n3)
                                    // iftrue(Label_0289:, s.charAt(n3) != '-')
                                    while (true) {
                                    Block_8:
                                        while (true) {
                                            Block_7: {
                                            Block_6:
                                                while (true) {
                                                    break Block_6;
                                                    value = n4;
                                                    return new DateTime(b, n2, value);
                                                    int3 = Integer.parseInt(s.substring(11, 13));
                                                    int4 = Integer.parseInt(s.substring(14, 16));
                                                    int5 = Integer.parseInt(s.substring(17, 19));
                                                    break Block_7;
                                                    gregorianCalendar = new GregorianCalendar(DateTime.GMT);
                                                    gregorianCalendar.set(int1, n, int2, n5, int4, int5);
                                                    gregorianCalendar.set(14, int6);
                                                    timeInMillis = gregorianCalendar.getTimeInMillis();
                                                    continue Label_0137_Outer;
                                                }
                                                n2 = timeInMillis;
                                                n4 = 0;
                                                continue Label_0158_Outer;
                                            }
                                            int6 = Integer.parseInt(s.substring(20, 23));
                                            n5 = int3;
                                            n3 = 23;
                                            continue Label_0066;
                                            Label_0232: {
                                                n6 = 60 * Integer.parseInt(s.substring(n3 + 1, n3 + 3)) + Integer.parseInt(s.substring(n3 + 4, n3 + 6));
                                            }
                                            break Block_8;
                                            n7 = timeInMillis - 60000L * n6;
                                            n8 = n6;
                                            n2 = n7;
                                            n4 = n8;
                                            continue Label_0158_Outer;
                                        }
                                        n6 = -n6;
                                        continue Label_0354_Outer;
                                    }
                                }
                                catch (StringIndexOutOfBoundsException ex) {
                                    throw new NumberFormatException("Invalid date/time format: " + s);
                                }
                                Label_0341: {
                                    n2 = timeInMillis;
                                }
                                value = null;
                                continue Label_0158_Outer;
                            }
                            b = true;
                            if (b) {
                                n3 = Integer.MAX_VALUE;
                                n5 = 0;
                                int4 = 0;
                                int5 = 0;
                                int6 = 0;
                                continue Label_0066;
                            }
                            continue Label_0066_Outer;
                        }
                    }
                    b = false;
                    continue;
                }
                Label_0384: {
                    n5 = int3;
                }
                n3 = 19;
                int6 = 0;
                continue Label_0066;
            }
        }
    }
    
    public final String Ys() {
        final StringBuilder sb = new StringBuilder();
        final GregorianCalendar gregorianCalendar = new GregorianCalendar(DateTime.GMT);
        gregorianCalendar.setTimeInMillis(this.value + 60000L * this.tzShift);
        a(sb, gregorianCalendar.get(1), 4);
        sb.append('-');
        a(sb, 1 + gregorianCalendar.get(2), 2);
        sb.append('-');
        a(sb, gregorianCalendar.get(5), 2);
        if (!this.dateOnly) {
            sb.append('T');
            a(sb, gregorianCalendar.get(11), 2);
            sb.append(':');
            a(sb, gregorianCalendar.get(12), 2);
            sb.append(':');
            a(sb, gregorianCalendar.get(13), 2);
            if (gregorianCalendar.isSet(14)) {
                sb.append('.');
                a(sb, gregorianCalendar.get(14), 3);
            }
            if (this.tzShift == 0) {
                sb.append('Z');
            }
            else {
                int tzShift = this.tzShift;
                if (this.tzShift > 0) {
                    sb.append('+');
                }
                else {
                    sb.append('-');
                    tzShift = -tzShift;
                }
                final int n = tzShift / 60;
                final int n2 = tzShift % 60;
                a(sb, n, 2);
                sb.append(':');
                a(sb, n2, 2);
            }
        }
        return sb.toString();
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (o != this) {
            if (!(o instanceof DateTime)) {
                return false;
            }
            final DateTime dateTime = (DateTime)o;
            if (this.dateOnly != dateTime.dateOnly || this.value != dateTime.value || this.tzShift != dateTime.tzShift) {
                return false;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        final long[] array = { this.value, 0L, 0L };
        long n;
        if (this.dateOnly) {
            n = 1L;
        }
        else {
            n = 0L;
        }
        array[1] = n;
        array[2] = this.tzShift;
        return Arrays.hashCode(array);
    }
    
    @Override
    public final String toString() {
        return this.Ys();
    }
}
