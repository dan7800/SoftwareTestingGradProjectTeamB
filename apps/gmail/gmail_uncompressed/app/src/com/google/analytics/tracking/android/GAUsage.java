package com.google.analytics.tracking.android;

import java.util.*;
import java.io.*;

final class GAUsage
{
    private static final GAUsage aTM;
    private SortedSet<GAUsage$Field> aTJ;
    private StringBuilder aTK;
    private boolean aTL;
    
    static {
        aTM = new GAUsage();
    }
    
    private GAUsage() {
        this.aTJ = new TreeSet<GAUsage$Field>();
        this.aTK = new StringBuilder();
        this.aTL = false;
    }
    
    public static GAUsage BX() {
        return GAUsage.aTM;
    }
    
    public final String BY() {
        synchronized (this) {
            final StringBuilder sb = new StringBuilder();
            int n = 6;
            int n2 = 0;
            while (this.aTJ.size() > 0) {
                final GAUsage$Field gaUsage$Field = this.aTJ.first();
                this.aTJ.remove(gaUsage$Field);
                while (gaUsage$Field.ordinal() >= n) {
                    sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(n2));
                    n += 6;
                    n2 = 0;
                }
                n2 += 1 << gaUsage$Field.ordinal() % 6;
            }
            if (n2 > 0 || sb.length() == 0) {
                sb.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(n2));
            }
            this.aTJ.clear();
            return sb.toString();
        }
    }
    
    public final String BZ() {
        synchronized (this) {
            if (this.aTK.length() > 0) {
                this.aTK.insert(0, ".");
            }
            final String string = this.aTK.toString();
            this.aTK = new StringBuilder();
            return string;
        }
    }
    
    public final void a(final GAUsage$Field gaUsage$Field) {
        synchronized (this) {
            if (!this.aTL) {
                this.aTJ.add(gaUsage$Field);
                this.aTK.append("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_".charAt(gaUsage$Field.ordinal()));
            }
        }
    }
    
    public final void bK(final boolean atl) {
        synchronized (this) {
            this.aTL = atl;
        }
    }
}
