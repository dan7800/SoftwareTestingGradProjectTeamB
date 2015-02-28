package org.apache.james.mime4j.field.contenttype.parser;

import java.io.*;

public final class c implements b
{
    static int cEZ;
    static final long[] cFb;
    static final int[] cFc;
    public static final String[] cFd;
    public static final String[] cFe;
    public static final int[] cFf;
    static final long[] cFg;
    static final long[] cFh;
    static final long[] cFi;
    static final long[] cFj;
    public PrintStream cFa;
    private final int[] cFl;
    private final int[] cFm;
    StringBuffer cFn;
    int cFo;
    int cFp;
    protected char cFq;
    int cFr;
    int cFs;
    int cFt;
    int cFu;
    int cFv;
    int cFw;
    protected d cGk;
    
    static {
        cFb = new long[] { 0L, 0L, -1L, -1L };
        cFc = new int[0];
        cFd = new String[] { "", "\r", "\n", "/", ";", "=", null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null };
        cFe = new String[] { "DEFAULT", "INCOMMENT", "NESTED_COMMENT", "INQUOTEDSTRING" };
        cFf = new int[] { -1, -1, -1, -1, -1, -1, -1, 1, 0, -1, 2, -1, -1, -1, -1, -1, 3, -1, -1, 0, -1, -1, -1, -1 };
        cFg = new long[] { 3670079L };
        cFh = new long[] { 320L };
        cFi = new long[] { 64L };
        cFj = new long[] { 523904L };
    }
    
    public c(final d cGk) {
        this.cFa = System.out;
        this.cFl = new int[3];
        this.cFm = new int[6];
        this.cFr = 0;
        this.cFs = 0;
        this.cGk = cGk;
    }
    
    private final void aba() {
        this.cFu = -2147483647;
        int n = 3;
        while (true) {
            final int n2 = n - 1;
            if (n <= 0) {
                break;
            }
            this.cFl[n2] = Integer.MIN_VALUE;
            n = n2;
        }
    }
    
    private e abr() {
        final int cFw = this.cFw;
        final e e = new e();
        e.cFV = this.cFw;
        String abl = c.cFd[this.cFw];
        if (abl == null) {
            abl = this.cGk.abl();
        }
        e.cGa = abl;
        e.cFW = this.cGk.abk();
        e.cFX = this.cGk.abj();
        e.cFY = this.cGk.abi();
        e.cFZ = this.cGk.abh();
        return e;
    }
    
