package com.android.mail.ui;

import android.os.*;
import android.net.*;
import android.graphics.*;
import com.android.mail.providers.*;
import com.android.ex.photo.util.*;
import com.android.mail.utils.*;
import java.io.*;

public final class dn extends AsyncTask<Uri, Void, Bitmap>
{
    private static final String mW;
    private final int GN;
    private final al aNK;
    private final int yS;
    
    static {
        mW = D.AU();
    }
    
    private dn(final al ank, final int gn, final int ys) {
        this.aNK = ank;
        this.GN = gn;
        this.yS = ys;
    }
    
    public static void a(final an an, final al al, final Attachment attachment, final Attachment attachment2) {
        Label_0027: {
            if (an == null) {
                break Label_0027;
            }
            final Bitmap h = an.h(attachment);
            if (h == null) {
                break Label_0027;
            }
            al.e(h);
            return;
        }
        final int xn = al.xN();
        final int xo = al.xO();
        if (attachment == null || xn == 0 || xo == 0 || !ImageUtils.aW(attachment.getContentType())) {
            al.rv();
            return;
        }
        final Uri ayQ = attachment.ayQ;
        final Uri ayP = attachment.ayP;
        final Uri ua = attachment.uA();
        Object ua2;
        if (attachment2 == null) {
            ua2 = null;
        }
        else {
            ua2 = attachment2.uA();
        }
        if ((ayQ != null || ayP != null) && (al.xQ() || ua2 == null || !ua.equals(ua2))) {
            new dn(al, xn, xo).execute((Object[])new Uri[] { ayQ, ayP });
            return;
        }
        if (ayQ == null && ayP == null) {
            al.rv();
        }
    }
    
