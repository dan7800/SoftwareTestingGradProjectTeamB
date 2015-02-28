package com.android.email.mail.transport;

import java.util.*;
import com.android.emailcommon.*;
import com.android.mail.utils.*;
import java.io.*;

public final class a
{
    private final int Rr;
    private String[] Rs;
    private final StringBuilder Rt;
    private int mPos;
    
    public a() {
        this.Rt = new StringBuilder(100);
        this.Rr = 64;
        this.jR();
    }
    
    private void N(final String s) {
        this.Rs[this.mPos] = s;
        ++this.mPos;
        if (this.mPos >= this.Rr) {
            this.mPos = 0;
        }
    }
    
    private void jR() {
        this.Rs = new String[this.Rr];
    }
    
    private void jS() {
        if (this.Rt.length() > 0) {
            this.N(this.Rt.toString());
            this.Rt.delete(0, Integer.MAX_VALUE);
        }
    }
    
    private String[] jT() {
        this.jS();
        final ArrayList<String> list = new ArrayList<String>();
        final int mPos = this.mPos;
        int i = this.mPos;
        do {
            final String s = this.Rs[i];
            if (s != null) {
                list.add(s);
            }
            i = (i + 1) % this.Rr;
        } while (i != mPos);
        final String[] array = new String[list.size()];
        list.toArray(array);
        return array;
    }
    
    public final void O(final String s) {
        this.N(s);
    }
    
    public final void ba(final int n) {
        if (32 <= n && n <= 126) {
            this.Rt.append((char)n);
        }
        else {
            if (n == 10) {
                this.jS();
                return;
            }
            if (n != 13) {
                final String string = "00" + Integer.toHexString(n);
                this.Rt.append("\\x" + string.substring(-2 + string.length(), string.length()));
            }
        }
    }
    
    public final void iW() {
        if (this.jT().length == 0) {
            return;
        }
        E.e(b.mW, "Last network activities:", new Object[0]);
        final String[] jt = this.jT();
        for (int length = jt.length, i = 0; i < length; ++i) {
            E.e(b.mW, "%s", jt[i]);
        }
        this.jR();
    }
}