    private final int at(final int n, int cFv) {
        int cFt = 0;
        this.cFt = 3;
        int cFt2 = 1;
        this.cFm[0] = n;
        int cFw = Integer.MAX_VALUE;
        while (true) {
            final int cFu = 1 + this.cFu;
            this.cFu = cFu;
            if (cFu == Integer.MAX_VALUE) {
                this.aba();
            }
            if (this.cFq < '@') {
                final long n2 = 1L << this.cFq;
                do {
                    final int[] cFm = this.cFm;
                    --cFt2;
                    switch (cFm[cFt2]) {
                        case 3: {
                            if ((0x3FF6CFAFFFFFDFFL & n2) != 0x0L) {
                                if (cFw > 21) {
                                    cFw = 21;
                                }
                                this.fR(2);
                            }
                            else if ((0x100000200L & n2) != 0x0L) {
                                if (cFw > 6) {
                                    cFw = 6;
                                }
                                this.fR(0);
                            }
                            if ((0x3FF000000000000L & n2) != 0x0L) {
                                if (cFw > 20) {
                                    cFw = 20;
                                }
                                this.fR(1);
                                break;
                            }
                            break;
                        }
                        case 0: {
                            if ((0x100000200L & n2) != 0x0L) {
                                cFw = 6;
                                this.fR(0);
                                break;
                            }
                            break;
                        }
                        case 1: {
                            if ((0x3FF000000000000L & n2) != 0x0L) {
                                if (cFw > 20) {
                                    cFw = 20;
                                }
                                this.fR(1);
                                break;
                            }
                            break;
                        }
                        case 2: {
                            if ((0x3FF6CFAFFFFFDFFL & n2) != 0x0L) {
                                if (cFw > 21) {
                                    cFw = 21;
                                }
                                this.fR(2);
                                break;
                            }
                            break;
                        }
                    }
                } while (cFt2 != cFt);
            }
            else if (this.cFq < '\u0080') {
                final long n3 = 1L << ('?' & this.cFq);
                do {
                    final int[] cFm2 = this.cFm;
                    --cFt2;
                    switch (cFm2[cFt2]) {
                        case 2:
                        case 3: {
                            if ((0xFFFFFFFFC7FFFFFEL & n3) != 0x0L) {
                                cFw = 21;
                                this.fR(2);
                                break;
                            }
                            break;
                        }
                    }
                } while (cFt2 != cFt);
            }
            else {
                final char c = (char)(('\u00ff' & this.cFq) >> 6);
                final long n4 = 1L << ('?' & this.cFq);
                do {
                    final int[] cFm3 = this.cFm;
                    --cFt2;
                    switch (cFm3[cFt2]) {
                        case 2:
                        case 3: {
                            if ((n4 & org.apache.james.mime4j.field.contenttype.parser.c.cFb[c]) != 0x0L) {
                                if (cFw > 21) {
                                    cFw = 21;
                                }
                                this.fR(2);
                                break;
                            }
                            break;
                        }
                    }
                } while (cFt2 != cFt);
            }
            if (cFw != Integer.MAX_VALUE) {
                this.cFw = cFw;
                this.cFv = cFv;
                cFw = Integer.MAX_VALUE;
            }
            ++cFv;
            cFt2 = this.cFt;
            this.cFt = cFt;
            cFt = 3 - cFt;
            if (cFt2 == cFt) {
                break;
            }
            try {
                this.cFq = this.cGk.readChar();
            }
            catch (IOException ex) {
                return cFv;
            }
        }
        return cFv;
    }
    
    private final int fQ(final int cFw) {
        this.cFw = cFw;
        this.cFv = 0;
        return 1;
    }
    
    private final void fR(final int n) {
        if (this.cFl[n] != this.cFu) {
            this.cFm[this.cFt++] = n;
            this.cFl[n] = this.cFu;
        }
    }
    
    private final int fT(int cFv) {
        this.cFt = 3;
        this.cFm[0] = 0;
        int cFt = 1;
        int cFt2 = 0;
        int cFw = Integer.MAX_VALUE;
        while (true) {
            final int cFu = 1 + this.cFu;
            this.cFu = cFu;
            if (cFu == Integer.MAX_VALUE) {
                this.aba();
            }
            if (this.cFq < '@') {
                final char cFq = this.cFq;
                do {
                    final int[] cFm = this.cFm;
                    --cFt;
                    switch (cFm[cFt]) {
                        case 0: {
                            if (cFw > 15) {
                                cFw = 15;
                                break;
                            }
                            break;
                        }
                        case 1: {
                            if (cFw > 12) {
                                cFw = 12;
                                break;
                            }
                            break;
                        }
                    }
                } while (cFt != cFt2);
            }
            else if (this.cFq < '\u0080') {
                final char cFq2 = this.cFq;
                do {
                    final int[] cFm2 = this.cFm;
                    --cFt;
                    switch (cFm2[cFt]) {
                        case 0: {
                            if (cFw > 15) {
                                cFw = 15;
                            }
                            if (this.cFq == '\\') {
                                this.cFm[this.cFt++] = 1;
                                break;
                            }
                            break;
                        }
                        case 1: {
                            if (cFw > 12) {
                                cFw = 12;
                                break;
                            }
                            break;
                        }
                        case 2: {
                            if (cFw > 15) {
                                cFw = 15;
                                break;
                            }
                            break;
                        }
                    }
                } while (cFt != cFt2);
            }
            else {
                final char c = (char)(('\u00ff' & this.cFq) >> 6);
                final long n = 1L << ('?' & this.cFq);
                do {
                    final int[] cFm3 = this.cFm;
                    --cFt;
                    switch (cFm3[cFt]) {
                        case 0: {
                            if ((n & org.apache.james.mime4j.field.contenttype.parser.c.cFb[c]) != 0x0L && cFw > 15) {
                                cFw = 15;
                                break;
                            }
                            break;
                        }
                        case 1: {
                            if ((n & org.apache.james.mime4j.field.contenttype.parser.c.cFb[c]) != 0x0L && cFw > 12) {
                                cFw = 12;
                                break;
                            }
                            break;
                        }
                    }
                } while (cFt != cFt2);
            }
            if (cFw != Integer.MAX_VALUE) {
                this.cFw = cFw;
                this.cFv = cFv;
                cFw = Integer.MAX_VALUE;
            }
            ++cFv;
            cFt = this.cFt;
            this.cFt = cFt2;
            cFt2 = 3 - cFt2;
            if (cFt == cFt2) {
                break;
            }
            try {
                this.cFq = this.cGk.readChar();
            }
            catch (IOException ex) {
                return cFv;
            }
        }
        return cFv;
    }
    
