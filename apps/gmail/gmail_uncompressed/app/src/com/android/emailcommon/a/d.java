package com.android.emailcommon.a;

import java.util.*;
import java.io.*;

public final class d
{
    private static final String[] Wf;
    protected final ArrayList<e> Wg;
    
    static {
        Wf = new String[] { "X-Android-Attachment-StoreData" };
    }
    
    public d() {
        this.Wg = new ArrayList<e>();
    }
    
    private static int a(final Object[] array, final Object o) {
        for (int i = 0; i < array.length; ++i) {
            if (array[i].equals(o)) {
                return i;
            }
        }
        return -1;
    }
    
    public final String X(final String s) {
        final String[] y = this.Y(s);
        if (y == null) {
            return null;
        }
        return y[0];
    }
    
    public final String[] Y(final String s) {
        final ArrayList<String> list = new ArrayList<String>();
        for (final e e : this.Wg) {
            if (e.name.equalsIgnoreCase(s)) {
                list.add(e.value);
            }
        }
        if (list.size() == 0) {
            return null;
        }
        return list.toArray(new String[0]);
    }
    
    public final void aa(final String s) {
        final ArrayList<e> list = new ArrayList<e>();
        for (final e e : this.Wg) {
            if (e.name.equalsIgnoreCase(s)) {
                list.add(e);
            }
        }
        this.Wg.removeAll(list);
    }
    
    public final void addHeader(final String s, final String s2) {
        this.Wg.add(new e(s, s2));
    }
    
    public final void clear() {
        this.Wg.clear();
    }
    
    public final void setHeader(final String s, final String s2) {
        if (s == null || s2 == null) {
            return;
        }
        this.aa(s);
        this.addHeader(s, s2);
    }
    
    @Override
    public final String toString() {
        if (this.Wg == null) {
            return null;
        }
        return this.Wg.toString();
    }
    
    public final void writeTo(final OutputStream outputStream) {
        final BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream), 1024);
        for (final e e : this.Wg) {
            int n;
            if (a(d.Wf, e.name) >= 0) {
                n = 1;
            }
            else {
                n = 0;
            }
            if (n == 0) {
                bufferedWriter.write(e.name + ": " + e.value + "\r\n");
            }
        }
        bufferedWriter.flush();
    }
}
