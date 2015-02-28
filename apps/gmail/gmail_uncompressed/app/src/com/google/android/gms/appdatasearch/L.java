package com.google.android.gms.appdatasearch;

import java.io.*;

final class l
{
    int bwn;
    int bwp;
    final int[] bwq;
    final byte[] bwr;
    
    public l(final int[] bwq, final byte[] bwr) {
        this.bwn = 0;
        this.bwp = 0;
        this.bwq = bwq;
        this.bwr = bwr;
    }
    
    public final String en(final int n) {
        if (n < this.bwn) {
            this.bwn = 0;
            this.bwp = 0;
        }
        while (this.bwn < n) {
            this.bwp += this.bwq[this.bwn];
            ++this.bwn;
        }
        try {
            return new String(this.bwr, this.bwp, this.bwq[this.bwn], "UTF-8");
        }
        catch (UnsupportedEncodingException ex) {
            return null;
        }
    }
}
