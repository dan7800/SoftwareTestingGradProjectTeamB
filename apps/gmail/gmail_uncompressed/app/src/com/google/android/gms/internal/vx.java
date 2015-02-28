package com.google.android.gms.internal;

import java.io.*;

public final class vx
{
    private final int bZQ;
    private final byte[] buffer;
    private int position;
    
    private vx(final byte[] buffer, final int position, final int n) {
        this.buffer = buffer;
        this.position = position;
        this.bZQ = position + n;
    }
    
    public static int SL() {
        return 1 + eJ(10);
    }
    
    public static vx a(final byte[] array, final int n, final int n2) {
        return new vx(array, 0, n2);
    }
    
    public static int aZ(final long n) {
        return eJ(1) + bb(n);
    }
    
    public static int aa(final int n, final int n2) {
        return eJ(n) + eH(n2);
    }
    
    public static int b(final int n, final long n2) {
        return eJ(n) + bb(bc(n2));
    }
    
    public static int b(final int n, final dt dt) {
        final int ej = eJ(n);
        final int sp = dt.SP();
        return ej + (sp + eL(sp));
    }
    
    public static int b(final int n, final byte[] array) {
        return eJ(n) + (eL(array.length) + array.length);
    }
    
    private void ba(long n) {
        while ((0xFFFFFFFFFFFFFF80L & n) != 0x0L) {
            this.eI(0x80 | (0x7F & (int)n));
            n >>>= 7;
        }
        this.eI((int)n);
    }
    
    private static int bb(final long n) {
        if ((0xFFFFFFFFFFFFFF80L & n) == 0x0L) {
            return 1;
        }
        if ((0xFFFFFFFFFFFFC000L & n) == 0x0L) {
            return 2;
        }
        if ((0xFFFFFFFFFFE00000L & n) == 0x0L) {
            return 3;
        }
        if ((0xFFFFFFFFF0000000L & n) == 0x0L) {
            return 4;
        }
        if ((0xFFFFFFF800000000L & n) == 0x0L) {
            return 5;
        }
        if ((0xFFFFFC0000000000L & n) == 0x0L) {
            return 6;
        }
        if ((0xFFFE000000000000L & n) == 0x0L) {
            return 7;
        }
        if ((0xFF00000000000000L & n) == 0x0L) {
            return 8;
        }
        if ((Long.MIN_VALUE & n) == 0x0L) {
            return 9;
        }
        return 10;
    }
    
    private static long bc(final long n) {
        return n << 1 ^ n >> 63;
    }
    
    public static int eH(final int n) {
        if (n >= 0) {
            return eL(n);
        }
        return 10;
    }
    
    private void eI(final int n) {
        final byte b = (byte)n;
        if (this.position == this.bZQ) {
            throw new vx$a(this.position, this.bZQ);
        }
        this.buffer[this.position++] = b;
    }
    
    public static int eJ(final int n) {
        return eL(dw.ac(n, 0));
    }
    
    public static int eL(final int n) {
        if ((n & 0xFFFFFF80) == 0x0) {
            return 1;
        }
        if ((n & 0xFFFFC000) == 0x0) {
            return 2;
        }
        if ((0xFFE00000 & n) == 0x0) {
            return 3;
        }
        if ((0xF0000000 & n) == 0x0) {
            return 4;
        }
        return 5;
    }
    
    public static int gv(final String s) {
        try {
            final byte[] bytes = s.getBytes("UTF-8");
            return bytes.length + eL(bytes.length);
        }
        catch (UnsupportedEncodingException ex) {
            throw new RuntimeException("UTF-8 not supported.");
        }
    }
    
    public static int h(final int n, final String s) {
        return eJ(n) + gv(s);
    }
    
    public static vx m(final byte[] array) {
        return a(array, 0, array.length);
    }
    
    public final void SM() {
        if (this.bZQ - this.position != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }
    
    public final void Z(final int n, final int n2) {
        this.ab(n, 0);
        if (n2 >= 0) {
            this.eK(n2);
            return;
        }
        this.ba(n2);
    }
    
    public final void a(final int n, final long n2) {
        this.ab(n, 0);
        this.ba(bc(n2));
    }
    
    public final void a(final int n, final dt dt) {
        this.ab(n, 2);
        this.a(dt);
    }
    
    public final void a(final int n, final byte[] array) {
        this.ab(n, 2);
        this.eK(array.length);
        this.n(array);
    }
    
    public final void a(final dt dt) {
        this.eK(dt.SO());
        dt.a(this);
    }
    
    public final void aY(final long n) {
        this.ab(1, 0);
        this.ba(n);
    }
    
    public final void ab(final int n, final int n2) {
        this.eK(dw.ac(n, n2));
    }
    
    public final void ck(final boolean b) {
        this.ab(10, 0);
        int n = 0;
        if (b) {
            n = 1;
        }
        this.eI(n);
    }
    
    public final void eK(int n) {
        while ((n & 0xFFFFFF80) != 0x0) {
            this.eI(0x80 | (n & 0x7F));
            n >>>= 7;
        }
        this.eI(n);
    }
    
    public final void g(final int n, final String s) {
        this.ab(n, 2);
        final byte[] bytes = s.getBytes("UTF-8");
        this.eK(bytes.length);
        this.n(bytes);
    }
    
    public final void n(final byte[] array) {
        final int length = array.length;
        if (this.bZQ - this.position >= length) {
            System.arraycopy(array, 0, this.buffer, this.position, length);
            this.position += length;
            return;
        }
        throw new vx$a(this.position, this.bZQ);
    }
}