    private final int fV(int cFv) {
        int cFt = 0;
        this.cFt = 3;
        int cFt2 = 1;
        this.cFm[0] = 0;
        int cFw = Integer.MAX_VALUE;
        while (true) {
            final int cFu = 1 + this.cFu;
            this.cFu = cFu;
            if (cFu == Integer.MAX_VALUE) {
                this.aba();
            }
            if (this.cFq < '@') {
                final long n = 1L << this.cFq;
                do {
                    final int[] cFm = this.cFm;
                    --cFt2;
                    switch (cFm[cFt2]) {
                        case 0:
                        case 2: {
                            if ((0xFFFFFFFBFFFFFFFFL & n) != 0x0L) {
                                if (cFw > 18) {
                                    cFw = 18;
                                }
                                this.fR(2);
                                break;
                            }
                            break;
                        }
                        case 1: {
                            if (cFw > 17) {
                                cFw = 17;
                                break;
                            }
                            break;
                        }
                    }
                } while (cFt2 != cFt);
            }
            else if (this.cFq < '\u0080') {
                final long n2 = 1L << ('?' & this.cFq);
                do {
                    final int[] cFm2 = this.cFm;
                    --cFt2;
                    switch (cFm2[cFt2]) {
                        case 0: {
                            if ((0xFFFFFFFFEFFFFFFFL & n2) != 0x0L) {
                                if (cFw > 18) {
                                    cFw = 18;
                                }
                                this.fR(2);
                                break;
                            }
                            if (this.cFq == '\\') {
                                this.cFm[this.cFt++] = 1;
                                break;
                            }
                            break;
                        }
                        case 1: {
                            if (cFw > 17) {
                                cFw = 17;
                                break;
                            }
                            break;
                        }
                        case 2: {
                            if ((0xFFFFFFFFEFFFFFFFL & n2) != 0x0L) {
                                if (cFw > 18) {
                                    cFw = 18;
                                }
                                this.fR(2);
                                break;
                            }
                            break;
                        }
                    }
                } while (cFt2 != cFt);
            }
            else {
                final char c = (char)(('\u00ff' & this.cFq) >> 6);
                final long n3 = 1L << ('?' & this.cFq);
                do {
                    final int[] cFm3 = this.cFm;
                    --cFt2;
                    switch (cFm3[cFt2]) {
                        case 0:
                        case 2: {
                            if ((n3 & org.apache.james.mime4j.field.contenttype.parser.c.cFb[c]) != 0x0L) {
                                if (cFw > 18) {
                                    cFw = 18;
                                }
                                this.fR(2);
                                break;
                            }
                            break;
                        }
                        case 1: {
                            if ((n3 & org.apache.james.mime4j.field.contenttype.parser.c.cFb[c]) != 0x0L && cFw > 17) {
                                cFw = 17;
                                break;
                            }
                            break;
                        }
                    }
                } while (cFt2 != cFt);
            }
            if (cFw != Integer.MAX_VALUE) {
                this.cFw = cFw;
                this.cFv = cFv;
                cFw = Integer.MAX_VALUE;
            }
            ++cFv;
            cFt2 = this.cFt;
            this.cFt = cFt;
            cFt = 3 - cFt;
            if (cFt2 == cFt) {
                break;
            }
            try {
                this.cFq = this.cGk.readChar();
            }
            catch (IOException ex) {
                return cFv;
            }
        }
        return cFv;
    }
    
