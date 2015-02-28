package com.google.api.client.http;

import com.google.api.client.util.*;
import com.google.api.client.a.a.a.a.a.*;

public final class t
{
    private l cwQ;
    private F cwl;
    private final A cwo;
    private String cwr;
    private n cxd;
    private o cxe;
    private o cxf;
    private int cxg;
    private int cxh;
    private boolean cxi;
    private boolean cxj;
    private k cxk;
    private j cxl;
    private int cxm;
    private int cxn;
    private B cxo;
    private r cxp;
    private y cxq;
    @Deprecated
    private c cxr;
    private boolean cxs;
    private boolean cxt;
    @Deprecated
    private boolean cxu;
    private boolean cxv;
    private I cxw;
    
    t(final A cwo) {
        this.cxe = new o();
        this.cxf = new o();
        this.cxg = 10;
        this.cxh = 16384;
        this.cxi = true;
        this.cxj = true;
        this.cxm = 20000;
        this.cxn = 20000;
        this.cxs = true;
        this.cxt = true;
        this.cxu = false;
        this.cxw = I.czF;
        this.cwo = cwo;
        this.hp(null);
    }
    
    public final k XA() {
        return this.cxk;
    }
    
    public final int XB() {
        return this.cxh;
    }
    
    public final boolean XC() {
        return this.cxi;
    }
    
    public final o XD() {
        return this.cxe;
    }
    
    public final o XE() {
        return this.cxf;
    }
    
    public final B XF() {
        return this.cxo;
    }
    
    public final r XG() {
        return this.cxp;
    }
    
    public final y XH() {
        return this.cxq;
    }
    
    public final int XI() {
        return this.cxg;
    }
    
    public final t XJ() {
        H.cp(true);
        this.cxg = 1;
        return this;
    }
    
    public final F XK() {
        return this.cwl;
    }
    
    public final boolean XL() {
        return this.cxt;
    }
    
    public final t XM() {
        this.cxt = false;
        return this;
    }
    
