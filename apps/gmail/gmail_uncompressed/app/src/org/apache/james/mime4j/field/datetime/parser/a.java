package org.apache.james.mime4j.field.datetime.parser;

import java.util.*;
import java.io.*;
import org.apache.james.mime4j.field.datetime.*;

public final class a implements d
{
    private static int[] cEK;
    private static int[] cEL;
    private int cED;
    private int cEI;
    private final int[] cEJ;
    private Vector<int[]> cEQ;
    private int[] cER;
    private int cES;
    public e cGn;
    f cGo;
    public g cGp;
    public g cGq;
    
    static {
        a.cEK = new int[] { 2, 2032, 2032, 8386560, 8388608, -16777216, -33554432 };
        a.cEL = new int[] { 0, 0, 0, 0, 0, 15, 15 };
    }
    
    public a(final Reader reader) {
        int i = 0;
        this.cEJ = new int[7];
        this.cEQ = new Vector<int[]>();
        this.cES = -1;
        this.cGo = new f(reader);
        this.cGn = new e(this.cGo);
        this.cGp = new g();
        this.cED = -1;
        this.cEI = 0;
        while (i < 7) {
            this.cEJ[i] = -1;
            ++i;
        }
    }
    
    private static int a(final g g) {
        return Integer.parseInt(g.cGa, 10);
    }
    
    private final int aaZ() {
        final g cGu = this.cGp.cGu;
        this.cGq = cGu;
        if (cGu == null) {
            final g cGp = this.cGp;
            final g abx = this.cGn.abx();
            cGp.cGu = abx;
            return this.cED = abx.cFV;
        }
        return this.cED = this.cGq.cFV;
    }
    
    private final g gc(final int ces) {
        final g cGp = this.cGp;
        if (cGp.cGu != null) {
            this.cGp = this.cGp.cGu;
        }
        else {
            final g cGp2 = this.cGp;
            final g abx = this.cGn.abx();
            cGp2.cGu = abx;
            this.cGp = abx;
        }
        this.cED = -1;
        if (this.cGp.cFV == ces) {
            ++this.cEI;
            return this.cGp;
        }
        this.cGp = cGp;
        this.cES = ces;
        this.cEQ.removeAllElements();
        final boolean[] array = new boolean[49];
        for (int i = 0; i < 49; ++i) {
            array[i] = false;
        }
        if (this.cES >= 0) {
            array[this.cES] = true;
            this.cES = -1;
        }
        for (int j = 0; j < 7; ++j) {
            if (this.cEJ[j] == this.cEI) {
                for (int k = 0; k < 32; ++k) {
                    if ((a.cEK[j] & 1 << k) != 0x0) {
                        array[k] = true;
                    }
                    if ((a.cEL[j] & 1 << k) != 0x0) {
                        array[k + 32] = true;
                    }
                }
            }
        }
        for (int l = 0; l < 49; ++l) {
            if (array[l]) {
                (this.cER = new int[1])[0] = l;
                this.cEQ.addElement(this.cER);
            }
        }
        final int[][] array2 = new int[this.cEQ.size()][];
        for (int n = 0; n < this.cEQ.size(); ++n) {
            array2[n] = this.cEQ.elementAt(n);
        }
        throw new ParseException(this.cGp, array2, a.tokenImage);
    }
    
