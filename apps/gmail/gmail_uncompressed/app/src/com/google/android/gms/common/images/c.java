package com.google.android.gms.common.images;

import android.os.*;
import android.net.*;

final class c implements Runnable
{
    private final ParcelFileDescriptor bEA;
    final /* synthetic */ ImageManager bEz;
    private final Uri eM;
    
    public c(final ImageManager bEz, final Uri em, final ParcelFileDescriptor bea) {
        this.bEz = bEz;
        this.eM = em;
        this.bEA = bea;
    }
    
    @Override
    public final void run() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: invokestatic    android/os/Looper.getMainLooper:()Landroid/os/Looper;
        //     3: invokevirtual   android/os/Looper.getThread:()Ljava/lang/Thread;
        //     6: invokestatic    java/lang/Thread.currentThread:()Ljava/lang/Thread;
        //     9: if_acmpne       65
        //    12: ldc             "Asserts"
        //    14: new             Ljava/lang/StringBuilder;
        //    17: dup            
        //    18: ldc             "checkNotMainThread: current thread "
        //    20: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    23: invokestatic    java/lang/Thread.currentThread:()Ljava/lang/Thread;
        //    26: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //    29: ldc             " IS the main thread "
        //    31: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    34: invokestatic    android/os/Looper.getMainLooper:()Landroid/os/Looper;
        //    37: invokevirtual   android/os/Looper.getThread:()Ljava/lang/Thread;
        //    40: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //    43: ldc             "!"
        //    45: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    48: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    51: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //    54: pop            
        //    55: new             Ljava/lang/IllegalStateException;
        //    58: dup            
        //    59: ldc             "LoadBitmapFromDiskRunnable can't be executed in the main thread"
        //    61: invokespecial   java/lang/IllegalStateException.<init>:(Ljava/lang/String;)V
        //    64: athrow         
        //    65: aload_0        
        //    66: getfield        com/google/android/gms/common/images/c.bEA:Landroid/os/ParcelFileDescriptor;
        //    69: astore_1       
        //    70: aconst_null    
        //    71: astore_2       
        //    72: iconst_0       
        //    73: istore_3       
        //    74: aload_1        
        //    75: ifnull          100
        //    78: aload_0        
        //    79: getfield        com/google/android/gms/common/images/c.bEA:Landroid/os/ParcelFileDescriptor;
        //    82: invokevirtual   android/os/ParcelFileDescriptor.getFileDescriptor:()Ljava/io/FileDescriptor;
        //    85: invokestatic    android/graphics/BitmapFactory.decodeFileDescriptor:(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
        //    88: astore          12
        //    90: aload           12
        //    92: astore_2       
        //    93: aload_0        
        //    94: getfield        com/google/android/gms/common/images/c.bEA:Landroid/os/ParcelFileDescriptor;
        //    97: invokevirtual   android/os/ParcelFileDescriptor.close:()V
        //   100: new             Ljava/util/concurrent/CountDownLatch;
        //   103: dup            
        //   104: iconst_1       
        //   105: invokespecial   java/util/concurrent/CountDownLatch.<init>:(I)V
        //   108: astore          4
        //   110: aload_0        
        //   111: getfield        com/google/android/gms/common/images/c.bEz:Lcom/google/android/gms/common/images/ImageManager;
        //   114: invokestatic    com/google/android/gms/common/images/ImageManager.g:(Lcom/google/android/gms/common/images/ImageManager;)Landroid/os/Handler;
        //   117: new             Lcom/google/android/gms/common/images/d;
        //   120: dup            
        //   121: aload_0        
        //   122: getfield        com/google/android/gms/common/images/c.bEz:Lcom/google/android/gms/common/images/ImageManager;
        //   125: aload_0        
        //   126: getfield        com/google/android/gms/common/images/c.eM:Landroid/net/Uri;
        //   129: aload_2        
        //   130: iload_3        
        //   131: aload           4
        //   133: invokespecial   com/google/android/gms/common/images/d.<init>:(Lcom/google/android/gms/common/images/ImageManager;Landroid/net/Uri;Landroid/graphics/Bitmap;ZLjava/util/concurrent/CountDownLatch;)V
        //   136: invokevirtual   android/os/Handler.post:(Ljava/lang/Runnable;)Z
        //   139: pop            
        //   140: aload           4
        //   142: invokevirtual   java/util/concurrent/CountDownLatch.await:()V
        //   145: return         
        //   146: astore          8
        //   148: ldc             "ImageManager"
        //   150: new             Ljava/lang/StringBuilder;
        //   153: dup            
        //   154: ldc             "OOM while loading bitmap for uri: "
        //   156: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   159: aload_0        
        //   160: getfield        com/google/android/gms/common/images/c.eM:Landroid/net/Uri;
        //   163: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   166: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   169: aload           8
        //   171: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   174: pop            
        //   175: iconst_1       
        //   176: istore_3       
        //   177: aconst_null    
        //   178: astore_2       
        //   179: goto            93
        //   182: astore          10
        //   184: ldc             "ImageManager"
        //   186: ldc             "closed failed"
        //   188: aload           10
        //   190: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   193: pop            
        //   194: goto            100
        //   197: astore          6
        //   199: ldc             "ImageManager"
        //   201: new             Ljava/lang/StringBuilder;
        //   204: dup            
        //   205: ldc             "Latch interrupted while posting "
        //   207: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   210: aload_0        
        //   211: getfield        com/google/android/gms/common/images/c.eM:Landroid/net/Uri;
        //   214: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   217: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   220: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
        //   223: pop            
        //   224: return         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                            
        //  -----  -----  -----  -----  --------------------------------
        //  78     90     146    182    Ljava/lang/OutOfMemoryError;
        //  93     100    182    197    Ljava/io/IOException;
        //  140    145    197    225    Ljava/lang/InterruptedException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 106, Size: 106
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
