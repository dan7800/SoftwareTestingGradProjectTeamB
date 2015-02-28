package com.google.android.gms.b;

import android.support.v4.f.*;
import com.google.android.gms.common.api.*;
import android.content.*;
import com.android.ex.chips.*;
import android.util.*;
import android.os.*;

public final class b implements q
{
    private final g<String, byte[]> acO;
    private final j bBA;
    private final n bbm;
    private boolean mClosed;
    
    public b(final n bbm, final ContentResolver contentResolver) {
        this.mClosed = false;
        this.bbm = bbm;
        this.acO = new g<String, byte[]>(20);
        this.bBA = new j(contentResolver);
    }
    
    private static byte[] a(final n p0, final com.google.android.gms.b.g p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokeinterface com/google/android/gms/common/api/n.isConnecting:()Z
        //     6: ifne            37
        //     9: aload_0        
        //    10: invokeinterface com/google/android/gms/common/api/n.isConnected:()Z
        //    15: ifne            37
        //    18: ldc             "GmsPhotoManager"
        //    20: iconst_3       
        //    21: invokestatic    android/util/Log.isLoggable:(Ljava/lang/String;I)Z
        //    24: ifeq            35
        //    27: ldc             "GmsPhotoManager"
        //    29: ldc             "Client not connected."
        //    31: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //    34: pop            
        //    35: aconst_null    
        //    36: areturn        
        //    37: aload_1        
        //    38: invokevirtual   com/google/android/gms/b/g.Kh:()Lcom/google/android/gms/people/model/AvatarReference;
        //    41: ifnonnull       63
        //    44: ldc             "GmsPhotoManager"
        //    46: iconst_3       
        //    47: invokestatic    android/util/Log.isLoggable:(Ljava/lang/String;I)Z
        //    50: ifeq            35
        //    53: ldc             "GmsPhotoManager"
        //    55: ldc             "AvatarReference is null."
        //    57: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //    60: pop            
        //    61: aconst_null    
        //    62: areturn        
        //    63: new             Lcom/google/android/gms/people/l;
        //    66: dup            
        //    67: invokespecial   com/google/android/gms/people/l.<init>:()V
        //    70: invokevirtual   com/google/android/gms/people/l.UP:()Lcom/google/android/gms/people/l;
        //    73: invokevirtual   com/google/android/gms/people/l.UQ:()Lcom/google/android/gms/people/l;
        //    76: invokevirtual   com/google/android/gms/people/l.UR:()Lcom/google/android/gms/people/k;
        //    79: astore_2       
        //    80: getstatic       com/google/android/gms/people/q.cgK:Lcom/google/android/gms/people/j;
        //    83: aload_0        
        //    84: aload_1        
        //    85: invokevirtual   com/google/android/gms/b/g.Kh:()Lcom/google/android/gms/people/model/AvatarReference;
        //    88: aload_2        
        //    89: invokeinterface com/google/android/gms/people/j.a:(Lcom/google/android/gms/common/api/n;Lcom/google/android/gms/people/model/AvatarReference;Lcom/google/android/gms/people/k;)Lcom/google/android/gms/common/api/r;
        //    94: getstatic       java/util/concurrent/TimeUnit.SECONDS:Ljava/util/concurrent/TimeUnit;
        //    97: invokeinterface com/google/android/gms/common/api/r.a:(Ljava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/t;
        //   102: checkcast       Lcom/google/android/gms/people/m;
        //   105: astore_3       
        //   106: aload_3        
        //   107: invokeinterface com/google/android/gms/people/m.getParcelFileDescriptor:()Landroid/os/ParcelFileDescriptor;
        //   112: astore          4
        //   114: aload_3        
        //   115: invokeinterface com/google/android/gms/people/m.Jk:()Lcom/google/android/gms/common/api/Status;
        //   120: astore          5
        //   122: aload           5
        //   124: invokevirtual   com/google/android/gms/common/api/Status.getStatusCode:()I
        //   127: bipush          15
        //   129: if_icmpne       140
        //   132: ldc             "GmsPhotoManager"
        //   134: ldc             "Image load timed out."
        //   136: invokestatic    android/util/Log.i:(Ljava/lang/String;Ljava/lang/String;)I
        //   139: pop            
        //   140: aload           5
        //   142: invokevirtual   com/google/android/gms/common/api/Status.Kk:()Z
        //   145: ifeq            153
        //   148: aload           4
        //   150: ifnonnull       197
        //   153: ldc             "GmsPhotoManager"
        //   155: iconst_3       
        //   156: invokestatic    android/util/Log.isLoggable:(Ljava/lang/String;I)Z
        //   159: ifeq            35
        //   162: ldc             "GmsPhotoManager"
        //   164: new             Ljava/lang/StringBuilder;
        //   167: dup            
        //   168: ldc             "Image loaded: status="
        //   170: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   173: aload           5
        //   175: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   178: ldc             "  pfd="
        //   180: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   183: aload           4
        //   185: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/Object;)Ljava/lang/StringBuilder;
        //   188: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   191: invokestatic    android/util/Log.d:(Ljava/lang/String;Ljava/lang/String;)I
        //   194: pop            
        //   195: aconst_null    
        //   196: areturn        
        //   197: new             Ljava/io/FileInputStream;
        //   200: dup            
        //   201: aload           4
        //   203: invokevirtual   android/os/ParcelFileDescriptor.getFileDescriptor:()Ljava/io/FileDescriptor;
        //   206: invokespecial   java/io/FileInputStream.<init>:(Ljava/io/FileDescriptor;)V
        //   209: astore          7
        //   211: sipush          16384
        //   214: newarray        B
        //   216: astore          21
        //   218: new             Ljava/io/ByteArrayOutputStream;
        //   221: dup            
        //   222: invokespecial   java/io/ByteArrayOutputStream.<init>:()V
        //   225: astore          9
        //   227: aload           7
        //   229: aload           21
        //   231: invokevirtual   java/io/FileInputStream.read:([B)I
        //   234: istore          22
        //   236: iload           22
        //   238: iconst_m1      
        //   239: if_icmpeq       288
        //   242: aload           9
        //   244: aload           21
        //   246: iconst_0       
        //   247: iload           22
        //   249: invokevirtual   java/io/ByteArrayOutputStream.write:([BII)V
        //   252: goto            227
        //   255: astore          8
        //   257: ldc             "GmsPhotoManager"
        //   259: ldc             "Error reading photo input stream"
        //   261: aload           8
        //   263: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   266: pop            
        //   267: aload           7
        //   269: invokevirtual   java/io/FileInputStream.close:()V
        //   272: aload           9
        //   274: ifnull          441
        //   277: aload           9
        //   279: invokevirtual   java/io/ByteArrayOutputStream.close:()V
        //   282: aconst_null    
        //   283: astore          18
        //   285: aload           18
        //   287: areturn        
        //   288: aload           9
        //   290: invokevirtual   java/io/ByteArrayOutputStream.toByteArray:()[B
        //   293: astore          23
        //   295: aload           23
        //   297: astore          18
        //   299: aload           7
        //   301: invokevirtual   java/io/FileInputStream.close:()V
        //   304: aload           9
        //   306: invokevirtual   java/io/ByteArrayOutputStream.close:()V
        //   309: goto            285
        //   312: astore          26
        //   314: ldc             "GmsPhotoManager"
        //   316: ldc             "Error closing photo output stream"
        //   318: aload           26
        //   320: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   323: pop            
        //   324: goto            285
        //   327: astore          24
        //   329: ldc             "GmsPhotoManager"
        //   331: ldc             "Error closing photo input stream"
        //   333: aload           24
        //   335: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   338: pop            
        //   339: goto            304
        //   342: astore          16
        //   344: ldc             "GmsPhotoManager"
        //   346: ldc             "Error closing photo input stream"
        //   348: aload           16
        //   350: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   353: pop            
        //   354: goto            272
        //   357: astore          19
        //   359: ldc             "GmsPhotoManager"
        //   361: ldc             "Error closing photo output stream"
        //   363: aload           19
        //   365: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   368: pop            
        //   369: aconst_null    
        //   370: astore          18
        //   372: goto            285
        //   375: astore          10
        //   377: aconst_null    
        //   378: astore          9
        //   380: aload           7
        //   382: invokevirtual   java/io/FileInputStream.close:()V
        //   385: aload           9
        //   387: ifnull          395
        //   390: aload           9
        //   392: invokevirtual   java/io/ByteArrayOutputStream.close:()V
        //   395: aload           10
        //   397: athrow         
        //   398: astore          11
        //   400: ldc             "GmsPhotoManager"
        //   402: ldc             "Error closing photo input stream"
        //   404: aload           11
        //   406: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   409: pop            
        //   410: goto            385
        //   413: astore          13
        //   415: ldc             "GmsPhotoManager"
        //   417: ldc             "Error closing photo output stream"
        //   419: aload           13
        //   421: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   424: pop            
        //   425: goto            395
        //   428: astore          10
        //   430: goto            380
        //   433: astore          8
        //   435: aconst_null    
        //   436: astore          9
        //   438: goto            257
        //   441: aconst_null    
        //   442: astore          18
        //   444: goto            285
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  211    227    433    441    Ljava/io/IOException;
        //  211    227    375    380    Any
        //  227    236    255    257    Ljava/io/IOException;
        //  227    236    428    433    Any
        //  242    252    255    257    Ljava/io/IOException;
        //  242    252    428    433    Any
        //  257    267    428    433    Any
        //  267    272    342    357    Ljava/io/IOException;
        //  277    282    357    375    Ljava/io/IOException;
        //  288    295    255    257    Ljava/io/IOException;
        //  288    295    428    433    Any
        //  299    304    327    342    Ljava/io/IOException;
        //  304    309    312    327    Ljava/io/IOException;
        //  380    385    398    413    Ljava/io/IOException;
        //  390    395    413    428    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 201, Size: 201
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
    
    @Override
    public final void b(final ae ae, final r r) {
        if (ae != null && !(ae instanceof com.google.android.gms.b.g)) {
            if (Log.isLoggable("GmsPhotoManager", 3)) {
                Log.d("GmsPhotoManager", "RecipientEntry is not a GmsRecipientEntry");
            }
            this.bBA.b(ae, r);
        }
        else {
            final com.google.android.gms.b.g g = (com.google.android.gms.b.g)ae;
            if (g == null) {
                Log.wtf("GmsPhotoManager", "GmsRecipientEntry is null", (Throwable)new Error());
                if (r != null) {
                    r.mu();
                }
            }
            else {
                int n;
                if (this.mClosed) {
                    n = 1;
                }
                else {
                    final String ki = g.Ki();
                    if (ki == null) {
                        Log.wtf("GmsPhotoManager", "GmsRecipientEntry has no person key", (Throwable)new Error());
                        n = 1;
                    }
                    else {
                        final byte[] array = this.acO.get(ki);
                        if (array != null) {
                            g.b(array);
                            n = 1;
                        }
                        else {
                            n = 0;
                        }
                    }
                }
                if (n == 0) {
                    if (Log.isLoggable("GmsPhotoManager", 3)) {
                        Log.d("GmsPhotoManager", "No photo cache for " + g.getDisplayName() + ". Fetch one asynchronously");
                    }
                    new c(this, g, r).executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, (Object[])new Void[0]);
                    return;
                }
                if (r != null) {
                    r.ms();
                }
            }
        }
    }
    
    public final void close() {
        this.mClosed = true;
    }
}
