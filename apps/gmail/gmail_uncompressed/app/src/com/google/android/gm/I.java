package com.google.android.gm;

import com.google.android.gm.persistence.*;
import android.content.*;
import com.google.common.collect.*;
import com.google.android.gms.auth.*;
import com.android.mail.utils.*;
import android.os.*;
import java.util.*;
import android.accounts.*;

public final class i implements OnAccountsUpdateListener
{
    private static i aWJ;
    private b aWK;
    private Map<String, List<String>> aWL;
    private Context mContext;
    private Handler mHandler;
    
    private i(final Context context) {
        this.mContext = context.getApplicationContext();
        this.aWK = b.DD();
        this.aWL = (Map<String, List<String>>)Maps.aap();
        final HandlerThread handlerThread = new HandlerThread("AccountHistory Thread");
        handlerThread.start();
        (this.mHandler = new Handler(handlerThread.getLooper())).post((Runnable)new j(this));
        AccountManager.get(this.mContext).addOnAccountsUpdatedListener((OnAccountsUpdateListener)this, this.mHandler, true);
    }
    
    public static i aT(final Context context) {
        synchronized (i.class) {
            if (i.aWJ == null) {
                i.aWJ = new i(context);
            }
            return i.aWJ;
        }
    }
    
    private List<String> ds(final String p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/google/android/gm/i.aWL:Ljava/util/Map;
        //     4: aload_1        
        //     5: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //    10: checkcast       Ljava/util/List;
        //    13: astore_2       
        //    14: aload_2        
        //    15: ifnull          20
        //    18: aload_2        
        //    19: areturn        
        //    20: invokestatic    android/os/Looper.myLooper:()Landroid/os/Looper;
        //    23: invokestatic    android/os/Looper.getMainLooper:()Landroid/os/Looper;
        //    26: if_acmpne       47
        //    29: ldc             "GmailAccountHistory"
        //    31: ldc             "calling getAccountHistory from main thread for %s"
        //    33: iconst_1       
        //    34: anewarray       Ljava/lang/Object;
        //    37: dup            
        //    38: iconst_0       
        //    39: aload_1        
        //    40: aastore        
        //    41: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //    44: pop            
        //    45: aconst_null    
        //    46: areturn        
        //    47: aload_0        
        //    48: getfield        com/google/android/gm/i.aWL:Ljava/util/Map;
        //    51: astore_3       
        //    52: aload_3        
        //    53: monitorenter   
        //    54: aload_0        
        //    55: getfield        com/google/android/gm/i.aWL:Ljava/util/Map;
        //    58: aload_1        
        //    59: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //    64: checkcast       Ljava/util/List;
        //    67: astore          5
        //    69: aload           5
        //    71: ifnonnull       330
        //    74: ldc             "GmailAccountHistory"
        //    76: ldc             "records is null for %s"
        //    78: iconst_1       
        //    79: anewarray       Ljava/lang/Object;
        //    82: dup            
        //    83: iconst_0       
        //    84: aload_1        
        //    85: aastore        
        //    86: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //    89: pop            
        //    90: new             Ljava/util/LinkedList;
        //    93: dup            
        //    94: invokespecial   java/util/LinkedList.<init>:()V
        //    97: astore          7
        //    99: aload_0        
        //   100: aload_1        
        //   101: iconst_4       
        //   102: invokespecial   com/google/android/gm/i.g:(Ljava/lang/String;I)Ljava/lang/String;
        //   105: astore          15
        //   107: aload           15
        //   109: ifnull          151
        //   112: aload           7
        //   114: iconst_0       
        //   115: aload           15
        //   117: invokeinterface java/util/List.add:(ILjava/lang/Object;)V
        //   122: ldc             "GmailAccountHistory"
        //   124: ldc             "Forward: add %s"
        //   126: iconst_1       
        //   127: anewarray       Ljava/lang/Object;
        //   130: dup            
        //   131: iconst_0       
        //   132: aload           15
        //   134: aastore        
        //   135: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   138: pop            
        //   139: aload_0        
        //   140: aload           15
        //   142: iconst_4       
        //   143: invokespecial   com/google/android/gm/i.g:(Ljava/lang/String;I)Ljava/lang/String;
        //   146: astore          15
        //   148: goto            107
        //   151: aload           7
        //   153: aload_1        
        //   154: invokeinterface java/util/List.add:(Ljava/lang/Object;)Z
        //   159: pop            
        //   160: aload_0        
        //   161: aload_1        
        //   162: iconst_3       
        //   163: invokespecial   com/google/android/gm/i.g:(Ljava/lang/String;I)Ljava/lang/String;
        //   166: astore          18
        //   168: aload           18
        //   170: ifnull          212
        //   173: aload           7
        //   175: aload           18
        //   177: invokeinterface java/util/List.add:(Ljava/lang/Object;)Z
        //   182: pop            
        //   183: ldc             "GmailAccountHistory"
        //   185: ldc             "Backward: add %s"
        //   187: iconst_1       
        //   188: anewarray       Ljava/lang/Object;
        //   191: dup            
        //   192: iconst_0       
        //   193: aload           18
        //   195: aastore        
        //   196: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   199: pop            
        //   200: aload_0        
        //   201: aload           18
        //   203: iconst_3       
        //   204: invokespecial   com/google/android/gm/i.g:(Ljava/lang/String;I)Ljava/lang/String;
        //   207: astore          18
        //   209: goto            168
        //   212: aload           7
        //   214: invokeinterface java/util/List.iterator:()Ljava/util/Iterator;
        //   219: astore          21
        //   221: aload           21
        //   223: invokeinterface java/util/Iterator.hasNext:()Z
        //   228: ifeq            342
        //   231: aload           21
        //   233: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   238: checkcast       Ljava/lang/String;
        //   241: astore          22
        //   243: ldc             "GmailAccountHistory"
        //   245: ldc             "maps email %s to records %s"
        //   247: iconst_2       
        //   248: anewarray       Ljava/lang/Object;
        //   251: dup            
        //   252: iconst_0       
        //   253: aload           22
        //   255: aastore        
        //   256: dup            
        //   257: iconst_1       
        //   258: aload           7
        //   260: aastore        
        //   261: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   264: pop            
        //   265: aload_0        
        //   266: getfield        com/google/android/gm/i.aWL:Ljava/util/Map;
        //   269: aload           22
        //   271: aload           7
        //   273: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   278: pop            
        //   279: goto            221
        //   282: astore          13
        //   284: aload           13
        //   286: astore          14
        //   288: aload           7
        //   290: astore          5
        //   292: aload           14
        //   294: astore          10
        //   296: ldc             "GmailAccountHistory"
        //   298: aload           10
        //   300: ldc             "GoogleAuthException"
        //   302: iconst_0       
        //   303: anewarray       Ljava/lang/Object;
        //   306: invokestatic    com/google/android/gm/provider/ad.d:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   309: pop            
        //   310: aload           5
        //   312: aload_1        
        //   313: invokeinterface java/util/List.indexOf:(Ljava/lang/Object;)I
        //   318: ifge            330
        //   321: aload           5
        //   323: aload_1        
        //   324: invokeinterface java/util/List.add:(Ljava/lang/Object;)Z
        //   329: pop            
        //   330: aload_3        
        //   331: monitorexit    
        //   332: aload           5
        //   334: areturn        
        //   335: astore          4
        //   337: aload_3        
        //   338: monitorexit    
        //   339: aload           4
        //   341: athrow         
        //   342: aload           7
        //   344: astore          5
        //   346: goto            330
        //   349: astore          26
        //   351: aload           5
        //   353: astore          7
        //   355: aload           26
        //   357: astore          8
        //   359: aload           8
        //   361: astore          9
        //   363: aload           7
        //   365: astore          5
        //   367: aload           9
        //   369: astore          10
        //   371: goto            296
        //   374: astore          8
        //   376: goto            359
        //   379: astore          25
        //   381: aload           5
        //   383: astore          7
        //   385: aload           25
        //   387: astore          13
        //   389: goto            284
        //    Signature:
        //  (Ljava/lang/String;)Ljava/util/List<Ljava/lang/String;>;
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                             
        //  -----  -----  -----  -----  -------------------------------------------------
        //  54     69     335    342    Any
        //  74     90     335    342    Any
        //  90     99     379    392    Lcom/google/android/gms/auth/GoogleAuthException;
        //  90     99     349    359    Ljava/io/IOException;
        //  90     99     335    342    Any
        //  99     107    282    284    Lcom/google/android/gms/auth/GoogleAuthException;
        //  99     107    374    379    Ljava/io/IOException;
        //  99     107    335    342    Any
        //  112    148    282    284    Lcom/google/android/gms/auth/GoogleAuthException;
        //  112    148    374    379    Ljava/io/IOException;
        //  112    148    335    342    Any
        //  151    168    282    284    Lcom/google/android/gms/auth/GoogleAuthException;
        //  151    168    374    379    Ljava/io/IOException;
        //  151    168    335    342    Any
        //  173    209    282    284    Lcom/google/android/gms/auth/GoogleAuthException;
        //  173    209    374    379    Ljava/io/IOException;
        //  173    209    335    342    Any
        //  212    221    282    284    Lcom/google/android/gms/auth/GoogleAuthException;
        //  212    221    374    379    Ljava/io/IOException;
        //  212    221    335    342    Any
        //  221    279    282    284    Lcom/google/android/gms/auth/GoogleAuthException;
        //  221    279    374    379    Ljava/io/IOException;
        //  221    279    335    342    Any
        //  296    330    335    342    Any
        //  330    332    335    342    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0107:
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
    
    private String g(final String s, final int n) {
        for (final AccountChangeEvent accountChangeEvent : d.Z(this.mContext, s)) {
            E.c("GmailAccountHistory", "onEmailByType(%d): %s", n, accountChangeEvent.toString());
            if (accountChangeEvent.JO() == n) {
                return accountChangeEvent.JP();
            }
        }
        return null;
    }
    
    public final String dr(String s) {
        final String a = b.DD().A(this.mContext, s);
        if (a != null) {
            return a;
        }
        if (!ay.w(this.mContext, s)) {
            this.aWK.k(this.mContext, s, s);
            return s;
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            E.c("GmailAccountHistory", "calling getAccountAlias from main thread for %s", s);
            return s;
        }
        while (true) {
            while (true) {
                synchronized (this.aWL) {
                    final String a2 = this.aWK.A(this.mContext, s);
                    if (a2 != null) {
                        return a2;
                    }
                    final List<String> ds = this.ds(s);
                    ListIterator<String> listIterator;
                    String a3;
                    for (listIterator = ds.listIterator(), a3 = null; listIterator.hasNext() && a3 == null; a3 = this.aWK.A(this.mContext, listIterator.next())) {}
                    if (a3 != null) {
                        E.c("GmailAccountHistory", "Found legacy data, use old email %s as alias", a3);
                        s = a3;
                        for (final String s2 : ds) {
                            E.c("GmailAccountHistory", "Cache alias %s for %s", s, s2);
                            this.aWK.k(this.mContext, s2, s);
                        }
                        break;
                    }
                }
                E.c("GmailAccountHistory", "Didn't find legacy data, use %s as alias", s);
                continue;
            }
        }
        // monitorexit(map)
        int n;
        if (s != null) {
            n = 1;
        }
        else {
            n = 0;
        }
        if (n == 0) {
            throw new IllegalArgumentException();
        }
        E.c("GmailAccountHistory", "getAccountAlias returns %s", s);
        return s;
    }
    
    public final String dt(final String s) {
        final List<String> ds = this.ds(s);
        if (ds != null) {
            return ds.get(0);
        }
        E.g("GmailAccountHistory", "getLatestEmail returns no records", new Object[0]);
        return s;
    }
    
    public final void onAccountsUpdated(final Account[] array) {
        for (final Account account : array) {
            E.c("GmailAccountHistory", "onAccountsUpdated: %s", account.name);
            if ("com.google".equals(account.type)) {
                this.dr(account.name);
            }
            else {
                this.aWK.k(this.mContext, account.name, account.name);
            }
        }
    }
}
