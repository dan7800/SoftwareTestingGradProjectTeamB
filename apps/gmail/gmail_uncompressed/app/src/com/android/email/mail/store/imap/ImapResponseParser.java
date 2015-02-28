package com.android.email.mail.store.imap;

import com.android.email.mail.transport.*;
import com.android.mail.utils.*;
import com.android.emailcommon.mail.*;
import com.android.email.*;
import java.util.*;
import java.io.*;

public final class ImapResponseParser
{
    private final q Rd;
    private final a Re;
    private final int Rf;
    private final StringBuilder Rg;
    private final StringBuilder Rh;
    private final ArrayList<g> Ri;
    
    public ImapResponseParser(final InputStream inputStream, final a a) {
        this(inputStream, a, (byte)0);
    }
    
    private ImapResponseParser(final InputStream inputStream, final a re, final byte b) {
        this.Rg = new StringBuilder();
        this.Rh = new StringBuilder();
        this.Ri = new ArrayList<g>();
        this.Rd = new q(inputStream);
        this.Re = re;
        this.Rf = 2097152;
    }
    
    private d a(final char c, final char c2) {
        this.b(c);
        final d d = new d();
        this.a(d, c2);
        this.b(c2);
        return d;
    }
    
    private void a(final d d, final char c) {
        while (true) {
            final int gs = this.gS();
            if (gs == c) {
                break;
            }
            if (gs == ' ') {
                this.jH();
            }
            else {
                b b = null;
                switch (this.gS()) {
                    default: {
                        b = this.jK();
                        break;
                    }
                    case 40: {
                        b = this.a('(', ')');
                        break;
                    }
                    case 91: {
                        b = this.a('[', ']');
                        break;
                    }
                    case 34: {
                        this.jH();
                        b = new h(this.c('\"'));
                        break;
                    }
                    case 123: {
                        b = this.jL();
                        break;
                    }
                    case 13: {
                        this.jH();
                        this.b('\n');
                        b = null;
                        break;
                    }
                    case 10: {
                        this.jH();
                        b = null;
                        break;
                    }
                }
                if (b == null) {
                    break;
                }
                d.a(b);
            }
        }
    }
    
    private void a(final Exception ex) {
        int i = 0;
        while (i < 4) {
            try {
                final int jh = this.jH();
                if (jh != -1 && jh != 10) {
                    ++i;
                    continue;
                }
            }
            catch (IOException ex2) {}
            break;
        }
        E.e(com.android.emailcommon.b.mW, "Exception detected: " + ex.getMessage(), new Object[0]);
        this.Re.iW();
    }
    
    private void b(final char c) {
        final int jh = this.jH();
        if (c != jh) {
            throw new IOException(String.format("Expected %04x (%c) but got %04x (%c)", (int)c, c, jh, (char)jh));
        }
    }
    
    private String c(final char c) {
        this.Rg.setLength(0);
        while (true) {
            final int jh = this.jH();
            if (jh == c) {
                break;
            }
            this.Rg.append((char)jh);
        }
        return this.Rg.toString();
    }
    
    private int gS() {
        final int gs = this.Rd.gS();
        if (gs == -1) {
            throw jG();
        }
        return gs;
    }
    
    private static IOException jG() {
        if (com.android.email.b.DEBUG) {
            E.c(com.android.emailcommon.b.mW, "End of stream reached", new Object[0]);
        }
        return new IOException("End of stream reached");
    }
    
    private int jH() {
        final int read = this.Rd.read();
        if (read == -1) {
            throw jG();
        }
        this.Re.ba(read);
        return read;
    }
    
    private String jI() {
        final String c = this.c('\r');
        this.b('\n');
        return c;
    }
    
