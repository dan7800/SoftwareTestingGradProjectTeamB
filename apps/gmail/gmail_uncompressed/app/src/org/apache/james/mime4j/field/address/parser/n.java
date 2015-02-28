package org.apache.james.mime4j.field.address.parser;

import java.io.*;

public final class n implements m
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
    protected s cFk;
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
    
    static {
        cFb = new long[] { 0L, 0L, -1L, -1L };
        cFc = new int[0];
        cFd = new String[] { "", "\r", "\n", ",", ":", ";", "<", ">", "@", ".", null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null };
        cFe = new String[] { "DEFAULT", "INDOMAINLITERAL", "INCOMMENT", "NESTED_COMMENT", "INQUOTEDSTRING" };
        cFf = new int[] { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, -1, 0, 2, 0, -1, 3, -1, -1, -1, -1, -1, 4, -1, -1, 0, -1, -1 };
        cFg = new long[] { 2147763199L };
        cFh = new long[] { 1049600L };
        cFi = new long[] { 1024L };
        cFj = new long[] { 2146140160L };
    }
    
    public n(final s cFk) {
        this.cFa = System.out;
        this.cFl = new int[3];
        this.cFm = new int[6];
        this.cFr = 0;
        this.cFs = 0;
        this.cFk = cFk;
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
    
    private u abb() {
        final int cFw = this.cFw;
        final u u = new u();
        u.cFV = this.cFw;
        String abl = n.cFd[this.cFw];
        if (abl == null) {
            abl = this.cFk.abl();
        }
        u.cGa = abl;
        u.cFW = this.cFk.abk();
        u.cFX = this.cFk.abj();
        u.cFY = this.cFk.abi();
        u.cFZ = this.cFk.abh();
        return u;
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
    
    private final int fS(int cFv) {
        this.cFt = 3;
        this.cFm[0] = 1;
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
                final long n = 1L << this.cFq;
                do {
                    final int[] cFm = this.cFm;
                    --cFt;
                    switch (cFm[cFt]) {
                        case 1: {
                            if ((0xA3FFACFA00000000L & n) != 0x0L) {
                                if (cFw > 14) {
                                    cFw = 14;
                                }
                                this.fR(2);
                                break;
                            }
                            if ((0x100000200L & n) != 0x0L) {
                                if (cFw > 10) {
                                    cFw = 10;
                                }
                                this.fR(0);
                                break;
                            }
                            break;
                        }
                        case 0: {
                            if ((0x100000200L & n) != 0x0L) {
                                cFw = 10;
                                this.fR(0);
                                break;
                            }
                            break;
                        }
                        case 2: {
                            if ((0xA3FFECFA00000000L & n) != 0x0L) {
                                if (cFw > 14) {
                                    cFw = 14;
                                }
                                this.fR(2);
                                break;
                            }
                            break;
                        }
                    }
                } while (cFt != cFt2);
            }
            else if (this.cFq < '\u0080') {
                final long n2 = 1L << ('?' & this.cFq);
                do {
                    final int[] cFm2 = this.cFm;
                    --cFt;
                    switch (cFm2[cFt]) {
                        case 1:
                        case 2: {
                            if ((0x7FFFFFFFC7FFFFFEL & n2) != 0x0L) {
                                if (cFw > 14) {
                                    cFw = 14;
                                }
                                this.fR(2);
                                break;
                            }
                            break;
                        }
                    }
                } while (cFt != cFt2);
            }
            else {
                final char cFq = this.cFq;
                final char cFq2 = this.cFq;
                do {
                    final int[] cFm3 = this.cFm;
                } while (--cFt != cFt2);
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
                this.cFq = this.cFk.readChar();
            }
            catch (IOException ex) {
                return cFv;
            }
        }
        return cFv;
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
                            if (cFw > 23) {
                                cFw = 23;
                                break;
                            }
                            break;
                        }
                        case 1: {
                            if (cFw > 21) {
                                cFw = 21;
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
                            if (cFw > 23) {
                                cFw = 23;
                            }
                            if (this.cFq == '\\') {
                                this.cFm[this.cFt++] = 1;
                                break;
                            }
                            break;
                        }
                        case 1: {
                            if (cFw > 21) {
                                cFw = 21;
                                break;
                            }
                            break;
                        }
                        case 2: {
                            if (cFw > 23) {
                                cFw = 23;
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
                            if ((n & org.apache.james.mime4j.field.address.parser.n.cFb[c]) != 0x0L && cFw > 23) {
                                cFw = 23;
                                break;
                            }
                            break;
                        }
                        case 1: {
                            if ((n & org.apache.james.mime4j.field.address.parser.n.cFb[c]) != 0x0L && cFw > 21) {
                                cFw = 21;
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
                this.cFq = this.cFk.readChar();
            }
            catch (IOException ex) {
                return cFv;
            }
        }
        return cFv;
    }
    
    private final int fU(int cFv) {
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
                                if (cFw > 30) {
                                    cFw = 30;
                                }
                                this.fR(2);
                                break;
                            }
                            break;
                        }
                        case 1: {
                            if (cFw > 29) {
                                cFw = 29;
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
                                if (cFw > 30) {
                                    cFw = 30;
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
                            if (cFw > 29) {
                                cFw = 29;
                                break;
                            }
                            break;
                        }
                        case 2: {
                            if ((0xFFFFFFFFEFFFFFFFL & n2) != 0x0L) {
                                if (cFw > 30) {
                                    cFw = 30;
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
                            if ((n3 & n.cFb[c]) != 0x0L) {
                                if (cFw > 30) {
                                    cFw = 30;
                                }
                                this.fR(2);
                                break;
                            }
                            break;
                        }
                        case 1: {
                            if ((n3 & n.cFb[c]) != 0x0L && cFw > 29) {
                                cFw = 29;
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
                this.cFq = this.cFk.readChar();
            }
            catch (IOException ex) {
                return cFv;
            }
        }
        return cFv;
    }
    
    private final int fV(int cFv) {
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
                            if (cFw > 27) {
                                cFw = 27;
                                break;
                            }
                            break;
                        }
                        case 1: {
                            if (cFw > 24) {
                                cFw = 24;
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
                            if (cFw > 27) {
                                cFw = 27;
                            }
                            if (this.cFq == '\\') {
                                this.cFm[this.cFt++] = 1;
                                break;
                            }
                            break;
                        }
                        case 1: {
                            if (cFw > 24) {
                                cFw = 24;
                                break;
                            }
                            break;
                        }
                        case 2: {
                            if (cFw > 27) {
                                cFw = 27;
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
                            if ((n & org.apache.james.mime4j.field.address.parser.n.cFb[c]) != 0x0L && cFw > 27) {
                                cFw = 27;
                                break;
                            }
                            break;
                        }
                        case 1: {
                            if ((n & org.apache.james.mime4j.field.address.parser.n.cFb[c]) != 0x0L && cFw > 24) {
                                cFw = 24;
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
                this.cFq = this.cFk.readChar();
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
                final char cFq = this.cFq;
                do {
                    final int[] cFm = this.cFm;
                    --cFt2;
                    switch (cFm[cFt2]) {
                        case 0: {
                            if (cFw > 17) {
                                cFw = 17;
                                break;
                            }
                            break;
                        }
                        case 1: {
                            if (cFw > 16) {
                                cFw = 16;
                                break;
                            }
                            break;
                        }
                    }
                } while (cFt2 != cFt);
            }
            else if (this.cFq < '\u0080') {
                final long n = 1L << ('?' & this.cFq);
                do {
                    final int[] cFm2 = this.cFm;
                    --cFt2;
                    switch (cFm2[cFt2]) {
                        case 0: {
                            if ((0xFFFFFFFFC7FFFFFFL & n) != 0x0L) {
                                if (cFw > 17) {
                                    cFw = 17;
                                    break;
                                }
                                break;
                            }
                            else {
                                if (this.cFq == '\\') {
                                    this.cFm[this.cFt++] = 1;
                                    break;
                                }
                                break;
                            }
                            break;
                        }
                        case 1: {
                            if (cFw > 16) {
                                cFw = 16;
                                break;
                            }
                            break;
                        }
                        case 2: {
                            if ((0xFFFFFFFFC7FFFFFFL & n) != 0x0L && cFw > 17) {
                                cFw = 17;
                                break;
                            }
                            break;
                        }
                    }
                } while (cFt2 != cFt);
            }
            else {
                final char c = (char)(('\u00ff' & this.cFq) >> 6);
                final long n2 = 1L << ('?' & this.cFq);
                do {
                    final int[] cFm3 = this.cFm;
                    --cFt2;
                    switch (cFm3[cFt2]) {
                        case 0: {
                            if ((n2 & n.cFb[c]) != 0x0L && cFw > 17) {
                                cFw = 17;
                                break;
                            }
                            break;
                        }
                        case 1: {
                            if ((n2 & n.cFb[c]) != 0x0L && cFw > 16) {
                                cFw = 16;
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
                this.cFq = this.cFk.readChar();
            }
            catch (IOException ex) {
                return cFv;
            }
        }
        return cFv;
    }
    
    public final u abc() {
        String s = null;
        int n = 0;
        u cGc = null;
    Label_1694:
        while (true) {
            int n2 = 0;
            Label_1886: {
                int n8;
                while (true) {
                    s cFk;
                    char char1;
                    u abb = null;
                    u abb2;
                    int n3 = 0;
                    int n4 = 0;
                    int n5 = 0;
                    int n6 = 0;
                    int n7 = 0;
                    StringBuffer cFn;
                    s cFk2;
                    int cFo;
                    int cFp;
                    StringBuffer cFn2;
                    s cFk3;
                    int cFo2;
                    int cFp2;
                    u abb3;
                    int cFo3;
                    int cFp3;
                    Label_0091_Outer:Label_0196_Outer:
                    while (true) {
                        Label_0945: {
                            while (true) {
                                Label_0854: {
                                Label_0773:
                                    while (true) {
                                        Label_0716: {
                                            Label_0644: {
                                                Label_0569: {
                                                    Label_0509: {
                                                        try {
                                                            cFk = this.cFk;
                                                            cFk.cFH = -1;
                                                            char1 = cFk.readChar();
                                                            cFk.cFH = cFk.cFI;
                                                            this.cFq = char1;
                                                            this.cFn = null;
                                                            this.cFo = 0;
                                                            switch (this.cFr) {
                                                                default: {
                                                                    n2 = n;
                                                                    if (this.cFw == Integer.MAX_VALUE) {
                                                                        break Label_1886;
                                                                    }
                                                                    if (1 + this.cFv < n2) {
                                                                        this.cFk.fX(-1 + (n2 - this.cFv));
                                                                    }
                                                                    if ((org.apache.james.mime4j.field.address.parser.n.cFg[this.cFw >> 6] & 1L << (0x3F & this.cFw)) == 0x0L) {
                                                                        break Label_0945;
                                                                    }
                                                                    abb = this.abb();
                                                                    abb.cGc = cGc;
                                                                    switch (this.cFw) {
                                                                        default: {
                                                                            if (org.apache.james.mime4j.field.address.parser.n.cFf[this.cFw] != -1) {
                                                                                this.cFr = org.apache.james.mime4j.field.address.parser.n.cFf[this.cFw];
                                                                            }
                                                                            return abb;
                                                                        }
                                                                        case 18: {
                                                                            break Label_0773;
                                                                        }
                                                                        case 31: {
                                                                            break Label_0854;
                                                                        }
                                                                    }
                                                                    break;
                                                                }
                                                                case 0: {
                                                                    break;
                                                                }
                                                                case 1: {
                                                                    break Label_0509;
                                                                }
                                                                case 2: {
                                                                    break Label_0569;
                                                                }
                                                                case 3: {
                                                                    break Label_0644;
                                                                }
                                                                case 4: {
                                                                    break Label_0716;
                                                                }
                                                            }
                                                        }
                                                        catch (IOException ex) {
                                                            this.cFw = 0;
                                                            abb2 = this.abb();
                                                            abb2.cGc = cGc;
                                                            return abb2;
                                                        }
                                                        this.cFw = Integer.MAX_VALUE;
                                                        this.cFv = 0;
                                                        switch (this.cFq) {
                                                            default: {
                                                                n3 = this.fS(0);
                                                                break;
                                                            }
                                                            case '\n': {
                                                                n3 = this.fQ(2);
                                                                break;
                                                            }
                                                            case '\r': {
                                                                n3 = this.fQ(1);
                                                                break;
                                                            }
                                                            case '\"': {
                                                                n3 = this.fQ(28);
                                                                break;
                                                            }
                                                            case '(': {
                                                                n3 = this.fQ(19);
                                                                break;
                                                            }
                                                            case ',': {
                                                                n3 = this.fQ(3);
                                                                break;
                                                            }
                                                            case '.': {
                                                                n3 = this.fQ(9);
                                                                break;
                                                            }
                                                            case ':': {
                                                                n3 = this.fQ(4);
                                                                break;
                                                            }
                                                            case ';': {
                                                                n3 = this.fQ(5);
                                                                break;
                                                            }
                                                            case '<': {
                                                                n3 = this.fQ(6);
                                                                break;
                                                            }
                                                            case '>': {
                                                                n3 = this.fQ(7);
                                                                break;
                                                            }
                                                            case '@': {
                                                                n3 = this.fQ(8);
                                                                break;
                                                            }
                                                            case '[': {
                                                                n3 = this.fQ(15);
                                                                break;
                                                            }
                                                        }
                                                        n2 = n3;
                                                        continue Label_0196_Outer;
                                                    }
                                                    this.cFw = Integer.MAX_VALUE;
                                                    this.cFv = 0;
                                                    switch (this.cFq) {
                                                        default: {
                                                            n4 = this.fW(0);
                                                            break;
                                                        }
                                                        case ']': {
                                                            n4 = this.fQ(18);
                                                            break;
                                                        }
                                                    }
                                                    n2 = n4;
                                                    continue Label_0196_Outer;
                                                }
                                                this.cFw = Integer.MAX_VALUE;
                                                this.cFv = 0;
                                                switch (this.cFq) {
                                                    default: {
                                                        n5 = this.fT(0);
                                                        break;
                                                    }
                                                    case '(': {
                                                        n5 = this.fQ(22);
                                                        break;
                                                    }
                                                    case ')': {
                                                        n5 = this.fQ(20);
                                                        break;
                                                    }
                                                }
                                                n2 = n5;
                                                continue Label_0196_Outer;
                                            }
                                            this.cFw = Integer.MAX_VALUE;
                                            this.cFv = 0;
                                            switch (this.cFq) {
                                                default: {
                                                    n6 = this.fV(0);
                                                    break;
                                                }
                                                case '(': {
                                                    n6 = this.fQ(25);
                                                    break;
                                                }
                                                case ')': {
                                                    n6 = this.fQ(26);
                                                    break;
                                                }
                                            }
                                            n2 = n6;
                                            continue Label_0196_Outer;
                                        }
                                        this.cFw = Integer.MAX_VALUE;
                                        this.cFv = 0;
                                        switch (this.cFq) {
                                            default: {
                                                n7 = this.fU(0);
                                                break;
                                            }
                                            case '\"': {
                                                n7 = this.fQ(31);
                                                break;
                                            }
                                        }
                                        n2 = n7;
                                        continue Label_0196_Outer;
                                    }
                                    if (this.cFn == null) {
                                        this.cFn = new StringBuffer();
                                    }
                                    cFn = this.cFn;
                                    cFk2 = this.cFk;
                                    cFo = this.cFo;
                                    cFp = 1 + this.cFv;
                                    this.cFp = cFp;
                                    cFn.append(cFk2.fY(cFo + cFp));
                                    abb.cGa = this.cFn.toString();
                                    continue;
                                }
                                if (this.cFn == null) {
                                    this.cFn = new StringBuffer();
                                }
                                cFn2 = this.cFn;
                                cFk3 = this.cFk;
                                cFo2 = this.cFo;
                                cFp2 = 1 + this.cFv;
                                this.cFp = cFp2;
                                cFn2.append(cFk3.fY(cFo2 + cFp2));
                                abb.cGa = this.cFn.substring(0, -1 + this.cFn.length());
                                continue;
                            }
                        }
                        if ((org.apache.james.mime4j.field.address.parser.n.cFh[this.cFw >> 6] & 1L << (0x3F & this.cFw)) != 0x0L) {
                            if ((org.apache.james.mime4j.field.address.parser.n.cFi[this.cFw >> 6] & 1L << (0x3F & this.cFw)) != 0x0L) {
                                abb3 = this.abb();
                                if (cGc != null) {
                                    abb3.cGc = cGc;
                                    cGc.cGb = abb3;
                                }
                            }
                            else {
                                abb3 = cGc;
                            }
                            if (org.apache.james.mime4j.field.address.parser.n.cFf[this.cFw] != -1) {
                                this.cFr = org.apache.james.mime4j.field.address.parser.n.cFf[this.cFw];
                                cGc = abb3;
                                n = n2;
                            }
                            else {
                                cGc = abb3;
                                n = n2;
                            }
                        }
                        else {
                            cFo3 = this.cFo;
                            cFp3 = 1 + this.cFv;
                            this.cFp = cFp3;
                            this.cFo = cFo3 + cFp3;
                            while (true) {
                            Label_1564_Outer:
                                while (true) {
                                    Label_1515_Outer:Block_20_Outer:Block_16_Outer:Label_1332_Outer:
                                    while (true) {
                                    Label_1497_Outer:
                                        while (true) {
                                        Label_1444_Outer:
                                            while (true) {
                                            Label_1626_Outer:
                                                while (true) {
                                                Label_1381_Outer:
                                                    while (true) {
                                                        while (true) {
                                                            switch (this.cFw) {
                                                                case 16: {
                                                                    Label_1206: {
                                                                        break Label_1206;
                                                                        this.cFw = Integer.MAX_VALUE;
                                                                        try {
                                                                            this.cFq = this.cFk.readChar();
                                                                            n = 0;
                                                                            continue Label_0091_Outer;
                                                                            // iftrue(Label_1287:, this.cFn != null)
                                                                            // iftrue(Label_1582:, this.cFn != null)
                                                                            // iftrue(Label_1160:, n.cEZ = -1 + n.cEZ != 0)
                                                                            // iftrue(Label_1350:, this.cFn != null)
                                                                            // iftrue(Label_1515:, this.cFn != null)
                                                                            // iftrue(Label_1462:, this.cFn != null)
                                                                            // iftrue(Label_1644:, this.cFn != null)
                                                                            // iftrue(Label_1399:, this.cFn != null)
                                                                            // iftrue(Label_1224:, this.cFn != null)
                                                                        Label_1399:
                                                                            while (true) {
                                                                                Block_18: {
                                                                                    Label_1582: {
                                                                                        Block_19: {
                                                                                            Label_1644: {
                                                                                                Label_1462: {
                                                                                                    while (true) {
                                                                                                        Block_22: {
                                                                                                            while (true) {
                                                                                                            Block_21_Outer:
                                                                                                                while (true) {
                                                                                                                    while (true) {
                                                                                                                        while (true) {
                                                                                                                            Block_17: {
                                                                                                                                break Block_17;
                                                                                                                                while (true) {
                                                                                                                                    while (true) {
                                                                                                                                        Block_23: {
                                                                                                                                            break Block_23;
                                                                                                                                            this.cFn.append(this.cFk.fY(this.cFo));
                                                                                                                                            this.cFo = 0;
                                                                                                                                            this.cFn.deleteCharAt(-2 + this.cFn.length());
                                                                                                                                            break;
                                                                                                                                            this.cFn.append(this.cFk.fY(this.cFo));
                                                                                                                                            this.cFo = 0;
                                                                                                                                            break Block_22;
                                                                                                                                            this.cFn = new StringBuffer();
                                                                                                                                            break Label_1462;
                                                                                                                                        }
                                                                                                                                        this.cFn = new StringBuffer();
                                                                                                                                        break Label_1582;
                                                                                                                                        this.cFn = new StringBuffer();
                                                                                                                                        continue Label_1515_Outer;
                                                                                                                                    }
                                                                                                                                    this.cFn.append(this.cFk.fY(this.cFo));
                                                                                                                                    this.cFo = 0;
                                                                                                                                    this.cFn.deleteCharAt(-2 + this.cFn.length());
                                                                                                                                    break;
                                                                                                                                    this.cFn = new StringBuffer();
                                                                                                                                    continue Block_20_Outer;
                                                                                                                                }
                                                                                                                                break Block_18;
                                                                                                                            }
                                                                                                                            this.cFn = new StringBuffer();
                                                                                                                            continue Block_21_Outer;
                                                                                                                        }
                                                                                                                        continue Label_1332_Outer;
                                                                                                                    }
                                                                                                                    this.cFn = new StringBuffer();
                                                                                                                    break Label_1644;
                                                                                                                    continue Block_16_Outer;
                                                                                                                }
                                                                                                                continue Label_1444_Outer;
                                                                                                            }
                                                                                                            break Block_19;
                                                                                                        }
                                                                                                        this.cFr = 2;
                                                                                                        break;
                                                                                                        this.cFn.append(this.cFk.fY(this.cFo));
                                                                                                        this.cFo = 0;
                                                                                                        org.apache.james.mime4j.field.address.parser.n.cEZ = 1;
                                                                                                        break;
                                                                                                        continue Label_1332_Outer;
                                                                                                    }
                                                                                                }
                                                                                                this.cFn.append(this.cFk.fY(this.cFo));
                                                                                                this.cFo = 0;
                                                                                                ++org.apache.james.mime4j.field.address.parser.n.cEZ;
                                                                                                break;
                                                                                            }
                                                                                            this.cFn.append(this.cFk.fY(this.cFo));
                                                                                            this.cFo = 0;
                                                                                            this.cFn.deleteCharAt(-2 + this.cFn.length());
                                                                                            break;
                                                                                        }
                                                                                        this.cFn = new StringBuffer();
                                                                                        break Label_1399;
                                                                                    }
                                                                                    this.cFn.append(this.cFk.fY(this.cFo));
                                                                                    this.cFo = 0;
                                                                                    this.cFn.deleteCharAt(-1 + this.cFn.length());
                                                                                    break;
                                                                                }
                                                                                this.cFn = new StringBuffer();
                                                                                continue;
                                                                            }
                                                                            this.cFn.append(this.cFk.fY(this.cFo));
                                                                            this.cFo = 0;
                                                                            this.cFn.deleteCharAt(-2 + this.cFn.length());
                                                                            break;
                                                                        }
                                                                        catch (IOException ex2) {
                                                                            n8 = 0;
                                                                        }
                                                                    }
                                                                    break Label_1694;
                                                                }
                                                                case 21: {
                                                                    continue Label_1564_Outer;
                                                                }
                                                                case 22: {
                                                                    continue Label_1497_Outer;
                                                                }
                                                                case 24: {
                                                                    continue;
                                                                }
                                                                case 25: {
                                                                    continue Label_1626_Outer;
                                                                }
                                                                case 26: {
                                                                    continue Label_1444_Outer;
                                                                }
                                                                case 28: {
                                                                    continue Label_1332_Outer;
                                                                }
                                                                case 29: {
                                                                    continue Label_1381_Outer;
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
                                    break;
                                }
                                Label_1160: {
                                    if (org.apache.james.mime4j.field.address.parser.n.cFf[this.cFw] != -1) {
                                        this.cFr = org.apache.james.mime4j.field.address.parser.n.cFf[this.cFw];
                                    }
                                }
                                continue;
                            }
                        }
                        break;
                    }
                }
            Label_1762_Outer:
                while (true) {
                    final int abi = this.cFk.abi();
                    final int abh = this.cFk.abh();
                    while (true) {
                    Label_1868:
                        while (true) {
                            try {
                                this.cFk.readChar();
                                this.cFk.fX(1);
                                final boolean b = false;
                                final int n9 = abh;
                                final int n10 = abi;
                                if (!b) {
                                    this.cFk.fX(1);
                                    if (n8 > 1) {
                                        break Label_1868;
                                    }
                                    final String abl = "";
                                    s = abl;
                                }
                                final int cFr = this.cFr;
                                throw new TokenMgrError(b, n10, n9, s, this.cFq);
                            }
                            catch (IOException ex3) {
                                String abl2;
                                if (n8 <= 1) {
                                    abl2 = "";
                                }
                                else {
                                    abl2 = this.cFk.abl();
                                }
                                if (this.cFq == '\n' || this.cFq == '\r') {
                                    final int n10 = abi + 1;
                                    s = abl2;
                                    final boolean b = true;
                                    final int n9 = 0;
                                    continue Label_1762_Outer;
                                }
                                final int n9 = abh + 1;
                                s = abl2;
                                final int n10 = abi;
                                final boolean b = true;
                                continue Label_1762_Outer;
                            }
                            break;
                        }
                        final String abl = this.cFk.abl();
                        continue;
                    }
                }
            }
            int n8 = n2;
            continue Label_1694;
        }
    }
}
