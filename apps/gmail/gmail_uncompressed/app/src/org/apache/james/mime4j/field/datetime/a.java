package org.apache.james.mime4j.field.datetime;

import java.util.*;
import java.io.*;
import org.apache.james.mime4j.field.datetime.parser.*;

public final class a
{
    private final int IH;
    private final Date cEi;
    private final int hour;
    private final int minute;
    private final int month;
    private final int second;
    private final int timeZone;
    private final int year;
    
    public a(final String s, final int month, final int ih, final int hour, final int minute, final int second, final int timeZone) {
        int int1 = Integer.parseInt(s);
        switch (s.length()) {
            case 1:
            case 2: {
                if (int1 >= 0 && int1 < 50) {
                    int1 += 2000;
                    break;
                }
                int1 += 1900;
                break;
            }
            case 3: {
                int1 += 1900;
                break;
            }
        }
        this.year = int1;
        final int year = this.year;
        final GregorianCalendar gregorianCalendar = new GregorianCalendar(TimeZone.getTimeZone("GMT+0"));
        gregorianCalendar.set(year, month - 1, ih, hour, minute, second);
        gregorianCalendar.set(14, 0);
        if (timeZone != Integer.MIN_VALUE) {
            gregorianCalendar.add(12, -1 * (60 * (timeZone / 100) + timeZone % 100));
        }
        this.cEi = gregorianCalendar.getTime();
        this.month = month;
        this.IH = ih;
        this.hour = hour;
        this.minute = minute;
        this.second = second;
        this.timeZone = timeZone;
    }
    
    public static a ia(final String s) {
        try {
            return new org.apache.james.mime4j.field.datetime.parser.a(new StringReader(s)).abt();
        }
        catch (TokenMgrError tokenMgrError) {
            throw new ParseException(tokenMgrError.getMessage());
        }
    }
    
    public final Date getDate() {
        return this.cEi;
    }
}
