package com.google.api.client.http.a;

import java.net.*;
import com.google.api.client.http.*;

final class a extends D
{
    private final HttpURLConnection cxU;
    
    a(final HttpURLConnection cxU) {
        (this.cxU = cxU).setInstanceFollowRedirects(false);
    }
    
    @Override
    public final E Xw() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/google/api/client/http/a/a.cxU:Ljava/net/HttpURLConnection;
        //     4: astore_1       
        //     5: aload_0        
        //     6: invokevirtual   com/google/api/client/http/a/a.XV:()Lcom/google/api/client/util/K;
        //     9: ifnull          150
        //    12: aload_0        
        //    13: invokevirtual   com/google/api/client/http/a/a.getContentType:()Ljava/lang/String;
        //    16: astore          4
        //    18: aload           4
        //    20: ifnull          31
        //    23: aload_0        
        //    24: ldc             "Content-Type"
        //    26: aload           4
        //    28: invokevirtual   com/google/api/client/http/a/a.addHeader:(Ljava/lang/String;Ljava/lang/String;)V
        //    31: aload_0        
        //    32: invokevirtual   com/google/api/client/http/a/a.getContentEncoding:()Ljava/lang/String;
        //    35: astore          5
        //    37: aload           5
        //    39: ifnull          50
        //    42: aload_0        
        //    43: ldc             "Content-Encoding"
        //    45: aload           5
        //    47: invokevirtual   com/google/api/client/http/a/a.addHeader:(Ljava/lang/String;Ljava/lang/String;)V
        //    50: aload_0        
        //    51: invokevirtual   com/google/api/client/http/a/a.getContentLength:()J
        //    54: lstore          6
        //    56: lload           6
        //    58: lconst_0       
        //    59: lcmp           
        //    60: iflt            74
        //    63: aload_0        
        //    64: ldc             "Content-Length"
        //    66: lload           6
        //    68: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //    71: invokevirtual   com/google/api/client/http/a/a.addHeader:(Ljava/lang/String;Ljava/lang/String;)V
        //    74: aload_1        
        //    75: invokevirtual   java/net/HttpURLConnection.getRequestMethod:()Ljava/lang/String;
        //    78: astore          8
        //    80: ldc             "POST"
        //    82: aload           8
        //    84: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //    87: ifne            100
        //    90: ldc             "PUT"
        //    92: aload           8
        //    94: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //    97: ifeq            183
        //   100: aload_1        
        //   101: iconst_1       
        //   102: invokevirtual   java/net/HttpURLConnection.setDoOutput:(Z)V
        //   105: lload           6
        //   107: lconst_0       
        //   108: lcmp           
        //   109: iflt            165
        //   112: lload           6
        //   114: ldc2_w          2147483647
        //   117: lcmp           
        //   118: ifgt            165
        //   121: aload_1        
        //   122: lload           6
        //   124: l2i            
        //   125: invokevirtual   java/net/HttpURLConnection.setFixedLengthStreamingMode:(I)V
        //   128: aload_1        
        //   129: invokevirtual   java/net/HttpURLConnection.getOutputStream:()Ljava/io/OutputStream;
        //   132: astore          9
        //   134: aload_0        
        //   135: invokevirtual   com/google/api/client/http/a/a.XV:()Lcom/google/api/client/util/K;
        //   138: aload           9
        //   140: invokeinterface com/google/api/client/util/K.writeTo:(Ljava/io/OutputStream;)V
        //   145: aload           9
        //   147: invokevirtual   java/io/OutputStream.close:()V
        //   150: aload_1        
        //   151: invokevirtual   java/net/HttpURLConnection.connect:()V
        //   154: new             Lcom/google/api/client/http/a/b;
        //   157: dup            
        //   158: aload_1        
        //   159: invokespecial   com/google/api/client/http/a/b.<init>:(Ljava/net/HttpURLConnection;)V
        //   162: astore_3       
        //   163: aload_3        
        //   164: areturn        
        //   165: aload_1        
        //   166: iconst_0       
        //   167: invokevirtual   java/net/HttpURLConnection.setChunkedStreamingMode:(I)V
        //   170: goto            128
        //   173: astore          10
        //   175: aload           9
        //   177: invokevirtual   java/io/OutputStream.close:()V
        //   180: aload           10
        //   182: athrow         
        //   183: lload           6
        //   185: lconst_0       
        //   186: lcmp           
        //   187: ifne            212
        //   190: iconst_1       
        //   191: istore          11
        //   193: iload           11
        //   195: ldc             "%s with non-zero content length is not supported"
        //   197: iconst_1       
        //   198: anewarray       Ljava/lang/Object;
        //   201: dup            
        //   202: iconst_0       
        //   203: aload           8
        //   205: aastore        
        //   206: invokestatic    com/google/api/client/a/a/a/a/a/a.a:(ZLjava/lang/String;[Ljava/lang/Object;)V
        //   209: goto            150
        //   212: iconst_0       
        //   213: istore          11
        //   215: goto            193
        //   218: astore_2       
        //   219: aload_1        
        //   220: invokevirtual   java/net/HttpURLConnection.disconnect:()V
        //   223: aload_2        
        //   224: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  134    145    173    183    Any
        //  150    163    218    225    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0150:
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
    
    @Override
    public final void addHeader(final String s, final String s2) {
        this.cxU.addRequestProperty(s, s2);
    }
    
    @Override
    public final void aj(final int connectTimeout, final int readTimeout) {
        this.cxU.setReadTimeout(readTimeout);
        this.cxU.setConnectTimeout(connectTimeout);
    }
}
