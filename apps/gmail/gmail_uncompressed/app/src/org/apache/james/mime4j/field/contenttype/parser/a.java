package org.apache.james.mime4j.field.contenttype.parser;

import java.util.*;
import java.io.*;

public final class a implements b
{
    private static int[] cEK;
    private int cED;
    private int cEI;
    private final int[] cEJ;
    private Vector<int[]> cEQ;
    private int[] cER;
    private int cES;
    private String cGd;
    private ArrayList<String> cGe;
    private ArrayList<String> cGf;
    public c cGg;
    d cGh;
    public e cGi;
    public e cGj;
    private String type;
    
    static {
        a.cEK = new int[] { 2, 16, 2621440 };
    }
    
    public a(final Reader reader) {
        int i = 0;
        this.cGe = new ArrayList<String>();
        this.cGf = new ArrayList<String>();
        this.cEJ = new int[3];
        this.cEQ = new Vector<int[]>();
        this.cES = -1;
        this.cGh = new d(reader);
        this.cGg = new c(this.cGh);
        this.cGi = new e();
        this.cED = -1;
        this.cEI = 0;
        while (i < 3) {
            this.cEJ[i] = -1;
            ++i;
        }
    }
    
    private final int aaZ() {
        final e cGl = this.cGi.cGl;
        this.cGj = cGl;
        if (cGl == null) {
            final e cGi = this.cGi;
            final e abs = this.cGg.abs();
            cGi.cGl = abs;
            return this.cED = abs.cFV;
        }
        return this.cED = this.cGj.cFV;
    }
    
    private final e ga(final int ces) {
        final e cGi = this.cGi;
        if (cGi.cGl != null) {
            this.cGi = this.cGi.cGl;
        }
        else {
            final e cGi2 = this.cGi;
            final e abs = this.cGg.abs();
            cGi2.cGl = abs;
            this.cGi = abs;
        }
        this.cED = -1;
        if (this.cGi.cFV == ces) {
            ++this.cEI;
            return this.cGi;
        }
        this.cGi = cGi;
        this.cES = ces;
        this.cEQ.removeAllElements();
        final boolean[] array = new boolean[24];
        for (int i = 0; i < 24; ++i) {
            array[i] = false;
        }
        if (this.cES >= 0) {
            array[this.cES] = true;
            this.cES = -1;
        }
        for (int j = 0; j < 3; ++j) {
            if (this.cEJ[j] == this.cEI) {
                for (int k = 0; k < 32; ++k) {
                    if ((a.cEK[j] & 1 << k) != 0x0) {
                        array[k] = true;
                    }
                }
            }
        }
        for (int l = 0; l < 24; ++l) {
            if (array[l]) {
                (this.cER = new int[1])[0] = l;
                this.cEQ.addElement(this.cER);
            }
        }
        final int[][] array2 = new int[this.cEQ.size()][];
        for (int n = 0; n < this.cEQ.size(); ++n) {
            array2[n] = this.cEQ.elementAt(n);
        }
        throw new ParseException(this.cGi, array2, a.tokenImage);
    }
    
    public final String abn() {
        return this.cGd;
    }
    
    public final ArrayList<String> abo() {
        return this.cGe;
    }
    
    public final ArrayList<String> abp() {
        return this.cGf;
    }
    
    public final void abq() {
        final e ga = this.ga(21);
        this.ga(3);
        final e ga2 = this.ga(21);
        this.type = ga.cGa;
        this.cGd = ga2.cGa;
        while (true) {
            int n;
            if (this.cED == -1) {
                n = this.aaZ();
            }
            else {
                n = this.cED;
            }
            switch (n) {
                default: {
                    this.cEJ[1] = this.cEI;
                    this.ga(0);
                }
                case 4: {
                    this.ga(4);
                    final e ga3 = this.ga(21);
                    this.ga(5);
                    int n2;
                    if (this.cED == -1) {
                        n2 = this.aaZ();
                    }
                    else {
                        n2 = this.cED;
                    }
                    e e = null;
                    switch (n2) {
                        default: {
                            this.cEJ[2] = this.cEI;
                            this.ga(-1);
                            throw new ParseException();
                        }
                        case 21: {
                            e = this.ga(21);
                            break;
                        }
                        case 19: {
                            e = this.ga(19);
                            break;
                        }
                    }
                    final String cGa = e.cGa;
                    this.cGe.add(ga3.cGa);
                    this.cGf.add(cGa);
                    continue;
                }
            }
        }
    }
    
    public final String getType() {
        return this.type;
    }
}
