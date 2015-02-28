package com.google.api.client.googleapis.json;

import com.google.api.client.json.*;
import com.google.api.client.http.*;

public class GoogleJsonResponseException extends HttpResponseException
{
    private static final long serialVersionUID = 409811126989994864L;
    private final transient a cvB;
    
    private GoogleJsonResponseException(final x x, final a cvB) {
        super(x);
        this.cvB = cvB;
    }
    
    public static GoogleJsonResponseException a(final d p0, final w p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Lcom/google/api/client/http/x;
        //     3: dup            
        //     4: aload_1        
        //     5: invokevirtual   com/google/api/client/http/w.getStatusCode:()I
        //     8: aload_1        
        //     9: invokevirtual   com/google/api/client/http/w.KB:()Ljava/lang/String;
        //    12: aload_1        
        //    13: invokevirtual   com/google/api/client/http/w.XD:()Lcom/google/api/client/http/o;
        //    16: invokespecial   com/google/api/client/http/x.<init>:(ILjava/lang/String;Lcom/google/api/client/http/o;)V
        //    19: astore_2       
        //    20: aload_0        
        //    21: invokestatic    com/google/api/client/a/a/a/a/a/a.ak:(Ljava/lang/Object;)Ljava/lang/Object;
        //    24: pop            
        //    25: aload_1        
        //    26: invokevirtual   com/google/api/client/http/w.XO:()Z
        //    29: ifne            316
        //    32: getstatic       com/google/api/client/json/c.MEDIA_TYPE:Ljava/lang/String;
        //    35: aload_1        
        //    36: invokevirtual   com/google/api/client/http/w.getContentType:()Ljava/lang/String;
        //    39: invokestatic    com/google/api/client/http/s.ay:(Ljava/lang/String;Ljava/lang/String;)Z
        //    42: ifeq            316
        //    45: aload_1        
        //    46: invokevirtual   com/google/api/client/http/w.getContent:()Ljava/io/InputStream;
        //    49: astore          13
        //    51: aload           13
        //    53: ifnull          316
        //    56: aload_0        
        //    57: aload_1        
        //    58: invokevirtual   com/google/api/client/http/w.getContent:()Ljava/io/InputStream;
        //    61: invokevirtual   com/google/api/client/json/d.g:(Ljava/io/InputStream;)Lcom/google/api/client/json/h;
        //    64: astore          22
        //    66: aload           22
        //    68: astore          15
        //    70: aload           15
        //    72: invokevirtual   com/google/api/client/json/h.WG:()Lcom/google/api/client/json/JsonToken;
        //    75: astore          24
        //    77: aload           24
        //    79: ifnonnull       89
        //    82: aload           15
        //    84: invokevirtual   com/google/api/client/json/h.WQ:()Lcom/google/api/client/json/JsonToken;
        //    87: astore          24
        //    89: aload           24
        //    91: ifnull          407
        //    94: aload           15
        //    96: ldc             "error"
        //    98: invokevirtual   com/google/api/client/json/h.hv:(Ljava/lang/String;)V
        //   101: aload           15
        //   103: invokevirtual   com/google/api/client/json/h.WG:()Lcom/google/api/client/json/JsonToken;
        //   106: getstatic       com/google/api/client/json/JsonToken.cyi:Lcom/google/api/client/json/JsonToken;
        //   109: if_acmpeq       407
        //   112: aload           15
        //   114: ldc             Lcom/google/api/client/googleapis/json/a;.class
        //   116: invokevirtual   com/google/api/client/json/h.e:(Ljava/lang/Class;)Ljava/lang/Object;
        //   119: checkcast       Lcom/google/api/client/googleapis/json/a;
        //   122: astore          20
        //   124: aload           20
        //   126: invokevirtual   com/google/api/client/googleapis/json/a.Yc:()Ljava/lang/String;
        //   129: astore          25
        //   131: aload           20
        //   133: astore          7
        //   135: aload           25
        //   137: astore          6
        //   139: aload           15
        //   141: ifnonnull       204
        //   144: aload_1        
        //   145: invokevirtual   com/google/api/client/http/w.ignore:()V
        //   148: aload_1        
        //   149: invokestatic    com/google/api/client/http/HttpResponseException.c:(Lcom/google/api/client/http/w;)Ljava/lang/StringBuilder;
        //   152: astore          8
        //   154: aload           6
        //   156: invokestatic    com/google/api/client/util/M.gK:(Ljava/lang/String;)Z
        //   159: ifne            183
        //   162: aload           8
        //   164: getstatic       com/google/api/client/util/L.czG:Ljava/lang/String;
        //   167: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   170: aload           6
        //   172: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   175: pop            
        //   176: aload_2        
        //   177: aload           6
        //   179: invokevirtual   com/google/api/client/http/x.hr:(Ljava/lang/String;)Lcom/google/api/client/http/x;
        //   182: pop            
        //   183: aload_2        
        //   184: aload           8
        //   186: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   189: invokevirtual   com/google/api/client/http/x.hq:(Ljava/lang/String;)Lcom/google/api/client/http/x;
        //   192: pop            
        //   193: new             Lcom/google/api/client/googleapis/json/GoogleJsonResponseException;
        //   196: dup            
        //   197: aload_2        
        //   198: aload           7
        //   200: invokespecial   com/google/api/client/googleapis/json/GoogleJsonResponseException.<init>:(Lcom/google/api/client/http/x;Lcom/google/api/client/googleapis/json/a;)V
        //   203: areturn        
        //   204: aload           7
        //   206: ifnonnull       148
        //   209: aload           15
        //   211: invokevirtual   com/google/api/client/json/h.close:()V
        //   214: goto            148
        //   217: astore          5
        //   219: aload           5
        //   221: invokevirtual   java/io/IOException.printStackTrace:()V
        //   224: goto            148
        //   227: astore          18
        //   229: aload           18
        //   231: astore          19
        //   233: aconst_null    
        //   234: astore          15
        //   236: aconst_null    
        //   237: astore          20
        //   239: aload           19
        //   241: invokevirtual   java/io/IOException.printStackTrace:()V
        //   244: aload           15
        //   246: ifnonnull       263
        //   249: aload_1        
        //   250: invokevirtual   com/google/api/client/http/w.ignore:()V
        //   253: aload           20
        //   255: astore          7
        //   257: aconst_null    
        //   258: astore          6
        //   260: goto            148
        //   263: aload           20
        //   265: ifnonnull       397
        //   268: aload           15
        //   270: invokevirtual   com/google/api/client/json/h.close:()V
        //   273: aload           20
        //   275: astore          7
        //   277: aconst_null    
        //   278: astore          6
        //   280: goto            148
        //   283: astore          14
        //   285: aconst_null    
        //   286: astore          15
        //   288: aconst_null    
        //   289: astore          16
        //   291: aload           15
        //   293: ifnonnull       303
        //   296: aload_1        
        //   297: invokevirtual   com/google/api/client/http/w.ignore:()V
        //   300: aload           14
        //   302: athrow         
        //   303: aload           16
        //   305: ifnonnull       300
        //   308: aload           15
        //   310: invokevirtual   com/google/api/client/json/h.close:()V
        //   313: goto            300
        //   316: aload_1        
        //   317: invokevirtual   com/google/api/client/http/w.XQ:()Ljava/lang/String;
        //   320: astore          12
        //   322: aload           12
        //   324: astore          6
        //   326: aconst_null    
        //   327: astore          7
        //   329: goto            148
        //   332: astore          4
        //   334: aload           4
        //   336: astore          5
        //   338: aconst_null    
        //   339: astore          6
        //   341: aconst_null    
        //   342: astore          7
        //   344: goto            219
        //   347: astore          5
        //   349: aload           20
        //   351: astore          7
        //   353: aconst_null    
        //   354: astore          6
        //   356: goto            219
        //   359: astore          14
        //   361: aconst_null    
        //   362: astore          16
        //   364: goto            291
        //   367: astore          21
        //   369: aload           20
        //   371: astore          16
        //   373: aload           21
        //   375: astore          14
        //   377: goto            291
        //   380: astore          23
        //   382: aload           23
        //   384: astore          19
        //   386: aconst_null    
        //   387: astore          20
        //   389: goto            239
        //   392: astore          19
        //   394: goto            239
        //   397: aload           20
        //   399: astore          7
        //   401: aconst_null    
        //   402: astore          6
        //   404: goto            148
        //   407: aconst_null    
        //   408: astore          6
        //   410: aconst_null    
        //   411: astore          7
        //   413: goto            139
        //   416: astore          17
        //   418: aload           16
        //   420: astore          7
        //   422: aload           17
        //   424: astore          5
        //   426: aconst_null    
        //   427: astore          6
        //   429: goto            219
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  25     51     332    347    Ljava/io/IOException;
        //  56     66     227    239    Ljava/io/IOException;
        //  56     66     283    291    Any
        //  70     77     380    392    Ljava/io/IOException;
        //  70     77     359    367    Any
        //  82     89     380    392    Ljava/io/IOException;
        //  82     89     359    367    Any
        //  94     124    380    392    Ljava/io/IOException;
        //  94     124    359    367    Any
        //  124    131    392    397    Ljava/io/IOException;
        //  124    131    367    380    Any
        //  144    148    217    219    Ljava/io/IOException;
        //  209    214    217    219    Ljava/io/IOException;
        //  239    244    367    380    Any
        //  249    253    347    359    Ljava/io/IOException;
        //  268    273    347    359    Ljava/io/IOException;
        //  296    300    416    432    Ljava/io/IOException;
        //  300    303    416    432    Ljava/io/IOException;
        //  308    313    416    432    Ljava/io/IOException;
        //  316    322    332    347    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 203, Size: 203
        //     at java.util.ArrayList.rangeCheck(Unknown Source)
        //     at java.util.ArrayList.get(Unknown Source)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:114)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
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
}
