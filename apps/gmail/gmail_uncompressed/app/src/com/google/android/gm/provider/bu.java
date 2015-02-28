package com.google.android.gm.provider;

import java.util.*;
import com.android.mail.utils.*;

final class bu
{
    private Map<String, String> aPd;
    
    bu() {
        this.aPd = new HashMap<String, String>();
    }
    
    private bu fg(final String s) {
        this.aPd.put(s, s);
        return this;
    }
    
    public final bu D(final String[] array) {
        for (int length = array.length, i = 0; i < length; ++i) {
            this.fg(array[i]);
        }
        return this;
    }
    
    public final Map<String, String> HJ() {
        return this.aPd;
    }
    
    public final bu a(final String[][] array) {
        for (final String[] array2 : array) {
            switch (array2.length) {
                default: {
                    E.d(MailEngine.TAG, "unrecognized projection map entry: %s", Arrays.toString(array2));
                    break;
                }
                case 2: {
                    this.ac(array2[0], array2[1]);
                    break;
                }
                case 1: {
                    this.fg(array2[0]);
                    break;
                }
            }
        }
        return this;
    }
    
    public final bu ac(final String s, final String s2) {
        this.aPd.put(s, s2 + " AS " + s);
        return this;
    }
}