    private final int fW(int cFv) {
        this.cFt = 3;
        this.cFm[0] = 0;
        int cFt = 1;
        int cFt2 = 0;
        int cFw = Integer.MAX_VALUE;
        while (true) {
            final int cFu = 1 + this.cFu;
            this.cFu = cFu;
            if (cFu == Integer.MAX_VALUE) {
                this.aba();
            }
            if (this.cFq < '@') {
                final char cFq = this.cFq;
                do {
                    final int[] cFm = this.cFm;
                    --cFt;
                    switch (cFm[cFt]) {
                        case 0: {
                            if (cFw > 11) {
                                cFw = 11;
                                break;
                            }
                            break;
                        }
                        case 1: {
                            if (cFw > 9) {
                                cFw = 9;
                                break;
                            }
                            break;
                        }
                    }
                } while (cFt != cFt2);
            }
            else if (this.cFq < '\u0080') {
                final char cFq2 = this.cFq;
                do {
                    final int[] cFm2 = this.cFm;
                    --cFt;
                    switch (cFm2[cFt]) {
                        case 0: {
                            if (cFw > 11) {
                                cFw = 11;
                            }
                            if (this.cFq == '\\') {
                                this.cFm[this.cFt++] = 1;
                                break;
                            }
                            break;
                        }
                        case 1: {
                            if (cFw > 9) {
                                cFw = 9;
                                break;
                            }
                            break;
                        }
                        case 2: {
                            if (cFw > 11) {
                                cFw = 11;
                                break;
                            }
                            break;
                        }
                    }
                } while (cFt != cFt2);
            }
            else {
                final char c = (char)(('\u00ff' & this.cFq) >> 6);
                final long n = 1L << ('?' & this.cFq);
                do {
                    final int[] cFm3 = this.cFm;
                    --cFt;
                    switch (cFm3[cFt]) {
                        case 0: {
                            if ((n & org.apache.james.mime4j.field.contenttype.parser.c.cFb[c]) != 0x0L && cFw > 11) {
                                cFw = 11;
                                break;
                            }
                            break;
                        }
                        case 1: {
                            if ((n & org.apache.james.mime4j.field.contenttype.parser.c.cFb[c]) != 0x0L && cFw > 9) {
                                cFw = 9;
                                break;
                            }
                            break;
                        }
                    }
                } while (cFt != cFt2);
            }
            if (cFw != Integer.MAX_VALUE) {
                this.cFw = cFw;
                this.cFv = cFv;
                cFw = Integer.MAX_VALUE;
            }
            ++cFv;
            cFt = this.cFt;
            this.cFt = cFt2;
            cFt2 = 3 - cFt2;
            if (cFt == cFt2) {
                break;
            }
            try {
                this.cFq = this.cGk.readChar();
            }
            catch (IOException ex) {
                return cFv;
            }
        }
        return cFv;
    }
    
    private final int gb(final int cFw) {
        this.cFw = cFw;
        this.cFv = 0;
        try {
            this.cFq = this.cGk.readChar();
            return this.at(2, 1);
        }
        catch (IOException ex) {
            return 1;
        }
    }
    
