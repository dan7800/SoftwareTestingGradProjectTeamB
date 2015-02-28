package org.owasp.html;

import com.google.common.collect.*;
import java.util.*;
import java.io.*;

final class l
{
    static final /* synthetic */ boolean vb;
    private final StringBuilder ajV;
    private int[] cGR;
    private int[] cHa;
    private final String cHb;
    private final int cHc;
    private List<CssTokens$TokenType> cHd;
    private int cHe;
    private int cHf;
    private int[] cHg;
    private int cHh;
    private int pos;
    
    static {
        vb = !CssTokens.class.desiredAssertionStatus();
    }
    
    l(final String cHb) {
        this.pos = 0;
        this.cHd = null;
        this.cGR = new int[128];
        this.cHe = 0;
        this.cHa = CssTokens.cGT;
        this.cHf = 0;
        this.cHg = CssTokens.cGT;
        this.cHh = 0;
        this.cHb = cHb;
        this.ajV = new StringBuilder();
        this.cHc = cHb.length();
    }
    
    private void a(final CssTokens$TokenType cssTokens$TokenType, final int n) {
        if (this.cHe == 0 || this.cGR[-1 + this.cHe] != n) {
            (this.cGR = CssTokens.b(this.cGR, this.cHe, 1))[this.cHe++] = n;
            this.cHd.add(cssTokens$TokenType);
        }
    }
    
    private boolean abL() {
        final String cHb = this.cHb;
        final int cHc = this.cHc;
        final int pos = this.pos;
        while (this.pos < cHc) {
            final char char1 = cHb.charAt(this.pos);
            if (char1 <= ' ' || char1 == '\ufeff') {
                ++this.pos;
            }
            else {
                if (1 + this.pos == cHc) {
                    break;
                }
                if (char1 == '/') {
                    final char char2 = cHb.charAt(1 + this.pos);
                    if (char2 == '*') {
                        this.pos += 2;
                        while (this.pos < cHc) {
                            final int index = cHb.indexOf(42, this.pos);
                            if (index < 0) {
                                this.pos = cHc;
                                break;
                            }
                            this.pos = index + 1;
                            while (this.pos < cHc && cHb.charAt(this.pos) == '*') {
                                ++this.pos;
                            }
                            if (this.pos < cHc && cHb.charAt(this.pos) == '/') {
                                ++this.pos;
                                break;
                            }
                        }
                    }
                    else {
                        if (char2 != '/') {
                            break;
                        }
                        while (++this.pos < cHc) {
                            if (CssTokens.m(cHb.charAt(this.pos))) {
                                break;
                            }
                        }
                    }
                }
                else if (char1 == '<') {
                    if (3 + this.pos >= cHc || '!' != cHb.charAt(1 + this.pos) || '-' != cHb.charAt(2 + this.pos) || '-' != cHb.charAt(3 + this.pos)) {
                        break;
                    }
                    this.pos += 4;
                }
                else {
                    if (char1 != '-' || 2 + this.pos >= cHc || '-' != cHb.charAt(1 + this.pos) || '>' != cHb.charAt(2 + this.pos)) {
                        break;
                    }
                    this.pos += 3;
                }
            }
        }
        if (this.pos == pos) {
            return false;
        }
        this.abM();
        return true;
    }
    
    private void abM() {
        final int n = -1 + this.ajV.length();
        if (n >= 0 && this.ajV.charAt(n) != ' ') {
            this.ajV.append(' ');
        }
    }
    
    private int abN() {
        int n = -1;
        final String cHb = this.cHb;
        final int cHc = this.cHc;
        if (!l.vb && cHb.charAt(this.pos) != '\\') {
            throw new AssertionError();
        }
        if (1 + this.pos < cHc) {
            final char char1 = cHb.charAt(1 + this.pos);
            if (!CssTokens.m(char1)) {
                final char c = (char)(char1 | ' ');
                if (('0' > char1 || char1 > '9') && ('a' > c || c > 'f')) {
                    this.pos += 2;
                    return char1;
                }
                final int n2 = 1 + this.pos;
                final int min = Math.min(7 + this.pos, cHc);
                n = 0;
                char c2 = c;
                char char2 = char1;
                int pos = n2;
                do {
                    final int n3 = n << 4;
                    char c3;
                    if (char2 <= '9') {
                        c3 = (char)(char2 - '0');
                    }
                    else {
                        c3 = (char)(c2 - 'W');
                    }
                    n = (c3 | n3);
                    if (++pos == min) {
                        break;
                    }
                    char2 = cHb.charAt(pos);
                    c2 = (char)(char2 | ' ');
                } while (('0' <= char2 && char2 <= '9') || ('a' <= c2 && c2 <= 'f'));
                if (!Character.isDefined(n)) {
                    n = 65533;
                }
                this.pos = pos;
                if (this.pos < cHc) {
                    final char char3 = cHb.charAt(this.pos);
                    if (char3 == ' ' || char3 == '\t' || CssTokens.m(char3)) {
                        ++this.pos;
                        return n;
                    }
                }
            }
        }
        return n;
    }
    
