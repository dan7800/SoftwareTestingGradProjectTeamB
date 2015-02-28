package org.apache.james.mime4j.field;

import org.apache.james.mime4j.*;

public class f implements l
{
    private static org.apache.james.mime4j.f cDh;
    
    static {
        f.cDh = new org.apache.james.mime4j.f();
    }
    
    @Override
    public final k g(final String p0, final String p1, final String p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: ldc             ""
        //     2: astore          4
        //     4: new             Lorg/apache/james/mime4j/field/contenttype/parser/a;
        //     7: dup            
        //     8: new             Ljava/io/StringReader;
        //    11: dup            
        //    12: aload_2        
        //    13: invokespecial   java/io/StringReader.<init>:(Ljava/lang/String;)V
        //    16: invokespecial   org/apache/james/mime4j/field/contenttype/parser/a.<init>:(Ljava/io/Reader;)V
        //    19: astore          5
        //    21: aload           5
        //    23: invokevirtual   org/apache/james/mime4j/field/contenttype/parser/a.abq:()V
        //    26: aconst_null    
        //    27: astore          9
        //    29: aload           5
        //    31: invokevirtual   org/apache/james/mime4j/field/contenttype/parser/a.getType:()Ljava/lang/String;
        //    34: astore          13
        //    36: aload           5
        //    38: invokevirtual   org/apache/james/mime4j/field/contenttype/parser/a.abn:()Ljava/lang/String;
        //    41: astore          14
        //    43: aconst_null    
        //    44: astore          15
        //    46: aload           13
        //    48: ifnull          253
        //    51: aconst_null    
        //    52: astore          15
        //    54: aload           14
        //    56: ifnull          253
        //    59: new             Ljava/lang/StringBuilder;
        //    62: dup            
        //    63: invokespecial   java/lang/StringBuilder.<init>:()V
        //    66: aload           13
        //    68: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    71: ldc             "/"
        //    73: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    76: aload           5
        //    78: invokevirtual   org/apache/james/mime4j/field/contenttype/parser/a.abn:()Ljava/lang/String;
        //    81: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    84: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    87: invokevirtual   java/lang/String.toLowerCase:()Ljava/lang/String;
        //    90: astore          4
        //    92: aload           5
        //    94: invokevirtual   org/apache/james/mime4j/field/contenttype/parser/a.abo:()Ljava/util/ArrayList;
        //    97: astore          16
        //    99: aload           5
        //   101: invokevirtual   org/apache/james/mime4j/field/contenttype/parser/a.abp:()Ljava/util/ArrayList;
        //   104: astore          17
        //   106: aconst_null    
        //   107: astore          15
        //   109: aload           16
        //   111: ifnull          253
        //   114: aconst_null    
        //   115: astore          15
        //   117: aload           17
        //   119: ifnull          253
        //   122: iconst_0       
        //   123: istore          18
        //   125: iload           18
        //   127: aload           16
        //   129: invokevirtual   java/util/ArrayList.size:()I
        //   132: if_icmpge       253
        //   135: iload           18
        //   137: aload           17
        //   139: invokevirtual   java/util/ArrayList.size:()I
        //   142: if_icmpge       253
        //   145: aload           15
        //   147: ifnonnull       312
        //   150: new             Ljava/util/HashMap;
        //   153: dup            
        //   154: dconst_1       
        //   155: ldc2_w          1.3
        //   158: aload           16
        //   160: invokevirtual   java/util/ArrayList.size:()I
        //   163: i2d            
        //   164: dmul           
        //   165: dadd           
        //   166: d2i            
        //   167: invokespecial   java/util/HashMap.<init>:(I)V
        //   170: astore          12
        //   172: aload           12
        //   174: aload           16
        //   176: iload           18
        //   178: invokevirtual   java/util/ArrayList.get:(I)Ljava/lang/Object;
        //   181: checkcast       Ljava/lang/String;
        //   184: invokevirtual   java/lang/String.toLowerCase:()Ljava/lang/String;
        //   187: aload           17
        //   189: iload           18
        //   191: invokevirtual   java/util/ArrayList.get:(I)Ljava/lang/Object;
        //   194: checkcast       Ljava/lang/String;
        //   197: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   202: pop            
        //   203: iinc            18, 1
        //   206: aload           12
        //   208: astore          15
        //   210: goto            125
        //   213: astore          9
        //   215: getstatic       org/apache/james/mime4j/field/f.cDh:Lorg/apache/james/mime4j/f;
        //   218: pop            
        //   219: invokestatic    org/apache/james/mime4j/f.isDebugEnabled:()Z
        //   222: pop            
        //   223: goto            29
        //   226: astore          6
        //   228: getstatic       org/apache/james/mime4j/field/f.cDh:Lorg/apache/james/mime4j/f;
        //   231: pop            
        //   232: invokestatic    org/apache/james/mime4j/f.isDebugEnabled:()Z
        //   235: pop            
        //   236: new             Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
        //   239: dup            
        //   240: aload           6
        //   242: invokevirtual   org/apache/james/mime4j/field/contenttype/parser/TokenMgrError.getMessage:()Ljava/lang/String;
        //   245: invokespecial   org/apache/james/mime4j/field/contenttype/parser/ParseException.<init>:(Ljava/lang/String;)V
        //   248: astore          9
        //   250: goto            29
        //   253: aload           15
        //   255: astore          12
        //   257: aload           4
        //   259: astore          11
        //   261: new             Lorg/apache/james/mime4j/field/e;
        //   264: dup            
        //   265: aload_1        
        //   266: aload_2        
        //   267: aload_3        
        //   268: aload           11
        //   270: aload           12
        //   272: aload           9
        //   274: invokespecial   org/apache/james/mime4j/field/e.<init>:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;)V
        //   277: areturn        
        //   278: astore          10
        //   280: aload           4
        //   282: astore          11
        //   284: aconst_null    
        //   285: astore          12
        //   287: goto            261
        //   290: astore          20
        //   292: aload           4
        //   294: astore          11
        //   296: goto            261
        //   299: astore          19
        //   301: aload           15
        //   303: astore          12
        //   305: aload           4
        //   307: astore          11
        //   309: goto            261
        //   312: aload           15
        //   314: astore          12
        //   316: goto            172
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                                             
        //  -----  -----  -----  -----  -----------------------------------------------------------------
        //  21     26     213    226    Lorg/apache/james/mime4j/field/contenttype/parser/ParseException;
        //  21     26     226    253    Lorg/apache/james/mime4j/field/contenttype/parser/TokenMgrError;
        //  29     43     278    290    Ljava/lang/NullPointerException;
        //  59     106    278    290    Ljava/lang/NullPointerException;
        //  125    145    299    312    Ljava/lang/NullPointerException;
        //  150    172    299    312    Ljava/lang/NullPointerException;
        //  172    203    290    299    Ljava/lang/NullPointerException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 146, Size: 146
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