    public final e abs() {
        String s = null;
        int n = 0;
        e cGm = null;
    Label_1359:
        while (true) {
            int n2 = 0;
            Label_1551: {
                int n7;
                while (true) {
                    d cGk;
                    char char1;
                    e abr = null;
                    e abr2;
                    int n3 = 0;
                    int n4 = 0;
                    int n5 = 0;
                    int n6 = 0;
                    StringBuffer cFn;
                    d cGk2;
                    int cFo;
                    int cFp;
                    e abr3;
                    int cFo2;
                    int cFp2;
                    Label_0087_Outer:Label_0184_Outer:
                    while (true) {
                        Label_0696: {
                            while (true) {
                            Label_0605:
                                while (true) {
                                    Label_0548: {
                                        Label_0476: {
                                            Label_0403: {
                                                try {
                                                    cGk = this.cGk;
                                                    cGk.cFH = -1;
                                                    char1 = cGk.readChar();
                                                    cGk.cFH = cGk.cFI;
                                                    this.cFq = char1;
                                                    this.cFn = null;
                                                    this.cFo = 0;
                                                    switch (this.cFr) {
                                                        default: {
                                                            n2 = n;
                                                            if (this.cFw == Integer.MAX_VALUE) {
                                                                break Label_1551;
                                                            }
                                                            if (1 + this.cFv < n2) {
                                                                this.cGk.fX(-1 + (n2 - this.cFv));
                                                            }
                                                            if ((c.cFg[this.cFw >> 6] & 1L << (0x3F & this.cFw)) == 0x0L) {
                                                                break Label_0696;
                                                            }
                                                            abr = this.abr();
                                                            abr.cGm = cGm;
                                                            switch (this.cFw) {
                                                                default: {
                                                                    if (c.cFf[this.cFw] != -1) {
                                                                        this.cFr = c.cFf[this.cFw];
                                                                    }
                                                                    return abr;
                                                                }
                                                                case 19: {
                                                                    break Label_0605;
                                                                }
                                                            }
                                                            break;
                                                        }
                                                        case 0: {
                                                            break;
                                                        }
                                                        case 1: {
                                                            break Label_0403;
                                                        }
                                                        case 2: {
                                                            break Label_0476;
                                                        }
                                                        case 3: {
                                                            break Label_0548;
                                                        }
                                                    }
                                                }
                                                catch (IOException ex) {
                                                    this.cFw = 0;
                                                    abr2 = this.abr();
                                                    abr2.cGm = cGm;
                                                    return abr2;
                                                }
                                                this.cFw = Integer.MAX_VALUE;
                                                this.cFv = 0;
                                                switch (this.cFq) {
                                                    default: {
                                                        n3 = this.at(3, 0);
                                                        break;
                                                    }
                                                    case '\n': {
                                                        n3 = this.gb(2);
                                                        break;
                                                    }
                                                    case '\r': {
                                                        n3 = this.gb(1);
                                                        break;
                                                    }
                                                    case '\"': {
                                                        n3 = this.fQ(16);
                                                        break;
                                                    }
                                                    case '(': {
                                                        n3 = this.fQ(7);
                                                        break;
                                                    }
                                                    case '/': {
                                                        n3 = this.fQ(3);
                                                        break;
                                                    }
                                                    case ';': {
                                                        n3 = this.fQ(4);
                                                        break;
                                                    }
                                                    case '=': {
                                                        n3 = this.fQ(5);
                                                        break;
                                                    }
                                                }
                                                n2 = n3;
                                                continue Label_0184_Outer;
                                            }
                                            this.cFw = Integer.MAX_VALUE;
                                            this.cFv = 0;
                                            switch (this.cFq) {
                                                default: {
                                                    n4 = this.fW(0);
                                                    break;
                                                }
                                                case '(': {
                                                    n4 = this.fQ(10);
                                                    break;
                                                }
                                                case ')': {
                                                    n4 = this.fQ(8);
                                                    break;
                                                }
                                            }
                                            n2 = n4;
                                            continue Label_0184_Outer;
                                        }
                                        this.cFw = Integer.MAX_VALUE;
                                        this.cFv = 0;
                                        switch (this.cFq) {
                                            default: {
                                                n5 = this.fT(0);
                                                break;
                                            }
                                            case '(': {
                                                n5 = this.fQ(13);
                                                break;
                                            }
                                            case ')': {
                                                n5 = this.fQ(14);
                                                break;
                                            }
                                        }
                                        n2 = n5;
                                        continue Label_0184_Outer;
                                    }
                                    this.cFw = Integer.MAX_VALUE;
                                    this.cFv = 0;
                                    switch (this.cFq) {
                                        default: {
                                            n6 = this.fV(0);
                                            break;
                                        }
                                        case '\"': {
                                            n6 = this.fQ(19);
                                            break;
                                        }
                                    }
                                    n2 = n6;
                                    continue Label_0184_Outer;
                                }
                                if (this.cFn == null) {
                                    this.cFn = new StringBuffer();
                                }
                                cFn = this.cFn;
                                cGk2 = this.cGk;
                                cFo = this.cFo;
                                cFp = 1 + this.cFv;
                                this.cFp = cFp;
                                cFn.append(cGk2.fY(cFo + cFp));
                                abr.cGa = this.cFn.substring(0, -1 + this.cFn.length());
                                continue;
                            }
                        }
                        if ((c.cFh[this.cFw >> 6] & 1L << (0x3F & this.cFw)) != 0x0L) {
                            if ((c.cFi[this.cFw >> 6] & 1L << (0x3F & this.cFw)) != 0x0L) {
                                abr3 = this.abr();
                                if (cGm != null) {
                                    abr3.cGm = cGm;
                                    cGm.cGl = abr3;
                                }
                            }
                            else {
                                abr3 = cGm;
                            }
                            if (c.cFf[this.cFw] != -1) {
                                this.cFr = c.cFf[this.cFw];
                                cGm = abr3;
                                n = n2;
                            }
                            else {
                                cGm = abr3;
                                n = n2;
                            }
                        }
                        else {
                            cFo2 = this.cFo;
                            cFp2 = 1 + this.cFv;
                            this.cFp = cFp2;
                            this.cFo = cFo2 + cFp2;
                        Label_1162_Outer:
                            while (true) {
                            Label_1109_Outer:
                                while (true) {
                                Label_0997_Outer:
                                    while (true) {
                                    Label_1046_Outer:
                                        while (true) {
                                        Label_1291_Outer:
                                            while (true) {
                                            Label_1229_Outer:
                                                while (true) {
                                                    while (true) {
                                                        switch (this.cFw) {
                                                            case 9: {
                                                                Label_0934: {
                                                                    break Label_0934;
                                                                    this.cFw = Integer.MAX_VALUE;
                                                                    try {
                                                                        this.cFq = this.cGk.readChar();
                                                                        n = 0;
                                                                        continue Label_0087_Outer;
                                                                        // iftrue(Label_1180:, this.cFn != null)
                                                                        // iftrue(Label_1127:, this.cFn != null)
                                                                        // iftrue(Label_1015:, this.cFn != null)
                                                                        // iftrue(Label_1064:, this.cFn != null)
                                                                        // iftrue(Label_0952:, this.cFn != null)
                                                                        // iftrue(Label_0888:, c.cEZ = -1 + c.cEZ != 0)
                                                                        // iftrue(Label_1309:, this.cFn != null)
                                                                        // iftrue(Label_1247:, this.cFn != null)
                                                                        Label_1309: {
                                                                            Label_1015: {
                                                                            Block_22:
                                                                                while (true) {
                                                                                    Label_1180: {
                                                                                    Label_1064:
                                                                                        while (true) {
                                                                                            while (true) {
                                                                                                Block_18: {
                                                                                                    Label_1247: {
                                                                                                        while (true) {
                                                                                                            this.cFn.append(this.cGk.fY(this.cFo));
                                                                                                            this.cFo = 0;
                                                                                                            this.cFn.deleteCharAt(-2 + this.cFn.length());
                                                                                                            break;
                                                                                                            while (true) {
                                                                                                                Block_19: {
                                                                                                                    break Block_19;
                                                                                                                    this.cFn = new StringBuffer();
                                                                                                                    break Label_1247;
                                                                                                                    this.cFn = new StringBuffer();
                                                                                                                    break Label_1015;
                                                                                                                }
                                                                                                                this.cFn = new StringBuffer();
                                                                                                                break Label_1180;
                                                                                                                break Block_18;
                                                                                                                continue Label_1109_Outer;
                                                                                                            }
                                                                                                            this.cFn = new StringBuffer();
                                                                                                            continue Label_1162_Outer;
                                                                                                        }
                                                                                                        while (true) {
                                                                                                            this.cFn = new StringBuffer();
                                                                                                            break Label_1064;
                                                                                                            continue Label_1046_Outer;
                                                                                                        }
                                                                                                    }
                                                                                                    this.cFn.append(this.cGk.fY(this.cFo));
                                                                                                    this.cFo = 0;
                                                                                                    this.cFn.deleteCharAt(-1 + this.cFn.length());
                                                                                                    break;
                                                                                                    this.cFn.append(this.cGk.fY(this.cFo));
                                                                                                    this.cFo = 0;
                                                                                                    ++c.cEZ;
                                                                                                    break;
                                                                                                }
                                                                                                this.cFn = new StringBuffer();
                                                                                                continue Label_1291_Outer;
                                                                                            }
                                                                                            continue Label_1046_Outer;
                                                                                        }
                                                                                        this.cFn.append(this.cGk.fY(this.cFo));
                                                                                        this.cFo = 0;
                                                                                        this.cFn.deleteCharAt(-2 + this.cFn.length());
                                                                                        break;
                                                                                    }
                                                                                    this.cFn.append(this.cGk.fY(this.cFo));
                                                                                    this.cFo = 0;
                                                                                    Block_20: {
                                                                                        break Block_20;
                                                                                        break Block_22;
                                                                                    }
                                                                                    this.cFr = 1;
                                                                                    break;
                                                                                    continue Label_1109_Outer;
                                                                                }
                                                                                this.cFn = new StringBuffer();
                                                                                break Label_1309;
                                                                            }
                                                                            this.cFn.append(this.cGk.fY(this.cFo));
                                                                            this.cFo = 0;
                                                                            c.cEZ = 1;
                                                                            break;
                                                                        }
                                                                        this.cFn.append(this.cGk.fY(this.cFo));
                                                                        this.cFo = 0;
                                                                        this.cFn.deleteCharAt(-2 + this.cFn.length());
                                                                        break;
                                                                    }
                                                                    catch (IOException ex2) {
                                                                        n7 = 0;
                                                                    }
                                                                }
                                                                break Label_1359;
                                                            }
                                                            case 10: {
                                                                continue Label_1046_Outer;
                                                            }
                                                            case 12: {
                                                                continue Label_1291_Outer;
                                                            }
                                                            case 13: {
                                                                continue Label_0997_Outer;
                                                            }
                                                            case 14: {
                                                                continue Label_1109_Outer;
                                                            }
                                                            case 16: {
                                                                continue;
                                                            }
                                                            case 17: {
                                                                continue Label_1229_Outer;
                                                            }
                                                        }
                                                        break;
                                                    }
                                                    break;
                                                }
                                                break;
                                            }
                                            break;
                                        }
                                        break;
                                    }
                                    break;
                                }
                                Label_0888: {
                                    if (c.cFf[this.cFw] != -1) {
                                        this.cFr = c.cFf[this.cFw];
                                    }
                                }
                                continue;
                            }
                        }
                        break;
                    }
                }
            Label_1427_Outer:
                while (true) {
                    final int abi = this.cGk.abi();
                    final int abh = this.cGk.abh();
                    while (true) {
                    Label_1533:
                        while (true) {
                            try {
                                this.cGk.readChar();
                                this.cGk.fX(1);
                                final boolean b = false;
                                final int n8 = abh;
                                final int n9 = abi;
                                if (!b) {
                                    this.cGk.fX(1);
                                    if (n7 > 1) {
                                        break Label_1533;
                                    }
                                    final String abl = "";
                                    s = abl;
                                }
                                final int cFr = this.cFr;
                                throw new TokenMgrError(b, n9, n8, s, this.cFq);
                            }
                            catch (IOException ex3) {
                                String abl2;
                                if (n7 <= 1) {
                                    abl2 = "";
                                }
                                else {
                                    abl2 = this.cGk.abl();
                                }
                                if (this.cFq == '\n' || this.cFq == '\r') {
                                    final int n9 = abi + 1;
                                    s = abl2;
                                    final boolean b = true;
                                    final int n8 = 0;
                                    continue Label_1427_Outer;
                                }
                                final int n8 = abh + 1;
                                s = abl2;
                                final int n9 = abi;
                                final boolean b = true;
                                continue Label_1427_Outer;
                            }
                            break;
                        }
                        final String abl = this.cGk.abl();
                        continue;
                    }
                }
            }
            int n7 = n2;
            continue Label_1359;
        }
    }
}
