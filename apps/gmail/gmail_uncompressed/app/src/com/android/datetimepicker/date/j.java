package com.android.datetimepicker.date;

import java.util.*;

public final class j
{
    int IH;
    private Calendar calendar;
    int month;
    int year;
    
    public j() {
        this.setTime(System.currentTimeMillis());
    }
    
    public j(final int year, final int month, final int ih) {
        this.year = year;
        this.month = month;
        this.IH = ih;
    }
    
    public j(final long time) {
        this.setTime(time);
    }
    
    public j(final Calendar calendar) {
        this.year = calendar.get(1);
        this.month = calendar.get(2);
        this.IH = calendar.get(5);
    }
    
    private void setTime(final long timeInMillis) {
        if (this.calendar == null) {
            this.calendar = Calendar.getInstance();
        }
        this.calendar.setTimeInMillis(timeInMillis);
        this.month = this.calendar.get(2);
        this.year = this.calendar.get(1);
        this.IH = this.calendar.get(5);
    }
    
    public final void c(final j j) {
        this.year = j.year;
        this.month = j.month;
        this.IH = j.IH;
    }
}
