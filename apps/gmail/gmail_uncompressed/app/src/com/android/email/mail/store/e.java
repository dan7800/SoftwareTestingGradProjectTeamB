package com.android.email.mail.store;

import java.io.*;
import com.android.email.*;
import com.android.mail.utils.*;
import java.util.*;
import android.content.*;
import org.apache.james.mime4j.*;
import com.android.emailcommon.mail.*;
import com.android.emailcommon.service.*;
import android.os.*;
import com.android.emailcommon.provider.*;

public final class e extends Folder
{
    final /* synthetic */ Pop3Store QM;
    private final HashMap<String, g> QN;
    private final HashMap<Integer, g> QO;
    private final HashMap<String, Integer> QP;
    private d QQ;
    private int Qx;
    private final String mName;
    
    public e(final Pop3Store qm, final String mName) {
        this.QM = qm;
        this.QN = new HashMap<String, g>();
        this.QO = new HashMap<Integer, g>();
        this.QP = new HashMap<String, Integer>();
        if (mName.equalsIgnoreCase("INBOX")) {
            this.mName = "INBOX";
            return;
        }
        this.mName = mName;
    }
    
    private void a(final int n, final g g) {
        this.QO.put(n, g);
        this.QN.put(g.ln(), g);
        this.QP.put(g.ln(), n);
    }
    
    private void aW(final int n) {
        if (this.QO.isEmpty()) {
            final f f = new f(this);
            if (!Pop3Store.QH && this.Qx <= 5000) {
                this.e("UIDL", null);
                while (true) {
                    final String ah = this.QM.Qb.ah(false);
                    if (ah == null) {
                        return;
                    }
                    if (!f.G(ah)) {
                        break;
                    }
                    if (f.QT) {
                        return;
                    }
                    final int qr = f.QR;
                    if (qr <= 0 || qr > n || this.QO.get(qr) != null) {
                        continue;
                    }
                    this.a(qr, new g(f.QS, this));
                }
                throw new IOException();
            }
            for (int i = 1; i <= n; ++i) {
                if (this.QO.get(i) == null) {
                    if (!f.F(this.e("UIDL " + i, null))) {
                        throw new IOException();
                    }
                    this.a(i, new g(f.QS, this));
                }
            }
        }
    }
    
    private String e(final String s, final String s2) {
        this.a(Folder$OpenMode.Xg);
        if (s != null) {
            this.QM.Qb.f(s, s2);
        }
        final String ah = this.QM.Qb.ah(true);
        if (ah.length() > 1 && ah.charAt(0) == '-') {
            throw new MessagingException(ah);
        }
        return ah;
    }
    
    private d jq() {
        final d d = new d(this.QM);
        try {
            this.e("CAPA", null);
            while (true) {
                final String ah = this.QM.Qb.ah(true);
                if (ah == null || ah.equals(".")) {
                    break;
                }
                if (!ah.equalsIgnoreCase("STLS")) {
                    continue;
                }
                d.QL = true;
            }
        }
        catch (MessagingException ex) {}
        return d;
    }
    
    @Override
    public final Message A(final String s) {
        Label_0018: {
            if (this.QP.size() != 0) {
                break Label_0018;
            }
            try {
                this.aW(this.Qx);
                return this.QN.get(s);
            }
            catch (IOException ex) {
                this.QM.Qb.close();
                if (b.DEBUG) {
                    E.c(com.android.emailcommon.b.mW, "Unable to index during getMessage " + ex, new Object[0]);
                }
                throw new MessagingException("getMessages", ex);
            }
        }
    }
    
    @Override
    public final Message C(final String s) {
        return new g(s, this);
    }
    
    public final g[] C(int n, final int n2) {
        ArrayList<g> list;
        try {
            this.aW(n);
            for (list = new ArrayList<g>(); n > 0 && list.size() < n2; --n) {
                final g g = this.QO.get(n);
                if (g != null) {
                    list.add(g);
                }
            }
        }
        catch (IOException ex) {
            this.QM.Qb.close();
            if (b.DEBUG) {
                E.c(com.android.emailcommon.b.mW, ex.toString(), new Object[0]);
            }
            throw new MessagingException("getMessages", ex);
        }
        return list.toArray(new g[list.size()]);
    }
    
