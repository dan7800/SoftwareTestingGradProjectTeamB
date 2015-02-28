package org.apache.james.mime4j.field.datetime.parser;

final class c
{
    private int cGs;
    private int hour;
    private int minute;
    private int second;
    
    public c(final int hour, final int minute, final int second, final int cGs) {
        this.hour = hour;
        this.minute = minute;
        this.second = second;
        this.cGs = cGs;
    }
    
    public final int abv() {
        return this.cGs;
    }
    
    public final int getHour() {
        return this.hour;
    }
    
    public final int getMinute() {
        return this.minute;
    }
    
    public final int getSecond() {
        return this.second;
    }
}
