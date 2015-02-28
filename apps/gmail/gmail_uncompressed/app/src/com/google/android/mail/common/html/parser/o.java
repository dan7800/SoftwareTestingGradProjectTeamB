package com.google.android.mail.common.html.parser;

import com.google.android.mail.common.base.*;

final class o
{
    int cuA;
    boolean cuB;
    private final String cun;
    int cux;
    int cuy;
    int cuz;
    private String name;
    private String value;
    
    public o(final String cun) {
        this.cux = -1;
        this.cuy = -1;
        this.cuz = -1;
        this.cuA = -1;
        this.cuB = false;
        this.cun = cun;
    }
    
    private int ai(int n, final int n2) {
        while (n < n2 && Character.isWhitespace(this.cun.charAt(n))) {
            ++n;
        }
        return n;
    }
    
    final int ag(final int cux, final int n) {
        M.assertTrue(this.cun.charAt(cux) != '>');
        if (cux == n) {
            return cux;
        }
        int i;
        for (i = cux + 1; i < n; ++i) {
            final char char1 = this.cun.charAt(i);
            if (char1 == '>' || char1 == '=' || char1 == '/' || Character.isWhitespace(char1)) {
                break;
            }
        }
        this.cux = cux;
        return this.cuy = i;
    }
    
    final int ah(final int n, final int n2) {
        boolean cuB = true;
        final int ai = this.ai(n, n2);
        if (ai == n2 || this.cun.charAt(ai) != '=') {
            return n;
        }
        final int ai2 = this.ai(ai + 1, n2);
        if (ai2 == n2) {
            return ai2;
        }
        final char char1 = this.cun.charAt(ai2);
        int i;
        if (char1 == '\'' || char1 == '\"') {
            this.cuB = cuB;
            int cuz;
            for (cuz = (i = ai2 + 1); i < n2 && this.cun.charAt(i) != char1; ++i) {}
            this.cuz = cuz;
            if ((this.cuA = i) < n2) {
                ++i;
            }
        }
        else {
            for (i = ai2; i < n2; ++i) {
                final char char2 = this.cun.charAt(i);
                if (char2 == '>' || Character.isWhitespace(char2)) {
                    break;
                }
            }
            this.cuz = ai2;
            this.cuA = i;
        }
        M.assertTrue(this.cuz >= 0 && cuB);
        M.assertTrue(this.cuA >= 0 && cuB);
        M.assertTrue(this.cuz <= this.cuA && cuB);
        if (i > n2) {
            cuB = false;
        }
        M.assertTrue(cuB);
        return i;
    }
    
    public final String getName() {
        if (this.name == null && this.cux != -1 && this.cuy != -1) {
            this.name = this.cun.substring(this.cux, this.cuy);
        }
        return this.name;
    }
    
    public final String getValue() {
        if (this.value == null && this.cuz != -1 && this.cuA != -1) {
            this.value = this.cun.substring(this.cuz, this.cuA);
        }
        return this.value;
    }
    
    public final void reset() {
        this.cux = -1;
        this.cuy = -1;
        this.cuz = -1;
        this.cuA = -1;
        this.cuB = false;
        this.name = null;
        this.value = null;
    }
}
