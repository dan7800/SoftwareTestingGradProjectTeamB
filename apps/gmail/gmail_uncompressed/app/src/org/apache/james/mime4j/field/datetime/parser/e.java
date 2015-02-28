package org.apache.james.mime4j.field.datetime.parser;

import java.io.*;

public final class e implements d
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
    protected f cGt;
    
    static {
        cFb = new long[] { 0L, 0L, -1L, -1L };
        cFc = new int[0];
        cFd = new String[] { "", "\r", "\n", ",", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun", "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec", ":", null, "UT", "GMT", "EST", "EDT", "CST", "CDT", "MST", "MDT", "PST", "PDT", null, null, null, null, null, null, null, null, null, null, null, null, null, null };
        cFe = new String[] { "DEFAULT", "INCOMMENT", "NESTED_COMMENT" };
        cFf = new int[] { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 0, -1, 2, -1, -1, -1, -1, -1, -1, -1, -1 };
        cFg = new long[] { 70437463654399L };
        cFh = new long[] { 343597383680L };
        cFi = new long[] { 68719476736L };
        cFj = new long[] { 69956427317248L };
    }
    
    public e(final f cGt) {
        this.cFa = System.out;
        this.cFl = new int[4];
        this.cFm = new int[8];
        this.cFr = 0;
        this.cFs = 0;
        this.cGt = cGt;
    }
    
    private final void aba() {
        this.cFu = -2147483647;
        int n = 4;
        while (true) {
            final int n2 = n - 1;
            if (n <= 0) {
                break;
            }
            this.cFl[n2] = Integer.MIN_VALUE;
            n = n2;
        }
    }
    
    private g abw() {
        final int cFw = this.cFw;
        final g g = new g();
        g.cFV = this.cFw;
        String abl = e.cFd[this.cFw];
        if (abl == null) {
            abl = this.cGt.abl();
        }
        g.cGa = abl;
        g.cFW = this.cGt.abk();
        g.cFX = this.cGt.abj();
        g.cFY = this.cGt.abi();
        g.cFZ = this.cGt.abh();
        return g;
    }
    
    private final int at(final int n, int cFv) {
        this.cFt = 4;
        this.cFm[0] = n;
        int cFt = 0;
        int cFt2 = 1;
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
                        case 0: {
                            if ((0x3FF000000000000L & n2) != 0x0L) {
                                if (cFw > 46) {
                                    cFw = 46;
                                }
                                this.fR(3);
                                break;
                            }
                            if ((0x100000200L & n2) != 0x0L) {
                                if (cFw > 36) {
                                    cFw = 36;
                                }
                                this.fR(2);
                                break;
                            }
                            if ((0x280000000000L & n2) != 0x0L && cFw > 24) {
                                cFw = 24;
                                break;
                            }
                            break;
                        }
                        case 2: {
                            if ((0x100000200L & n2) != 0x0L) {
                                this.fR(2);
                                cFw = 36;
                                break;
                            }
                            break;
                        }
                        case 3: {
                            if ((0x3FF000000000000L & n2) != 0x0L) {
                                this.fR(3);
                                cFw = 46;
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
                        case 0: {
                            if ((0x7FFFBFE07FFFBFEL & n3) != 0x0L) {
                                cFw = 35;
                                break;
                            }
                            break;
                        }
                    }
                } while (cFt2 != cFt);
            }
            else {
                final char cFq = this.cFq;
                final char cFq2 = this.cFq;
                do {
                    final int[] cFm3 = this.cFm;
                } while (--cFt2 != cFt);
            }
            if (cFw != Integer.MAX_VALUE) {
                this.cFw = cFw;
                this.cFv = cFv;
                cFw = Integer.MAX_VALUE;
            }
            ++cFv;
            cFt2 = this.cFt;
            this.cFt = cFt;
            cFt = 4 - cFt;
            if (cFt2 == cFt) {
                break;
            }
            try {
                this.cFq = this.cGt.readChar();
            }
            catch (IOException ex) {
                return cFv;
            }
        }
        return cFv;
    }
    
    private final int au(final int cFv, final int cFw) {
        this.cFw = cFw;
        return (this.cFv = cFv) + 1;
    }
    
    private final int bj(final long n) {
        while (true) {
            while (true) {
                Label_0164: {
                    try {
                        switch (this.cFq = this.cGt.readChar()) {
                            default: {
                                return this.e(0, n);
                            }
                            case 'D': {
                                break;
                            }
                            case 'M': {
                                return this.l(n, 67108864L);
                            }
                            case 'S': {
                                return this.l(n, 11408506880L);
                            }
                            case 'T': {
                                break Label_0164;
                            }
                            case 'a': {
                                return this.l(n, 43520L);
                            }
                            case 'c': {
                                return this.l(n, 1048576L);
                            }
                            case 'e': {
                                return this.l(n, 4722752L);
                            }
                            case 'h': {
                                return this.l(n, 128L);
                            }
                            case 'o': {
                                return this.l(n, 2097168L);
                            }
                            case 'p': {
                                return this.l(n, 16384L);
                            }
                            case 'r': {
                                return this.l(n, 256L);
                            }
                            case 'u': {
                                return this.l(n, 459808L);
                            }
                        }
                    }
                    catch (IOException ex) {
                        this.d(0, n);
                        return 1;
                    }
                    return this.l(n, 22817013760L);
                }
                if ((0x2000000L & n) != 0x0L) {
                    return this.au(1, 25);
                }
                continue;
            }
        }
    }
    
    private final int d(final int n, final long n2) {
        switch (n) {
            case 0: {
                if ((0x7FE7CF7F0L & n2) != 0x0L) {
                    this.cFw = 35;
                    return -1;
                }
                break;
            }
            case 1: {
                if ((0x7FE7CF7F0L & n2) != 0x0L && this.cFv == 0) {
                    this.cFw = 35;
                    this.cFv = 0;
                    return -1;
                }
                break;
            }
        }
        return -1;
    }
    
    private final int e(final int n, final long n2) {
        return this.at(this.d(n, n2), n + 1);
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
                            if (cFw > 45) {
                                cFw = 45;
                                break;
                            }
                            break;
                        }
                        case 1: {
                            if (cFw > 42) {
                                cFw = 42;
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
                            if (cFw > 45) {
                                cFw = 45;
                            }
                            if (this.cFq == '\\') {
                                this.cFm[this.cFt++] = 1;
                                break;
                            }
                            break;
                        }
                        case 1: {
                            if (cFw > 42) {
                                cFw = 42;
                                break;
                            }
                            break;
                        }
                        case 2: {
                            if (cFw > 45) {
                                cFw = 45;
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
                            if ((n & e.cFb[c]) != 0x0L && cFw > 45) {
                                cFw = 45;
                                break;
                            }
                            break;
                        }
                        case 1: {
                            if ((n & e.cFb[c]) != 0x0L && cFw > 42) {
                                cFw = 42;
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
                this.cFq = this.cGt.readChar();
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
                            if (cFw > 41) {
                                cFw = 41;
                                break;
                            }
                            break;
                        }
                        case 1: {
                            if (cFw > 39) {
                                cFw = 39;
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
                            if (cFw > 41) {
                                cFw = 41;
                            }
                            if (this.cFq == '\\') {
                                this.cFm[this.cFt++] = 1;
                                break;
                            }
                            break;
                        }
                        case 1: {
                            if (cFw > 39) {
                                cFw = 39;
                                break;
                            }
                            break;
                        }
                        case 2: {
                            if (cFw > 41) {
                                cFw = 41;
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
                            if ((n & e.cFb[c]) != 0x0L && cFw > 41) {
                                cFw = 41;
                                break;
                            }
                            break;
                        }
                        case 1: {
                            if ((n & e.cFb[c]) != 0x0L && cFw > 39) {
                                cFw = 39;
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
                this.cFq = this.cGt.readChar();
            }
            catch (IOException ex) {
                return cFv;
            }
        }
        return cFv;
    }
    
    private final int l(final long n, final long n2) {
        final long n3 = n2 & n;
        if (n3 == 0L) {
            return this.e(0, n);
        }
        while (true) {
            while (true) {
                Label_0695: {
                    Label_0676: {
                        Label_0657: {
                            Label_0619: {
                                Label_0581: {
                                    Label_0562: {
                                        Label_0487: {
                                            Label_0468: {
                                                Label_0449: {
                                                    Label_0430: {
                                                        Label_0412: {
                                                            Label_0393: {
                                                                Label_0374: {
                                                                    Label_0355: {
                                                                        try {
                                                                            switch (this.cFq = this.cGt.readChar()) {
                                                                                default: {
                                                                                    return this.e(1, n3);
                                                                                }
                                                                                case 'T': {
                                                                                    break;
                                                                                }
                                                                                case 'b': {
                                                                                    break Label_0355;
                                                                                }
                                                                                case 'c': {
                                                                                    break Label_0374;
                                                                                }
                                                                                case 'd': {
                                                                                    break Label_0393;
                                                                                }
                                                                                case 'e': {
                                                                                    break Label_0412;
                                                                                }
                                                                                case 'g': {
                                                                                    break Label_0430;
                                                                                }
                                                                                case 'i': {
                                                                                    break Label_0449;
                                                                                }
                                                                                case 'l': {
                                                                                    break Label_0468;
                                                                                }
                                                                                case 'n': {
                                                                                    break Label_0487;
                                                                                }
                                                                                case 'p': {
                                                                                    break Label_0562;
                                                                                }
                                                                                case 'r': {
                                                                                    break Label_0581;
                                                                                }
                                                                                case 't': {
                                                                                    break Label_0619;
                                                                                }
                                                                                case 'u': {
                                                                                    break Label_0657;
                                                                                }
                                                                                case 'v': {
                                                                                    break Label_0676;
                                                                                }
                                                                                case 'y': {
                                                                                    break Label_0695;
                                                                                }
                                                                            }
                                                                        }
                                                                        catch (IOException ex) {
                                                                            this.d(1, n3);
                                                                            return 2;
                                                                        }
                                                                        if ((0x4000000L & n3) != 0x0L) {
                                                                            return this.au(2, 26);
                                                                        }
                                                                        if ((0x8000000L & n3) != 0x0L) {
                                                                            return this.au(2, 27);
                                                                        }
                                                                        if ((0x10000000L & n3) != 0x0L) {
                                                                            return this.au(2, 28);
                                                                        }
                                                                        if ((0x20000000L & n3) != 0x0L) {
                                                                            return this.au(2, 29);
                                                                        }
                                                                        if ((0x40000000L & n3) != 0x0L) {
                                                                            return this.au(2, 30);
                                                                        }
                                                                        if ((0x80000000L & n3) != 0x0L) {
                                                                            return this.au(2, 31);
                                                                        }
                                                                        if ((0x100000000L & n3) != 0x0L) {
                                                                            return this.au(2, 32);
                                                                        }
                                                                        if ((0x200000000L & n3) != 0x0L) {
                                                                            return this.au(2, 33);
                                                                        }
                                                                        if ((0x400000000L & n3) != 0x0L) {
                                                                            return this.au(2, 34);
                                                                        }
                                                                        continue;
                                                                    }
                                                                    if ((0x1000L & n3) != 0x0L) {
                                                                        return this.au(2, 12);
                                                                    }
                                                                    continue;
                                                                }
                                                                if ((0x400000L & n3) != 0x0L) {
                                                                    return this.au(2, 22);
                                                                }
                                                                continue;
                                                            }
                                                            if ((0x40L & n3) != 0x0L) {
                                                                return this.au(2, 6);
                                                            }
                                                            continue;
                                                        }
                                                        if ((0x20L & n3) != 0x0L) {
                                                            return this.au(2, 5);
                                                        }
                                                        continue;
                                                    }
                                                    if ((0x40000L & n3) != 0x0L) {
                                                        return this.au(2, 18);
                                                    }
                                                    continue;
                                                }
                                                if ((0x100L & n3) != 0x0L) {
                                                    return this.au(2, 8);
                                                }
                                                continue;
                                            }
                                            if ((0x20000L & n3) != 0x0L) {
                                                return this.au(2, 17);
                                            }
                                            continue;
                                        }
                                        if ((0x10L & n3) != 0x0L) {
                                            return this.au(2, 4);
                                        }
                                        if ((0x400L & n3) != 0x0L) {
                                            return this.au(2, 10);
                                        }
                                        if ((0x800L & n3) != 0x0L) {
                                            return this.au(2, 11);
                                        }
                                        if ((0x10000L & n3) != 0x0L) {
                                            return this.au(2, 16);
                                        }
                                        continue;
                                    }
                                    if ((0x80000L & n3) != 0x0L) {
                                        return this.au(2, 19);
                                    }
                                    continue;
                                }
                                if ((0x2000L & n3) != 0x0L) {
                                    return this.au(2, 13);
                                }
                                if ((0x4000L & n3) != 0x0L) {
                                    return this.au(2, 14);
                                }
                                continue;
                            }
                            if ((0x200L & n3) != 0x0L) {
                                return this.au(2, 9);
                            }
                            if ((0x100000L & n3) != 0x0L) {
                                return this.au(2, 20);
                            }
                            continue;
                        }
                        if ((0x80L & n3) != 0x0L) {
                            return this.au(2, 7);
                        }
                        continue;
                    }
                    if ((0x200000L & n3) != 0x0L) {
                        return this.au(2, 21);
                    }
                    continue;
                }
                if ((0x8000L & n3) != 0x0L) {
                    return this.au(2, 15);
                }
                continue;
            }
        }
    }
    
    public final g abx() {
        String s = null;
        int n = 0;
        g cGv = null;
    Label_1322:
        while (true) {
            int n2 = 0;
            Label_1514: {
                int n6;
                while (true) {
                Label_0083_Outer:
                    while (true) {
                    Label_0794:
                        while (true) {
                            Label_0718: {
                                Label_0644: {
                                    try {
                                        final f cGt = this.cGt;
                                        cGt.cFH = -1;
                                        final char char1 = cGt.readChar();
                                        cGt.cFH = cGt.cFI;
                                        this.cFq = char1;
                                        this.cFn = null;
                                        this.cFo = 0;
                                        switch (this.cFr) {
                                            default: {
                                                n2 = n;
                                                if (this.cFw == Integer.MAX_VALUE) {
                                                    break Label_1514;
                                                }
                                                if (1 + this.cFv < n2) {
                                                    this.cGt.fX(-1 + (n2 - this.cFv));
                                                }
                                                if ((e.cFg[this.cFw >> 6] & 1L << (0x3F & this.cFw)) != 0x0L) {
                                                    final g abw = this.abw();
                                                    abw.cGv = cGv;
                                                    if (e.cFf[this.cFw] != -1) {
                                                        this.cFr = e.cFf[this.cFw];
                                                    }
                                                    return abw;
                                                }
                                                break Label_0794;
                                            }
                                            case 0: {
                                                break;
                                            }
                                            case 1: {
                                                break Label_0644;
                                            }
                                            case 2: {
                                                break Label_0718;
                                            }
                                        }
                                    }
                                    catch (IOException ex) {
                                        this.cFw = 0;
                                        final g abw2 = this.abw();
                                        abw2.cGv = cGv;
                                        return abw2;
                                    }
                                    this.cFw = Integer.MAX_VALUE;
                                    this.cFv = 0;
                                    int n3 = 0;
                                    switch (this.cFq) {
                                        default: {
                                            n3 = this.at(0, 0);
                                            break;
                                        }
                                        case '\n': {
                                            n3 = this.au(0, 2);
                                            break;
                                        }
                                        case '\r': {
                                            n3 = this.au(0, 1);
                                            break;
                                        }
                                        case '(': {
                                            n3 = this.au(0, 37);
                                            break;
                                        }
                                        case ',': {
                                            n3 = this.au(0, 3);
                                            break;
                                        }
                                        case ':': {
                                            n3 = this.au(0, 23);
                                            break;
                                        }
                                        case 'A': {
                                            n3 = this.bj(278528L);
                                            break;
                                        }
                                        case 'C': {
                                            n3 = this.bj(1610612736L);
                                            break;
                                        }
                                        case 'D': {
                                            n3 = this.bj(4194304L);
                                            break;
                                        }
                                        case 'E': {
                                            n3 = this.bj(402653184L);
                                            break;
                                        }
                                        case 'F': {
                                            n3 = this.bj(4352L);
                                            break;
                                        }
                                        case 'G': {
                                            n3 = this.bj(67108864L);
                                            break;
                                        }
                                        case 'J': {
                                            n3 = this.bj(198656L);
                                            break;
                                        }
                                        case 'M': {
                                            n3 = this.bj(6442491920L);
                                            break;
                                        }
                                        case 'N': {
                                            n3 = this.bj(2097152L);
                                            break;
                                        }
                                        case 'O': {
                                            n3 = this.bj(1048576L);
                                            break;
                                        }
                                        case 'P': {
                                            n3 = this.bj(25769803776L);
                                            break;
                                        }
                                        case 'S': {
                                            n3 = this.bj(525824L);
                                            break;
                                        }
                                        case 'T': {
                                            n3 = this.bj(160L);
                                            break;
                                        }
                                        case 'U': {
                                            n3 = this.bj(33554432L);
                                            break;
                                        }
                                        case 'W': {
                                            n3 = this.bj(64L);
                                            break;
                                        }
                                    }
                                    n2 = n3;
                                    continue;
                                }
                                this.cFw = Integer.MAX_VALUE;
                                this.cFv = 0;
                                int n4 = 0;
                                switch (this.cFq) {
                                    default: {
                                        n4 = this.fW(0);
                                        break;
                                    }
                                    case '(': {
                                        n4 = this.au(0, 40);
                                        break;
                                    }
                                    case ')': {
                                        n4 = this.au(0, 38);
                                        break;
                                    }
                                }
                                n2 = n4;
                                continue;
                            }
                            this.cFw = Integer.MAX_VALUE;
                            this.cFv = 0;
                            int n5 = 0;
                            switch (this.cFq) {
                                default: {
                                    n5 = this.fT(0);
                                    break;
                                }
                                case '(': {
                                    n5 = this.au(0, 43);
                                    break;
                                }
                                case ')': {
                                    n5 = this.au(0, 44);
                                    break;
                                }
                            }
                            n2 = n5;
                            continue;
                        }
                        if ((e.cFh[this.cFw >> 6] & 1L << (0x3F & this.cFw)) != 0x0L) {
                            g abw3;
                            if ((e.cFi[this.cFw >> 6] & 1L << (0x3F & this.cFw)) != 0x0L) {
                                abw3 = this.abw();
                                if (cGv != null) {
                                    abw3.cGv = cGv;
                                    cGv.cGu = abw3;
                                }
                            }
                            else {
                                abw3 = cGv;
                            }
                            if (e.cFf[this.cFw] != -1) {
                                this.cFr = e.cFf[this.cFw];
                                cGv = abw3;
                                n = n2;
                            }
                            else {
                                cGv = abw3;
                                n = n2;
                            }
                        }
                        else {
                            final int cFo = this.cFo;
                            final int cFp = 1 + this.cFv;
                            this.cFp = cFp;
                            this.cFo = cFo + cFp;
                            Block_16_Outer:Block_17_Outer:Block_18_Outer:Label_1085_Outer:
                            while (true) {
                            Label_1134_Outer:
                                while (true) {
                                Label_1197_Outer:
                                    while (true) {
                                    Label_1250_Outer:
                                        while (true) {
                                            while (true) {
                                                switch (this.cFw) {
                                                    case 39: {
                                                        Label_1022: {
                                                            break Label_1022;
                                                            this.cFw = Integer.MAX_VALUE;
                                                            try {
                                                                this.cFq = this.cGt.readChar();
                                                                n = 0;
                                                                continue Label_0083_Outer;
                                                                // iftrue(Label_0976:, e.cEZ = -1 + e.cEZ != 0)
                                                                // iftrue(Label_1103:, this.cFn != null)
                                                                // iftrue(Label_1152:, this.cFn != null)
                                                                // iftrue(Label_1215:, this.cFn != null)
                                                                // iftrue(Label_1268:, this.cFn != null)
                                                                // iftrue(Label_1040:, this.cFn != null)
                                                                Label_1152: {
                                                                    Label_1215: {
                                                                        while (true) {
                                                                            while (true) {
                                                                                while (true) {
                                                                                    Label_1103: {
                                                                                        while (true) {
                                                                                            while (true) {
                                                                                            Label_1268_Outer:
                                                                                                while (true) {
                                                                                                    this.cFn = new StringBuffer();
                                                                                                    break Label_1103;
                                                                                                    while (true) {
                                                                                                        this.cFn.append(this.cGt.fY(this.cFo));
                                                                                                        this.cFo = 0;
                                                                                                        Block_19: {
                                                                                                            break Block_19;
                                                                                                            this.cFn = new StringBuffer();
                                                                                                            break Label_1152;
                                                                                                        }
                                                                                                        this.cFr = 1;
                                                                                                        break;
                                                                                                        this.cFn = new StringBuffer();
                                                                                                        break Label_1215;
                                                                                                        this.cFn.append(this.cGt.fY(this.cFo));
                                                                                                        this.cFo = 0;
                                                                                                        this.cFn.deleteCharAt(-2 + this.cFn.length());
                                                                                                        break;
                                                                                                        this.cFn = new StringBuffer();
                                                                                                        continue Block_16_Outer;
                                                                                                    }
                                                                                                    continue Label_1268_Outer;
                                                                                                }
                                                                                                this.cFn = new StringBuffer();
                                                                                                continue Block_18_Outer;
                                                                                            }
                                                                                            continue Block_17_Outer;
                                                                                        }
                                                                                    }
                                                                                    this.cFn.append(this.cGt.fY(this.cFo));
                                                                                    this.cFo = 0;
                                                                                    e.cEZ = 1;
                                                                                    break;
                                                                                    continue Block_18_Outer;
                                                                                }
                                                                                continue Label_1085_Outer;
                                                                            }
                                                                            continue Label_1134_Outer;
                                                                        }
                                                                    }
                                                                    this.cFn.append(this.cGt.fY(this.cFo));
                                                                    this.cFo = 0;
                                                                    ++e.cEZ;
                                                                    break;
                                                                }
                                                                this.cFn.append(this.cGt.fY(this.cFo));
                                                                this.cFo = 0;
                                                                this.cFn.deleteCharAt(-2 + this.cFn.length());
                                                                break;
                                                            }
                                                            catch (IOException ex2) {
                                                                n6 = 0;
                                                            }
                                                        }
                                                        break Label_1322;
                                                    }
                                                    case 40: {
                                                        continue Label_1134_Outer;
                                                    }
                                                    case 42: {
                                                        continue Label_1197_Outer;
                                                    }
                                                    case 43: {
                                                        continue Label_1250_Outer;
                                                    }
                                                    case 44: {
                                                        continue;
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
                                Label_0976: {
                                    if (e.cFf[this.cFw] != -1) {
                                        this.cFr = e.cFf[this.cFw];
                                    }
                                }
                                continue;
                            }
                        }
                        break;
                    }
                }
            Label_1390_Outer:
                while (true) {
                    final int abi = this.cGt.abi();
                    final int abh = this.cGt.abh();
                    while (true) {
                    Label_1496:
                        while (true) {
                            try {
                                this.cGt.readChar();
                                this.cGt.fX(1);
                                final boolean b = false;
                                final int n7 = abh;
                                final int n8 = abi;
                                if (!b) {
                                    this.cGt.fX(1);
                                    if (n6 > 1) {
                                        break Label_1496;
                                    }
                                    final String abl = "";
                                    s = abl;
                                }
                                final int cFr = this.cFr;
                                throw new TokenMgrError(b, n8, n7, s, this.cFq);
                            }
                            catch (IOException ex3) {
                                String abl2;
                                if (n6 <= 1) {
                                    abl2 = "";
                                }
                                else {
                                    abl2 = this.cGt.abl();
                                }
                                if (this.cFq == '\n' || this.cFq == '\r') {
                                    final int n8 = abi + 1;
                                    s = abl2;
                                    final boolean b = true;
                                    final int n7 = 0;
                                    continue Label_1390_Outer;
                                }
                                final int n7 = abh + 1;
                                s = abl2;
                                final int n8 = abi;
                                final boolean b = true;
                                continue Label_1390_Outer;
                            }
                            break;
                        }
                        final String abl = this.cGt.abl();
                        continue;
                    }
                }
            }
            int n6 = n2;
            continue Label_1322;
        }
    }
}