    private Bitmap y(final Uri p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: ifnonnull       23
        //     4: getstatic       com/android/mail/ui/dn.mW:Ljava/lang/String;
        //     7: ldc             "Attempting to load bitmap for null uri"
        //     9: iconst_0       
        //    10: anewarray       Ljava/lang/Object;
        //    13: invokestatic    com/android/mail/utils/E.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //    16: pop            
        //    17: aconst_null    
        //    18: astore          26
        //    20: aload           26
        //    22: areturn        
        //    23: aload_0        
        //    24: aload_1        
        //    25: invokespecial   com/android/mail/ui/dn.z:(Landroid/net/Uri;)I
        //    28: istore_2       
        //    29: aload_0        
        //    30: getfield        com/android/mail/ui/dn.aNK:Lcom/android/mail/ui/al;
        //    33: invokeinterface com/android/mail/ui/al.xP:()Landroid/content/ContentResolver;
        //    38: aload_1        
        //    39: ldc             "r"
        //    41: invokevirtual   android/content/ContentResolver.openAssetFileDescriptor:(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
        //    44: astore          14
        //    46: aload           14
        //    48: astore          4
        //    50: aload_0        
        //    51: invokevirtual   com/android/mail/ui/dn.isCancelled:()Z
        //    54: istore          15
        //    56: iload           15
        //    58: ifne            66
        //    61: aload           4
        //    63: ifnonnull       98
        //    66: aload           4
        //    68: ifnull          76
        //    71: aload           4
        //    73: invokevirtual   android/content/res/AssetFileDescriptor.close:()V
        //    76: aconst_null    
        //    77: areturn        
        //    78: astore          16
        //    80: getstatic       com/android/mail/ui/dn.mW:Ljava/lang/String;
        //    83: aload           16
        //    85: ldc             ""
        //    87: iconst_0       
        //    88: anewarray       Ljava/lang/Object;
        //    91: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //    94: pop            
        //    95: goto            76
        //    98: new             Landroid/graphics/BitmapFactory$Options;
        //   101: dup            
        //   102: invokespecial   android/graphics/BitmapFactory$Options.<init>:()V
        //   105: astore          18
        //   107: aload           18
        //   109: iconst_1       
        //   110: putfield        android/graphics/BitmapFactory$Options.inJustDecodeBounds:Z
        //   113: aload           18
        //   115: bipush          120
        //   117: putfield        android/graphics/BitmapFactory$Options.inDensity:I
        //   120: aload           4
        //   122: invokevirtual   android/content/res/AssetFileDescriptor.getFileDescriptor:()Ljava/io/FileDescriptor;
        //   125: aconst_null    
        //   126: aload           18
        //   128: invokestatic    android/graphics/BitmapFactory.decodeFileDescriptor:(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
        //   131: pop            
        //   132: aload_0        
        //   133: invokevirtual   com/android/mail/ui/dn.isCancelled:()Z
        //   136: ifne            161
        //   139: aload           18
        //   141: getfield        android/graphics/BitmapFactory$Options.outWidth:I
        //   144: iconst_m1      
        //   145: if_icmpeq       161
        //   148: aload           18
        //   150: getfield        android/graphics/BitmapFactory$Options.outHeight:I
        //   153: istore          22
        //   155: iload           22
        //   157: iconst_m1      
        //   158: if_icmpne       193
        //   161: aload           4
        //   163: ifnull          171
        //   166: aload           4
        //   168: invokevirtual   android/content/res/AssetFileDescriptor.close:()V
        //   171: aconst_null    
        //   172: areturn        
        //   173: astore          20
        //   175: getstatic       com/android/mail/ui/dn.mW:Ljava/lang/String;
        //   178: aload           20
        //   180: ldc             ""
        //   182: iconst_0       
        //   183: anewarray       Ljava/lang/Object;
        //   186: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   189: pop            
        //   190: goto            171
        //   193: aload           18
        //   195: iconst_0       
        //   196: putfield        android/graphics/BitmapFactory$Options.inJustDecodeBounds:Z
        //   199: aload           18
        //   201: aload           18
        //   203: getfield        android/graphics/BitmapFactory$Options.outWidth:I
        //   206: aload_0        
        //   207: getfield        com/android/mail/ui/dn.GN:I
        //   210: idiv           
        //   211: iconst_1       
        //   212: invokestatic    java/lang/Math.max:(II)I
        //   215: aload           18
        //   217: getfield        android/graphics/BitmapFactory$Options.outHeight:I
        //   220: aload_0        
        //   221: getfield        com/android/mail/ui/dn.yS:I
        //   224: idiv           
        //   225: iconst_1       
        //   226: invokestatic    java/lang/Math.max:(II)I
        //   229: invokestatic    java/lang/Math.min:(II)I
        //   232: putfield        android/graphics/BitmapFactory$Options.inSampleSize:I
        //   235: getstatic       com/android/mail/ui/dn.mW:Ljava/lang/String;
        //   238: astore          23
        //   240: iconst_5       
        //   241: anewarray       Ljava/lang/Object;
        //   244: astore          24
        //   246: aload           24
        //   248: iconst_0       
        //   249: aload           18
        //   251: getfield        android/graphics/BitmapFactory$Options.outWidth:I
        //   254: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   257: aastore        
        //   258: aload           24
        //   260: iconst_1       
        //   261: aload           18
        //   263: getfield        android/graphics/BitmapFactory$Options.outHeight:I
        //   266: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   269: aastore        
        //   270: aload           24
        //   272: iconst_2       
        //   273: aload_0        
        //   274: getfield        com/android/mail/ui/dn.GN:I
        //   277: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   280: aastore        
        //   281: aload           24
        //   283: iconst_3       
        //   284: aload_0        
        //   285: getfield        com/android/mail/ui/dn.yS:I
        //   288: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   291: aastore        
        //   292: aload           24
        //   294: iconst_4       
        //   295: aload           18
        //   297: getfield        android/graphics/BitmapFactory$Options.inSampleSize:I
        //   300: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   303: aastore        
        //   304: aload           23
        //   306: ldc             "in background, src w/h=%d/%d dst w/h=%d/%d, divider=%d"
        //   308: aload           24
        //   310: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   313: pop            
        //   314: aload           4
        //   316: invokevirtual   android/content/res/AssetFileDescriptor.getFileDescriptor:()Ljava/io/FileDescriptor;
        //   319: aconst_null    
        //   320: aload           18
        //   322: invokestatic    android/graphics/BitmapFactory.decodeFileDescriptor:(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
        //   325: astore          26
        //   327: aload           26
        //   329: ifnull          412
        //   332: iload_2        
        //   333: ifeq            412
        //   336: new             Landroid/graphics/Matrix;
        //   339: dup            
        //   340: invokespecial   android/graphics/Matrix.<init>:()V
        //   343: astore          29
        //   345: aload           29
        //   347: iload_2        
        //   348: i2f            
        //   349: invokevirtual   android/graphics/Matrix.postRotate:(F)Z
        //   352: pop            
        //   353: aload           26
        //   355: iconst_0       
        //   356: iconst_0       
        //   357: aload           26
        //   359: invokevirtual   android/graphics/Bitmap.getWidth:()I
        //   362: aload           26
        //   364: invokevirtual   android/graphics/Bitmap.getHeight:()I
        //   367: aload           29
        //   369: iconst_1       
        //   370: invokestatic    android/graphics/Bitmap.createBitmap:(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
        //   373: astore          31
        //   375: aload           31
        //   377: astore          26
        //   379: aload           4
        //   381: ifnull          20
        //   384: aload           4
        //   386: invokevirtual   android/content/res/AssetFileDescriptor.close:()V
        //   389: aload           26
        //   391: areturn        
        //   392: astore          32
        //   394: getstatic       com/android/mail/ui/dn.mW:Ljava/lang/String;
        //   397: aload           32
        //   399: ldc             ""
        //   401: iconst_0       
        //   402: anewarray       Ljava/lang/Object;
        //   405: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   408: pop            
        //   409: aload           26
        //   411: areturn        
        //   412: aload           4
        //   414: ifnull          20
        //   417: aload           4
        //   419: invokevirtual   android/content/res/AssetFileDescriptor.close:()V
        //   422: aload           26
        //   424: areturn        
        //   425: astore          27
        //   427: getstatic       com/android/mail/ui/dn.mW:Ljava/lang/String;
        //   430: aload           27
        //   432: ldc             ""
        //   434: iconst_0       
        //   435: anewarray       Ljava/lang/Object;
        //   438: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   441: pop            
        //   442: aload           26
        //   444: areturn        
        //   445: astore          7
        //   447: aconst_null    
        //   448: astore          8
        //   450: getstatic       com/android/mail/ui/dn.mW:Ljava/lang/String;
        //   453: astore          9
        //   455: iconst_3       
        //   456: anewarray       Ljava/lang/Object;
        //   459: astore          10
        //   461: aload           10
        //   463: iconst_0       
        //   464: aload_1        
        //   465: aastore        
        //   466: aload           10
        //   468: iconst_1       
        //   469: aload           7
        //   471: invokevirtual   java/lang/Object.getClass:()Ljava/lang/Class;
        //   474: aastore        
        //   475: aload           10
        //   477: iconst_2       
        //   478: aload           7
        //   480: invokevirtual   java/lang/Throwable.getMessage:()Ljava/lang/String;
        //   483: aastore        
        //   484: aload           9
        //   486: ldc             "Unable to decode thumbnail %s: %s %s"
        //   488: aload           10
        //   490: invokestatic    com/android/mail/utils/E.d:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   493: pop            
        //   494: aload           8
        //   496: ifnull          504
        //   499: aload           8
        //   501: invokevirtual   android/content/res/AssetFileDescriptor.close:()V
        //   504: aconst_null    
        //   505: areturn        
        //   506: astore          12
        //   508: getstatic       com/android/mail/ui/dn.mW:Ljava/lang/String;
        //   511: aload           12
        //   513: ldc             ""
        //   515: iconst_0       
        //   516: anewarray       Ljava/lang/Object;
        //   519: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   522: pop            
        //   523: goto            504
        //   526: astore_3       
        //   527: aconst_null    
        //   528: astore          4
        //   530: aload           4
        //   532: ifnull          540
        //   535: aload           4
        //   537: invokevirtual   android/content/res/AssetFileDescriptor.close:()V
        //   540: aload_3        
        //   541: athrow         
        //   542: astore          5
        //   544: getstatic       com/android/mail/ui/dn.mW:Ljava/lang/String;
        //   547: aload           5
        //   549: ldc             ""
        //   551: iconst_0       
        //   552: anewarray       Ljava/lang/Object;
        //   555: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   558: pop            
        //   559: goto            540
        //   562: astore_3       
        //   563: goto            530
        //   566: astore_3       
        //   567: aload           8
        //   569: astore          4
        //   571: goto            530
        //   574: astore          7
        //   576: aload           4
        //   578: astore          8
        //   580: goto            450
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  29     46     445    450    Ljava/lang/Throwable;
        //  29     46     526    530    Any
        //  50     56     574    583    Ljava/lang/Throwable;
        //  50     56     562    566    Any
        //  71     76     78     98     Ljava/io/IOException;
        //  98     155    574    583    Ljava/lang/Throwable;
        //  98     155    562    566    Any
        //  166    171    173    193    Ljava/io/IOException;
        //  193    327    574    583    Ljava/lang/Throwable;
        //  193    327    562    566    Any
        //  336    375    574    583    Ljava/lang/Throwable;
        //  336    375    562    566    Any
        //  384    389    392    412    Ljava/io/IOException;
        //  417    422    425    445    Ljava/io/IOException;
        //  450    494    566    574    Any
        //  499    504    506    526    Ljava/io/IOException;
        //  535    540    542    562    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 285, Size: 285
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
    
    private int z(final Uri uri) {
        if (uri != null) {
            InputStream openInputStream = null;
            try {
                openInputStream = this.aNK.xP().openInputStream(uri);
                final int f = a.f(openInputStream);
                if (openInputStream == null) {
                    return f;
                }
                try {
                    openInputStream.close();
                    return f;
                }
                catch (IOException ex) {
                    E.e(dn.mW, ex, "error attemtping to close input stream", new Object[0]);
                }
            }
            catch (Throwable t) {
                E.d(dn.mW, "Unable to get orientation of thumbnail %s: %s %s", uri, t.getClass(), t.getMessage());
                if (openInputStream != null) {
                    try {
                        openInputStream.close();
                        return 0;
                    }
                    catch (IOException ex2) {
                        E.e(dn.mW, ex2, "error attemtping to close input stream", new Object[0]);
                        return 0;
                    }
                }
            }
            finally {
                Label_0143: {
                    if (openInputStream == null) {
                        break Label_0143;
                    }
                    try {
                        openInputStream.close();
                    }
                    catch (IOException ex3) {
                        E.e(dn.mW, ex3, "error attemtping to close input stream", new Object[0]);
                    }
                }
            }
        }
        return 0;
    }
}