    private CssTokens$TokenType abO() {
        final String cHb = this.cHb;
        final int cHc = this.cHc;
        boolean b = true;
        int pos = this.pos;
        if (pos < cHc) {
            final char char1 = cHb.charAt(pos);
            if (char1 == '-' || char1 == '+') {
                ++pos;
            }
        }
        int i;
        for (i = pos; i < cHc; ++i) {
            final char char2 = cHb.charAt(i);
            if ('0' > char2 || char2 > '9') {
                break;
            }
            if (char2 != '0') {
                b = false;
            }
        }
        int j;
        boolean b2;
        if (i < cHc && '.' == cHb.charAt(i)) {
            for (j = i + 1; j < cHc; ++j) {
                final char char3 = cHb.charAt(j);
                if ('0' > char3 || char3 > '9') {
                    break;
                }
                if (char3 != '0') {
                    b = false;
                }
            }
            b2 = b;
        }
        else {
            j = i;
            b2 = b;
        }
        boolean b3 = true;
        int pos2;
        int n2;
        if (j < cHc && 'e' == (' ' | cHb.charAt(j))) {
            int n = j + 1;
            if (n < cHc) {
                final char char4 = cHb.charAt(n);
                if (char4 == '+' || char4 == '-') {
                    ++n;
                }
            }
            int k;
            for (k = n; k < cHc; ++k) {
                final char char5 = cHb.charAt(k);
                if ('0' > char5 || char5 > '9') {
                    break;
                }
                if (char5 != '0') {
                    b3 = false;
                }
            }
            if (k == n) {
                b3 = true;
                pos2 = j;
                n2 = j;
            }
            else {
                final int n3 = k;
                n2 = n;
                pos2 = n3;
            }
        }
        else {
            pos2 = j;
            n2 = j;
        }
        int l;
        for (l = pos2; l < cHc; ++l) {
            final char char6 = cHb.charAt(l);
            if (char6 != ' ' && !CssTokens.m(char6)) {
                break;
            }
        }
        if (this.ajV.length() != 0 && CssTokens.gd(this.ajV.charAt(-1 + this.ajV.length()))) {
            this.ajV.append(' ');
        }
        if (pos != this.pos && '-' == cHb.charAt(this.pos) && !b2) {
            this.ajV.append('-');
        }
        if (b2) {
            this.ajV.append('0');
        }
        else {
            while (pos < i && cHb.charAt(pos) == '0') {
                ++pos;
            }
            while (j > i && cHb.charAt(j - 1) == '0') {
                --j;
            }
            if (pos == i) {
                this.ajV.append('0');
            }
            else {
                this.ajV.append(cHb, pos, i);
            }
            if (j > i + 1) {
                this.ajV.append(cHb, i, j);
            }
            if (!b3) {
                this.ajV.append('e');
                if ('-' == cHb.charAt(n2 - 1)) {
                    this.ajV.append('-');
                }
                while (n2 < pos2 && cHb.charAt(n2) == '0') {
                    ++n2;
                }
                this.ajV.append(cHb, n2, pos2);
            }
        }
        CssTokens$TokenType cssTokens$TokenType;
        if (l < cHc && '%' == cHb.charAt(l)) {
            pos2 = l + 1;
            cssTokens$TokenType = CssTokens$TokenType.cHv;
            this.ajV.append('%');
        }
        else {
            int length = this.ajV.length();
            this.pos = l;
            this.ct(false);
            final int length2 = this.ajV.length();
            final boolean e = CssTokens.e(this.ajV, length, length2);
            int n4;
            if (l == pos2 || e) {
                pos2 = this.pos;
                while (length < length2) {
                    final char char7 = this.ajV.charAt(length);
                    if ('A' <= char7 && char7 <= 'Z') {
                        this.ajV.setCharAt(length, (char)(char7 | ' '));
                    }
                    ++length;
                }
                n4 = l;
            }
            else {
                this.ajV.setLength(length);
                n4 = pos2;
            }
            if (n4 == pos2) {
                cssTokens$TokenType = CssTokens$TokenType.cHu;
            }
            else if (e) {
                cssTokens$TokenType = CssTokens$TokenType.cHw;
            }
            else {
                cssTokens$TokenType = CssTokens$TokenType.cHx;
            }
        }
        this.pos = pos2;
        if (cssTokens$TokenType != CssTokens$TokenType.cHv && this.pos < cHc && cHb.charAt(this.pos) == '.') {
            this.ajV.append(' ');
        }
        return cssTokens$TokenType;
    }
    
    private CssTokens$TokenType abP() {
        final String cHb = this.cHb;
        final int cHc = this.cHc;
        final char char1 = cHb.charAt(this.pos);
        if (!l.vb && char1 != '\"' && char1 != '\'') {
            throw new AssertionError();
        }
        ++this.pos;
        final int length = this.ajV.length();
        this.ajV.append('\'');
        int n = -1;
    Label_0114:
        while (true) {
            while (this.pos < cHc) {
                int n2 = cHb.charAt(this.pos);
                int n3;
                if (n2 == char1) {
                    ++this.pos;
                    n3 = 1;
                }
                else {
                    if (!CssTokens.m((char)n2)) {
                        if (n2 == '\\') {
                            if (1 + this.pos < cHc && CssTokens.m(cHb.charAt(1 + this.pos))) {
                                if (2 + this.pos < cHc && cHb.charAt(1 + this.pos) == '\r' && cHb.charAt(2 + this.pos) == '\n') {
                                    this.pos += 3;
                                    continue;
                                }
                                this.pos += 2;
                                continue;
                            }
                            else {
                                n2 = this.abN();
                                if (n2 < '\0') {
                                    n3 = 0;
                                    break Label_0114;
                                }
                            }
                        }
                        else {
                            ++this.pos;
                        }
                        switch (n2) {
                            default: {
                                boolean b;
                                if (n >= 0 && n < 63 && 0x0L != (0x500000C400003401L & 1L << n)) {
                                    b = true;
                                }
                                else {
                                    b = false;
                                }
                                if (b && (n2 == ' ' || n2 == '\t' || ('0' <= n2 && n2 <= '9') || ('a' <= (n2 | ' ') && (n2 | ' ') <= 'f'))) {
                                    this.ajV.append(' ');
                                }
                                this.ajV.appendCodePoint(n2);
                                break;
                            }
                            case 92: {
                                this.ajV.append("\\\\");
                                break;
                            }
                            case 0: {
                                this.ajV.append("\\0");
                                break;
                            }
                            case 10: {
                                this.ajV.append("\\a");
                                break;
                            }
                            case 12: {
                                this.ajV.append("\\c");
                                break;
                            }
                            case 13: {
                                this.ajV.append("\\d");
                                break;
                            }
                            case 34: {
                                this.ajV.append("\\22");
                                break;
                            }
                            case 38: {
                                this.ajV.append("\\26");
                                break;
                            }
                            case 39: {
                                this.ajV.append("\\27");
                                break;
                            }
                            case 60: {
                                this.ajV.append("\\3c");
                                break;
                            }
                            case 62: {
                                this.ajV.append("\\3e");
                                break;
                            }
                            case 45: {
                                this.ajV.append('-');
                                break;
                            }
                        }
                        n = n2;
                        continue;
                    }
                    break;
                }
                if (n3 != 0) {
                    this.ajV.append('\'');
                    return CssTokens$TokenType.cHr;
                }
                this.ajV.setLength(length);
                this.abM();
                return CssTokens$TokenType.cHB;
            }
            int n3 = 0;
            continue Label_0114;
        }
    }
    
