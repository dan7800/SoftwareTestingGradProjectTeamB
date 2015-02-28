package org.apache.james.mime4j.field.address.parser;

import java.io.*;
import java.util.*;

public final class AddressListParser implements m, o
{
    private static int[] cEK;
    private static int[] cEL;
    s cEA;
    public u cEB;
    public u cEC;
    private int cED;
    private u cEE;
    private u cEF;
    private int cEG;
    public boolean cEH;
    private int cEI;
    private final int[] cEJ;
    private final l[] cEM;
    private boolean cEN;
    private int cEO;
    private final AddressListParser$LookaheadSuccess cEP;
    private Vector<int[]> cEQ;
    private int[] cER;
    private int cES;
    private int[] cET;
    private int cEU;
    protected q cEy;
    public n cEz;
    
    static {
        AddressListParser.cEK = new int[] { 2, -2147467200, 8, -2147467200, 80, -2147467200, -2147467200, -2147467200, 8, -2147467200, 256, 264, 8, -2147467264, -2147467264, -2147467264, -2147466752, 512, -2147467264, 16896, 512, 278528 };
        AddressListParser.cEL = new int[] { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
    }
    
    public AddressListParser(final Reader reader) {
        this.cEy = new q();
        this.cEH = false;
        this.cEJ = new int[22];
        this.cEM = new l[2];
        this.cEN = false;
        this.cEO = 0;
        this.cEP = new AddressListParser$LookaheadSuccess((byte)0);
        this.cEQ = new Vector<int[]>();
        this.cES = -1;
        this.cET = new int[100];
        this.cEA = new s(reader);
        this.cEz = new n(this.cEA);
        this.cEB = new u();
        this.cED = -1;
        this.cEI = 0;
        int n = 0;
        int i;
        while (true) {
            i = 0;
            if (n >= 22) {
                break;
            }
            this.cEJ[n] = -1;
            ++n;
        }
        while (i < this.cEM.length) {
            this.cEM[i] = new l();
            ++i;
        }
    }
    
    private void a(final r r) {
        ((t)r).cFy = this.fP(1);
    }
    
    private void aaO() {
        boolean b = true;
        final b b2 = new b();
        this.cEy.abg();
        this.a(b2);
    Label_0033:
        while (true) {
            Label_0133: {
                try {
                    if (this.aaU()) {
                        this.aaS();
                        this.cEy.c(b2);
                        this.b(b2);
                        return;
                    }
                    if (this.cED == -1) {
                        final int n = this.aaZ();
                        break Label_0133;
                    }
                    break Label_0133;
                    Label_0064: {
                        this.cEJ[5] = this.cEI;
                    }
                    this.fN(-1);
                    throw new ParseException();
                }
                catch (Throwable t) {
                    try {
                        this.cEy.abf();
                        final Throwable t2;
                        Label_0467: {
                            try {
                                if (t instanceof RuntimeException) {
                                    throw (RuntimeException)t;
                                }
                                break Label_0467;
                            }
                            finally {
                                b = false;
                            }
                            if (b) {
                                this.cEy.c(b2);
                                this.b(b2);
                                throw t2;
                            }
                            throw t2;
                            f f;
                            int n2;
                            int n3;
                            boolean b3;
                            final Throwable t4;
                            int n4;
                            int n5;
                            Label_0259_Outer:Label_0528_Outer:
                            while (true) {
                                f = new f();
                                this.cEy.abg();
                                this.a(f);
                                while (true) {
                                Block_20_Outer:
                                    while (true) {
                                        try {
                                            this.fN(4);
                                            if (this.cED == -1) {
                                                n2 = this.aaZ();
                                                break Block_20_Outer;
                                            }
                                            n2 = this.cED;
                                            break Block_20_Outer;
                                            // iftrue(Label_0378:, this.cED != -1)
                                            while (true) {
                                                n3 = this.aaZ();
                                                break Block_20_Outer;
                                                Label_0248: {
                                                    this.cEJ[7] = this.cEI;
                                                }
                                                continue Label_0259_Outer;
                                            }
                                            Label_0276: {
                                                this.cEJ[8] = this.cEI;
                                            }
                                            this.fN(5);
                                            this.cEy.c(f);
                                            this.b(f);
                                            continue Label_0033;
                                            Label_0320:
                                            this.aaP();
                                        }
                                        catch (Throwable t3) {
                                            this.cEy.abf();
                                            Label_0440: {
                                                try {
                                                    if (t3 instanceof RuntimeException) {
                                                        throw (RuntimeException)t3;
                                                    }
                                                    break Label_0440;
                                                }
                                                finally {
                                                    b3 = false;
                                                }
                                                if (b3) {
                                                    this.cEy.c(f);
                                                    this.b(f);
                                                }
                                                throw t4;
                                            }
                                            if (t3 instanceof ParseException) {
                                                throw (ParseException)t3;
                                            }
                                            throw (Error)t3;
                                            // iftrue(Label_0481:, !t instanceof ParseException)
                                            // switch([Lcom.strobel.decompiler.ast.Label;@9a5f090, n)
                                            // switch([Lcom.strobel.decompiler.ast.Label;@646d8a31, n5)
                                            // iftrue(Label_0424:, this.cED != -1)
                                        Label_0612:
                                            while (true) {
                                                n4 = this.aaZ();
                                                break Label_0612;
                                                throw (ParseException)t;
                                                Label_0460: {
                                                    this.aaQ();
                                                }
                                                continue Label_0033;
                                                Label_0410:
                                                this.cEJ[9] = this.cEI;
                                                continue Block_20_Outer;
                                                Label_0424:
                                                n4 = this.cED;
                                                break Label_0612;
                                                Label_0378:
                                                n3 = this.cED;
                                                break Block_20_Outer;
                                                Label_0481:
                                                throw (Error)t;
                                                Label_0387:
                                                this.fN(3);
                                                continue Label_0528_Outer;
                                            }
                                            // switch([Lcom.strobel.decompiler.ast.Label;@62038b30, n4)
                                            // switch([Lcom.strobel.decompiler.ast.Label;@5c4eced6, n3)
                                            // switch([Lcom.strobel.decompiler.ast.Label;@7ac994bf, n2)
                                            Label_0433: {
                                                this.aaP();
                                            }
                                        }
                                        finally {
                                            b3 = b;
                                        }
                                        break;
                                    }
                                    Label_0149: {
                                        this.aaR();
                                    }
                                    if (this.cED == -1) {
                                        n5 = this.aaZ();
                                        continue;
                                    }
                                    n5 = this.cED;
                                    continue;
                                }
                                Label_0142: {
                                    this.aaQ();
                                }
                                continue Label_0033;
                                Label_0170:
                                this.cEJ[4] = this.cEI;
                                this.fN(-1);
                                throw new ParseException();
                            }
                        }
                        throw t2;
                        final int n = this.cED;
                    }
                    finally {}
                }
            }
            break;
        }
    }
    
    private void aaP() {
        boolean b = true;
        final h h = new h();
        this.cEy.abg();
        this.a(h);
        int n;
        i i;
        boolean b2;
        final Throwable t3;
        final Throwable t4;
        Label_0033:Label_0064_Outer:
        while (true) {
        Label_0064:
            while (true) {
                try {
                    if (this.aaV()) {
                        this.aaS();
                        this.cEy.c(h);
                        this.b(h);
                        return;
                    }
                    if (this.cED == -1) {
                        n = this.aaZ();
                        break Label_0064;
                    }
                    break Label_0064;
                    this.cEJ[6] = this.cEI;
                    this.fN(-1);
                    throw new ParseException();
                }
                catch (Throwable t) {
                    try {
                        this.cEy.abf();
                        Label_0115: {
                            Label_0269: {
                                try {
                                    if (t instanceof RuntimeException) {
                                        throw (RuntimeException)t;
                                    }
                                    break Label_0269;
                                }
                                finally {
                                    b = false;
                                }
                                break Label_0115;
                                while (true) {
                                    i = new i();
                                    this.cEy.abg();
                                    this.a(i);
                                    while (true) {
                                        try {
                                            try {
                                                this.aaR();
                                                this.aaQ();
                                                this.cEy.c(i);
                                                this.b(i);
                                                continue Label_0033;
                                            }
                                            catch (Throwable t2) {
                                                this.cEy.abf();
                                                Label_0249: {
                                                    try {
                                                        if (t2 instanceof RuntimeException) {
                                                            throw (RuntimeException)t2;
                                                        }
                                                        break Label_0249;
                                                    }
                                                    finally {
                                                        b2 = false;
                                                    }
                                                    if (b2) {
                                                        this.cEy.c(i);
                                                        this.b(i);
                                                    }
                                                    throw t3;
                                                }
                                                if (t2 instanceof ParseException) {
                                                    throw (ParseException)t2;
                                                }
                                                throw (Error)t2;
                                            }
                                            if (t instanceof ParseException) {
                                                throw (ParseException)t;
                                            }
                                            throw (Error)t;
                                        }
                                        finally {
                                            b2 = b;
                                            continue;
                                        }
                                        break;
                                    }
                                    switch (n) {
                                        default: {
                                            continue Label_0064;
                                        }
                                        case 6: {
                                            break Label_0269;
                                        }
                                        case 14:
                                        case 31: {
                                            continue Label_0064_Outer;
                                        }
                                    }
                                }
                            }
                            this.aaQ();
                            continue Label_0033;
                        }
                        if (b) {
                            this.cEy.c(h);
                            this.b(h);
                        }
                        throw t4;
                        n = this.cED;
                    }
                    finally {}
                }
                break;
            }
            break;
        }
    }
    
    private void aaQ() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_1       
        //     1: istore_1       
        //     2: new             Lorg/apache/james/mime4j/field/address/parser/d;
        //     5: dup            
        //     6: invokespecial   org/apache/james/mime4j/field/address/parser/d.<init>:()V
        //     9: astore_2       
        //    10: aload_0        
        //    11: getfield        org/apache/james/mime4j/field/address/parser/AddressListParser.cEy:Lorg/apache/james/mime4j/field/address/parser/q;
        //    14: invokevirtual   org/apache/james/mime4j/field/address/parser/q.abg:()V
        //    17: aload_0        
        //    18: aload_2        
        //    19: invokespecial   org/apache/james/mime4j/field/address/parser/AddressListParser.a:(Lorg/apache/james/mime4j/field/address/parser/r;)V
        //    22: aload_0        
        //    23: bipush          6
        //    25: invokespecial   org/apache/james/mime4j/field/address/parser/AddressListParser.fN:(I)Lorg/apache/james/mime4j/field/address/parser/u;
        //    28: pop            
        //    29: aload_0        
        //    30: getfield        org/apache/james/mime4j/field/address/parser/AddressListParser.cED:I
        //    33: iconst_m1      
        //    34: if_icmpne       82
        //    37: aload_0        
        //    38: invokespecial   org/apache/james/mime4j/field/address/parser/AddressListParser.aaZ:()I
        //    41: istore          6
        //    43: goto            390
        //    46: aload_0        
        //    47: getfield        org/apache/james/mime4j/field/address/parser/AddressListParser.cEJ:[I
        //    50: bipush          10
        //    52: aload_0        
        //    53: getfield        org/apache/james/mime4j/field/address/parser/AddressListParser.cEI:I
        //    56: iastore        
        //    57: aload_0        
        //    58: invokespecial   org/apache/james/mime4j/field/address/parser/AddressListParser.aaS:()V
        //    61: aload_0        
        //    62: bipush          7
        //    64: invokespecial   org/apache/james/mime4j/field/address/parser/AddressListParser.fN:(I)Lorg/apache/james/mime4j/field/address/parser/u;
        //    67: pop            
        //    68: aload_0        
        //    69: getfield        org/apache/james/mime4j/field/address/parser/AddressListParser.cEy:Lorg/apache/james/mime4j/field/address/parser/q;
        //    72: aload_2        
        //    73: invokevirtual   org/apache/james/mime4j/field/address/parser/q.c:(Lorg/apache/james/mime4j/field/address/parser/r;)V
        //    76: aload_0        
        //    77: aload_2        
        //    78: invokespecial   org/apache/james/mime4j/field/address/parser/AddressListParser.b:(Lorg/apache/james/mime4j/field/address/parser/r;)V
        //    81: return         
        //    82: aload_0        
        //    83: getfield        org/apache/james/mime4j/field/address/parser/AddressListParser.cED:I
        //    86: istore          6
        //    88: goto            390
        //    91: new             Lorg/apache/james/mime4j/field/address/parser/k;
        //    94: dup            
        //    95: invokespecial   org/apache/james/mime4j/field/address/parser/k.<init>:()V
        //    98: astore          7
        //   100: aload_0        
        //   101: getfield        org/apache/james/mime4j/field/address/parser/AddressListParser.cEy:Lorg/apache/james/mime4j/field/address/parser/q;
        //   104: invokevirtual   org/apache/james/mime4j/field/address/parser/q.abg:()V
        //   107: aload_0        
        //   108: aload           7
        //   110: invokespecial   org/apache/james/mime4j/field/address/parser/AddressListParser.a:(Lorg/apache/james/mime4j/field/address/parser/r;)V
        //   113: aload_0        
        //   114: bipush          8
        //   116: invokespecial   org/apache/james/mime4j/field/address/parser/AddressListParser.fN:(I)Lorg/apache/james/mime4j/field/address/parser/u;
        //   119: pop            
        //   120: aload_0        
        //   121: invokespecial   org/apache/james/mime4j/field/address/parser/AddressListParser.aaT:()V
        //   124: aload_0        
        //   125: getfield        org/apache/james/mime4j/field/address/parser/AddressListParser.cED:I
        //   128: iconst_m1      
        //   129: if_icmpne       221
        //   132: aload_0        
        //   133: invokespecial   org/apache/james/mime4j/field/address/parser/AddressListParser.aaZ:()I
        //   136: istore          12
        //   138: goto            412
        //   141: aload_0        
        //   142: getfield        org/apache/james/mime4j/field/address/parser/AddressListParser.cEJ:[I
        //   145: bipush          11
        //   147: aload_0        
        //   148: getfield        org/apache/james/mime4j/field/address/parser/AddressListParser.cEI:I
        //   151: iastore        
        //   152: aload_0        
        //   153: iconst_4       
        //   154: invokespecial   org/apache/james/mime4j/field/address/parser/AddressListParser.fN:(I)Lorg/apache/james/mime4j/field/address/parser/u;
        //   157: pop            
        //   158: aload_0        
        //   159: getfield        org/apache/james/mime4j/field/address/parser/AddressListParser.cEy:Lorg/apache/james/mime4j/field/address/parser/q;
        //   162: aload           7
        //   164: invokevirtual   org/apache/james/mime4j/field/address/parser/q.c:(Lorg/apache/james/mime4j/field/address/parser/r;)V
        //   167: aload_0        
        //   168: aload           7
        //   170: invokespecial   org/apache/james/mime4j/field/address/parser/AddressListParser.b:(Lorg/apache/james/mime4j/field/address/parser/r;)V
        //   173: goto            57
        //   176: astore          4
        //   178: aload_0        
        //   179: getfield        org/apache/james/mime4j/field/address/parser/AddressListParser.cEy:Lorg/apache/james/mime4j/field/address/parser/q;
        //   182: invokevirtual   org/apache/james/mime4j/field/address/parser/q.abf:()V
        //   185: aload           4
        //   187: instanceof      Ljava/lang/RuntimeException;
        //   190: ifeq            362
        //   193: aload           4
        //   195: checkcast       Ljava/lang/RuntimeException;
        //   198: athrow         
        //   199: astore_3       
        //   200: iconst_0       
        //   201: istore_1       
        //   202: iload_1        
        //   203: ifeq            219
        //   206: aload_0        
        //   207: getfield        org/apache/james/mime4j/field/address/parser/AddressListParser.cEy:Lorg/apache/james/mime4j/field/address/parser/q;
        //   210: aload_2        
        //   211: invokevirtual   org/apache/james/mime4j/field/address/parser/q.c:(Lorg/apache/james/mime4j/field/address/parser/r;)V
        //   214: aload_0        
        //   215: aload_2        
        //   216: invokespecial   org/apache/james/mime4j/field/address/parser/AddressListParser.b:(Lorg/apache/james/mime4j/field/address/parser/r;)V
        //   219: aload_3        
        //   220: athrow         
        //   221: aload_0        
        //   222: getfield        org/apache/james/mime4j/field/address/parser/AddressListParser.cED:I
        //   225: istore          12
        //   227: goto            412
        //   230: aload_0        
        //   231: iconst_3       
        //   232: invokespecial   org/apache/james/mime4j/field/address/parser/AddressListParser.fN:(I)Lorg/apache/james/mime4j/field/address/parser/u;
        //   235: pop            
        //   236: aload_0        
        //   237: getfield        org/apache/james/mime4j/field/address/parser/AddressListParser.cED:I
        //   240: iconst_m1      
        //   241: if_icmpne       333
        //   244: aload_0        
        //   245: invokespecial   org/apache/james/mime4j/field/address/parser/AddressListParser.aaZ:()I
        //   248: istore          13
        //   250: goto            440
        //   253: aload_0        
        //   254: getfield        org/apache/james/mime4j/field/address/parser/AddressListParser.cEJ:[I
        //   257: bipush          12
        //   259: aload_0        
        //   260: getfield        org/apache/james/mime4j/field/address/parser/AddressListParser.cEI:I
        //   263: iastore        
        //   264: aload_0        
        //   265: bipush          8
        //   267: invokespecial   org/apache/james/mime4j/field/address/parser/AddressListParser.fN:(I)Lorg/apache/james/mime4j/field/address/parser/u;
        //   270: pop            
        //   271: aload_0        
        //   272: invokespecial   org/apache/james/mime4j/field/address/parser/AddressListParser.aaT:()V
        //   275: goto            124
        //   278: astore          10
        //   280: aload_0        
        //   281: getfield        org/apache/james/mime4j/field/address/parser/AddressListParser.cEy:Lorg/apache/james/mime4j/field/address/parser/q;
        //   284: invokevirtual   org/apache/james/mime4j/field/address/parser/q.abf:()V
        //   287: aload           10
        //   289: instanceof      Ljava/lang/RuntimeException;
        //   292: ifeq            342
        //   295: aload           10
        //   297: checkcast       Ljava/lang/RuntimeException;
        //   300: athrow         
        //   301: astore          8
        //   303: iconst_0       
        //   304: istore          9
        //   306: iload           9
        //   308: ifeq            326
        //   311: aload_0        
        //   312: getfield        org/apache/james/mime4j/field/address/parser/AddressListParser.cEy:Lorg/apache/james/mime4j/field/address/parser/q;
        //   315: aload           7
        //   317: invokevirtual   org/apache/james/mime4j/field/address/parser/q.c:(Lorg/apache/james/mime4j/field/address/parser/r;)V
        //   320: aload_0        
        //   321: aload           7
        //   323: invokespecial   org/apache/james/mime4j/field/address/parser/AddressListParser.b:(Lorg/apache/james/mime4j/field/address/parser/r;)V
        //   326: aload           8
        //   328: athrow         
        //   329: astore_3       
        //   330: goto            202
        //   333: aload_0        
        //   334: getfield        org/apache/james/mime4j/field/address/parser/AddressListParser.cED:I
        //   337: istore          13
        //   339: goto            440
        //   342: aload           10
        //   344: instanceof      Lorg/apache/james/mime4j/field/address/parser/ParseException;
        //   347: ifeq            356
        //   350: aload           10
        //   352: checkcast       Lorg/apache/james/mime4j/field/address/parser/ParseException;
        //   355: athrow         
        //   356: aload           10
        //   358: checkcast       Ljava/lang/Error;
        //   361: athrow         
        //   362: aload           4
        //   364: instanceof      Lorg/apache/james/mime4j/field/address/parser/ParseException;
        //   367: ifeq            376
        //   370: aload           4
        //   372: checkcast       Lorg/apache/james/mime4j/field/address/parser/ParseException;
        //   375: athrow         
        //   376: aload           4
        //   378: checkcast       Ljava/lang/Error;
        //   381: athrow         
        //   382: astore          8
        //   384: iload_1        
        //   385: istore          9
        //   387: goto            306
        //   390: iload           6
        //   392: tableswitch {
        //               16: 91
        //          default: 46
        //        }
        //   412: iload           12
        //   414: lookupswitch {
        //                3: 236
        //                8: 236
        //          default: 141
        //        }
        //   440: iload           13
        //   442: tableswitch {
        //                6: 230
        //          default: 253
        //        }
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  22     43     176    382    Ljava/lang/Throwable;
        //  22     43     329    333    Any
        //  46     57     176    382    Ljava/lang/Throwable;
        //  46     57     329    333    Any
        //  57     68     176    382    Ljava/lang/Throwable;
        //  57     68     329    333    Any
        //  82     88     176    382    Ljava/lang/Throwable;
        //  82     88     329    333    Any
        //  91     113    176    382    Ljava/lang/Throwable;
        //  91     113    329    333    Any
        //  113    124    278    362    Ljava/lang/Throwable;
        //  113    124    382    390    Any
        //  124    138    278    362    Ljava/lang/Throwable;
        //  124    138    382    390    Any
        //  141    158    278    362    Ljava/lang/Throwable;
        //  141    158    382    390    Any
        //  158    173    176    382    Ljava/lang/Throwable;
        //  158    173    329    333    Any
        //  178    185    329    333    Any
        //  185    199    199    202    Any
        //  221    227    278    362    Ljava/lang/Throwable;
        //  221    227    382    390    Any
        //  230    236    278    362    Ljava/lang/Throwable;
        //  230    236    382    390    Any
        //  236    250    278    362    Ljava/lang/Throwable;
        //  236    250    382    390    Any
        //  253    275    278    362    Ljava/lang/Throwable;
        //  253    275    382    390    Any
        //  280    287    382    390    Any
        //  287    301    301    306    Any
        //  311    326    176    382    Ljava/lang/Throwable;
        //  311    326    329    333    Any
        //  326    329    176    382    Ljava/lang/Throwable;
        //  326    329    329    333    Any
        //  333    339    278    362    Ljava/lang/Throwable;
        //  333    339    382    390    Any
        //  342    356    301    306    Any
        //  356    362    301    306    Any
        //  362    376    199    202    Any
        //  376    382    199    202    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0124:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
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
    
    private void aaR() {
        final j j = new j();
        this.cEy.abg();
        this.a(j);
    Label_0036_Outer:
        while (true) {
            while (true) {
                int n = 0;
                Label_0153: {
                    Label_0077: {
                        try {
                            if (this.cED == -1) {
                                n = this.aaZ();
                                break Label_0153;
                            }
                            break Label_0077;
                            this.cEJ[13] = this.cEI;
                            this.fN(-1);
                            throw new ParseException();
                        }
                        finally {
                            this.cEy.c(j);
                            this.b(j);
                        }
                    }
                    n = this.cED;
                }
                switch (n) {
                    default: {
                        continue;
                    }
                    case 14: {
                        this.fN(14);
                        break;
                    }
                    case 31: {
                        this.fN(31);
                        break;
                    }
                }
                break;
            }
            int n2;
            if (this.cED == -1) {
                n2 = this.aaZ();
            }
            else {
                n2 = this.cED;
            }
            switch (n2) {
                case 14:
                case 31: {
                    continue Label_0036_Outer;
                }
                default: {
                    this.cEJ[14] = this.cEI;
                    this.cEy.c(j);
                    this.b(j);
                }
            }
        }
    }
    
    private void aaS() {
        a a = null;
        g g = null;
        u u = null;
    Label_0172:
        while (true) {
            a = new a();
            boolean b = true;
            this.cEy.abg();
            this.a(a);
        Label_0426:
            while (true) {
                int n = 0;
                Label_0452: {
                    try {
                        g = new g();
                        this.cEy.abg();
                        this.a(g);
                        try {
                            if (this.cED == -1) {
                                n = this.aaZ();
                                break Label_0452;
                            }
                            this.cEJ[15] = this.cEI;
                            this.fN(-1);
                            throw new ParseException();
                        }
                        finally {
                            this.cEy.c(g);
                            this.b(g);
                        }
                    }
                    catch (Throwable t) {
                        try {
                            this.cEy.abf();
                            b = false;
                            final boolean b2 = t instanceof RuntimeException;
                            b = false;
                            if (b2) {
                                throw (RuntimeException)t;
                            }
                            break Label_0426;
                        }
                        finally {
                            if (b) {
                                this.cEy.c(a);
                                this.b(a);
                            }
                        }
                    }
                    n = this.cED;
                }
                switch (n) {
                    default: {
                        continue;
                    }
                    case 14: {
                        u = this.fN(14);
                        break Label_0172;
                    }
                    case 31: {
                        u = this.fN(31);
                        break Label_0172;
                    }
                }
                break;
            }
            final Throwable t;
            if (t instanceof ParseException) {
                throw (ParseException)t;
            }
            throw (Error)t;
        }
        while (true) {
            int n2;
            if (this.cED == -1) {
                n2 = this.aaZ();
            }
            else {
                n2 = this.cED;
            }
            switch (n2) {
                default: {
                    this.cEJ[16] = this.cEI;
                    this.cEy.c(g);
                    this.b(g);
                    this.fN(8);
                    this.aaT();
                    this.cEy.c(a);
                    this.b(a);
                }
                case 9:
                case 14:
                case 31: {
                    int n3;
                    if (this.cED == -1) {
                        n3 = this.aaZ();
                    }
                    else {
                        n3 = this.cED;
                    }
                    switch (n3) {
                        default: {
                            this.cEJ[17] = this.cEI;
                            break;
                        }
                        case 9: {
                            u = this.fN(9);
                            break;
                        }
                    }
                    if (u.cGa.charAt(-1 + u.cGa.length()) != '.' || u.cFV == 31) {
                        throw new ParseException("Words in local part must be separated by '.'");
                    }
                    int n4;
                    if (this.cED == -1) {
                        n4 = this.aaZ();
                    }
                    else {
                        n4 = this.cED;
                    }
                    switch (n4) {
                        default: {
                            this.cEJ[18] = this.cEI;
                            this.fN(-1);
                            throw new ParseException();
                        }
                        case 14: {
                            u = this.fN(14);
                            continue;
                        }
                        case 31: {
                            u = this.fN(31);
                            continue;
                        }
                    }
                    break;
                }
            }
        }
    }
    
    private void aaT() {
        e e = null;
    Label_0036_Outer:
        while (true) {
            e = new e();
            this.cEy.abg();
            this.a(e);
            while (true) {
                int n = 0;
                Label_0246: {
                    Label_0077: {
                        try {
                            if (this.cED == -1) {
                                n = this.aaZ();
                                break Label_0246;
                            }
                            break Label_0077;
                            this.cEJ[21] = this.cEI;
                            this.fN(-1);
                            throw new ParseException();
                        }
                        finally {
                            this.cEy.c(e);
                            this.b(e);
                        }
                    }
                    n = this.cED;
                }
                switch (n) {
                    default: {
                        continue;
                    }
                    case 14: {
                        u u = this.fN(14);
                        while (true) {
                            int n2;
                            if (this.cED == -1) {
                                n2 = this.aaZ();
                            }
                            else {
                                n2 = this.cED;
                            }
                            switch (n2) {
                                default: {
                                    this.cEJ[19] = this.cEI;
                                    break Label_0036_Outer;
                                }
                                case 9:
                                case 14: {
                                    int n3;
                                    if (this.cED == -1) {
                                        n3 = this.aaZ();
                                    }
                                    else {
                                        n3 = this.cED;
                                    }
                                    switch (n3) {
                                        default: {
                                            this.cEJ[20] = this.cEI;
                                            break;
                                        }
                                        case 9: {
                                            u = this.fN(9);
                                            break;
                                        }
                                    }
                                    if (u.cGa.charAt(-1 + u.cGa.length()) != '.') {
                                        throw new ParseException("Atoms in domain names must be separated by '.'");
                                    }
                                    u = this.fN(14);
                                    continue Label_0036_Outer;
                                }
                            }
                        }
                        break;
                    }
                    case 18: {
                        this.fN(18);
                        break Label_0036_Outer;
                    }
                }
                break;
            }
        }
        this.cEy.c(e);
        this.b(e);
    }
    
    private final boolean aaU() {
        boolean b = true;
        this.cEG = Integer.MAX_VALUE;
        final u ceb = this.cEB;
        this.cEE = ceb;
        this.cEF = ceb;
        try {
            if (this.aaX()) {
                b = false;
            }
            return b;
        }
        catch (AddressListParser$LookaheadSuccess addressListParser$LookaheadSuccess) {
            return b;
        }
        finally {
            this.as(0, Integer.MAX_VALUE);
        }
    }
    
    private final boolean aaV() {
        this.cEG = Integer.MAX_VALUE;
        final u ceb = this.cEB;
        this.cEE = ceb;
        this.cEF = ceb;
        try {
            return !this.aaY();
        }
        catch (AddressListParser$LookaheadSuccess addressListParser$LookaheadSuccess) {
            return true;
        }
        finally {
            this.as(1, Integer.MAX_VALUE);
        }
    }
    
    private final boolean aaW() {
        final u cee = this.cEE;
        boolean b = false;
        Label_0031: {
            if (this.fO(14)) {
                this.cEE = cee;
                if (this.fO(31)) {
                    b = true;
                    break Label_0031;
                }
            }
            u cee2 = null;
        Label_0095_Outer:
            while (true) {
                cee2 = this.cEE;
                final u cee3 = this.cEE;
                if (this.fO(9)) {
                    this.cEE = cee3;
                }
                final u cee4 = this.cEE;
                while (true) {
                    Label_0111: {
                        if (!this.fO(14)) {
                            break Label_0111;
                        }
                        this.cEE = cee4;
                        if (!this.fO(31)) {
                            break Label_0111;
                        }
                        final int n = 1;
                        if (n != 0) {
                            break;
                        }
                        continue Label_0095_Outer;
                    }
                    final int n = 0;
                    continue;
                }
            }
            this.cEE = cee2;
            b = false;
        }
        if (!b && !this.fO(8)) {
            final u cee5 = this.cEE;
            int n2;
            if (this.fO(14)) {
                n2 = 1;
            }
            else {
                u cee6;
                int n3;
                do {
                    cee6 = this.cEE;
                    final u cee7 = this.cEE;
                    if (this.fO(9)) {
                        this.cEE = cee7;
                    }
                    if (this.fO(14)) {
                        n3 = 1;
                    }
                    else {
                        n3 = 0;
                    }
                } while (n3 == 0);
                this.cEE = cee6;
                n2 = 0;
            }
            while (true) {
                Label_0236: {
                    if (n2 == 0) {
                        break Label_0236;
                    }
                    this.cEE = cee5;
                    if (!this.fO(18)) {
                        break Label_0236;
                    }
                    final int n4 = 1;
                    if (n4 == 0) {
                        return false;
                    }
                    return true;
                }
                final int n4 = 0;
                continue;
            }
        }
        return true;
    }
    
    private final boolean aaX() {
        return this.aaW();
    }
    
    private final boolean aaY() {
        return this.aaW();
    }
    
    private final int aaZ() {
        final u cGb = this.cEB.cGb;
        this.cEC = cGb;
        if (cGb == null) {
            final u ceb = this.cEB;
            final u abc = this.cEz.abc();
            ceb.cGb = abc;
            return this.cED = abc.cFV;
        }
        return this.cED = this.cEC.cFV;
    }
    
    private void ar(final int n, final int ceu) {
        if (ceu < 100) {
            if (ceu == 1 + this.cEU) {
                this.cET[this.cEU++] = n;
                return;
            }
            if (this.cEU != 0) {
                this.cER = new int[this.cEU];
                for (int i = 0; i < this.cEU; ++i) {
                    this.cER[i] = this.cET[i];
                }
                final Enumeration<int[]> elements = this.cEQ.elements();
                int n2 = 0;
            Label_0187:
                while (true) {
                    while (elements.hasMoreElements()) {
                        final int[] array = elements.nextElement();
                        int n3 = 0;
                        Label_0170: {
                            if (array.length == this.cER.length) {
                                int j = 0;
                                while (true) {
                                    while (j < this.cER.length) {
                                        if (array[j] != this.cER[j]) {
                                            n3 = 0;
                                            if (n3 == 0) {
                                                break Label_0170;
                                            }
                                            break Label_0187;
                                        }
                                        else {
                                            ++j;
                                        }
                                    }
                                    n3 = 1;
                                    continue;
                                }
                                if (n3 == 0) {
                                    this.cEQ.addElement(this.cER);
                                }
                                if (ceu != 0) {
                                    this.cET[(this.cEU = ceu) - 1] = n;
                                }
                                return;
                            }
                            else {
                                n3 = n2;
                            }
                        }
                        n2 = n3;
                    }
                    int n3 = n2;
                    continue Label_0187;
                }
            }
        }
    }
    
    private final void as(final int n, final int n2) {
        l cey;
        for (cey = this.cEM[n]; cey.cEV > this.cEI; cey = cey.cEY) {
            if (cey.cEY == null) {
                final l cey2 = new l();
                cey.cEY = cey2;
                cey = cey2;
                break;
            }
        }
        cey.cEV = Integer.MAX_VALUE + this.cEI - this.cEG;
        cey.cEW = this.cEB;
        cey.cEX = Integer.MAX_VALUE;
    }
    
    private void b(final r r) {
        ((t)r).cFz = this.fP(0);
    }
    
    private final u fN(final int ces) {
        int i = 0;
        final u ceb = this.cEB;
        if (ceb.cGb != null) {
            this.cEB = this.cEB.cGb;
        }
        else {
            final u ceb2 = this.cEB;
            final u abc = this.cEz.abc();
            ceb2.cGb = abc;
            this.cEB = abc;
        }
        this.cED = -1;
        if (this.cEB.cFV == ces) {
            ++this.cEI;
            if (++this.cEO > 100) {
                this.cEO = 0;
                while (i < this.cEM.length) {
                    for (l cey = this.cEM[i]; cey != null; cey = cey.cEY) {
                        if (cey.cEV < this.cEI) {
                            cey.cEW = null;
                        }
                    }
                    ++i;
                }
            }
            return this.cEB;
        }
        this.cEB = ceb;
        this.cES = ces;
        this.cEQ.removeAllElements();
        final boolean[] array = new boolean[34];
        for (int j = 0; j < 34; ++j) {
            array[j] = false;
        }
        if (this.cES >= 0) {
            array[this.cES] = true;
            this.cES = -1;
        }
        for (int k = 0; k < 22; ++k) {
            if (this.cEJ[k] == this.cEI) {
                for (int l = 0; l < 32; ++l) {
                    if ((AddressListParser.cEK[k] & 1 << l) != 0x0) {
                        array[l] = true;
                    }
                    if ((AddressListParser.cEL[k] & 1 << l) != 0x0) {
                        array[l + 32] = true;
                    }
                }
            }
        }
        for (int n = 0; n < 34; ++n) {
            if (array[n]) {
                (this.cER = new int[1])[0] = n;
                this.cEQ.addElement(this.cER);
            }
        }
        this.cEU = 0;
        this.cEN = true;
        int n2 = 0;
    Label_0573_Outer:
        while (true) {
            Label_0495: {
                if (n2 >= 2) {
                    break Label_0495;
                }
                while (true) {
                    try {
                        l cey2 = this.cEM[n2];
                        do {
                            if (cey2.cEV > this.cEI) {
                                this.cEG = cey2.cEX;
                                final u cew = cey2.cEW;
                                this.cEE = cew;
                                this.cEF = cew;
                                switch (n2) {
                                    case 0: {
                                        this.aaX();
                                        break;
                                    }
                                    case 1: {
                                        this.aaY();
                                        break;
                                    }
                                }
                            }
                            cey2 = cey2.cEY;
                        } while (cey2 != null);
                        ++n2;
                        continue Label_0573_Outer;
                        Label_0556: {
                            final int[][] array2;
                            throw new ParseException(this.cEB, array2, AddressListParser.tokenImage);
                        }
                        this.cEN = false;
                        this.ar(0, 0);
                        final int[][] array2 = new int[this.cEQ.size()][];
                        int n3 = 0;
                        while (true) {
                            Label_0521: {
                                break Label_0521;
                                array2[n3] = this.cEQ.elementAt(n3);
                                ++n3;
                            }
                            continue;
                        }
                    }
                    // iftrue(Label_0556:, n3 >= this.cEQ.size())
                    catch (AddressListParser$LookaheadSuccess addressListParser$LookaheadSuccess) {
                        continue;
                    }
                    break;
                }
            }
        }
    }
    
    private final boolean fO(final int n) {
        if (this.cEE == this.cEF) {
            --this.cEG;
            if (this.cEE.cGb == null) {
                final u cee = this.cEE;
                final u abc = this.cEz.abc();
                cee.cGb = abc;
                this.cEE = abc;
                this.cEF = abc;
            }
            else {
                final u cGb = this.cEE.cGb;
                this.cEE = cGb;
                this.cEF = cGb;
            }
        }
        else {
            this.cEE = this.cEE.cGb;
        }
        if (this.cEN) {
            u u = this.cEB;
            int n2 = 0;
            while (u != null && u != this.cEE) {
                ++n2;
                u = u.cGb;
            }
            if (u != null) {
                this.ar(n, n2);
            }
        }
        boolean b;
        if (this.cEE.cFV != n) {
            b = true;
        }
        else {
            final int ceg = this.cEG;
            b = false;
            if (ceg == 0) {
                final u cee2 = this.cEE;
                final u cef = this.cEF;
                b = false;
                if (cee2 == cef) {
                    throw this.cEP;
                }
            }
        }
        return b;
    }
    
    private u fP(final int n) {
        u u;
        if (this.cEH) {
            u = this.cEE;
        }
        else {
            u = this.cEB;
        }
        int i = 0;
        u u2 = u;
        while (i < n) {
            u cGb;
            if (u2.cGb != null) {
                cGb = u2.cGb;
            }
            else {
                cGb = this.cEz.abc();
                u2.cGb = cGb;
            }
            ++i;
            u2 = cGb;
        }
        return u2;
    }
    
    public final c aaN() {
        boolean b = true;
        try {
            final c c = new c();
            this.cEy.abg();
            this.a(c);
            int n;
            int n2;
            final Throwable t2;
            int n3;
            Label_0304:Label_0049_Outer:
            while (true) {
            Label_0049:
                while (true) {
                    try {
                        if (this.cED == -1) {
                            n = this.aaZ();
                            break Label_0304;
                        }
                        n = this.cED;
                        break Label_0304;
                        // iftrue(Label_0186:, this.cED != -1)
                        while (true) {
                            n2 = this.aaZ();
                            break Label_0304;
                            Label_0039: {
                                this.cEJ[1] = this.cEI;
                            }
                            break Label_0049;
                            Label_0119:
                            this.aaO();
                            continue Label_0049_Outer;
                        }
                        Label_0066: {
                            this.cEJ[2] = this.cEI;
                        }
                        this.cEy.c(c);
                        this.b(c);
                        this.fN(0);
                        return (c)this.cEy.abd();
                    }
                    catch (Throwable t) {
                        this.cEy.abf();
                        Label_0247: {
                            try {
                                if (t instanceof RuntimeException) {
                                    throw (RuntimeException)t;
                                }
                                break Label_0247;
                            }
                            finally {
                                b = false;
                            }
                            if (b) {
                                this.cEy.c(c);
                                this.b(c);
                            }
                            throw t2;
                        }
                        if (t instanceof ParseException) {
                            throw (ParseException)t;
                        }
                        throw (Error)t;
                        Label_0240: {
                            this.aaO();
                        }
                        continue Label_0049;
                        Label_0218:
                        this.cEJ[3] = this.cEI;
                        continue Label_0049;
                        // switch([Lcom.strobel.decompiler.ast.Label;@26b050d9, n)
                        Label_0231:
                        n3 = this.cED;
                        // switch([Lcom.strobel.decompiler.ast.Label;@73348add, n2)
                        Label_0324: {
                            break Label_0324;
                        }
                        // switch([Lcom.strobel.decompiler.ast.Label;@392a79a3, n3)
                        Label_0195:
                        this.fN(3);
                        // iftrue(Label_0231:, this.cED != -1)
                        Block_11: {
                            break Block_11;
                            Label_0186:
                            n2 = this.cED;
                            continue Label_0304;
                        }
                        n3 = this.aaZ();
                    }
                    break;
                }
                break;
            }
        }
        catch (TokenMgrError tokenMgrError) {}
    }
}
