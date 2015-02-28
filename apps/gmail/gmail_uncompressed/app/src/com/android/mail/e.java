package com.android.mail;

import android.content.*;
import java.util.*;
import android.text.format.*;
import java.io.*;

public final class e
{
    private final StringBuilder ajV;
    private final Formatter ajW;
    private final Context mContext;
    
    public e(final Context mContext) {
        this.mContext = mContext;
        this.ajV = new StringBuilder();
        this.ajW = new Formatter(this.ajV);
    }
    
    private static boolean M(final long timeInMillis) {
        final Calendar instance = Calendar.getInstance();
        final Calendar instance2 = Calendar.getInstance();
        instance2.setTimeInMillis(timeInMillis);
        return instance.get(1) == instance2.get(1);
    }
    
    private CharSequence f(final long n, final int n2) {
        this.ajV.setLength(0);
        DateUtils.formatDateRange(this.mContext, this.ajW, n, n, n2);
        return this.ajV.toString();
    }
    
    public final CharSequence I(final long n) {
        if (DateUtils.isToday(n)) {
            return this.f(n, 1);
        }
        if (M(n)) {
            return this.f(n, 65552);
        }
        return this.f(n, 131088);
    }
    
    public final CharSequence J(final long n) {
        long n2 = 604800000L;
        if (DateUtils.isToday(n)) {
            return this.f(n, 1);
        }
        if (!M(n)) {
            return this.f(n, 131088);
        }
        final Context mContext = this.mContext;
        final long currentTimeMillis = System.currentTimeMillis();
        final long abs = Math.abs(currentTimeMillis - n);
        if (1209600000L <= n2) {
            if (1209600000L < 86400000L) {
                n2 = 86400000L;
            }
            else {
                n2 = 1209600000L;
            }
        }
        if (abs < n2) {
            return DateUtils.getRelativeTimeSpanString(n, currentTimeMillis, 86400000L, 65552);
        }
        return DateUtils.getRelativeTimeSpanString(mContext, n, false);
    }
    
    public final CharSequence K(final long n) {
        this.ajV.setLength(0);
        DateUtils.formatDateRange(this.mContext, this.ajW, n, n, 524309);
        return this.ajV.toString();
    }
    
    public final String L(final long n) {
        return this.mContext.getString(2131296673, new Object[] { this.f(n, 524310), this.f(n, 1) });
    }
}