    private CssTokens$TokenType abQ() {
        if (!l.vb && this.cHb.charAt(this.pos) != '#') {
            throw new AssertionError();
        }
        ++this.pos;
        int i = this.pos;
        this.ct(true);
        if (this.pos == i) {
            this.pos = i - 1;
            return null;
        }
        while (i < this.pos) {
            final char c = (char)(' ' | this.cHb.charAt(i));
            if (('0' > c || c > '9') && ('a' > c || c > 'f')) {
                return CssTokens$TokenType.cHp;
            }
            ++i;
        }
        return CssTokens$TokenType.cHq;
    }
    
    private boolean abR() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_0       
        //     1: istore_1       
        //     2: aload_0        
        //     3: getfield        org/owasp/html/l.cHb:Ljava/lang/String;
        //     6: astore_2       
        //     7: aload_0        
        //     8: getfield        org/owasp/html/l.cHc:I
        //    11: istore_3       
        //    12: getstatic       org/owasp/html/l.vb:Z
        //    15: ifne            50
        //    18: aload_0        
        //    19: getfield        org/owasp/html/l.pos:I
        //    22: iload_3        
        //    23: if_icmpge       42
        //    26: bipush          32
        //    28: aload_2        
        //    29: aload_0        
        //    30: getfield        org/owasp/html/l.pos:I
        //    33: invokevirtual   java/lang/String.charAt:(I)C
        //    36: ior            
        //    37: bipush          117
        //    39: if_icmpeq       50
        //    42: new             Ljava/lang/AssertionError;
        //    45: dup            
        //    46: invokespecial   java/lang/AssertionError.<init>:()V
        //    49: athrow         
        //    50: aload_0        
        //    51: getfield        org/owasp/html/l.pos:I
        //    54: istore          4
        //    56: aload_0        
        //    57: getfield        org/owasp/html/l.ajV:Ljava/lang/StringBuilder;
        //    60: invokevirtual   java/lang/StringBuilder.length:()I
        //    63: istore          5
        //    65: aload_0        
        //    66: iconst_1       
        //    67: aload_0        
        //    68: getfield        org/owasp/html/l.pos:I
        //    71: iadd           
        //    72: putfield        org/owasp/html/l.pos:I
        //    75: aload_0        
        //    76: getfield        org/owasp/html/l.pos:I
        //    79: iload_3        
        //    80: if_icmpeq       100
        //    83: aload_2        
        //    84: aload_0        
        //    85: getfield        org/owasp/html/l.pos:I
        //    88: invokevirtual   java/lang/String.charAt:(I)C
        //    91: istore          7
        //    93: iload           7
        //    95: bipush          43
        //    97: if_icmpeq       117
        //   100: aload_0        
        //   101: iload           4
        //   103: putfield        org/owasp/html/l.pos:I
        //   106: aload_0        
        //   107: getfield        org/owasp/html/l.ajV:Ljava/lang/StringBuilder;
        //   110: iload           5
        //   112: invokevirtual   java/lang/StringBuilder.setLength:(I)V
        //   115: iconst_0       
        //   116: ireturn        
        //   117: aload_0        
        //   118: iconst_1       
        //   119: aload_0        
        //   120: getfield        org/owasp/html/l.pos:I
        //   123: iadd           
        //   124: putfield        org/owasp/html/l.pos:I
        //   127: aload_0        
        //   128: getfield        org/owasp/html/l.ajV:Ljava/lang/StringBuilder;
        //   131: ldc             "U+"
        //   133: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   136: pop            
        //   137: iconst_0       
        //   138: istore          9
        //   140: aload_0        
        //   141: getfield        org/owasp/html/l.pos:I
        //   144: iload_3        
        //   145: if_icmpge       232
        //   148: iload           9
        //   150: bipush          6
        //   152: if_icmpge       232
        //   155: bipush          32
        //   157: aload_2        
        //   158: aload_0        
        //   159: getfield        org/owasp/html/l.pos:I
        //   162: invokevirtual   java/lang/String.charAt:(I)C
        //   165: ior            
        //   166: i2c            
        //   167: istore          10
        //   169: bipush          48
        //   171: iload           10
        //   173: if_icmpgt       504
        //   176: iload           10
        //   178: bipush          57
        //   180: if_icmple       186
        //   183: goto            504
        //   186: aload_0        
        //   187: getfield        org/owasp/html/l.ajV:Ljava/lang/StringBuilder;
        //   190: iload           10
        //   192: invokevirtual   java/lang/StringBuilder.append:(C)Ljava/lang/StringBuilder;
        //   195: pop            
        //   196: iinc            9, 1
        //   199: aload_0        
        //   200: iconst_1       
        //   201: aload_0        
        //   202: getfield        org/owasp/html/l.pos:I
        //   205: iadd           
        //   206: putfield        org/owasp/html/l.pos:I
        //   209: goto            140
        //   212: astore          6
        //   214: aload_0        
        //   215: iload           4
        //   217: putfield        org/owasp/html/l.pos:I
        //   220: aload_0        
        //   221: getfield        org/owasp/html/l.ajV:Ljava/lang/StringBuilder;
        //   224: iload           5
        //   226: invokevirtual   java/lang/StringBuilder.setLength:(I)V
        //   229: aload           6
        //   231: athrow         
        //   232: iload           9
        //   234: ifne            254
        //   237: aload_0        
        //   238: iload           4
        //   240: putfield        org/owasp/html/l.pos:I
        //   243: aload_0        
        //   244: getfield        org/owasp/html/l.ajV:Ljava/lang/StringBuilder;
        //   247: iload           5
        //   249: invokevirtual   java/lang/StringBuilder.setLength:(I)V
        //   252: iconst_0       
        //   253: ireturn        
        //   254: iload           9
        //   256: istore          11
        //   258: iconst_0       
        //   259: istore          12
        //   261: aload_0        
        //   262: getfield        org/owasp/html/l.pos:I
        //   265: iload_3        
        //   266: if_icmpge       325
        //   269: iload           11
        //   271: bipush          6
        //   273: if_icmpge       325
        //   276: aload_2        
        //   277: aload_0        
        //   278: getfield        org/owasp/html/l.pos:I
        //   281: invokevirtual   java/lang/String.charAt:(I)C
        //   284: bipush          63
        //   286: if_icmpne       325
        //   289: aload_0        
        //   290: getfield        org/owasp/html/l.ajV:Ljava/lang/StringBuilder;
        //   293: bipush          63
        //   295: invokevirtual   java/lang/StringBuilder.append:(C)Ljava/lang/StringBuilder;
        //   298: pop            
        //   299: iload           11
        //   301: iconst_1       
        //   302: iadd           
        //   303: istore          19
        //   305: aload_0        
        //   306: iconst_1       
        //   307: aload_0        
        //   308: getfield        org/owasp/html/l.pos:I
        //   311: iadd           
        //   312: putfield        org/owasp/html/l.pos:I
        //   315: iload           19
        //   317: istore          11
        //   319: iconst_1       
        //   320: istore          12
        //   322: goto            261
        //   325: iload           11
        //   327: ifne            347
        //   330: aload_0        
        //   331: iload           4
        //   333: putfield        org/owasp/html/l.pos:I
        //   336: aload_0        
        //   337: getfield        org/owasp/html/l.ajV:Ljava/lang/StringBuilder;
        //   340: iload           5
        //   342: invokevirtual   java/lang/StringBuilder.setLength:(I)V
        //   345: iconst_0       
        //   346: ireturn        
        //   347: aload_0        
        //   348: getfield        org/owasp/html/l.pos:I
        //   351: iload_3        
        //   352: if_icmpge       538
        //   355: aload_2        
        //   356: aload_0        
        //   357: getfield        org/owasp/html/l.pos:I
        //   360: invokevirtual   java/lang/String.charAt:(I)C
        //   363: bipush          45
        //   365: if_icmpne       538
        //   368: iload           12
        //   370: ifne            491
        //   373: aload_0        
        //   374: iconst_1       
        //   375: aload_0        
        //   376: getfield        org/owasp/html/l.pos:I
        //   379: iadd           
        //   380: putfield        org/owasp/html/l.pos:I
        //   383: aload_0        
        //   384: getfield        org/owasp/html/l.ajV:Ljava/lang/StringBuilder;
        //   387: bipush          45
        //   389: invokevirtual   java/lang/StringBuilder.append:(C)Ljava/lang/StringBuilder;
        //   392: pop            
        //   393: aload_0        
        //   394: getfield        org/owasp/html/l.pos:I
        //   397: iload_3        
        //   398: if_icmpge       464
        //   401: iload_1        
        //   402: bipush          6
        //   404: if_icmpge       464
        //   407: bipush          32
        //   409: aload_2        
        //   410: aload_0        
        //   411: getfield        org/owasp/html/l.pos:I
        //   414: invokevirtual   java/lang/String.charAt:(I)C
        //   417: ior            
        //   418: i2c            
        //   419: istore          14
        //   421: bipush          48
        //   423: iload           14
        //   425: if_icmpgt       521
        //   428: iload           14
        //   430: bipush          57
        //   432: if_icmple       438
        //   435: goto            521
        //   438: iinc            1, 1
        //   441: aload_0        
        //   442: iconst_1       
        //   443: aload_0        
        //   444: getfield        org/owasp/html/l.pos:I
        //   447: iadd           
        //   448: putfield        org/owasp/html/l.pos:I
        //   451: aload_0        
        //   452: getfield        org/owasp/html/l.ajV:Ljava/lang/StringBuilder;
        //   455: iload           14
        //   457: invokevirtual   java/lang/StringBuilder.append:(C)Ljava/lang/StringBuilder;
        //   460: pop            
        //   461: goto            393
        //   464: iload_1        
        //   465: ifne            538
        //   468: aload_0        
        //   469: iconst_m1      
        //   470: aload_0        
        //   471: getfield        org/owasp/html/l.pos:I
        //   474: iadd           
        //   475: putfield        org/owasp/html/l.pos:I
        //   478: aload_0        
        //   479: getfield        org/owasp/html/l.ajV:Ljava/lang/StringBuilder;
        //   482: bipush          32
        //   484: invokevirtual   java/lang/StringBuilder.append:(C)Ljava/lang/StringBuilder;
        //   487: pop            
        //   488: goto            538
        //   491: aload_0        
        //   492: getfield        org/owasp/html/l.ajV:Ljava/lang/StringBuilder;
        //   495: bipush          32
        //   497: invokevirtual   java/lang/StringBuilder.append:(C)Ljava/lang/StringBuilder;
        //   500: pop            
        //   501: goto            538
        //   504: bipush          97
        //   506: iload           10
        //   508: if_icmpgt       232
        //   511: iload           10
        //   513: bipush          102
        //   515: if_icmpgt       232
        //   518: goto            186
        //   521: bipush          97
        //   523: iload           14
        //   525: if_icmpgt       464
        //   528: iload           14
        //   530: bipush          102
        //   532: if_icmpgt       464
        //   535: goto            438
        //   538: iconst_1       
        //   539: ireturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  75     93     212    232    Any
        //  117    137    212    232    Any
        //  140    148    212    232    Any
        //  155    169    212    232    Any
        //  186    196    212    232    Any
        //  199    209    212    232    Any
        //  261    269    212    232    Any
        //  276    299    212    232    Any
        //  305    315    212    232    Any
        //  347    368    212    232    Any
        //  373    393    212    232    Any
        //  393    401    212    232    Any
        //  407    421    212    232    Any
        //  441    461    212    232    Any
        //  468    488    212    232    Any
        //  491    501    212    232    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: logicalor:boolean(cmpgt:boolean(ldc:char(97), var_10_A7:char), cmpgt:boolean(var_10_A7:char, ldc:char(102)))
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.GotoRemoval.traverseGraph(GotoRemoval.java:88)
        //     at com.strobel.decompiler.ast.GotoRemoval.removeGotos(GotoRemoval.java:52)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:276)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    private CssTokens$TokenType abS() {
        final int length = this.ajV.length();
        final int pos = this.pos;
        this.ct(false);
        if (this.pos == pos) {
            return null;
        }
        boolean b;
        if (this.pos < this.cHc && this.cHb.charAt(this.pos) == '(') {
            b = true;
        }
        else {
            b = false;
        }
        if (this.ajV.length() - length == 3 && 'u' == (' ' | this.ajV.charAt(length)) && 'r' == (' ' | this.ajV.charAt(length + 1)) && 'l' == (' ' | this.ajV.charAt(length + 2))) {
            if (b) {
                final String cHb = this.cHb;
                final int cHc = this.cHc;
                final int pos2 = this.pos;
                int n = 0;
                Label_0175: {
                    if (pos2 != cHc) {
                        final char char1 = cHb.charAt(this.pos);
                        n = 0;
                        if (char1 == '(') {
                            ++this.pos;
                            while (this.pos < cHc) {
                                final char char2 = cHb.charAt(this.pos);
                                if (char2 != ' ' && !CssTokens.m(char2)) {
                                    break;
                                }
                                ++this.pos;
                            }
                            final int pos3 = this.pos;
                            n = 0;
                            if (pos3 < cHc) {
                                int char3;
                                if (this.pos < cHc) {
                                    char3 = cHb.charAt(this.pos);
                                }
                                else {
                                    char3 = 0;
                                }
                                if (char3 == 34 || char3 == 39) {
                                    ++this.pos;
                                }
                                else {
                                    char3 = 0;
                                }
                                this.ajV.append("('");
                                while (this.pos < cHc) {
                                    int n2 = this.abT();
                                    if (char3 != 0) {
                                        if (n2 == char3) {
                                            ++this.pos;
                                            break;
                                        }
                                    }
                                    else if (n2 <= 32 || n2 == 41) {
                                        break;
                                    }
                                    if (n2 == 92) {
                                        n2 = this.abN();
                                        n = 0;
                                        if (n2 < 0) {
                                            break Label_0175;
                                        }
                                    }
                                    else {
                                        ++this.pos;
                                    }
                                    if (n2 < CssTokens.cGZ.length && CssTokens.cGZ[n2]) {
                                        this.ajV.appendCodePoint(n2);
                                    }
                                    else if (n2 < 128) {
                                        this.ajV.append('%').append(CssTokens.coF[0xF & n2 >>> 4]).append(CssTokens.coF[0xF & n2 >>> 0]);
                                    }
                                    else if (n2 < 2048) {
                                        final int n3 = 0xC0 | (0x1F & n2 >>> 6);
                                        final int n4 = 0x80 | (n2 & 0x3F);
                                        this.ajV.append('%').append(CssTokens.coF[0xF & n3 >>> 4]).append(CssTokens.coF[0xF & n3 >>> 0]).append('%').append(CssTokens.coF[0xF & n4 >>> 4]).append(CssTokens.coF[0xF & n4 >>> 0]);
                                    }
                                    else if (n2 < 65536) {
                                        final int n5 = 0xE0 | (0xF & n2 >>> 12);
                                        final int n6 = 0x80 | (0x3F & n2 >>> 6);
                                        final int n7 = 0x80 | (n2 & 0x3F);
                                        this.ajV.append('%').append(CssTokens.coF[0xF & n5 >>> 4]).append(CssTokens.coF[0xF & n5 >>> 0]).append('%').append(CssTokens.coF[0xF & n6 >>> 4]).append(CssTokens.coF[0xF & n6 >>> 0]).append('%').append(CssTokens.coF[0xF & n7 >>> 4]).append(CssTokens.coF[0xF & n7 >>> 0]);
                                    }
                                    else {
                                        final int n8 = 0xF0 | (0x7 & n2 >>> 18);
                                        final int n9 = 0x80 | (0x3F & n2 >>> 12);
                                        final int n10 = 0x80 | (0x3F & n2 >>> 6);
                                        final int n11 = 0x80 | (n2 & 0x3F);
                                        this.ajV.append('%').append(CssTokens.coF[0xF & n8 >>> 4]).append(CssTokens.coF[0xF & n8 >>> 0]).append('%').append(CssTokens.coF[0xF & n9 >>> 4]).append(CssTokens.coF[0xF & n9 >>> 0]).append('%').append(CssTokens.coF[0xF & n10 >>> 4]).append(CssTokens.coF[0xF & n10 >>> 0]).append('%').append(CssTokens.coF[0xF & n11 >>> 4]).append(CssTokens.coF[0xF & n11 >>> 0]);
                                    }
                                }
                                while (this.pos < cHc) {
                                    final char char4 = cHb.charAt(this.pos);
                                    if (char4 != ' ' && !CssTokens.m(char4)) {
                                        break;
                                    }
                                    ++this.pos;
                                }
                                if (this.pos < cHc && cHb.charAt(this.pos) == ')') {
                                    ++this.pos;
                                }
                                this.ajV.append("')");
                                n = 1;
                            }
                        }
                    }
                }
                if (n != 0) {
                    this.ajV.setCharAt(length, 'u');
                    this.ajV.setCharAt(length + 1, 'r');
                    this.ajV.setCharAt(length + 2, 'l');
                    return CssTokens$TokenType.cHs;
                }
            }
            this.ajV.setLength(length);
            this.abM();
            return CssTokens$TokenType.cHB;
        }
        if (b) {
            this.n('(');
            ++this.pos;
            return CssTokens$TokenType.cHn;
        }
        if (1 + this.pos < this.cHc && '.' == this.cHb.charAt(this.pos)) {
            final char char5 = this.cHb.charAt(1 + this.pos);
            if ('0' <= char5 && char5 <= '9') {
                this.ajV.append(' ');
            }
        }
        return CssTokens$TokenType.cHl;
    }
    
    private int abT() {
        final String cHb = this.cHb;
        int char1 = cHb.charAt(this.pos);
        if (Character.isHighSurrogate((char)char1) && 1 + this.pos < this.cHc) {
            final char char2 = cHb.charAt(1 + this.pos);
            if (Character.isLowSurrogate(char2)) {
                ++this.pos;
                char1 = 65536 + (char1 - 55296 << 10 | char2 - '\udc00');
            }
        }
        return char1;
    }
    
    private void av(int i, final int n) {
        while (i < n) {
            CssTokens$TokenType cssTokens$TokenType = null;
            switch (this.ajV.charAt(i)) {
                default: {
                    cssTokens$TokenType = CssTokens$TokenType.cHt;
                    break;
                }
                case ' ': {
                    cssTokens$TokenType = CssTokens$TokenType.cHB;
                    break;
                }
                case '}': {
                    cssTokens$TokenType = CssTokens$TokenType.cHK;
                    break;
                }
                case ')': {
                    cssTokens$TokenType = CssTokens$TokenType.cHI;
                    break;
                }
                case ']': {
                    cssTokens$TokenType = CssTokens$TokenType.cHG;
                    break;
                }
            }
            this.a(cssTokens$TokenType, i);
            ++i;
        }
    }
    
    private void ct(final boolean b) {
        final int cHc = this.cHc;
        int n = 0;
        final int length = this.ajV.length();
        final int pos = this.pos;
        int n2 = -1;
        while (this.pos < cHc) {
            final int pos2 = this.pos;
            int n3 = this.abT();
            if (n3 == 92) {
                n3 = this.abN();
            }
            else {
                ++this.pos;
            }
            if (n3 < 0 || !CssTokens.gd(n3)) {
                this.pos = pos2;
                return;
            }
            if (!b && n < 2 && 48 <= n3 && n3 <= 57 && (n2 == 45 || n2 == -1)) {
                this.pos = pos;
                this.ajV.setLength(length);
                break;
            }
            this.ajV.appendCodePoint(n3);
            ++n;
            n2 = n3;
        }
    }
    
    private void gf(final int n) {
        this.cHa = CssTokens.b(this.cHa, this.cHf, this.cHh - n);
        int cHe = this.cHe;
        while (this.cHh > n) {
            final int[] cHg = this.cHg;
            final int cHh = -1 + this.cHh;
            this.cHh = cHh;
            final int n2 = cHg[cHh];
            final int[] cHg2 = this.cHg;
            final int cHh2 = -1 + this.cHh;
            this.cHh = cHh2;
            final int n3 = cHg2[cHh2];
            final int n4 = this.cHa[n3];
            this.cHa[n3 + 1] = cHe;
            this.cHa[this.cHf++] = cHe;
            this.cHa[this.cHf++] = n4;
            this.ajV.appendCodePoint(n2);
            ++cHe;
        }
    }
    
    private CssTokens$TokenType n(final char c) {
        int n = 0;
        CssTokens$TokenType cssTokens$TokenType = null;
        switch (c) {
            default: {
                throw new AssertionError((Object)("Invalid open bracket " + c));
            }
            case '(': {
                n = 41;
                cssTokens$TokenType = CssTokens$TokenType.cHH;
                break;
            }
            case '[': {
                n = 93;
                cssTokens$TokenType = CssTokens$TokenType.cHF;
                break;
            }
            case '{': {
                n = 125;
                cssTokens$TokenType = CssTokens$TokenType.cHJ;
                break;
            }
        }
        this.cHa = CssTokens.b(this.cHa, this.cHf, 2);
        (this.cHg = CssTokens.b(this.cHg, this.cHh, 2))[this.cHh++] = this.cHf;
        this.cHg[this.cHh++] = n;
        this.cHa[this.cHf++] = this.cHe;
        this.cHa[this.cHf++] = -1;
        this.ajV.append(c);
        return cssTokens$TokenType;
    }
    
    private void o(final char c) {
        int i = this.cHh;
        while (i != 0) {
            i -= 2;
            if (c == this.cHg[i + 1]) {
                this.gf(i);
                return;
            }
        }
        this.abM();
    }
    
    private void p(final char c) {
        this.ajV.append(c);
        switch (c) {
            case '$':
            case '+':
            case '-':
            case '.':
            case '/':
            case '<':
            case '@':
            case '\\':
            case '^':
            case '|':
            case '~': {
                this.ajV.append(' ');
                break;
            }
        }
        ++this.pos;
    }
    
    final CssTokens abJ() {
        final int length = this.ajV.length();
        this.gf(0);
        this.av(length, this.ajV.length());
        if (this.cHd == null) {
            return CssTokens.cGW;
        }
        final int[] b = CssTokens.b(this.cHa, this.cHf);
        int length2 = this.ajV.length();
        if (length2 > 0 && this.ajV.charAt(length2 - 1) == ' ') {
            --length2;
            this.cHd.remove(--this.cHe);
        }
        final String substring = this.ajV.substring(0, length2);
        (this.cGR = CssTokens.b(this.cGR, this.cHe, 1))[this.cHe++] = substring.length();
        return new CssTokens(substring, new k(b, (byte)0), CssTokens.b(this.cGR, this.cHe), this.cHd.toArray(CssTokens.cGU), (byte)0);
    }
    
    final void abK() {
        this.abL();
        this.ajV.setLength(0);
        if (this.pos != this.cHc) {
            this.cHd = new ArrayList<CssTokens$TokenType>();
            final String cHb = this.cHb;
            final int cHc = this.cHc;
            while (this.pos < cHc) {
                if (!l.vb && this.cHe != this.cHd.size()) {
                    throw new AssertionError((Object)("token and types out of sync at " + this.cHe + " in `" + cHb + "`"));
                }
                final char char1 = cHb.charAt(this.pos);
                final int pos = this.pos;
                int length = this.ajV.length();
                CssTokens$TokenType cssTokens$TokenType = null;
                switch (char1) {
                    default: {
                        final char c = (char)(char1 | ' ');
                        if (('a' <= c && c <= 'z') || char1 >= '\u0080') {
                            cssTokens$TokenType = this.abS();
                            if (cssTokens$TokenType != null) {
                                break;
                            }
                            ++this.pos;
                            this.abM();
                            cssTokens$TokenType = CssTokens$TokenType.cHB;
                            break;
                        }
                        else {
                            if (char1 > ' ') {
                                this.p(char1);
                                cssTokens$TokenType = CssTokens$TokenType.cHt;
                                break;
                            }
                            this.abL();
                            cssTokens$TokenType = CssTokens$TokenType.cHB;
                            break;
                        }
                        break;
                    }
                    case 9:
                    case 10:
                    case 12:
                    case 13:
                    case 32:
                    case 65279: {
                        this.abL();
                        cssTokens$TokenType = CssTokens$TokenType.cHB;
                        break;
                    }
                    case 47: {
                        char char2;
                        if (1 + this.pos < cHc) {
                            char2 = cHb.charAt(1 + this.pos);
                        }
                        else {
                            char2 = '\0';
                        }
                        if (char2 == '/' || char2 == '*') {
                            this.abL();
                            cssTokens$TokenType = CssTokens$TokenType.cHB;
                            break;
                        }
                        this.p(char1);
                        cssTokens$TokenType = CssTokens$TokenType.cHt;
                        break;
                    }
                    case 60: {
                        if (this.abL()) {
                            cssTokens$TokenType = CssTokens$TokenType.cHB;
                            break;
                        }
                        this.p('<');
                        cssTokens$TokenType = CssTokens$TokenType.cHt;
                        break;
                    }
                    case 62: {
                        this.abM();
                        this.ajV.append('>');
                        cssTokens$TokenType = CssTokens$TokenType.cHt;
                        ++this.pos;
                        break;
                    }
                    case 64: {
                        if (!l.vb && this.cHb.charAt(this.pos) != '@') {
                            throw new AssertionError();
                        }
                        final int length2 = this.ajV.length();
                        this.ajV.append('@');
                        final int pos2 = 1 + this.pos;
                        this.pos = pos2;
                        this.ct(false);
                        int n;
                        if (this.pos == pos2) {
                            --this.pos;
                            this.ajV.setLength(length2);
                            n = 0;
                        }
                        else {
                            n = 1;
                        }
                        if (n != 0) {
                            cssTokens$TokenType = CssTokens$TokenType.cHo;
                            break;
                        }
                        this.p(char1);
                        cssTokens$TokenType = CssTokens$TokenType.cHt;
                        break;
                    }
                    case 35: {
                        this.ajV.append('#');
                        cssTokens$TokenType = this.abQ();
                        if (cssTokens$TokenType == null) {
                            ++this.pos;
                            this.ajV.append(' ');
                            cssTokens$TokenType = CssTokens$TokenType.cHt;
                            break;
                        }
                        break;
                    }
                    case 34:
                    case 39: {
                        cssTokens$TokenType = this.abP();
                        break;
                    }
                    case 85:
                    case 117: {
                        if (this.abR()) {
                            cssTokens$TokenType = CssTokens$TokenType.cHy;
                            break;
                        }
                        cssTokens$TokenType = this.abS();
                        break;
                    }
                    case 48:
                    case 49:
                    case 50:
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57: {
                        cssTokens$TokenType = this.abO();
                        break;
                    }
                    case 43:
                    case 45:
                    case 46: {
                        char char3;
                        if (1 + this.pos < cHc) {
                            char3 = cHb.charAt(1 + this.pos);
                        }
                        else {
                            char3 = '\0';
                        }
                        if (CssTokens.l(char3) || (char3 == '.' && 2 + this.pos < cHc && CssTokens.l(cHb.charAt(2 + this.pos)))) {
                            cssTokens$TokenType = this.abO();
                            break;
                        }
                        if (char1 == '+') {
                            this.p(char1);
                            cssTokens$TokenType = CssTokens$TokenType.cHt;
                            break;
                        }
                        if (char1 == '-') {
                            if (this.abL()) {
                                cssTokens$TokenType = CssTokens$TokenType.cHB;
                                break;
                            }
                            cssTokens$TokenType = this.abS();
                            break;
                        }
                        else {
                            if (!CssTokens.gd(char3)) {
                                this.p('.');
                                cssTokens$TokenType = CssTokens$TokenType.cHt;
                                break;
                            }
                            this.ajV.append('.');
                            ++this.pos;
                            this.ct(false);
                            if (this.pos == pos + 1) {
                                cssTokens$TokenType = CssTokens$TokenType.cHt;
                                this.ajV.append(' ');
                                break;
                            }
                            cssTokens$TokenType = CssTokens$TokenType.cHm;
                            if (this.pos < cHc && '(' == cHb.charAt(this.pos)) {
                                this.ajV.append(' ');
                                break;
                            }
                            break;
                        }
                        break;
                    }
                    case 58: {
                        this.p(char1);
                        cssTokens$TokenType = CssTokens$TokenType.cHC;
                        break;
                    }
                    case 59: {
                        this.p(char1);
                        cssTokens$TokenType = CssTokens$TokenType.cHD;
                        break;
                    }
                    case 44: {
                        this.p(char1);
                        cssTokens$TokenType = CssTokens$TokenType.cHE;
                        break;
                    }
                    case 40:
                    case 91:
                    case 123: {
                        cssTokens$TokenType = this.n(char1);
                        ++this.pos;
                        break;
                    }
                    case 41:
                    case 93:
                    case 125: {
                        this.o(char1);
                        ++this.pos;
                        cssTokens$TokenType = CssTokens$TokenType.cHt;
                        break;
                    }
                    case 36:
                    case 42:
                    case 94:
                    case 124:
                    case 126: {
                        int char4;
                        if (1 + this.pos < cHc) {
                            char4 = cHb.charAt(1 + this.pos);
                        }
                        else {
                            char4 = 0;
                        }
                        if (char4 == 61) {
                            this.pos += 2;
                            this.ajV.append(char1).append('=');
                            cssTokens$TokenType = CssTokens$TokenType.cHz;
                            break;
                        }
                        if (char1 == '|' && char4 == 124) {
                            this.pos += 2;
                            this.ajV.append("||");
                            cssTokens$TokenType = CssTokens$TokenType.cHA;
                            break;
                        }
                        this.p(char1);
                        cssTokens$TokenType = CssTokens$TokenType.cHt;
                        break;
                    }
                    case 95: {
                        cssTokens$TokenType = this.abS();
                        break;
                    }
                    case 92: {
                        cssTokens$TokenType = this.abS();
                        if (cssTokens$TokenType == null) {
                            ++this.pos;
                            this.abM();
                            cssTokens$TokenType = CssTokens$TokenType.cHB;
                            break;
                        }
                        break;
                    }
                }
                if (!l.vb && this.pos <= pos) {
                    throw new AssertionError((Object)("empty token at " + this.pos + ", ch0=" + cHb.charAt(pos) + ":U+" + Integer.toHexString(cHb.charAt(pos))));
                }
                final int length3 = this.ajV.length();
                if (length3 <= length) {
                    continue;
                }
                if (cssTokens$TokenType == CssTokens$TokenType.cHt) {
                    this.av(length, length3);
                }
                else {
                    if (cssTokens$TokenType != CssTokens$TokenType.cHB && this.ajV.charAt(length) == ' ') {
                        this.a(CssTokens$TokenType.cHB, length);
                        ++length;
                        if (!l.vb && length == length3) {
                            throw new AssertionError();
                        }
                    }
                    this.a(cssTokens$TokenType, length);
                    if (cssTokens$TokenType == CssTokens$TokenType.cHB) {
                        continue;
                    }
                    final int length4 = this.ajV.length();
                    if (length + 1 >= length4 || this.ajV.charAt(length4 - 1) != ' ') {
                        continue;
                    }
                    this.a(CssTokens$TokenType.cHB, length4 - 1);
                }
            }
        }
    }
}
