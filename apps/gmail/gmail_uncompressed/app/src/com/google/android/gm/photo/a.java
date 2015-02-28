package com.google.android.gm.photo;

import com.android.mail.g.*;
import android.content.*;
import com.android.mail.utils.*;

public final class a implements com.android.mail.g.a
{
    private static final String mW;
    
    static {
        mW = D.AU();
    }
    
    @Override
    public final Q a(final Context p0, final String p1, final String p2, final int p3, final int p4, final int p5, final int p6) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Lcom/android/mail/utils/Q;
        //     3: dup            
        //     4: invokespecial   com/android/mail/utils/Q.<init>:()V
        //     7: astore          8
        //     9: new             Lcom/google/android/gms/people/t;
        //    12: dup            
        //    13: invokespecial   com/google/android/gms/people/t.<init>:()V
        //    16: invokevirtual   com/google/android/gms/people/t.US:()Lcom/google/android/gms/people/t;
        //    19: invokevirtual   com/google/android/gms/people/t.UT:()Lcom/google/android/gms/people/s;
        //    22: astore          9
        //    24: new             Lcom/google/android/gms/common/api/o;
        //    27: dup            
        //    28: aload_1        
        //    29: invokevirtual   android/content/Context.getApplicationContext:()Landroid/content/Context;
        //    32: invokespecial   com/google/android/gms/common/api/o.<init>:(Landroid/content/Context;)V
        //    35: getstatic       com/google/android/gms/people/q.cgG:Lcom/google/android/gms/common/api/a;
        //    38: aload           9
        //    40: invokevirtual   com/google/android/gms/common/api/o.a:(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/c;)Lcom/google/android/gms/common/api/o;
        //    43: invokevirtual   com/google/android/gms/common/api/o.Ky:()Lcom/google/android/gms/common/api/n;
        //    46: astore          10
        //    48: aload           10
        //    50: invokeinterface com/google/android/gms/common/api/n.Kw:()Lcom/google/android/gms/common/a;
        //    55: pop            
        //    56: new             Lcom/google/android/gms/people/c;
        //    59: dup            
        //    60: invokespecial   com/google/android/gms/people/c.<init>:()V
        //    63: aload_2        
        //    64: invokevirtual   com/google/android/gms/people/c.gy:(Ljava/lang/String;)Lcom/google/android/gms/people/c;
        //    67: invokevirtual   com/google/android/gms/people/c.UJ:()Lcom/google/android/gms/people/c;
        //    70: invokevirtual   com/google/android/gms/people/c.UK:()Lcom/google/android/gms/people/c;
        //    73: invokevirtual   com/google/android/gms/people/c.UL:()Lcom/google/android/gms/people/b;
        //    76: astore          14
        //    78: getstatic       com/google/android/gms/people/q.cgM:Lcom/google/android/gms/people/a;
        //    81: aload           10
        //    83: aload_3        
        //    84: aload           14
        //    86: invokeinterface com/google/android/gms/people/a.a:(Lcom/google/android/gms/common/api/n;Ljava/lang/String;Lcom/google/android/gms/people/b;)Lcom/google/android/gms/common/api/r;
        //    91: getstatic       java/util/concurrent/TimeUnit.SECONDS:Ljava/util/concurrent/TimeUnit;
        //    94: invokeinterface com/google/android/gms/common/api/r.a:(Ljava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/t;
        //    99: checkcast       Lcom/google/android/gms/people/d;
        //   102: astore          15
        //   104: aload           15
        //   106: invokeinterface com/google/android/gms/people/d.Jk:()Lcom/google/android/gms/common/api/Status;
        //   111: astore          16
        //   113: aload           16
        //   115: invokevirtual   com/google/android/gms/common/api/Status.getStatusCode:()I
        //   118: bipush          15
        //   120: if_icmpne       136
        //   123: getstatic       com/google/android/gm/photo/a.mW:Ljava/lang/String;
        //   126: ldc             "Autocomplete query timed out."
        //   128: iconst_0       
        //   129: anewarray       Ljava/lang/Object;
        //   132: invokestatic    com/android/mail/utils/E.d:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   135: pop            
        //   136: aload           15
        //   138: invokeinterface com/google/android/gms/people/d.Sb:()Lcom/google/android/gms/people/model/a;
        //   143: astore          17
        //   145: getstatic       com/google/android/gm/photo/a.mW:Ljava/lang/String;
        //   148: new             Ljava/lang/StringBuilder;
        //   151: dup            
        //   152: ldc             "Autocomplete list loaded: status="
        //   154: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   157: aload           16
        //   159: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   162: ldc             " list="
        //   164: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   167: aload           17
        //   169: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   172: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   175: iconst_0       
        //   176: anewarray       Ljava/lang/Object;
        //   179: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   182: pop            
        //   183: aload           16
        //   185: invokevirtual   com/google/android/gms/common/api/Status.Kk:()Z
        //   188: ifeq            208
        //   191: aload           17
        //   193: ifnull          208
        //   196: aload           17
        //   198: invokevirtual   com/google/android/gms/common/data/b.getCount:()I
        //   201: istore          19
        //   203: iload           19
        //   205: ifgt            228
        //   208: aload           17
        //   210: ifnull          218
        //   213: aload           17
        //   215: invokevirtual   com/google/android/gms/common/data/b.close:()V
        //   218: aload           10
        //   220: invokeinterface com/google/android/gms/common/api/n.disconnect:()V
        //   225: aload           8
        //   227: areturn        
        //   228: aload           17
        //   230: iconst_0       
        //   231: invokevirtual   com/google/android/gms/common/data/b.get:(I)Ljava/lang/Object;
        //   234: checkcast       Lcom/google/android/gms/people/model/b;
        //   237: astore          20
        //   239: aload           20
        //   241: invokeinterface com/google/android/gms/people/model/b.Kh:()Lcom/google/android/gms/people/model/AvatarReference;
        //   246: ifnonnull       282
        //   249: getstatic       com/google/android/gm/photo/a.mW:Ljava/lang/String;
        //   252: ldc             "AvatarReference is null."
        //   254: iconst_0       
        //   255: anewarray       Ljava/lang/Object;
        //   258: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   261: pop            
        //   262: aload           17
        //   264: ifnull          272
        //   267: aload           17
        //   269: invokevirtual   com/google/android/gms/common/data/b.close:()V
        //   272: aload           10
        //   274: invokeinterface com/google/android/gms/common/api/n.disconnect:()V
        //   279: aload           8
        //   281: areturn        
        //   282: new             Lcom/google/android/gms/people/l;
        //   285: dup            
        //   286: invokespecial   com/google/android/gms/people/l.<init>:()V
        //   289: invokevirtual   com/google/android/gms/people/l.UP:()Lcom/google/android/gms/people/l;
        //   292: invokevirtual   com/google/android/gms/people/l.UQ:()Lcom/google/android/gms/people/l;
        //   295: invokevirtual   com/google/android/gms/people/l.UR:()Lcom/google/android/gms/people/k;
        //   298: astore          21
        //   300: getstatic       com/google/android/gms/people/q.cgK:Lcom/google/android/gms/people/j;
        //   303: aload           10
        //   305: aload           20
        //   307: invokeinterface com/google/android/gms/people/model/b.Kh:()Lcom/google/android/gms/people/model/AvatarReference;
        //   312: aload           21
        //   314: invokeinterface com/google/android/gms/people/j.a:(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/k;)Lcom/google/android/gms/common/api/r;
        //   319: getstatic       java/util/concurrent/TimeUnit.SECONDS:Ljava/util/concurrent/TimeUnit;
        //   322: invokeinterface com/google/android/gms/common/api/r.a:(Ljava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/t;
        //   327: checkcast       Lcom/google/android/gms/people/m;
        //   330: astore          22
        //   332: aload           22
        //   334: invokeinterface com/google/android/gms/people/m.getParcelFileDescriptor:()Landroid/os/ParcelFileDescriptor;
        //   339: astore          23
        //   341: aload           22
        //   343: invokeinterface com/google/android/gms/people/m.Jk:()Lcom/google/android/gms/common/api/Status;
        //   348: astore          24
        //   350: aload           24
        //   352: invokevirtual   com/google/android/gms/common/api/Status.getStatusCode:()I
        //   355: bipush          15
        //   357: if_icmpne       373
        //   360: getstatic       com/google/android/gm/photo/a.mW:Ljava/lang/String;
        //   363: ldc             "Image load timed out."
        //   365: iconst_0       
        //   366: anewarray       Ljava/lang/Object;
        //   369: invokestatic    com/android/mail/utils/E.d:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   372: pop            
        //   373: aload           24
        //   375: invokevirtual   com/google/android/gms/common/api/Status.Kk:()Z
        //   378: ifeq            386
        //   381: aload           23
        //   383: ifnonnull       444
        //   386: getstatic       com/google/android/gm/photo/a.mW:Ljava/lang/String;
        //   389: new             Ljava/lang/StringBuilder;
        //   392: dup            
        //   393: ldc             "Image loaded: status="
        //   395: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   398: aload           16
        //   400: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   403: ldc             "  pfd="
        //   405: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   408: aload           23
        //   410: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   413: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   416: iconst_0       
        //   417: anewarray       Ljava/lang/Object;
        //   420: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   423: pop            
        //   424: aload           17
        //   426: ifnull          434
        //   429: aload           17
        //   431: invokevirtual   com/google/android/gms/common/data/b.close:()V
        //   434: aload           10
        //   436: invokeinterface com/google/android/gms/common/api/n.disconnect:()V
        //   441: aload           8
        //   443: areturn        
        //   444: aload           23
        //   446: invokestatic    com/google/android/gm/ui/F.a:(Landroid/os/ParcelFileDescriptor;)Landroid/graphics/Bitmap;
        //   449: astore          25
        //   451: aload           25
        //   453: ifnull          496
        //   456: aload           25
        //   458: invokevirtual   android/graphics/Bitmap.getHeight:()I
        //   461: iload           5
        //   463: if_icmpge       496
        //   466: aload           8
        //   468: aload           25
        //   470: iload           4
        //   472: iload           5
        //   474: iconst_1       
        //   475: invokestatic    android/graphics/Bitmap.createScaledBitmap:(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
        //   478: putfield        com/android/mail/utils/Q.aQj:Landroid/graphics/Bitmap;
        //   481: aload           8
        //   483: aload           25
        //   485: iload           6
        //   487: iload           7
        //   489: iconst_1       
        //   490: invokestatic    android/graphics/Bitmap.createScaledBitmap:(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
        //   493: putfield        com/android/mail/utils/Q.aQk:Landroid/graphics/Bitmap;
        //   496: aload           17
        //   498: ifnull          506
        //   501: aload           17
        //   503: invokevirtual   com/google/android/gms/common/data/b.close:()V
        //   506: aload           10
        //   508: invokeinterface com/google/android/gms/common/api/n.disconnect:()V
        //   513: aload           8
        //   515: areturn        
        //   516: astore          11
        //   518: aconst_null    
        //   519: astore          12
        //   521: aload           12
        //   523: ifnull          531
        //   526: aload           12
        //   528: invokevirtual   com/google/android/gms/common/data/b.close:()V
        //   531: aload           10
        //   533: invokeinterface com/google/android/gms/common/api/n.disconnect:()V
        //   538: aload           11
        //   540: athrow         
        //   541: astore          11
        //   543: aload           17
        //   545: astore          12
        //   547: goto            521
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  48     136    516    521    Any
        //  136    145    516    521    Any
        //  145    191    541    550    Any
        //  196    203    541    550    Any
        //  228    262    541    550    Any
        //  282    373    541    550    Any
        //  373    381    541    550    Any
        //  386    424    541    550    Any
        //  444    451    541    550    Any
        //  456    496    541    550    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0208:
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
}
