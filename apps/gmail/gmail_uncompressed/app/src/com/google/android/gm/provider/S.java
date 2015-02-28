package com.google.android.gm.provider;

import com.google.common.a.a.*;
import java.util.*;
import com.google.android.mail.common.base.*;
import android.text.*;
import com.android.mail.utils.*;
import java.io.*;

public final class s
{
    private static final TextUtils$SimpleStringSplitter bdp;
    private static final V<List<String>> bdq;
    private final SenderInstructions bdr;
    private boolean bds;
    private boolean bdt;
    
    static {
        bdp = new TextUtils$SimpleStringSplitter((char)ag.aQJ);
        bdq = new V<List<String>>(new t());
    }
    
    public s() {
        this.bdr = new SenderInstructions();
        this.bds = false;
        this.bdt = false;
    }
    
    public static void a(final a a, final SenderInstructions senderInstructions) {
        final int int1 = a.getInt(1);
        final int int2 = a.getInt(2);
        final ArrayList<a> list = new ArrayList<a>();
        bv.b(a, 3, list);
        boolean b;
        if (list.size() == 1) {
            b = true;
        }
        else {
            b = false;
        }
        for (final a a2 : list) {
            final by by = new by();
            if (a2.fx(1) && !b) {
                by.name = a2.getString(4);
                by.bmZ = SenderInstructions$Visibility.bnc;
                senderInstructions.a("e", null, false, false, false, -1);
            }
            else {
                by.apC = a2.fx(2);
                by.priority = a2.getInt(3);
                by.name = a2.getString(4);
                if (a2.bJ(5)) {
                    by.aBF = a2.getString(5);
                }
                by.bmZ = SenderInstructions$Visibility.bna;
                senderInstructions.a(by.name, by.aBF, false, by.apC, by.name != null && by.name.length() == 0, by.priority);
            }
        }
        senderInstructions.dI(int1);
        senderInstructions.dX(int2);
        senderInstructions.dW(5);
    }
    
    public static void a(final String string, final SenderInstructions senderInstructions) {
        final List<String> list = s.bdq.get();
        try {
            list.clear();
            synchronized (s.bdp) {
                s.bdp.setString(string);
                while (s.bdp.hasNext()) {
                    list.add(s.bdp.next());
                }
            }
        }
        finally {
            s.bdq.V(list);
        }
        // monitorexit(textUtils$SimpleStringSplitter)
        int i = 0;
        while (i < list.size()) {
            final int n = i + 1;
            final String s = list.get(i);
            if (!"".equals(s) && !"e".equals(s)) {
                if ("n".equals(s)) {
                    i = n + 1;
                    continue;
                }
                if ("d".equals(s)) {
                    final int n2 = n + 1;
                    senderInstructions.dX(Integer.parseInt(list.get(n)));
                    i = n2;
                    continue;
                }
                if ("l".equals(s)) {
                    final String string2 = Html.fromHtml((String)list.get(n)).toString();
                    senderInstructions.a(string2, string2, false, false, string2.length() == 0, -1);
                    break;
                }
                if (!"s".equals(s) && !"f".equals(s)) {
                    if (n + 2 <= list.size()) {
                        final boolean b = Integer.parseInt(s) != 0;
                        final int n3 = n + 1;
                        final String s2 = list.get(n);
                        final int n4 = n3 + 1;
                        final String s3 = list.get(n3);
                        senderInstructions.a(s3, null, false, b, s3.length() == 0, Integer.parseInt(s2));
                        i = n4;
                        continue;
                    }
                    break;
                }
            }
            i = n;
        }
        s.bdq.V(list);
        senderInstructions.dW(5);
    }
    
