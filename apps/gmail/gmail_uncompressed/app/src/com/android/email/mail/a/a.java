package com.android.email.mail.a;

import java.util.*;
import android.content.*;
import com.android.mail.utils.*;
import com.android.emailcommon.mail.*;
import java.io.*;
import com.android.emailcommon.provider.*;

public class a
{
    private static a Qf;
    private final Map<Long, b> Qg;
    private final c Qh;
    
    private a() {
        this.Qg = new HashMap<Long, b>();
        this.Qh = new c();
    }
    
    private void a(final Context context, final b b) {
        E.c(com.android.emailcommon.b.mW, "AuthenticationCache refreshEntry %d", b.LN);
        try {
            final d c = this.Qh.c(context, b.NS, b.Qj);
            b.Qi = c.Qi;
            b.Qk = 1000L * c.Qn + System.currentTimeMillis();
            b(context, b);
        }
        catch (AuthenticationFailedException ex) {
            E.c(com.android.emailcommon.b.mW, "authentication failed, clearning", new Object[0]);
            E.c(com.android.emailcommon.b.mW, "clearEntry", new Object[0]);
            b.Qi = "";
            b.Qj = "";
            b.Qk = 0L;
            b(context, b);
            this.Qg.remove(b.LN);
            throw ex;
        }
        catch (MessagingException ex2) {
            E.c(com.android.emailcommon.b.mW, "messaging exception", new Object[0]);
            throw ex2;
        }
        catch (IOException ex3) {
            E.c(com.android.emailcommon.b.mW, "IO exception", new Object[0]);
            throw ex3;
        }
    }
    
    private static void b(final Context context, final b b) {
        E.c(com.android.emailcommon.b.mW, "saveEntry", new Object[0]);
        final Credential ag = Account.k(context, b.LN).Z(context).ag(context);
        ag.NS = b.NS;
        ag.Qi = b.Qi;
        ag.Qj = b.Qj;
        ag.XR = b.Qk;
        ag.a(context, ag.lB());
    }
    
    private b i(final Context context, final Account account) {
        if (account.lF() && !account.isTemporary()) {
            b b = this.Qg.get(account.Ln);
            if (b == null) {
                E.c(com.android.emailcommon.b.mW, "initializing entry from database", new Object[0]);
                final Credential ag = account.Z(context).ag(context);
                b = new b(this, account.Ln, ag.NS, ag.Qi, ag.Qj, ag.XR);
                this.Qg.put(account.Ln, b);
            }
            return b;
        }
        final Credential af = account.Z(context).af(context);
        return new b(this, account.Ln, af.NS, af.Qi, af.Qj, af.XR);
    }
    
    public static a iN() {
        synchronized (a.class) {
            if (a.Qf == null) {
                a.Qf = new a();
            }
            return a.Qf;
        }
    }
    
    public final String g(final Context p0, final Account p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/android/email/mail/a/a.Qg:Ljava/util/Map;
        //     4: astore_3       
        //     5: aload_3        
        //     6: monitorenter   
        //     7: aload_0        
        //     8: aload_1        
        //     9: aload_2        
        //    10: invokespecial   com/android/email/mail/a/a.i:(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)Lcom/android/email/mail/a/b;
        //    13: astore          5
        //    15: aload_3        
        //    16: monitorexit    
        //    17: aload           5
        //    19: monitorenter   
        //    20: aload           5
        //    22: getfield        com/android/email/mail/a/b.Qk:J
        //    25: ldc2_w          300000
        //    28: lsub           
        //    29: lstore          7
        //    31: invokestatic    java/lang/System.currentTimeMillis:()J
        //    34: lload           7
        //    36: lcmp           
        //    37: ifle            47
        //    40: aload_0        
        //    41: aload_1        
        //    42: aload           5
        //    44: invokespecial   com/android/email/mail/a/a.a:(Landroid/content/Context;Lcom/android/email/mail/a/b;)V
        //    47: aload           5
        //    49: getfield        com/android/email/mail/a/b.Qi:Ljava/lang/String;
        //    52: astore          9
        //    54: aload           5
        //    56: monitorexit    
        //    57: aload           9
        //    59: areturn        
        //    60: astore          4
        //    62: aload_3        
        //    63: monitorexit    
        //    64: aload           4
        //    66: athrow         
        //    67: astore          6
        //    69: aload           5
        //    71: monitorexit    
        //    72: aload           6
        //    74: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  7      17     60     67     Any
        //  20     47     67     75     Any
        //  47     57     67     75     Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0047:
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
    
    public final String h(final Context context, final Account account) {
        final b i = this.i(context, account);
        synchronized (i) {
            this.a(context, i);
            return i.Qi;
        }
    }
}