    public final w XN() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/google/api/client/http/t.cxg:I
        //     4: iflt            943
        //     7: iconst_1       
        //     8: istore_1       
        //     9: iload_1        
        //    10: invokestatic    com/google/api/client/util/H.cp:(Z)V
        //    13: aload_0        
        //    14: getfield        com/google/api/client/http/t.cxg:I
        //    17: istore_2       
        //    18: aload_0        
        //    19: getfield        com/google/api/client/http/t.cxr:Lcom/google/api/client/http/c;
        //    22: ifnull          34
        //    25: aload_0        
        //    26: getfield        com/google/api/client/http/t.cxr:Lcom/google/api/client/http/c;
        //    29: invokeinterface com/google/api/client/http/c.reset:()V
        //    34: aconst_null    
        //    35: astore_3       
        //    36: aload_0        
        //    37: getfield        com/google/api/client/http/t.cwr:Ljava/lang/String;
        //    40: invokestatic    com/google/api/client/a/a/a/a/a/a.ak:(Ljava/lang/Object;)Ljava/lang/Object;
        //    43: pop            
        //    44: aload_0        
        //    45: getfield        com/google/api/client/http/t.cxl:Lcom/google/api/client/http/j;
        //    48: invokestatic    com/google/api/client/a/a/a/a/a/a.ak:(Ljava/lang/Object;)Ljava/lang/Object;
        //    51: pop            
        //    52: iload_2        
        //    53: istore          6
        //    55: aload_3        
        //    56: ifnull          63
        //    59: aload_3        
        //    60: invokevirtual   com/google/api/client/http/w.ignore:()V
        //    63: aconst_null    
        //    64: astore          7
        //    66: aload_0        
        //    67: getfield        com/google/api/client/http/t.cxd:Lcom/google/api/client/http/n;
        //    70: ifnull          83
        //    73: aload_0        
        //    74: getfield        com/google/api/client/http/t.cxd:Lcom/google/api/client/http/n;
        //    77: aload_0        
        //    78: invokeinterface com/google/api/client/http/n.b:(Lcom/google/api/client/http/t;)V
        //    83: aload_0        
        //    84: getfield        com/google/api/client/http/t.cxl:Lcom/google/api/client/http/j;
        //    87: invokevirtual   com/google/api/client/http/j.Xn:()Ljava/lang/String;
        //    90: astore          8
        //    92: aload_0        
        //    93: getfield        com/google/api/client/http/t.cwo:Lcom/google/api/client/http/A;
        //    96: aload_0        
        //    97: getfield        com/google/api/client/http/t.cwr:Ljava/lang/String;
        //   100: aload           8
        //   102: invokevirtual   com/google/api/client/http/A.az:(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/D;
        //   105: astore          9
        //   107: getstatic       com/google/api/client/http/A.cwd:Ljava/util/logging/Logger;
        //   110: astore          10
        //   112: aload_0        
        //   113: getfield        com/google/api/client/http/t.cxi:Z
        //   116: ifeq            948
        //   119: aload           10
        //   121: getstatic       java/util/logging/Level.CONFIG:Ljava/util/logging/Level;
        //   124: invokevirtual   java/util/logging/Logger.isLoggable:(Ljava/util/logging/Level;)Z
        //   127: ifeq            948
        //   130: iconst_1       
        //   131: istore          11
        //   133: aconst_null    
        //   134: astore          12
        //   136: aconst_null    
        //   137: astore          13
        //   139: iload           11
        //   141: ifeq            245
        //   144: new             Ljava/lang/StringBuilder;
        //   147: dup            
        //   148: invokespecial   java/lang/StringBuilder.<init>:()V
        //   151: astore          13
        //   153: aload           13
        //   155: ldc             "-------------- REQUEST  --------------"
        //   157: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   160: getstatic       com/google/api/client/util/L.czG:Ljava/lang/String;
        //   163: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   166: pop            
        //   167: aload           13
        //   169: aload_0        
        //   170: getfield        com/google/api/client/http/t.cwr:Ljava/lang/String;
        //   173: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   176: bipush          32
        //   178: invokevirtual   java/lang/StringBuilder.append:(C)Ljava/lang/StringBuilder;
        //   181: aload           8
        //   183: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   186: getstatic       com/google/api/client/util/L.czG:Ljava/lang/String;
        //   189: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   192: pop            
        //   193: aload_0        
        //   194: getfield        com/google/api/client/http/t.cxj:Z
        //   197: istore          16
        //   199: aconst_null    
        //   200: astore          12
        //   202: iload           16
        //   204: ifeq            245
        //   207: new             Ljava/lang/StringBuilder;
        //   210: dup            
        //   211: ldc             "curl -v --compressed"
        //   213: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   216: astore          12
        //   218: aload_0        
        //   219: getfield        com/google/api/client/http/t.cwr:Ljava/lang/String;
        //   222: ldc             "GET"
        //   224: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   227: ifne            245
        //   230: aload           12
        //   232: ldc             " -X "
        //   234: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   237: aload_0        
        //   238: getfield        com/google/api/client/http/t.cwr:Ljava/lang/String;
        //   241: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   244: pop            
        //   245: aload_0        
        //   246: getfield        com/google/api/client/http/t.cxe:Lcom/google/api/client/http/o;
        //   249: invokevirtual   com/google/api/client/http/o.Xv:()Ljava/lang/String;
        //   252: astore          17
        //   254: aload_0        
        //   255: getfield        com/google/api/client/http/t.cxv:Z
        //   258: ifne            276
        //   261: aload           17
        //   263: ifnonnull       954
        //   266: aload_0        
        //   267: getfield        com/google/api/client/http/t.cxe:Lcom/google/api/client/http/o;
        //   270: ldc             "Google-HTTP-Java-Client/1.16.0-rc (gzip)"
        //   272: invokevirtual   com/google/api/client/http/o.hm:(Ljava/lang/String;)Lcom/google/api/client/http/o;
        //   275: pop            
        //   276: aload_0        
        //   277: getfield        com/google/api/client/http/t.cxe:Lcom/google/api/client/http/o;
        //   280: aload           13
        //   282: aload           12
        //   284: aload           10
        //   286: aload           9
        //   288: invokestatic    com/google/api/client/http/o.a:(Lcom/google/api/client/http/o;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Lcom/google/api/client/http/D;)V
        //   291: aload_0        
        //   292: getfield        com/google/api/client/http/t.cxv:Z
        //   295: ifne            308
        //   298: aload_0        
        //   299: getfield        com/google/api/client/http/t.cxe:Lcom/google/api/client/http/o;
        //   302: aload           17
        //   304: invokevirtual   com/google/api/client/http/o.hm:(Ljava/lang/String;)Lcom/google/api/client/http/o;
        //   307: pop            
        //   308: aload_0        
        //   309: getfield        com/google/api/client/http/t.cxk:Lcom/google/api/client/http/k;
        //   312: astore          18
        //   314: aload           18
        //   316: ifnull          331
        //   319: aload_0        
        //   320: getfield        com/google/api/client/http/t.cxk:Lcom/google/api/client/http/k;
        //   323: invokeinterface com/google/api/client/http/k.Xk:()Z
        //   328: ifeq            986
        //   331: iconst_1       
        //   332: istore          19
        //   334: aload           18
        //   336: ifnull          559
        //   339: aload_0        
        //   340: getfield        com/google/api/client/http/t.cxk:Lcom/google/api/client/http/k;
        //   343: invokeinterface com/google/api/client/http/k.getType:()Ljava/lang/String;
        //   348: astore          51
        //   350: iload           11
        //   352: ifeq            1325
        //   355: new             Lcom/google/api/client/util/B;
        //   358: dup            
        //   359: aload           18
        //   361: getstatic       com/google/api/client/http/A.cwd:Ljava/util/logging/Logger;
        //   364: getstatic       java/util/logging/Level.CONFIG:Ljava/util/logging/Level;
        //   367: aload_0        
        //   368: getfield        com/google/api/client/http/t.cxh:I
        //   371: invokespecial   com/google/api/client/util/B.<init>:(Lcom/google/api/client/util/K;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V
        //   374: astore          52
        //   376: aload_0        
        //   377: getfield        com/google/api/client/http/t.cwQ:Lcom/google/api/client/http/l;
        //   380: ifnonnull       992
        //   383: aload_0        
        //   384: getfield        com/google/api/client/http/t.cxk:Lcom/google/api/client/http/k;
        //   387: invokeinterface com/google/api/client/http/k.getLength:()J
        //   392: lstore          56
        //   394: aload           52
        //   396: astore          18
        //   398: aconst_null    
        //   399: astore          55
        //   401: iload           11
        //   403: ifeq            517
        //   406: aload           51
        //   408: ifnull          480
        //   411: new             Ljava/lang/StringBuilder;
        //   414: dup            
        //   415: ldc_w           "Content-Type: "
        //   418: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   421: aload           51
        //   423: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   426: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   429: astore          60
        //   431: aload           13
        //   433: aload           60
        //   435: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   438: getstatic       com/google/api/client/util/L.czG:Ljava/lang/String;
        //   441: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   444: pop            
        //   445: aload           12
        //   447: ifnull          480
        //   450: aload           12
        //   452: new             Ljava/lang/StringBuilder;
        //   455: dup            
        //   456: ldc_w           " -H '"
        //   459: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   462: aload           60
        //   464: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   467: ldc_w           "'"
        //   470: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   473: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   476: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   479: pop            
        //   480: lload           56
        //   482: lconst_0       
        //   483: lcmp           
        //   484: iflt            517
        //   487: aload           13
        //   489: new             Ljava/lang/StringBuilder;
        //   492: dup            
        //   493: ldc_w           "Content-Length: "
        //   496: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   499: lload           56
        //   501: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
        //   504: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   507: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   510: getstatic       com/google/api/client/util/L.czG:Ljava/lang/String;
        //   513: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   516: pop            
        //   517: aload           12
        //   519: ifnull          531
        //   522: aload           12
        //   524: ldc_w           " -d '@-'"
        //   527: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   530: pop            
        //   531: aload           9
        //   533: aload           51
        //   535: invokevirtual   com/google/api/client/http/D.setContentType:(Ljava/lang/String;)V
        //   538: aload           9
        //   540: aload           55
        //   542: invokevirtual   com/google/api/client/http/D.setContentEncoding:(Ljava/lang/String;)V
        //   545: aload           9
        //   547: lload           56
        //   549: invokevirtual   com/google/api/client/http/D.setContentLength:(J)V
        //   552: aload           9
        //   554: aload           18
        //   556: invokevirtual   com/google/api/client/http/D.a:(Lcom/google/api/client/util/K;)V
        //   559: iload           11
        //   561: ifeq            638
        //   564: aload           10
        //   566: aload           13
        //   568: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   571: invokevirtual   java/util/logging/Logger.config:(Ljava/lang/String;)V
        //   574: aload           12
        //   576: ifnull          638
        //   579: aload           12
        //   581: ldc_w           " -- '"
        //   584: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   587: pop            
        //   588: aload           12
        //   590: aload           8
        //   592: ldc_w           "'"
        //   595: ldc_w           "'\"'\"'"
        //   598: invokevirtual   java/lang/String.replaceAll:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   601: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   604: pop            
        //   605: aload           12
        //   607: ldc_w           "'"
        //   610: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   613: pop            
        //   614: aload           18
        //   616: ifnull          628
        //   619: aload           12
        //   621: ldc_w           " << $$$"
        //   624: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   627: pop            
        //   628: aload           10
        //   630: aload           12
        //   632: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   635: invokevirtual   java/util/logging/Logger.config:(Ljava/lang/String;)V
        //   638: iload           19
        //   640: ifeq            1061
        //   643: iload           6
        //   645: ifle            1061
        //   648: iconst_1       
        //   649: istore          20
        //   651: aload           9
        //   653: aload_0        
        //   654: getfield        com/google/api/client/http/t.cxm:I
        //   657: aload_0        
        //   658: getfield        com/google/api/client/http/t.cxn:I
        //   661: invokevirtual   com/google/api/client/http/D.aj:(II)V
        //   664: aload           9
        //   666: invokevirtual   com/google/api/client/http/D.Xw:()Lcom/google/api/client/http/E;
        //   669: astore          45
        //   671: new             Lcom/google/api/client/http/w;
        //   674: dup            
        //   675: aload_0        
        //   676: aload           45
        //   678: invokespecial   com/google/api/client/http/w.<init>:(Lcom/google/api/client/http/t;Lcom/google/api/client/http/E;)V
        //   681: astore          22
        //   683: aload           22
        //   685: ifnull          1215
        //   688: aload           22
        //   690: invokevirtual   com/google/api/client/http/w.XO:()Z
        //   693: ifne            1215
        //   696: aload_0        
        //   697: getfield        com/google/api/client/http/t.cxo:Lcom/google/api/client/http/B;
        //   700: astore          28
        //   702: iconst_0       
        //   703: istore          29
        //   705: aload           28
        //   707: ifnull          726
        //   710: aload_0        
        //   711: getfield        com/google/api/client/http/t.cxo:Lcom/google/api/client/http/B;
        //   714: aload_0        
        //   715: aload           22
        //   717: iload           20
        //   719: invokeinterface com/google/api/client/http/B.a:(Lcom/google/api/client/http/t;Lcom/google/api/client/http/w;Z)Z
        //   724: istore          29
        //   726: iload           29
        //   728: ifne            902
        //   731: aload           22
        //   733: invokevirtual   com/google/api/client/http/w.getStatusCode:()I
        //   736: istore          30
        //   738: aload           22
        //   740: invokevirtual   com/google/api/client/http/w.XD:()Lcom/google/api/client/http/o;
        //   743: invokevirtual   com/google/api/client/http/o.getLocation:()Ljava/lang/String;
        //   746: astore          31
        //   748: aload_0        
        //   749: getfield        com/google/api/client/http/t.cxs:Z
        //   752: ifeq            1143
        //   755: iload           30
        //   757: tableswitch {
        //              602: 1137
        //              603: 1137
        //              604: 1137
        //              605: 1332
        //              606: 1332
        //              607: 1332
        //              608: 1137
        //          default: 1332
        //        }
        //   800: iload           32
        //   802: ifeq            1143
        //   805: aload           31
        //   807: ifnull          1143
        //   810: aload_0        
        //   811: new             Lcom/google/api/client/http/j;
        //   814: dup            
        //   815: aload_0        
        //   816: getfield        com/google/api/client/http/t.cxl:Lcom/google/api/client/http/j;
        //   819: aload           31
        //   821: invokevirtual   com/google/api/client/http/j.hd:(Ljava/lang/String;)Ljava/net/URL;
        //   824: invokespecial   com/google/api/client/http/j.<init>:(Ljava/net/URL;)V
        //   827: invokevirtual   com/google/api/client/http/t.e:(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/t;
        //   830: pop            
        //   831: iload           30
        //   833: sipush          303
        //   836: if_icmpne       846
        //   839: aload_0        
        //   840: ldc             "GET"
        //   842: invokevirtual   com/google/api/client/http/t.hp:(Ljava/lang/String;)Lcom/google/api/client/http/t;
        //   845: pop            
        //   846: aload_0        
        //   847: getfield        com/google/api/client/http/t.cxe:Lcom/google/api/client/http/o;
        //   850: aconst_null    
        //   851: invokevirtual   com/google/api/client/http/o.hh:(Ljava/lang/String;)Lcom/google/api/client/http/o;
        //   854: pop            
        //   855: aload_0        
        //   856: getfield        com/google/api/client/http/t.cxe:Lcom/google/api/client/http/o;
        //   859: aconst_null    
        //   860: invokevirtual   com/google/api/client/http/o.hl:(Ljava/lang/String;)Lcom/google/api/client/http/o;
        //   863: pop            
        //   864: aload_0        
        //   865: getfield        com/google/api/client/http/t.cxe:Lcom/google/api/client/http/o;
        //   868: invokevirtual   com/google/api/client/http/o.Xr:()Lcom/google/api/client/http/o;
        //   871: pop            
        //   872: aload_0        
        //   873: getfield        com/google/api/client/http/t.cxe:Lcom/google/api/client/http/o;
        //   876: invokevirtual   com/google/api/client/http/o.Xq:()Lcom/google/api/client/http/o;
        //   879: pop            
        //   880: aload_0        
        //   881: getfield        com/google/api/client/http/t.cxe:Lcom/google/api/client/http/o;
        //   884: invokevirtual   com/google/api/client/http/o.Xs:()Lcom/google/api/client/http/o;
        //   887: pop            
        //   888: aload_0        
        //   889: getfield        com/google/api/client/http/t.cxe:Lcom/google/api/client/http/o;
        //   892: invokevirtual   com/google/api/client/http/o.Xt:()Lcom/google/api/client/http/o;
        //   895: pop            
        //   896: iconst_1       
        //   897: istore          33
        //   899: goto            1338
        //   902: iload           20
        //   904: iload           29
        //   906: iand           
        //   907: istore          24
        //   909: iload           24
        //   911: ifeq            919
        //   914: aload           22
        //   916: invokevirtual   com/google/api/client/http/w.ignore:()V
        //   919: iload           6
        //   921: iconst_1       
        //   922: isub           
        //   923: istore          25
        //   925: aload           22
        //   927: ifnull          930
        //   930: iload           24
        //   932: ifne            1315
        //   935: aload           22
        //   937: ifnonnull       1254
        //   940: aload           7
        //   942: athrow         
        //   943: iconst_0       
        //   944: istore_1       
        //   945: goto            9
        //   948: iconst_0       
        //   949: istore          11
        //   951: goto            133
        //   954: aload_0        
        //   955: getfield        com/google/api/client/http/t.cxe:Lcom/google/api/client/http/o;
        //   958: new             Ljava/lang/StringBuilder;
        //   961: dup            
        //   962: invokespecial   java/lang/StringBuilder.<init>:()V
        //   965: aload           17
        //   967: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   970: ldc_w           " Google-HTTP-Java-Client/1.16.0-rc (gzip)"
        //   973: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   976: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   979: invokevirtual   com/google/api/client/http/o.hm:(Ljava/lang/String;)Lcom/google/api/client/http/o;
        //   982: pop            
        //   983: goto            276
        //   986: iconst_0       
        //   987: istore          19
        //   989: goto            334
        //   992: aload_0        
        //   993: getfield        com/google/api/client/http/t.cwQ:Lcom/google/api/client/http/l;
        //   996: invokeinterface com/google/api/client/http/l.getName:()Ljava/lang/String;
        //  1001: astore          53
        //  1003: new             Lcom/google/api/client/http/m;
        //  1006: dup            
        //  1007: aload           52
        //  1009: aload_0        
        //  1010: getfield        com/google/api/client/http/t.cwQ:Lcom/google/api/client/http/l;
        //  1013: invokespecial   com/google/api/client/http/m.<init>:(Lcom/google/api/client/util/K;Lcom/google/api/client/http/l;)V
        //  1016: astore          54
        //  1018: iload           19
        //  1020: ifeq            1045
        //  1023: aload           54
        //  1025: invokestatic    com/google/api/client/util/w.b:(Lcom/google/api/client/util/K;)J
        //  1028: lstore          63
        //  1030: aload           53
        //  1032: astore          55
        //  1034: aload           54
        //  1036: astore          18
        //  1038: lload           63
        //  1040: lstore          56
        //  1042: goto            401
        //  1045: aload           53
        //  1047: astore          55
        //  1049: aload           54
        //  1051: astore          18
        //  1053: ldc2_w          -1
        //  1056: lstore          56
        //  1058: goto            401
        //  1061: iconst_0       
        //  1062: istore          20
        //  1064: goto            651
        //  1067: astore          46
        //  1069: aload           45
        //  1071: invokevirtual   com/google/api/client/http/E.getContent:()Ljava/io/InputStream;
        //  1074: invokevirtual   java/io/InputStream.close:()V
        //  1077: aload           46
        //  1079: athrow         
        //  1080: astore          21
        //  1082: aload_0        
        //  1083: getfield        com/google/api/client/http/t.cxu:Z
        //  1086: ifne            1114
        //  1089: aload_0        
        //  1090: getfield        com/google/api/client/http/t.cxp:Lcom/google/api/client/http/r;
        //  1093: ifnull          1111
        //  1096: aload_0        
        //  1097: getfield        com/google/api/client/http/t.cxp:Lcom/google/api/client/http/r;
        //  1100: aload_0        
        //  1101: iload           20
        //  1103: invokeinterface com/google/api/client/http/r.a:(Lcom/google/api/client/http/t;Z)Z
        //  1108: ifne            1114
        //  1111: aload           21
        //  1113: athrow         
        //  1114: aload           10
        //  1116: getstatic       java/util/logging/Level.WARNING:Ljava/util/logging/Level;
        //  1119: ldc_w           "exception thrown while executing request"
        //  1122: aload           21
        //  1124: invokevirtual   java/util/logging/Logger.log:(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
        //  1127: aload           21
        //  1129: astore          7
        //  1131: aconst_null    
        //  1132: astore          22
        //  1134: goto            683
        //  1137: iconst_1       
        //  1138: istore          32
        //  1140: goto            800
        //  1143: iconst_0       
        //  1144: istore          33
        //  1146: goto            1338
        //  1149: iload           20
        //  1151: ifeq            902
        //  1154: aload_0        
        //  1155: getfield        com/google/api/client/http/t.cxr:Lcom/google/api/client/http/c;
        //  1158: ifnull          902
        //  1161: aload_0        
        //  1162: getfield        com/google/api/client/http/t.cxr:Lcom/google/api/client/http/c;
        //  1165: aload           22
        //  1167: invokevirtual   com/google/api/client/http/w.getStatusCode:()I
        //  1170: invokeinterface com/google/api/client/http/c.eY:(I)Z
        //  1175: ifeq            902
        //  1178: aload_0        
        //  1179: getfield        com/google/api/client/http/t.cxr:Lcom/google/api/client/http/c;
        //  1182: invokeinterface com/google/api/client/http/c.WX:()J
        //  1187: lstore          34
        //  1189: lload           34
        //  1191: ldc2_w          -1
        //  1194: lcmp           
        //  1195: ifeq            902
        //  1198: aload_0        
        //  1199: getfield        com/google/api/client/http/t.cxw:Lcom/google/api/client/util/I;
        //  1202: lload           34
        //  1204: invokeinterface com/google/api/client/util/I.sleep:(J)V
        //  1209: iconst_1       
        //  1210: istore          29
        //  1212: goto            902
        //  1215: aload           22
        //  1217: ifnonnull       1233
        //  1220: iconst_1       
        //  1221: istore          23
        //  1223: iload           20
        //  1225: iload           23
        //  1227: iand           
        //  1228: istore          24
        //  1230: goto            919
        //  1233: iconst_0       
        //  1234: istore          23
        //  1236: goto            1223
        //  1239: astore          27
        //  1241: aload           22
        //  1243: ifnull          1251
        //  1246: aload           22
        //  1248: invokevirtual   com/google/api/client/http/w.disconnect:()V
        //  1251: aload           27
        //  1253: athrow         
        //  1254: aload_0        
        //  1255: getfield        com/google/api/client/http/t.cxq:Lcom/google/api/client/http/y;
        //  1258: ifnull          1272
        //  1261: aload_0        
        //  1262: getfield        com/google/api/client/http/t.cxq:Lcom/google/api/client/http/y;
        //  1265: aload           22
        //  1267: invokeinterface com/google/api/client/http/y.b:(Lcom/google/api/client/http/w;)V
        //  1272: aload_0        
        //  1273: getfield        com/google/api/client/http/t.cxt:Z
        //  1276: ifeq            1307
        //  1279: aload           22
        //  1281: invokevirtual   com/google/api/client/http/w.XO:()Z
        //  1284: ifne            1307
        //  1287: new             Lcom/google/api/client/http/HttpResponseException;
        //  1290: dup            
        //  1291: aload           22
        //  1293: invokespecial   com/google/api/client/http/HttpResponseException.<init>:(Lcom/google/api/client/http/w;)V
        //  1296: athrow         
        //  1297: astore          26
        //  1299: aload           22
        //  1301: invokevirtual   com/google/api/client/http/w.disconnect:()V
        //  1304: aload           26
        //  1306: athrow         
        //  1307: aload           22
        //  1309: areturn        
        //  1310: astore          36
        //  1312: goto            1209
        //  1315: aload           22
        //  1317: astore_3       
        //  1318: iload           25
        //  1320: istore          6
        //  1322: goto            55
        //  1325: aload           18
        //  1327: astore          52
        //  1329: goto            376
        //  1332: iconst_0       
        //  1333: istore          32
        //  1335: goto            800
        //  1338: iload           33
        //  1340: ifeq            1149
        //  1343: iconst_1       
        //  1344: istore          29
        //  1346: goto            902
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                            
        //  -----  -----  -----  -----  --------------------------------
        //  664    671    1080   1137   Ljava/io/IOException;
        //  671    683    1067   1080   Any
        //  688    702    1239   1254   Any
        //  710    726    1239   1254   Any
        //  731    755    1239   1254   Any
        //  810    831    1239   1254   Any
        //  839    846    1239   1254   Any
        //  846    896    1239   1254   Any
        //  914    919    1239   1254   Any
        //  1069   1080   1080   1137   Ljava/io/IOException;
        //  1154   1189   1239   1254   Any
        //  1198   1209   1310   1315   Ljava/lang/InterruptedException;
        //  1198   1209   1239   1254   Any
        //  1287   1297   1297   1307   Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0726:
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
    