    private g jJ() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokespecial   com/android/email/mail/store/imap/ImapResponseParser.gS:()I
        //     4: istore_3       
        //     5: iload_3        
        //     6: bipush          43
        //     8: if_icmpne       52
        //    11: aload_0        
        //    12: invokespecial   com/android/email/mail/store/imap/ImapResponseParser.jH:()I
        //    15: pop            
        //    16: aload_0        
        //    17: bipush          32
        //    19: invokespecial   com/android/email/mail/store/imap/ImapResponseParser.b:(C)V
        //    22: new             Lcom/android/email/mail/store/imap/g;
        //    25: dup            
        //    26: aconst_null    
        //    27: iconst_1       
        //    28: invokespecial   com/android/email/mail/store/imap/g.<init>:(Ljava/lang/String;Z)V
        //    31: astore          5
        //    33: aload           5
        //    35: new             Lcom/android/email/mail/store/imap/h;
        //    38: dup            
        //    39: aload_0        
        //    40: invokespecial   com/android/email/mail/store/imap/ImapResponseParser.jI:()Ljava/lang/String;
        //    43: invokespecial   com/android/email/mail/store/imap/h.<init>:(Ljava/lang/String;)V
        //    46: invokevirtual   com/android/email/mail/store/imap/g.a:(Lcom/android/email/mail/store/imap/b;)V
        //    49: aload           5
        //    51: areturn        
        //    52: iload_3        
        //    53: bipush          42
        //    55: if_icmpne       200
        //    58: aload_0        
        //    59: invokespecial   com/android/email/mail/store/imap/ImapResponseParser.jH:()I
        //    62: pop            
        //    63: aload_0        
        //    64: bipush          32
        //    66: invokespecial   com/android/email/mail/store/imap/ImapResponseParser.b:(C)V
        //    69: aconst_null    
        //    70: astore          8
        //    72: new             Lcom/android/email/mail/store/imap/g;
        //    75: dup            
        //    76: aload           8
        //    78: iconst_0       
        //    79: invokespecial   com/android/email/mail/store/imap/g.<init>:(Ljava/lang/String;Z)V
        //    82: astore          5
        //    84: aload           5
        //    86: aload_0        
        //    87: invokespecial   com/android/email/mail/store/imap/ImapResponseParser.jK:()Lcom/android/email/mail/store/imap/i;
        //    90: invokevirtual   com/android/email/mail/store/imap/g.a:(Lcom/android/email/mail/store/imap/b;)V
        //    93: aload_0        
        //    94: invokespecial   com/android/email/mail/store/imap/ImapResponseParser.gS:()I
        //    97: bipush          32
        //    99: if_icmpne       225
        //   102: aload_0        
        //   103: invokespecial   com/android/email/mail/store/imap/ImapResponseParser.jH:()I
        //   106: pop            
        //   107: aload           5
        //   109: invokevirtual   com/android/email/mail/store/imap/g.jy:()Z
        //   112: ifeq            215
        //   115: aload_0        
        //   116: invokespecial   com/android/email/mail/store/imap/ImapResponseParser.gS:()I
        //   119: bipush          91
        //   121: if_icmpne       151
        //   124: aload           5
        //   126: aload_0        
        //   127: bipush          91
        //   129: bipush          93
        //   131: invokespecial   com/android/email/mail/store/imap/ImapResponseParser.a:(CC)Lcom/android/email/mail/store/imap/d;
        //   134: invokevirtual   com/android/email/mail/store/imap/g.a:(Lcom/android/email/mail/store/imap/b;)V
        //   137: aload_0        
        //   138: invokespecial   com/android/email/mail/store/imap/ImapResponseParser.gS:()I
        //   141: bipush          32
        //   143: if_icmpne       151
        //   146: aload_0        
        //   147: invokespecial   com/android/email/mail/store/imap/ImapResponseParser.jH:()I
        //   150: pop            
        //   151: aload_0        
        //   152: invokespecial   com/android/email/mail/store/imap/ImapResponseParser.jI:()Ljava/lang/String;
        //   155: astore          11
        //   157: aload           11
        //   159: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //   162: ifne            49
        //   165: aload           5
        //   167: new             Lcom/android/email/mail/store/imap/h;
        //   170: dup            
        //   171: aload           11
        //   173: invokespecial   com/android/email/mail/store/imap/h.<init>:(Ljava/lang/String;)V
        //   176: invokevirtual   com/android/email/mail/store/imap/g.a:(Lcom/android/email/mail/store/imap/b;)V
        //   179: aload           5
        //   181: areturn        
        //   182: astore          9
        //   184: aload           5
        //   186: astore_2       
        //   187: aload           9
        //   189: astore_1       
        //   190: aload_2        
        //   191: ifnull          198
        //   194: aload_2        
        //   195: invokevirtual   com/android/email/mail/store/imap/g.destroy:()V
        //   198: aload_1        
        //   199: athrow         
        //   200: aload_0        
        //   201: bipush          32
        //   203: invokespecial   com/android/email/mail/store/imap/ImapResponseParser.c:(C)Ljava/lang/String;
        //   206: astore          7
        //   208: aload           7
        //   210: astore          8
        //   212: goto            72
        //   215: aload_0        
        //   216: aload           5
        //   218: iconst_0       
        //   219: invokespecial   com/android/email/mail/store/imap/ImapResponseParser.a:(Lcom/android/email/mail/store/imap/d;C)V
        //   222: aload           5
        //   224: areturn        
        //   225: aload_0        
        //   226: bipush          13
        //   228: invokespecial   com/android/email/mail/store/imap/ImapResponseParser.b:(C)V
        //   231: aload_0        
        //   232: bipush          10
        //   234: invokespecial   com/android/email/mail/store/imap/ImapResponseParser.b:(C)V
        //   237: aload           5
        //   239: areturn        
        //   240: astore_1       
        //   241: aconst_null    
        //   242: astore_2       
        //   243: goto            190
        //   246: astore          6
        //   248: aload           5
        //   250: astore_2       
        //   251: aload           6
        //   253: astore_1       
        //   254: goto            190
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  0      5      240    246    Any
        //  11     33     240    246    Any
        //  33     49     246    257    Any
        //  58     69     240    246    Any
        //  72     84     240    246    Any
        //  84     151    182    190    Any
        //  151    179    182    190    Any
        //  200    208    240    246    Any
        //  215    222    182    190    Any
        //  225    237    182    190    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0049:
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
    
