package com.google.android.gms.common.internal;

import java.util.*;
import com.google.android.gms.common.internal.f$com.google.android.gms.common.internal.*;
import android.content.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.common.*;
import android.util.*;
import android.os.*;

public abstract class h<TListener>
{
    private TListener bDf;
    final /* synthetic */ f bEZ;
    private boolean bFa;
    
    public h(final f bez, final TListener bDf) {
        this.bEZ = bez;
        this.bDf = bDf;
        this.bFa = false;
    }
    
    protected abstract void Lf();
    
    public final void Lg() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: monitorenter   
        //     2: aload_0        
        //     3: getfield        com/google/android/gms/common/internal/h.bDf:Ljava/lang/Object;
        //     6: astore_2       
        //     7: aload_0        
        //     8: getfield        com/google/android/gms/common/internal/h.bFa:Z
        //    11: ifeq            41
        //    14: ldc             "GmsClient"
        //    16: new             Ljava/lang/StringBuilder;
        //    19: dup            
        //    20: ldc             "Callback proxy "
        //    22: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    25: aload_0        
        //    26: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //    29: ldc             " being reused. This is not safe."
        //    31: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    34: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    37: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
        //    40: pop            
        //    41: aload_0        
        //    42: monitorexit    
        //    43: aload_2        
        //    44: ifnull          80
        //    47: aload_0        
        //    48: aload_2        
        //    49: invokevirtual   com/google/android/gms/common/internal/h.ac:(Ljava/lang/Object;)V
        //    52: aload_0        
        //    53: monitorenter   
        //    54: aload_0        
        //    55: iconst_1       
        //    56: putfield        com/google/android/gms/common/internal/h.bFa:Z
        //    59: aload_0        
        //    60: monitorexit    
        //    61: aload_0        
        //    62: invokevirtual   com/google/android/gms/common/internal/h.unregister:()V
        //    65: return         
        //    66: astore_1       
        //    67: aload_0        
        //    68: monitorexit    
        //    69: aload_1        
        //    70: athrow         
        //    71: astore          4
        //    73: aload_0        
        //    74: invokevirtual   com/google/android/gms/common/internal/h.Lf:()V
        //    77: aload           4
        //    79: athrow         
        //    80: aload_0        
        //    81: invokevirtual   com/google/android/gms/common/internal/h.Lf:()V
        //    84: goto            52
        //    87: astore_3       
        //    88: aload_0        
        //    89: monitorexit    
        //    90: aload_3        
        //    91: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                        
        //  -----  -----  -----  -----  ----------------------------
        //  2      41     66     71     Any
        //  41     43     66     71     Any
        //  47     52     71     80     Ljava/lang/RuntimeException;
        //  54     61     87     92     Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 55, Size: 55
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
    
    public final void Lh() {
        synchronized (this) {
            this.bDf = null;
        }
    }
    
    protected abstract void ac(final TListener p0);
    
    public final void unregister() {
        this.Lh();
        synchronized (this.bEZ.bET) {
            this.bEZ.bET.remove(this);
        }
    }
}
