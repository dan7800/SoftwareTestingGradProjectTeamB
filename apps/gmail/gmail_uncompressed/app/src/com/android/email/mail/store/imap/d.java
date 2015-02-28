package com.android.email.mail.store.imap;

import java.util.*;

public class d extends b
{
    public static final d QZ;
    private ArrayList<b> Ra;
    
    static {
        QZ = new e();
    }
    
    public d() {
        this.Ra = new ArrayList<b>();
    }
    
    private final StringBuilder a(final StringBuilder sb) {
        sb.append('[');
        for (int i = 0; i < this.Ra.size(); ++i) {
            if (i > 0) {
                sb.append(',');
            }
            final b ax = this.aX(i);
            if (ax.js()) {
                this.aY(i).a(sb);
            }
            else if (ax.jt()) {
                sb.append(this.aZ(i).getString());
            }
        }
        sb.append(']');
        return sb;
    }
    
    private b f(final String s, final boolean b) {
        for (int i = 1; i < this.Ra.size(); i += 2) {
            if (this.a(i - 1, s, b)) {
                return this.Ra.get(i);
            }
        }
        return null;
    }
    
    public final boolean H(final String s) {
        return this.a(0, s, false);
    }
    
    public final d I(final String s) {
        final b f = this.f(s, false);
        if (f != null) {
            return (d)f;
        }
        return d.QZ;
    }
    
    public final i J(final String s) {
        return this.g(s, false);
    }
    
    void a(final b b) {
        if (b == null) {
            throw new RuntimeException("Can't add null");
        }
        this.Ra.add(b);
    }
    
    public final boolean a(final int n, final String s, final boolean b) {
        if (!b) {
            return this.aZ(n).K(s);
        }
        return this.aZ(n).startsWith(s);
    }
    
    public final b aX(final int n) {
        if (n >= this.Ra.size()) {
            return b.QY;
        }
        return this.Ra.get(n);
    }
    
    public final d aY(final int n) {
        final b ax = this.aX(n);
        if (ax.js()) {
            return (d)ax;
        }
        return d.QZ;
    }
    
    public final i aZ(final int n) {
        final b ax = this.aX(n);
        if (ax.jt()) {
            return (i)ax;
        }
        return i.Rl;
    }
    
    public final boolean contains(final String s) {
        int n = 0;
        boolean b;
        while (true) {
            final int size = this.Ra.size();
            b = false;
            if (n >= size) {
                break;
            }
            if (this.aZ(n).K(s)) {
                b = true;
                break;
            }
            ++n;
        }
        return b;
    }
    
    @Override
    public void destroy() {
        if (this.Ra != null) {
            final Iterator<b> iterator = this.Ra.iterator();
            while (iterator.hasNext()) {
                iterator.next().destroy();
            }
            this.Ra = null;
        }
        super.destroy();
    }
    
    public final String flatten() {
        return this.a(new StringBuilder()).toString();
    }
    
    public final i g(final String s, final boolean b) {
        final b f = this.f(s, b);
        if (f != null) {
            return (i)f;
        }
        return i.Rl;
    }
    
    public final boolean isEmpty() {
        return this.Ra.size() == 0;
    }
    
    @Override
    public final boolean js() {
        return true;
    }
    
    @Override
    public final boolean jt() {
        return false;
    }
    
    public final int size() {
        return this.Ra.size();
    }
    
    @Override
    public String toString() {
        return this.Ra.toString();
    }
}