    public final A Xy() {
        return this.cwo;
    }
    
    public final j Xz() {
        return this.cxl;
    }
    
    public final t a(final B cxo) {
        this.cxo = cxo;
        return this;
    }
    
    @Deprecated
    public final t a(final c cxr) {
        this.cxr = cxr;
        return this;
    }
    
    public final t a(final l cwQ) {
        this.cwQ = cwQ;
        return this;
    }
    
    public final t a(final n cxd) {
        this.cxd = cxd;
        return this;
    }
    
    public final t a(final r cxp) {
        this.cxp = cxp;
        return this;
    }
    
    public final t a(final y cxq) {
        this.cxq = cxq;
        return this;
    }
    
    public final t a(final F cwl) {
        this.cwl = cwl;
        return this;
    }
    
    public final t b(final k cxk) {
        this.cxk = cxk;
        return this;
    }
    
    public final t e(final j j) {
        this.cxl = a.ak(j);
        return this;
    }
    
    public final t eZ(final int cxm) {
        H.cp(cxm >= 0);
        this.cxm = cxm;
        return this;
    }
    
    public final t fa(final int cxn) {
        H.cp(cxn >= 0);
        this.cxn = cxn;
        return this;
    }
    
    public final String getRequestMethod() {
        return this.cwr;
    }
    
    public final t hp(final String cwr) {
        H.cp(cwr == null || s.ho(cwr));
        this.cwr = cwr;
        return this;
    }
}