    public static void a(final byte[] p0, final SenderInstructions p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Ljava/io/DataInputStream;
        //     3: dup            
        //     4: new             Ljava/io/ByteArrayInputStream;
        //     7: dup            
        //     8: aload_0        
        //     9: invokespecial   java/io/ByteArrayInputStream.<init>:([B)V
        //    12: invokespecial   java/io/DataInputStream.<init>:(Ljava/io/InputStream;)V
        //    15: astore_2       
        //    16: aload_1        
        //    17: aload_2        
        //    18: invokevirtual   java/io/DataInputStream.readInt:()I
        //    21: invokevirtual   com/google/android/gm/provider/SenderInstructions.dI:(I)V
        //    24: aload_1        
        //    25: aload_2        
        //    26: invokevirtual   java/io/DataInputStream.readInt:()I
        //    29: invokevirtual   com/google/android/gm/provider/SenderInstructions.dX:(I)V
        //    32: aload_2        
        //    33: invokevirtual   java/io/DataInputStream.readInt:()I
        //    36: istore          11
        //    38: iconst_0       
        //    39: istore          12
        //    41: iload           12
        //    43: iload           11
        //    45: if_icmpge       150
        //    48: aload_2        
        //    49: invokevirtual   java/io/DataInputStream.readBoolean:()Z
        //    52: istore          13
        //    54: aload_2        
        //    55: invokevirtual   java/io/DataInputStream.readBoolean:()Z
        //    58: istore          14
        //    60: aload_2        
        //    61: invokevirtual   java/io/DataInputStream.readInt:()I
        //    64: istore          15
        //    66: aload_2        
        //    67: invokevirtual   java/io/DataInputStream.readUTF:()Ljava/lang/String;
        //    70: astore          16
        //    72: aload_2        
        //    73: invokevirtual   java/io/DataInputStream.readUTF:()Ljava/lang/String;
        //    76: astore          17
        //    78: iload           11
        //    80: iconst_1       
        //    81: if_icmple       103
        //    84: iload           13
        //    86: ifeq            103
        //    89: aload_1        
        //    90: ldc             "e"
        //    92: aconst_null    
        //    93: iconst_0       
        //    94: iconst_0       
        //    95: iconst_0       
        //    96: iconst_m1      
        //    97: invokevirtual   com/google/android/gm/provider/SenderInstructions.a:(Ljava/lang/String;Ljava/lang/String;ZZZI)V
        //   100: goto            245
        //   103: aload_1        
        //   104: aload           16
        //   106: aload           17
        //   108: iconst_0       
        //   109: iload           14
        //   111: iconst_0       
        //   112: iload           15
        //   114: invokevirtual   com/google/android/gm/provider/SenderInstructions.a:(Ljava/lang/String;Ljava/lang/String;ZZZI)V
        //   117: goto            245
        //   120: astore          6
        //   122: aload_2        
        //   123: astore          7
        //   125: ldc             "TAG"
        //   127: aload           6
        //   129: ldc             "Unable to deserialize sender instructions"
        //   131: iconst_0       
        //   132: anewarray       Ljava/lang/Object;
        //   135: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   138: pop            
        //   139: aload           7
        //   141: ifnull          149
        //   144: aload           7
        //   146: invokevirtual   java/io/DataInputStream.close:()V
        //   149: return         
        //   150: aload_1        
        //   151: iconst_5       
        //   152: invokevirtual   com/google/android/gm/provider/SenderInstructions.dW:(I)V
        //   155: aload_2        
        //   156: invokevirtual   java/io/DataInputStream.close:()V
        //   159: return         
        //   160: astore          18
        //   162: ldc             "TAG"
        //   164: aload           18
        //   166: ldc             "Unable to close sender instructions deserializer"
        //   168: iconst_0       
        //   169: anewarray       Ljava/lang/Object;
        //   172: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   175: pop            
        //   176: return         
        //   177: astore          9
        //   179: ldc             "TAG"
        //   181: aload           9
        //   183: ldc             "Unable to close sender instructions deserializer"
        //   185: iconst_0       
        //   186: anewarray       Ljava/lang/Object;
        //   189: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   192: pop            
        //   193: return         
        //   194: astore_3       
        //   195: aconst_null    
        //   196: astore_2       
        //   197: aload_2        
        //   198: ifnull          205
        //   201: aload_2        
        //   202: invokevirtual   java/io/DataInputStream.close:()V
        //   205: aload_3        
        //   206: athrow         
        //   207: astore          4
        //   209: ldc             "TAG"
        //   211: aload           4
        //   213: ldc             "Unable to close sender instructions deserializer"
        //   215: iconst_0       
        //   216: anewarray       Ljava/lang/Object;
        //   219: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   222: pop            
        //   223: goto            205
        //   226: astore_3       
        //   227: goto            197
        //   230: astore_3       
        //   231: aload           7
        //   233: astore_2       
        //   234: goto            197
        //   237: astore          6
        //   239: aconst_null    
        //   240: astore          7
        //   242: goto            125
        //   245: iinc            12, 1
        //   248: goto            41
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  0      16     237    245    Ljava/io/IOException;
        //  0      16     194    197    Any
        //  16     38     120    125    Ljava/io/IOException;
        //  16     38     226    230    Any
        //  48     78     120    125    Ljava/io/IOException;
        //  48     78     226    230    Any
        //  89     100    120    125    Ljava/io/IOException;
        //  89     100    226    230    Any
        //  103    117    120    125    Ljava/io/IOException;
        //  103    117    226    230    Any
        //  125    139    230    237    Any
        //  144    149    177    194    Ljava/io/IOException;
        //  150    155    120    125    Ljava/io/IOException;
        //  150    155    226    230    Any
        //  155    159    160    177    Ljava/io/IOException;
        //  201    205    207    226    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0125:
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
    
    private static byte[] a(final SenderInstructions p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: iconst_5       
        //     2: invokevirtual   com/google/android/gm/provider/SenderInstructions.dW:(I)V
        //     5: new             Ljava/io/ByteArrayOutputStream;
        //     8: dup            
        //     9: invokespecial   java/io/ByteArrayOutputStream.<init>:()V
        //    12: astore_1       
        //    13: new             Ljava/io/DataOutputStream;
        //    16: dup            
        //    17: aload_1        
        //    18: invokespecial   java/io/DataOutputStream.<init>:(Ljava/io/OutputStream;)V
        //    21: astore_2       
        //    22: aload_2        
        //    23: aload_0        
        //    24: invokevirtual   com/google/android/gm/provider/SenderInstructions.uH:()I
        //    27: invokevirtual   java/io/DataOutputStream.writeInt:(I)V
        //    30: aload_2        
        //    31: aload_0        
        //    32: invokevirtual   com/google/android/gm/provider/SenderInstructions.HN:()I
        //    35: invokevirtual   java/io/DataOutputStream.writeInt:(I)V
        //    38: aload_0        
        //    39: invokevirtual   com/google/android/gm/provider/SenderInstructions.HO:()Ljava/util/Collection;
        //    42: astore          11
        //    44: aload_0        
        //    45: invokevirtual   com/google/android/gm/provider/SenderInstructions.HP:()I
        //    48: iconst_1       
        //    49: if_icmple       454
        //    52: iconst_1       
        //    53: istore          12
        //    55: new             Lcom/google/android/mail/common/html/parser/HtmlParser;
        //    58: dup            
        //    59: invokespecial   com/google/android/mail/common/html/parser/HtmlParser.<init>:()V
        //    62: astore          13
        //    64: new             Lcom/google/android/mail/common/html/parser/v;
        //    67: dup            
        //    68: invokespecial   com/google/android/mail/common/html/parser/v.<init>:()V
        //    71: astore          14
        //    73: aload           11
        //    75: invokeinterface java/util/Collection.iterator:()Ljava/util/Iterator;
        //    80: astore          15
        //    82: iconst_0       
        //    83: istore          16
        //    85: aload           15
        //    87: invokeinterface java/util/Iterator.hasNext:()Z
        //    92: ifeq            123
        //    95: aload           15
        //    97: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   102: checkcast       Lcom/google/android/gm/provider/by;
        //   105: getfield        com/google/android/gm/provider/by.bmZ:Lcom/google/android/gm/provider/SenderInstructions$Visibility;
        //   108: getstatic       com/google/android/gm/provider/SenderInstructions$Visibility.bnb:Lcom/google/android/gm/provider/SenderInstructions$Visibility;
        //   111: if_acmpeq       443
        //   114: iload           16
        //   116: iconst_1       
        //   117: iadd           
        //   118: istore          25
        //   120: goto            447
        //   123: aload_2        
        //   124: iload           16
        //   126: invokevirtual   java/io/DataOutputStream.writeInt:(I)V
        //   129: aload           11
        //   131: invokeinterface java/util/Collection.iterator:()Ljava/util/Iterator;
        //   136: astore          17
        //   138: aload           17
        //   140: invokeinterface java/util/Iterator.hasNext:()Z
        //   145: ifeq            344
        //   148: aload           17
        //   150: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   155: checkcast       Lcom/google/android/gm/provider/by;
        //   158: astore          20
        //   160: aload           20
        //   162: getfield        com/google/android/gm/provider/by.bmZ:Lcom/google/android/gm/provider/SenderInstructions$Visibility;
        //   165: getstatic       com/google/android/gm/provider/SenderInstructions$Visibility.bnb:Lcom/google/android/gm/provider/SenderInstructions$Visibility;
        //   168: if_acmpeq       138
        //   171: aload           20
        //   173: getfield        com/google/android/gm/provider/by.bmZ:Lcom/google/android/gm/provider/SenderInstructions$Visibility;
        //   176: getstatic       com/google/android/gm/provider/SenderInstructions$Visibility.bnc:Lcom/google/android/gm/provider/SenderInstructions$Visibility;
        //   179: if_acmpne       292
        //   182: iconst_1       
        //   183: istore          21
        //   185: aload_2        
        //   186: iload           21
        //   188: invokevirtual   java/io/DataOutputStream.writeBoolean:(Z)V
        //   191: aload_2        
        //   192: aload           20
        //   194: getfield        com/google/android/gm/provider/by.apC:Z
        //   197: invokevirtual   java/io/DataOutputStream.writeBoolean:(Z)V
        //   200: aload_2        
        //   201: aload           20
        //   203: getfield        com/google/android/gm/provider/by.priority:I
        //   206: invokevirtual   java/io/DataOutputStream.writeInt:(I)V
        //   209: aload           20
        //   211: getfield        com/google/android/gm/provider/by.bmZ:Lcom/google/android/gm/provider/SenderInstructions$Visibility;
        //   214: getstatic       com/google/android/gm/provider/SenderInstructions$Visibility.bnc:Lcom/google/android/gm/provider/SenderInstructions$Visibility;
        //   217: if_acmpne       298
        //   220: ldc             "e"
        //   222: astore          22
        //   224: aload_2        
        //   225: aload           22
        //   227: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //   230: aload           20
        //   232: getfield        com/google/android/gm/provider/by.aBF:Ljava/lang/String;
        //   235: ifnull          337
        //   238: aload           20
        //   240: getfield        com/google/android/gm/provider/by.aBF:Ljava/lang/String;
        //   243: invokestatic    com/google/android/gm/provider/Gmail.ed:(Ljava/lang/String;)Ljava/lang/String;
        //   246: astore          23
        //   248: aload_2        
        //   249: aload           23
        //   251: invokevirtual   java/io/DataOutputStream.writeUTF:(Ljava/lang/String;)V
        //   254: goto            138
        //   257: astore          6
        //   259: aload_2        
        //   260: astore          7
        //   262: ldc             "TAG"
        //   264: aload           6
        //   266: ldc_w           "Unable to serialize sender instructions"
        //   269: iconst_0       
        //   270: anewarray       Ljava/lang/Object;
        //   273: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   276: pop            
        //   277: aload           7
        //   279: ifnull          287
        //   282: aload           7
        //   284: invokevirtual   java/io/DataOutputStream.close:()V
        //   287: aload_1        
        //   288: invokevirtual   java/io/ByteArrayOutputStream.toByteArray:()[B
        //   291: areturn        
        //   292: iconst_0       
        //   293: istore          21
        //   295: goto            185
        //   298: iload           12
        //   300: ifeq            327
        //   303: aload           20
        //   305: getfield        com/google/android/gm/provider/by.name:Ljava/lang/String;
        //   308: invokestatic    com/google/android/gm/provider/s.dS:(Ljava/lang/String;)Ljava/lang/String;
        //   311: astore          24
        //   313: aload           24
        //   315: aload           13
        //   317: aload           14
        //   319: invokestatic    com/android/mail/utils/ag.a:(Ljava/lang/String;Lcom/google/android/mail/common/html/parser/HtmlParser;Lcom/google/android/mail/common/html/parser/v;)Ljava/lang/String;
        //   322: astore          22
        //   324: goto            224
        //   327: aload           20
        //   329: getfield        com/google/android/gm/provider/by.name:Ljava/lang/String;
        //   332: astore          24
        //   334: goto            313
        //   337: ldc             ""
        //   339: astore          23
        //   341: goto            248
        //   344: aload_2        
        //   345: invokevirtual   java/io/DataOutputStream.close:()V
        //   348: goto            287
        //   351: astore          18
        //   353: ldc             "TAG"
        //   355: aload           18
        //   357: ldc_w           "Unable to close sender instructions serializer"
        //   360: iconst_0       
        //   361: anewarray       Ljava/lang/Object;
        //   364: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   367: pop            
        //   368: goto            287
        //   371: astore          9
        //   373: ldc             "TAG"
        //   375: aload           9
        //   377: ldc_w           "Unable to close sender instructions serializer"
        //   380: iconst_0       
        //   381: anewarray       Ljava/lang/Object;
        //   384: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   387: pop            
        //   388: goto            287
        //   391: astore_3       
        //   392: aconst_null    
        //   393: astore_2       
        //   394: aload_2        
        //   395: ifnull          402
        //   398: aload_2        
        //   399: invokevirtual   java/io/DataOutputStream.close:()V
        //   402: aload_3        
        //   403: athrow         
        //   404: astore          4
        //   406: ldc             "TAG"
        //   408: aload           4
        //   410: ldc_w           "Unable to close sender instructions serializer"
        //   413: iconst_0       
        //   414: anewarray       Ljava/lang/Object;
        //   417: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   420: pop            
        //   421: goto            402
        //   424: astore_3       
        //   425: goto            394
        //   428: astore_3       
        //   429: aload           7
        //   431: astore_2       
        //   432: goto            394
        //   435: astore          6
        //   437: aconst_null    
        //   438: astore          7
        //   440: goto            262
        //   443: iload           16
        //   445: istore          25
        //   447: iload           25
        //   449: istore          16
        //   451: goto            85
        //   454: iconst_0       
        //   455: istore          12
        //   457: goto            55
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  13     22     435    443    Ljava/io/IOException;
        //  13     22     391    394    Any
        //  22     52     257    262    Ljava/io/IOException;
        //  22     52     424    428    Any
        //  55     82     257    262    Ljava/io/IOException;
        //  55     82     424    428    Any
        //  85     114    257    262    Ljava/io/IOException;
        //  85     114    424    428    Any
        //  123    138    257    262    Ljava/io/IOException;
        //  123    138    424    428    Any
        //  138    182    257    262    Ljava/io/IOException;
        //  138    182    424    428    Any
        //  185    220    257    262    Ljava/io/IOException;
        //  185    220    424    428    Any
        //  224    248    257    262    Ljava/io/IOException;
        //  224    248    424    428    Any
        //  248    254    257    262    Ljava/io/IOException;
        //  248    254    424    428    Any
        //  262    277    428    435    Any
        //  282    287    371    391    Ljava/io/IOException;
        //  303    313    257    262    Ljava/io/IOException;
        //  303    313    424    428    Any
        //  313    324    257    262    Ljava/io/IOException;
        //  313    324    424    428    Any
        //  327    334    257    262    Ljava/io/IOException;
        //  327    334    424    428    Any
        //  344    348    351    371    Ljava/io/IOException;
        //  398    402    404    424    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0262:
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
    
    public static byte[] b(final a a) {
        final SenderInstructions senderInstructions = new SenderInstructions();
        a(a, senderInstructions);
        return a(senderInstructions);
    }
    
    private static String dS(final String s) {
        int i = 0;
        String s2 = K.gJ(s).trim();
        if (s2.startsWith("\"") && s2.endsWith("\"") && s2.length() >= 2) {
            s2 = s2.substring(1, -1 + s2.length()).trim();
        }
        final int index = s2.indexOf(44);
        while (true) {
            Label_0220: {
                if (index == -1 || index == -1 + s2.length()) {
                    break Label_0220;
                }
                String[] split;
                int n;
                int n2;
                for (split = TextUtils.split(s2.substring(0, index), "\\s+"), n = 0, n2 = 0; n < split.length && (split[n].endsWith(".") || ++n2 < 2); ++n) {}
                if (n2 != 1) {
                    break Label_0220;
                }
                String s3 = s2.substring(index + 1).trim();
                if (s3.toLowerCase().startsWith("the ")) {
                    s3 = s3.substring(4).trim();
                }
                for (String[] split2 = TextUtils.split(s3, "\\s+"); i < split2.length; ++i) {
                    final String s4 = split2[i];
                    if (!s4.endsWith(".")) {
                        s2 = s4;
                        break;
                    }
                }
                return s2;
            }
            String s3 = s2;
            continue;
        }
    }
    
    public static a g(final byte[] array) {
        try {
            return new a(com.google.android.gm.provider.a.a.bnX).o(array);
        }
        catch (IOException ex) {
            E.e("Gmail", ex, "Unable to read sender instructions protobuf", new Object[0]);
            return null;
        }
    }
    
    public final void a(final String s, final boolean b, final boolean b2, final boolean b3, final boolean b4, final boolean b5) {
        boolean b6 = true;
        if (b4) {
            this.bds = b6;
        }
        else if (b5) {
            this.bdt = b6;
        }
        final SenderInstructions bdr = this.bdr;
        String ec;
        if (s == null) {
            ec = null;
        }
        else {
            ec = Gmail.ec(s);
        }
        String ed = null;
        if (s != null) {
            ed = Gmail.ed(s);
        }
        if (!b3 && !b4 && !b5) {
            b6 = false;
        }
        bdr.a(ec, ed, b, b2, b6, -1);
    }
    
    public final void dI(final int n) {
        this.bdr.dI(n);
    }
    
    public final byte[] toByteArray() {
        return a(this.bdr);
    }
}
