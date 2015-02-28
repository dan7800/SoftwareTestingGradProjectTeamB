package android.support.v4.e;

import java.util.*;

public final class a
{
    private static i fZ;
    private static final String ga;
    private static final String gb;
    private static final a gc;
    private static final a gd;
    private final int dM;
    private final boolean ge;
    private final i gf;
    
    static {
        a.fZ = j.gr;
        ga = Character.toString('\u200e');
        gb = Character.toString('\u200f');
        gc = new a(false, 2, a.fZ);
        gd = new a(true, 2, a.fZ);
    }
    
    private a(final boolean ge, final int dm, final i gf) {
        this.ge = ge;
        this.dM = dm;
        this.gf = gf;
    }
    
    public static a aC() {
        return new b().aG();
    }
    
    private static int g(final String s) {
        return new c(s).aI();
    }
    
    private static int h(final String s) {
        return new c(s).aH();
    }
    
    public final boolean isRtl(final String s) {
        return this.gf.a(s, s.length());
    }
    
    public final String unicodeWrap(final String s) {
        final boolean a = this.gf.a(s, s.length());
        final StringBuilder sb = new StringBuilder();
        int n;
        if ((0x2 & this.dM) != 0x0) {
            n = 1;
        }
        else {
            n = 0;
        }
        if (n != 0) {
            i i;
            if (a) {
                i = j.gq;
            }
            else {
                i = j.gp;
            }
            final boolean a2 = i.a(s, s.length());
            String s2;
            if (!this.ge && (a2 || h(s) == 1)) {
                s2 = android.support.v4.e.a.ga;
            }
            else if (this.ge && (!a2 || h(s) == -1)) {
                s2 = android.support.v4.e.a.gb;
            }
            else {
                s2 = "";
            }
            sb.append(s2);
        }
        if (a != this.ge) {
            char c;
            if (a) {
                c = '\u202b';
            }
            else {
                c = '\u202a';
            }
            sb.append(c);
            sb.append(s);
            sb.append('\u202c');
        }
        else {
            sb.append(s);
        }
        i j;
        if (a) {
            j = android.support.v4.e.j.gq;
        }
        else {
            j = android.support.v4.e.j.gp;
        }
        final boolean a3 = j.a(s, s.length());
        String s3;
        if (!this.ge && (a3 || g(s) == 1)) {
            s3 = android.support.v4.e.a.ga;
        }
        else if (this.ge && (!a3 || g(s) == -1)) {
            s3 = android.support.v4.e.a.gb;
        }
        else {
            s3 = "";
        }
        sb.append(s3);
        return sb.toString();
    }
}