    public final org.apache.james.mime4j.field.datetime.a abt() {
        int n = 3;
        int n2 = 1;
        int n3;
        if (this.cED == -1) {
            n3 = this.aaZ();
        }
        else {
            n3 = this.cED;
        }
        switch (n3) {
            default: {
                this.cEJ[n2] = this.cEI;
                break;
            }
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10: {
                int n4;
                if (this.cED == -1) {
                    n4 = this.aaZ();
                }
                else {
                    n4 = this.cED;
                }
                switch (n4) {
                    default: {
                        this.cEJ[2] = this.cEI;
                        this.gc(-1);
                        throw new ParseException();
                    }
                    case 4: {
                        this.gc(4);
                        break;
                    }
                    case 5: {
                        this.gc(5);
                        break;
                    }
                    case 6: {
                        this.gc(6);
                        break;
                    }
                    case 7: {
                        this.gc(7);
                        break;
                    }
                    case 8: {
                        this.gc(8);
                        break;
                    }
                    case 9: {
                        this.gc(9);
                        break;
                    }
                    case 10: {
                        this.gc(10);
                        break;
                    }
                }
                final String cGa = this.cGp.cGa;
                this.gc(n);
                break;
            }
        }
        final int a = a(this.gc(46));
        int n5;
        if (this.cED == -1) {
            n5 = this.aaZ();
        }
        else {
            n5 = this.cED;
        }
        switch (n5) {
            default: {
                this.cEJ[n] = this.cEI;
                this.gc(-1);
                throw new ParseException();
            }
            case 11: {
                this.gc(11);
                n = n2;
                break;
            }
            case 12: {
                this.gc(12);
                n = 2;
                break;
            }
            case 13: {
                this.gc(13);
                break;
            }
            case 14: {
                this.gc(14);
                n = 4;
                break;
            }
            case 15: {
                this.gc(15);
                n = 5;
                break;
            }
            case 16: {
                this.gc(16);
                n = 6;
                break;
            }
            case 17: {
                this.gc(17);
                n = 7;
                break;
            }
            case 18: {
                this.gc(18);
                n = 8;
                break;
            }
            case 19: {
                this.gc(19);
                n = 9;
                break;
            }
            case 20: {
                this.gc(20);
                n = 10;
                break;
            }
            case 21: {
                this.gc(21);
                n = 11;
                break;
            }
            case 22: {
                this.gc(22);
                n = 12;
                break;
            }
        }
        final b b = new b(this.gc(46).cGa, n, a);
        final int a2 = a(this.gc(46));
        this.gc(23);
        final int a3 = a(this.gc(46));
        int n6;
        if (this.cED == -1) {
            n6 = this.aaZ();
        }
        else {
            n6 = this.cED;
        }
        int a4 = 0;
        switch (n6) {
            default: {
                this.cEJ[4] = this.cEI;
                a4 = 0;
                break;
            }
            case 23: {
                this.gc(23);
                a4 = a(this.gc(46));
                break;
            }
        }
        int n7;
        if (this.cED == -1) {
            n7 = this.aaZ();
        }
        else {
            n7 = this.cED;
        }
        int n8 = 0;
        switch (n7) {
            default: {
                this.cEJ[5] = this.cEI;
                this.gc(-1);
                throw new ParseException();
            }
            case 24: {
                final g gc = this.gc(24);
                final int a5 = a(this.gc(46));
                if (gc.cGa.equals("-")) {
                    n2 = -1;
                }
                n8 = n2 * a5;
                break;
            }
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
            case 34:
            case 35: {
                int n9;
                if (this.cED == -1) {
                    n9 = this.aaZ();
                }
                else {
                    n9 = this.cED;
                }
                int n10 = 0;
                switch (n9) {
                    default: {
                        this.cEJ[6] = this.cEI;
                        this.gc(-1);
                        throw new ParseException();
                    }
                    case 25: {
                        this.gc(25);
                        n10 = 0;
                        break;
                    }
                    case 26: {
                        this.gc(26);
                        n10 = 0;
                        break;
                    }
                    case 27: {
                        this.gc(27);
                        n10 = -5;
                        break;
                    }
                    case 28: {
                        this.gc(28);
                        n10 = -4;
                        break;
                    }
                    case 29: {
                        this.gc(29);
                        n10 = -6;
                        break;
                    }
                    case 30: {
                        this.gc(30);
                        n10 = -5;
                        break;
                    }
                    case 31: {
                        this.gc(31);
                        n10 = -7;
                        break;
                    }
                    case 32: {
                        this.gc(32);
                        n10 = -6;
                        break;
                    }
                    case 33: {
                        this.gc(33);
                        n10 = -8;
                        break;
                    }
                    case 34: {
                        this.gc(34);
                        n10 = -7;
                        break;
                    }
                    case 35: {
                        this.gc(35).cGa.charAt(0);
                        n10 = 0;
                        break;
                    }
                }
                n8 = n10 * 100;
                break;
            }
        }
        final c c = new c(a2, a3, a4, n8);
        final org.apache.james.mime4j.field.datetime.a a6 = new org.apache.james.mime4j.field.datetime.a(b.abu(), b.getMonth(), b.getDay(), c.getHour(), c.getMinute(), c.getSecond(), c.abv());
        this.gc(0);
        return a6;
    }
}