    @Override
    public final void a(final Context context, final Message message, final boolean b) {
    }
    
    public final void a(final g p0, final int p1, final org.apache.james.mime4j.e p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/android/email/mail/store/e.QP:Ljava/util/HashMap;
        //     4: aload_1        
        //     5: invokevirtual   com/android/email/mail/store/g.ln:()Ljava/lang/String;
        //     8: invokevirtual   java/util/HashMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //    11: checkcast       Ljava/lang/Integer;
        //    14: invokevirtual   java/lang/Integer.intValue:()I
        //    17: istore          4
        //    19: iload_2        
        //    20: iconst_m1      
        //    21: if_icmpne       170
        //    24: getstatic       java/util/Locale.US:Ljava/util/Locale;
        //    27: astore          25
        //    29: iconst_1       
        //    30: anewarray       Ljava/lang/Object;
        //    33: astore          26
        //    35: aload           26
        //    37: iconst_0       
        //    38: iload           4
        //    40: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //    43: aastore        
        //    44: aload_0        
        //    45: aload           25
        //    47: ldc_w           "RETR %d"
        //    50: aload           26
        //    52: invokestatic    java/lang/String.format:(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //    55: aconst_null    
        //    56: invokespecial   com/android/email/mail/store/e.e:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //    59: astore          8
        //    61: aload           8
        //    63: ifnull          169
        //    66: aload           8
        //    68: ldc_w           "OK"
        //    71: invokevirtual   java/lang/String.indexOf:(Ljava/lang/String;)I
        //    74: istore          10
        //    76: iload           10
        //    78: ifle            116
        //    81: iload           10
        //    83: iconst_3       
        //    84: iadd           
        //    85: istore          13
        //    87: iload           13
        //    89: aload           8
        //    91: invokevirtual   java/lang/String.length:()I
        //    94: if_icmple       305
        //    97: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   100: ldc_w           "No body length supplied"
        //   103: iconst_0       
        //   104: anewarray       Ljava/lang/Object;
        //   107: invokestatic    com/android/mail/utils/E.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   110: pop            
        //   111: aload_1        
        //   112: iconst_0       
        //   113: invokevirtual   com/android/email/mail/store/g.setSize:(I)V
        //   116: aload_0        
        //   117: getfield        com/android/email/mail/store/e.QM:Lcom/android/email/mail/store/Pop3Store;
        //   120: invokestatic    com/android/email/mail/store/Pop3Store.o:(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;
        //   123: invokevirtual   com/android/email/mail/transport/b.getInputStream:()Ljava/io/InputStream;
        //   126: astore          11
        //   128: invokestatic    com/android/email/mail/store/Pop3Store.jo:()Z
        //   131: ifeq            371
        //   134: getstatic       com/android/email/b.DEBUG:Z
        //   137: ifeq            371
        //   140: new             Lcom/android/emailcommon/b/l;
        //   143: dup            
        //   144: aload           11
        //   146: invokespecial   com/android/emailcommon/b/l.<init>:(Ljava/io/InputStream;)V
        //   149: astore          12
        //   151: aload_1        
        //   152: new             Lcom/android/email/mail/store/h;
        //   155: dup            
        //   156: aload_0        
        //   157: getfield        com/android/email/mail/store/e.QM:Lcom/android/email/mail/store/Pop3Store;
        //   160: aload           12
        //   162: invokespecial   com/android/email/mail/store/h.<init>:(Lcom/android/email/mail/store/Pop3Store;Ljava/io/InputStream;)V
        //   165: aload_3        
        //   166: invokevirtual   com/android/email/mail/store/g.a:(Ljava/io/InputStream;Lorg/apache/james/mime4j/e;)V
        //   169: return         
        //   170: getstatic       java/util/Locale.US:Ljava/util/Locale;
        //   173: astore          22
        //   175: iconst_2       
        //   176: anewarray       Ljava/lang/Object;
        //   179: astore          23
        //   181: aload           23
        //   183: iconst_0       
        //   184: iload           4
        //   186: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   189: aastore        
        //   190: aload           23
        //   192: iconst_1       
        //   193: iload_2        
        //   194: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   197: aastore        
        //   198: aload_0        
        //   199: aload           22
        //   201: ldc_w           "TOP %d %d"
        //   204: aload           23
        //   206: invokestatic    java/lang/String.format:(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //   209: aconst_null    
        //   210: invokespecial   com/android/email/mail/store/e.e:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   213: astore          24
        //   215: aload           24
        //   217: astore          8
        //   219: goto            61
        //   222: astore          5
        //   224: getstatic       java/util/Locale.US:Ljava/util/Locale;
        //   227: astore          19
        //   229: iconst_1       
        //   230: anewarray       Ljava/lang/Object;
        //   233: astore          20
        //   235: aload           20
        //   237: iconst_0       
        //   238: iload           4
        //   240: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   243: aastore        
        //   244: aload_0        
        //   245: aload           19
        //   247: ldc_w           "RETR %d"
        //   250: aload           20
        //   252: invokestatic    java/lang/String.format:(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //   255: aconst_null    
        //   256: invokespecial   com/android/email/mail/store/e.e:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   259: astore          21
        //   261: aload           21
        //   263: astore          8
        //   265: goto            61
        //   268: astore          6
        //   270: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   273: new             Ljava/lang/StringBuilder;
        //   276: dup            
        //   277: ldc_w           "Can't read message "
        //   280: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   283: iload           4
        //   285: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   288: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   291: iconst_0       
        //   292: anewarray       Ljava/lang/Object;
        //   295: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   298: pop            
        //   299: aconst_null    
        //   300: astore          8
        //   302: goto            61
        //   305: aload           8
        //   307: ldc_w           " "
        //   310: iload           13
        //   312: invokevirtual   java/lang/String.indexOf:(Ljava/lang/String;I)I
        //   315: istore          15
        //   317: iload           15
        //   319: ifle            345
        //   322: aload           8
        //   324: iload           13
        //   326: iload           15
        //   328: invokevirtual   java/lang/String.substring:(II)Ljava/lang/String;
        //   331: astore          16
        //   333: aload_1        
        //   334: aload           16
        //   336: invokestatic    java/lang/Integer.parseInt:(Ljava/lang/String;)I
        //   339: invokevirtual   com/android/email/mail/store/g.setSize:(I)V
        //   342: goto            116
        //   345: aload           8
        //   347: iload           13
        //   349: invokevirtual   java/lang/String.substring:(I)Ljava/lang/String;
        //   352: astore          17
        //   354: aload           17
        //   356: astore          16
        //   358: goto            333
        //   361: astore          9
        //   363: iload_2        
        //   364: iconst_m1      
        //   365: if_icmpne       169
        //   368: aload           9
        //   370: athrow         
        //   371: aload           11
        //   373: astore          12
        //   375: goto            151
        //   378: astore          14
        //   380: goto            116
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                             
        //  -----  -----  -----  -----  -------------------------------------------------
        //  66     76     361    371    Lcom/android/emailcommon/mail/MessagingException;
        //  87     116    378    383    Ljava/lang/NumberFormatException;
        //  87     116    361    371    Lcom/android/emailcommon/mail/MessagingException;
        //  116    151    361    371    Lcom/android/emailcommon/mail/MessagingException;
        //  151    169    361    371    Lcom/android/emailcommon/mail/MessagingException;
        //  170    215    222    305    Lcom/android/emailcommon/mail/MessagingException;
        //  224    261    268    305    Lcom/android/emailcommon/mail/MessagingException;
        //  305    317    378    383    Ljava/lang/NumberFormatException;
        //  305    317    361    371    Lcom/android/emailcommon/mail/MessagingException;
        //  322    333    378    383    Ljava/lang/NumberFormatException;
        //  322    333    361    371    Lcom/android/emailcommon/mail/MessagingException;
        //  333    342    378    383    Ljava/lang/NumberFormatException;
        //  333    342    361    371    Lcom/android/emailcommon/mail/MessagingException;
        //  345    354    378    383    Ljava/lang/NumberFormatException;
        //  345    354    361    371    Lcom/android/emailcommon/mail/MessagingException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0116:
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
    public final void a(final Folder$OpenMode p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: monitorenter   
        //     2: aload_0        
        //     3: getfield        com/android/email/mail/store/e.QM:Lcom/android/email/mail/store/Pop3Store;
        //     6: invokestatic    com/android/email/mail/store/Pop3Store.c:(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;
        //     9: invokevirtual   com/android/email/mail/transport/b.isOpen:()Z
        //    12: istore_3       
        //    13: iload_3        
        //    14: ifeq            20
        //    17: aload_0        
        //    18: monitorexit    
        //    19: return         
        //    20: aload_0        
        //    21: getfield        com/android/email/mail/store/e.mName:Ljava/lang/String;
        //    24: ldc             "INBOX"
        //    26: invokevirtual   java/lang/String.equalsIgnoreCase:(Ljava/lang/String;)Z
        //    29: ifne            48
        //    32: new             Lcom/android/emailcommon/mail/MessagingException;
        //    35: dup            
        //    36: ldc_w           "Folder does not exist"
        //    39: invokespecial   com/android/emailcommon/mail/MessagingException.<init>:(Ljava/lang/String;)V
        //    42: athrow         
        //    43: astore_2       
        //    44: aload_0        
        //    45: monitorexit    
        //    46: aload_2        
        //    47: athrow         
        //    48: aload_0        
        //    49: getfield        com/android/email/mail/store/e.QM:Lcom/android/email/mail/store/Pop3Store;
        //    52: invokestatic    com/android/email/mail/store/Pop3Store.d:(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;
        //    55: invokevirtual   com/android/email/mail/transport/b.open:()V
        //    58: aload_0        
        //    59: aconst_null    
        //    60: aconst_null    
        //    61: invokespecial   com/android/email/mail/store/e.e:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //    64: pop            
        //    65: aload_0        
        //    66: aload_0        
        //    67: invokespecial   com/android/email/mail/store/e.jq:()Lcom/android/email/mail/store/d;
        //    70: putfield        com/android/email/mail/store/e.QQ:Lcom/android/email/mail/store/d;
        //    73: aload_0        
        //    74: getfield        com/android/email/mail/store/e.QM:Lcom/android/email/mail/store/Pop3Store;
        //    77: invokestatic    com/android/email/mail/store/Pop3Store.e:(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;
        //    80: invokevirtual   com/android/email/mail/transport/b.jW:()Z
        //    83: ifeq            114
        //    86: aload_0        
        //    87: getfield        com/android/email/mail/store/e.QQ:Lcom/android/email/mail/store/d;
        //    90: getfield        com/android/email/mail/store/d.QL:Z
        //    93: ifeq            258
        //    96: aload_0        
        //    97: ldc             "STLS"
        //    99: aconst_null    
        //   100: invokespecial   com/android/email/mail/store/e.e:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   103: pop            
        //   104: aload_0        
        //   105: getfield        com/android/email/mail/store/e.QM:Lcom/android/email/mail/store/Pop3Store;
        //   108: invokestatic    com/android/email/mail/store/Pop3Store.f:(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;
        //   111: invokevirtual   com/android/email/mail/transport/b.jY:()V
        //   114: aload_0        
        //   115: new             Ljava/lang/StringBuilder;
        //   118: dup            
        //   119: ldc_w           "USER "
        //   122: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   125: aload_0        
        //   126: getfield        com/android/email/mail/store/e.QM:Lcom/android/email/mail/store/Pop3Store;
        //   129: invokestatic    com/android/email/mail/store/Pop3Store.g:(Lcom/android/email/mail/store/Pop3Store;)Ljava/lang/String;
        //   132: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   135: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   138: ldc_w           "USER /redacted/"
        //   141: invokespecial   com/android/email/mail/store/e.e:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   144: pop            
        //   145: aload_0        
        //   146: new             Ljava/lang/StringBuilder;
        //   149: dup            
        //   150: ldc_w           "PASS "
        //   153: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   156: aload_0        
        //   157: getfield        com/android/email/mail/store/e.QM:Lcom/android/email/mail/store/Pop3Store;
        //   160: invokestatic    com/android/email/mail/store/Pop3Store.h:(Lcom/android/email/mail/store/Pop3Store;)Ljava/lang/String;
        //   163: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   166: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   169: ldc_w           "PASS /redacted/"
        //   172: invokespecial   com/android/email/mail/store/e.e:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   175: pop            
        //   176: aload_0        
        //   177: ldc_w           "STAT"
        //   180: aconst_null    
        //   181: invokespecial   com/android/email/mail/store/e.e:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   184: ldc_w           " "
        //   187: invokevirtual   java/lang/String.split:(Ljava/lang/String;)[Ljava/lang/String;
        //   190: astore          13
        //   192: aload           13
        //   194: arraylength    
        //   195: iconst_2       
        //   196: if_icmpge       370
        //   199: new             Ljava/io/IOException;
        //   202: dup            
        //   203: invokespecial   java/io/IOException.<init>:()V
        //   206: astore          11
        //   208: aload           11
        //   210: ifnull          392
        //   213: aload_0        
        //   214: getfield        com/android/email/mail/store/e.QM:Lcom/android/email/mail/store/Pop3Store;
        //   217: invokestatic    com/android/email/mail/store/Pop3Store.j:(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;
        //   220: invokevirtual   com/android/email/mail/transport/b.close:()V
        //   223: getstatic       com/android/email/b.DEBUG:Z
        //   226: ifeq            245
        //   229: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   232: aload           11
        //   234: invokevirtual   java/lang/Exception.toString:()Ljava/lang/String;
        //   237: iconst_0       
        //   238: anewarray       Ljava/lang/Object;
        //   241: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   244: pop            
        //   245: new             Lcom/android/emailcommon/mail/MessagingException;
        //   248: dup            
        //   249: ldc_w           "POP3 STAT"
        //   252: aload           11
        //   254: invokespecial   com/android/emailcommon/mail/MessagingException.<init>:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //   257: athrow         
        //   258: getstatic       com/android/email/b.DEBUG:Z
        //   261: ifeq            278
        //   264: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   267: ldc_w           "TLS not supported but required"
        //   270: iconst_0       
        //   271: anewarray       Ljava/lang/Object;
        //   274: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   277: pop            
        //   278: new             Lcom/android/emailcommon/mail/MessagingException;
        //   281: dup            
        //   282: iconst_2       
        //   283: invokespecial   com/android/emailcommon/mail/MessagingException.<init>:(I)V
        //   286: athrow         
        //   287: astore          4
        //   289: aload_0        
        //   290: getfield        com/android/email/mail/store/e.QM:Lcom/android/email/mail/store/Pop3Store;
        //   293: invokestatic    com/android/email/mail/store/Pop3Store.i:(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;
        //   296: invokevirtual   com/android/email/mail/transport/b.close:()V
        //   299: getstatic       com/android/email/b.DEBUG:Z
        //   302: ifeq            321
        //   305: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   308: aload           4
        //   310: invokevirtual   java/io/IOException.toString:()Ljava/lang/String;
        //   313: iconst_0       
        //   314: anewarray       Ljava/lang/Object;
        //   317: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   320: pop            
        //   321: new             Lcom/android/emailcommon/mail/MessagingException;
        //   324: dup            
        //   325: iconst_1       
        //   326: aload           4
        //   328: invokevirtual   java/io/IOException.toString:()Ljava/lang/String;
        //   331: invokespecial   com/android/emailcommon/mail/MessagingException.<init>:(ILjava/lang/String;)V
        //   334: athrow         
        //   335: astore          7
        //   337: getstatic       com/android/email/b.DEBUG:Z
        //   340: ifeq            359
        //   343: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   346: aload           7
        //   348: invokevirtual   com/android/emailcommon/mail/MessagingException.toString:()Ljava/lang/String;
        //   351: iconst_0       
        //   352: anewarray       Ljava/lang/Object;
        //   355: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   358: pop            
        //   359: new             Lcom/android/emailcommon/mail/AuthenticationFailedException;
        //   362: dup            
        //   363: aconst_null    
        //   364: aload           7
        //   366: invokespecial   com/android/emailcommon/mail/AuthenticationFailedException.<init>:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //   369: athrow         
        //   370: aload_0        
        //   371: aload           13
        //   373: iconst_1       
        //   374: aaload         
        //   375: invokestatic    java/lang/Integer.parseInt:(Ljava/lang/String;)I
        //   378: putfield        com/android/email/mail/store/e.Qx:I
        //   381: aconst_null    
        //   382: astore          11
        //   384: goto            208
        //   387: astore          11
        //   389: goto            208
        //   392: aload_0        
        //   393: getfield        com/android/email/mail/store/e.QN:Ljava/util/HashMap;
        //   396: invokevirtual   java/util/HashMap.clear:()V
        //   399: aload_0        
        //   400: getfield        com/android/email/mail/store/e.QO:Ljava/util/HashMap;
        //   403: invokevirtual   java/util/HashMap.clear:()V
        //   406: aload_0        
        //   407: getfield        com/android/email/mail/store/e.QP:Ljava/util/HashMap;
        //   410: invokevirtual   java/util/HashMap.clear:()V
        //   413: goto            17
        //   416: astore          11
        //   418: goto            208
        //   421: astore          11
        //   423: goto            208
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                             
        //  -----  -----  -----  -----  -------------------------------------------------
        //  2      13     43     48     Any
        //  20     43     43     48     Any
        //  48     114    287    335    Ljava/io/IOException;
        //  48     114    43     48     Any
        //  114    176    335    370    Lcom/android/emailcommon/mail/MessagingException;
        //  114    176    287    335    Ljava/io/IOException;
        //  114    176    43     48     Any
        //  176    208    387    392    Lcom/android/emailcommon/mail/MessagingException;
        //  176    208    421    426    Ljava/io/IOException;
        //  176    208    416    421    Ljava/lang/NumberFormatException;
        //  176    208    43     48     Any
        //  213    245    43     48     Any
        //  245    258    43     48     Any
        //  258    278    287    335    Ljava/io/IOException;
        //  258    278    43     48     Any
        //  278    287    287    335    Ljava/io/IOException;
        //  278    287    43     48     Any
        //  289    321    43     48     Any
        //  321    335    43     48     Any
        //  337    359    287    335    Ljava/io/IOException;
        //  337    359    43     48     Any
        //  359    370    287    335    Ljava/io/IOException;
        //  359    370    43     48     Any
        //  370    381    387    392    Lcom/android/emailcommon/mail/MessagingException;
        //  370    381    421    426    Ljava/io/IOException;
        //  370    381    416    421    Ljava/lang/NumberFormatException;
        //  370    381    43     48     Any
        //  392    413    43     48     Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 195, Size: 195
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
    
    public final void a(final Message message) {
        this.QM.QK[0] = message;
        this.a(this.QM.QK, Pop3Store.Qv, true);
    }
    
    @Override
    public final void a(final Message[] array, final FetchProfile fetchProfile, final com.android.emailcommon.mail.f f) {
        throw new UnsupportedOperationException("Pop3Folder.fetch(Message[], FetchProfile, MessageRetrievalListener)");
    }
    
    @Override
    public final void a(final Message[] array, final Folder folder, final com.android.emailcommon.mail.g g) {
        throw new UnsupportedOperationException("copyMessages is not supported in POP3");
    }
    
    @Override
    public final void a(final Message[] p0, final Flag[] p1, final boolean p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iload_3        
        //     1: ifeq            14
        //     4: aload_2        
        //     5: getstatic       com/android/emailcommon/mail/Flag.WP:Lcom/android/emailcommon/mail/Flag;
        //     8: invokestatic    com/android/emailcommon/b/s.b:([Ljava/lang/Object;Ljava/lang/Object;)Z
        //    11: ifne            15
        //    14: return         
        //    15: aload_1        
        //    16: arraylength    
        //    17: istore          6
        //    19: iconst_0       
        //    20: istore          7
        //    22: iload           7
        //    24: iload           6
        //    26: if_icmpge       14
        //    29: aload_1        
        //    30: iload           7
        //    32: aaload         
        //    33: astore          8
        //    35: aload           8
        //    37: invokevirtual   com/android/emailcommon/mail/Message.ln:()Ljava/lang/String;
        //    40: astore          10
        //    42: aload_0        
        //    43: getfield        com/android/email/mail/store/e.QP:Ljava/util/HashMap;
        //    46: aload           10
        //    48: invokevirtual   java/util/HashMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //    51: checkcast       Ljava/lang/Integer;
        //    54: invokevirtual   java/lang/Integer.intValue:()I
        //    57: istore          11
        //    59: getstatic       java/util/Locale.US:Ljava/util/Locale;
        //    62: astore          12
        //    64: iconst_1       
        //    65: anewarray       Ljava/lang/Object;
        //    68: astore          13
        //    70: aload           13
        //    72: iconst_0       
        //    73: iload           11
        //    75: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //    78: aastore        
        //    79: aload_0        
        //    80: aload           12
        //    82: ldc_w           "DELE %s"
        //    85: aload           13
        //    87: invokestatic    java/lang/String.format:(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //    90: aconst_null    
        //    91: invokespecial   com/android/email/mail/store/e.e:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //    94: pop            
        //    95: aload_0        
        //    96: getfield        com/android/email/mail/store/e.QO:Ljava/util/HashMap;
        //    99: iload           11
        //   101: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   104: invokevirtual   java/util/HashMap.remove:(Ljava/lang/Object;)Ljava/lang/Object;
        //   107: pop            
        //   108: aload_0        
        //   109: getfield        com/android/email/mail/store/e.QP:Ljava/util/HashMap;
        //   112: aload           10
        //   114: invokevirtual   java/util/HashMap.remove:(Ljava/lang/Object;)Ljava/lang/Object;
        //   117: pop            
        //   118: iinc            7, 1
        //   121: goto            22
        //   124: astore          4
        //   126: aload_0        
        //   127: getfield        com/android/email/mail/store/e.QM:Lcom/android/email/mail/store/Pop3Store;
        //   130: invokestatic    com/android/email/mail/store/Pop3Store.q:(Lcom/android/email/mail/store/Pop3Store;)Lcom/android/email/mail/transport/b;
        //   133: invokevirtual   com/android/email/mail/transport/b.close:()V
        //   136: getstatic       com/android/email/b.DEBUG:Z
        //   139: ifeq            158
        //   142: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   145: aload           4
        //   147: invokevirtual   java/io/IOException.toString:()Ljava/lang/String;
        //   150: iconst_0       
        //   151: anewarray       Ljava/lang/Object;
        //   154: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   157: pop            
        //   158: new             Lcom/android/emailcommon/mail/MessagingException;
        //   161: dup            
        //   162: ldc_w           "setFlags()"
        //   165: aload           4
        //   167: invokespecial   com/android/emailcommon/mail/MessagingException.<init>:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //   170: athrow         
        //   171: astore          9
        //   173: goto            118
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                             
        //  -----  -----  -----  -----  -------------------------------------------------
        //  15     19     124    171    Ljava/io/IOException;
        //  29     35     124    171    Ljava/io/IOException;
        //  35     118    171    176    Lcom/android/emailcommon/mail/MessagingException;
        //  35     118    124    171    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0118:
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
    public final Message[] a(final SearchParams searchParams) {
        return null;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (o instanceof e) {
            return ((e)o).mName.equals(this.mName);
        }
        return super.equals(o);
    }
    
    @Override
    public final boolean exists() {
        return this.mName.equalsIgnoreCase("INBOX");
    }
    
    @Override
    public final String getName() {
        return this.mName;
    }
    
    public final Bundle iL() {
        final Bundle bundle = new Bundle();
        int n = -1;
        while (true) {
            try {
                final f f = new f(this);
                this.e("UIDL", null);
                do {
                    final String ah = this.QM.Qb.ah(false);
                    if (ah == null) {
                        break;
                    }
                    f.G(ah);
                } while (!f.QT);
                bundle.putInt("validate_result_code", n);
                return bundle;
            }
            catch (IOException ex) {
                this.QM.Qb.close();
                n = 1;
                bundle.putString("validate_error_message", ex.getMessage());
                continue;
            }
            break;
        }
    }
    
    @Override
    public final Folder$OpenMode iX() {
        return Folder$OpenMode.Xg;
    }
    
    @Override
    public final void iY() {
        while (true) {
            try {
                this.e("QUIT", null);
                this.QM.Qb.close();
            }
            catch (Exception ex) {
                continue;
            }
            break;
        }
    }
    
    @Override
    public final boolean iZ() {
        return false;
    }
    
    @Override
    public final int ja() {
        return this.Qx;
    }
    
    @Override
    public final Flag[] jb() {
        return Pop3Store.Qv;
    }
    
    @Override
    public final Message[] jc() {
        return null;
    }
}