    private i jK() {
        this.Rh.setLength(0);
        while (true) {
            final int gs = this.gS();
            if (gs == 40 || gs == 41 || gs == 123 || gs == 32 || gs == 93 || gs == 37 || gs == 34 || (gs >= 0 && gs <= 31) || gs == 127) {
                break;
            }
            if (gs == 91) {
                this.Rh.append((char)this.jH());
                this.Rh.append(this.c(']'));
                this.Rh.append(']');
            }
            else {
                this.Rh.append((char)this.jH());
            }
        }
        if (this.Rh.length() == 0) {
            throw new MessagingException("Expected string, none found.");
        }
        final String string = this.Rh.toString();
        if ("NIL".equalsIgnoreCase(string)) {
            return i.Rl;
        }
        return new h(string);
    }
    
    private i jL() {
        this.b('{');
        int int1;
        try {
            int1 = Integer.parseInt(this.c('}'));
            if (int1 < 0) {
                throw new MessagingException("Invalid negative length in literal");
            }
        }
        catch (NumberFormatException ex) {
            throw new MessagingException("Invalid length in literal");
        }
        this.b('\r');
        this.b('\n');
        final k k = new k(this.Rd, int1);
        if (int1 > this.Rf) {
            return new com.android.email.mail.store.imap.k(k);
        }
        return new f(k);
    }
    
    public final void iQ() {
        final Iterator<g> iterator = this.Ri.iterator();
        while (iterator.hasNext()) {
            iterator.next().destroy();
        }
        this.Ri.clear();
    }
    
    public final g iR() {
        g jj;
        try {
            jj = this.jJ();
            if (com.android.email.b.DEBUG) {
                E.c(com.android.emailcommon.b.mW, "<<< " + jj.toString(), new Object[0]);
            }
            if (jj.H("BYE")) {
                E.e(com.android.emailcommon.b.mW, "Received BYE", new Object[0]);
                jj.destroy();
                throw new ImapResponseParser$ByeException();
            }
        }
        catch (RuntimeException ex) {
            this.a(ex);
            throw ex;
        }
        catch (IOException ex2) {
            this.a(ex2);
            throw ex2;
        }
        this.Ri.add(jj);
        return jj;
    }
}
