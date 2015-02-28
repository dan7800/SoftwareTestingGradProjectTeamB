package com.google.api.client.http;

import java.util.logging.*;
import java.nio.charset.*;
import com.google.api.client.util.*;
import java.io.*;

public final class w
{
    private final String ayL;
    private final s cwD;
    E cxA;
    private final t cxB;
    private boolean cxC;
    private int cxh;
    private boolean cxi;
    private InputStream cxy;
    private final String cxz;
    private final int statusCode;
    private final String statusMessage;
    
    w(final t cxB, final E cxA) {
        this.cxB = cxB;
        this.cxh = cxB.XB();
        this.cxi = cxB.XC();
        this.cxA = cxA;
        this.cxz = cxA.getContentEncoding();
        int statusCode = cxA.getStatusCode();
        if (statusCode < 0) {
            statusCode = 0;
        }
        this.statusCode = statusCode;
        final String reasonPhrase = cxA.getReasonPhrase();
        this.statusMessage = reasonPhrase;
        final Logger cwd = A.cwd;
        boolean b;
        if (this.cxi && cwd.isLoggable(Level.CONFIG)) {
            b = true;
        }
        else {
            b = false;
        }
        StringBuilder sb;
        if (b) {
            sb = new StringBuilder();
            sb.append("-------------- RESPONSE --------------").append(L.czG);
            final String xw = cxA.XW();
            if (xw != null) {
                sb.append(xw);
            }
            else {
                sb.append(this.statusCode);
                if (reasonPhrase != null) {
                    sb.append(' ').append(reasonPhrase);
                }
            }
            sb.append(L.czG);
        }
        else {
            sb = null;
        }
        final o xe = cxB.XE();
        StringBuilder sb2;
        if (b) {
            sb2 = sb;
        }
        else {
            sb2 = null;
        }
        xe.a(cxA, sb2);
        String ayL = cxA.getContentType();
        if (ayL == null) {
            ayL = cxB.XE().getContentType();
        }
        this.ayL = ayL;
        s cwD = null;
        if (ayL != null) {
            cwD = new s(ayL);
        }
        this.cwD = cwD;
        if (b) {
            cwd.config(sb.toString());
        }
    }
    
    private Charset XR() {
        if (this.cwD == null || this.cwD.Xx() == null) {
            return j.ISO_8859_1;
        }
        return this.cwD.Xx();
    }
    
    public final String KB() {
        return this.statusMessage;
    }
    
    public final o XD() {
        return this.cxB.XE();
    }
    
    public final boolean XO() {
        return z.fb(this.statusCode);
    }
    
    public final t XP() {
        return this.cxB;
    }
    
    public final String XQ() {
        final InputStream content = this.getContent();
        if (content == null) {
            return "";
        }
        final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        com.google.api.client.util.w.a(content, byteArrayOutputStream, true);
        return byteArrayOutputStream.toString(this.XR().name());
    }
    
    public final <T> T d(final Class<T> clazz) {
        int n = 1;
        final int statusCode = this.statusCode;
        if (this.cxB.getRequestMethod().equals("HEAD") || statusCode / 100 == n || statusCode == 204 || statusCode == 304) {
            this.ignore();
            n = 0;
        }
        if (n == 0) {
            return null;
        }
        return this.cxB.XK().a(this.getContent(), this.XR(), clazz);
    }
    
    public final void disconnect() {
        this.ignore();
        this.cxA.disconnect();
    }
    
    public final InputStream getContent() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/google/api/client/http/w.cxC:Z
        //     4: ifne            104
        //     7: aload_0        
        //     8: getfield        com/google/api/client/http/w.cxA:Lcom/google/api/client/http/E;
        //    11: invokevirtual   com/google/api/client/http/E.getContent:()Ljava/io/InputStream;
        //    14: astore_1       
        //    15: aload_1        
        //    16: ifnull          99
        //    19: aload_0        
        //    20: getfield        com/google/api/client/http/w.cxz:Ljava/lang/String;
        //    23: astore          6
        //    25: aload           6
        //    27: ifnull          53
        //    30: aload           6
        //    32: ldc             "gzip"
        //    34: invokevirtual   java/lang/String.contains:(Ljava/lang/CharSequence;)Z
        //    37: ifeq            53
        //    40: new             Ljava/util/zip/GZIPInputStream;
        //    43: dup            
        //    44: aload_1        
        //    45: invokespecial   java/util/zip/GZIPInputStream.<init>:(Ljava/io/InputStream;)V
        //    48: astore          7
        //    50: aload           7
        //    52: astore_1       
        //    53: getstatic       com/google/api/client/http/A.cwd:Ljava/util/logging/Logger;
        //    56: astore          9
        //    58: aload_0        
        //    59: getfield        com/google/api/client/http/w.cxi:Z
        //    62: ifeq            94
        //    65: aload           9
        //    67: getstatic       java/util/logging/Level.CONFIG:Ljava/util/logging/Level;
        //    70: invokevirtual   java/util/logging/Logger.isLoggable:(Ljava/util/logging/Level;)Z
        //    73: ifeq            94
        //    76: new             Lcom/google/api/client/util/z;
        //    79: dup            
        //    80: aload_1        
        //    81: aload           9
        //    83: getstatic       java/util/logging/Level.CONFIG:Ljava/util/logging/Level;
        //    86: aload_0        
        //    87: getfield        com/google/api/client/http/w.cxh:I
        //    90: invokespecial   com/google/api/client/util/z.<init>:(Ljava/io/InputStream;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V
        //    93: astore_1       
        //    94: aload_0        
        //    95: aload_1        
        //    96: putfield        com/google/api/client/http/w.cxy:Ljava/io/InputStream;
        //    99: aload_0        
        //   100: iconst_1       
        //   101: putfield        com/google/api/client/http/w.cxC:Z
        //   104: aload_0        
        //   105: getfield        com/google/api/client/http/w.cxy:Ljava/io/InputStream;
        //   108: areturn        
        //   109: astore          5
        //   111: aload_1        
        //   112: invokevirtual   java/io/InputStream.close:()V
        //   115: goto            99
        //   118: astore_2       
        //   119: aload_1        
        //   120: astore_3       
        //   121: aload_2        
        //   122: astore          4
        //   124: aload_3        
        //   125: invokevirtual   java/io/InputStream.close:()V
        //   128: aload           4
        //   130: athrow         
        //   131: astore          8
        //   133: aload_1        
        //   134: astore_3       
        //   135: aload           8
        //   137: astore          4
        //   139: goto            124
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                  
        //  -----  -----  -----  -----  ----------------------
        //  19     25     109    118    Ljava/io/EOFException;
        //  19     25     118    124    Any
        //  30     50     109    118    Ljava/io/EOFException;
        //  30     50     118    124    Any
        //  53     94     109    118    Ljava/io/EOFException;
        //  53     94     131    142    Any
        //  94     99     109    118    Ljava/io/EOFException;
        //  94     99     131    142    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 0, Size: 0
        //     at java.util.ArrayList.rangeCheck(Unknown Source)
        //     at java.util.ArrayList.get(Unknown Source)
        //     at com.strobel.decompiler.ast.AstBuilder.convertLocalVariables(AstBuilder.java:3037)
        //     at com.strobel.decompiler.ast.AstBuilder.performStackAnalysis(AstBuilder.java:2446)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:109)
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
    
    public final String getContentType() {
        return this.ayL;
    }
    
    public final int getStatusCode() {
        return this.statusCode;
    }
    
    public final void ignore() {
        final InputStream content = this.getContent();
        if (content != null) {
            content.close();
        }
    }
}
