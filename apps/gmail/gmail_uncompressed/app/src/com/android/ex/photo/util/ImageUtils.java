package com.android.ex.photo.util;

import java.util.regex.*;
import android.os.*;
import com.android.ex.photo.*;
import android.content.*;
import android.net.*;
import com.android.ex.photo.c.*;
import android.graphics.*;
import java.io.*;

public final class ImageUtils
{
    public static final ImageUtils$ImageSize aiA;
    private static final Pattern aiz;
    
    static {
        aiz = Pattern.compile("^(?:.*;)?base64,.*");
        if (Build$VERSION.SDK_INT >= 11) {
            aiA = ImageUtils$ImageSize.aiD;
            return;
        }
        if (k.agI >= 32L) {
            aiA = ImageUtils$ImageSize.aiD;
            return;
        }
        if (k.agI >= 24L) {
            aiA = ImageUtils$ImageSize.aiC;
            return;
        }
        aiA = ImageUtils$ImageSize.aiB;
    }
    
    private static Bitmap a(final d p0, final BitmapFactory$Options p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokeinterface com/android/ex/photo/util/d.fW:()Ljava/io/InputStream;
        //     6: astore          13
        //     8: aload           13
        //    10: astore_3       
        //    11: aload_3        
        //    12: invokestatic    com/android/ex/photo/util/a.f:(Ljava/io/InputStream;)I
        //    15: istore          14
        //    17: aload_3        
        //    18: ifnull          25
        //    21: aload_3        
        //    22: invokevirtual   java/io/InputStream.close:()V
        //    25: aload_0        
        //    26: invokeinterface com/android/ex/photo/util/d.fW:()Ljava/io/InputStream;
        //    31: astore          15
        //    33: aload           15
        //    35: astore          5
        //    37: aload           5
        //    39: aconst_null    
        //    40: aload_1        
        //    41: invokestatic    android/graphics/BitmapFactory.decodeStream:(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
        //    44: astore          8
        //    46: aload           5
        //    48: ifnull          108
        //    51: aload           8
        //    53: ifnonnull       108
        //    56: aload_1        
        //    57: getfield        android/graphics/BitmapFactory$Options.inJustDecodeBounds:Z
        //    60: ifne            108
        //    63: ldc             "ImageUtils"
        //    65: ldc             "ImageUtils#decodeStream(InputStream, Rect, Options): Image bytes cannot be decoded into a Bitmap"
        //    67: invokestatic    android/util/Log.w:(Ljava/lang/String;Ljava/lang/String;)I
        //    70: pop            
        //    71: new             Ljava/lang/UnsupportedOperationException;
        //    74: dup            
        //    75: ldc             "Image bytes cannot be decoded into a Bitmap."
        //    77: invokespecial   java/lang/UnsupportedOperationException.<init>:(Ljava/lang/String;)V
        //    80: athrow         
        //    81: astore_2       
        //    82: aload           5
        //    84: astore_3       
        //    85: ldc             "ImageUtils"
        //    87: ldc             "ImageUtils#decodeStream(InputStream, Rect, Options) threw an OOME"
        //    89: aload_2        
        //    90: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //    93: pop            
        //    94: aload_3        
        //    95: ifnull          102
        //    98: aload_3        
        //    99: invokevirtual   java/io/InputStream.close:()V
        //   102: aconst_null    
        //   103: astore          8
        //   105: aload           8
        //   107: areturn        
        //   108: aload           8
        //   110: ifnull          180
        //   113: iload           14
        //   115: ifeq            180
        //   118: new             Landroid/graphics/Matrix;
        //   121: dup            
        //   122: invokespecial   android/graphics/Matrix.<init>:()V
        //   125: astore          17
        //   127: aload           17
        //   129: iload           14
        //   131: i2f            
        //   132: invokevirtual   android/graphics/Matrix.postRotate:(F)Z
        //   135: pop            
        //   136: aload           8
        //   138: iconst_0       
        //   139: iconst_0       
        //   140: aload           8
        //   142: invokevirtual   android/graphics/Bitmap.getWidth:()I
        //   145: aload           8
        //   147: invokevirtual   android/graphics/Bitmap.getHeight:()I
        //   150: aload           17
        //   152: iconst_1       
        //   153: invokestatic    android/graphics/Bitmap.createBitmap:(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
        //   156: astore          19
        //   158: aload           19
        //   160: astore          8
        //   162: aload           5
        //   164: ifnull          105
        //   167: aload           5
        //   169: invokevirtual   java/io/InputStream.close:()V
        //   172: aload           8
        //   174: areturn        
        //   175: astore          20
        //   177: aload           8
        //   179: areturn        
        //   180: aload           5
        //   182: ifnull          105
        //   185: aload           5
        //   187: invokevirtual   java/io/InputStream.close:()V
        //   190: aload           8
        //   192: areturn        
        //   193: astore          16
        //   195: aload           8
        //   197: areturn        
        //   198: astore          10
        //   200: aconst_null    
        //   201: astore          5
        //   203: ldc             "ImageUtils"
        //   205: ldc             "ImageUtils#decodeStream(InputStream, Rect, Options) threw an IOE"
        //   207: aload           10
        //   209: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   212: pop            
        //   213: aload           5
        //   215: ifnull          223
        //   218: aload           5
        //   220: invokevirtual   java/io/InputStream.close:()V
        //   223: aconst_null    
        //   224: areturn        
        //   225: astore          4
        //   227: aconst_null    
        //   228: astore          5
        //   230: aload           5
        //   232: ifnull          240
        //   235: aload           5
        //   237: invokevirtual   java/io/InputStream.close:()V
        //   240: aload           4
        //   242: athrow         
        //   243: astore          9
        //   245: goto            102
        //   248: astore          12
        //   250: goto            223
        //   253: astore          6
        //   255: goto            240
        //   258: astore          4
        //   260: aload_3        
        //   261: astore          5
        //   263: goto            230
        //   266: astore          4
        //   268: goto            230
        //   271: astore          10
        //   273: aload_3        
        //   274: astore          5
        //   276: goto            203
        //   279: astore          10
        //   281: goto            203
        //   284: astore_2       
        //   285: aconst_null    
        //   286: astore_3       
        //   287: goto            85
        //   290: astore_2       
        //   291: goto            85
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                        
        //  -----  -----  -----  -----  ----------------------------
        //  0      8      284    290    Ljava/lang/OutOfMemoryError;
        //  0      8      198    203    Ljava/io/IOException;
        //  0      8      225    230    Any
        //  11     17     290    294    Ljava/lang/OutOfMemoryError;
        //  11     17     271    279    Ljava/io/IOException;
        //  11     17     258    266    Any
        //  21     25     290    294    Ljava/lang/OutOfMemoryError;
        //  21     25     271    279    Ljava/io/IOException;
        //  21     25     258    266    Any
        //  25     33     290    294    Ljava/lang/OutOfMemoryError;
        //  25     33     271    279    Ljava/io/IOException;
        //  25     33     258    266    Any
        //  37     46     81     85     Ljava/lang/OutOfMemoryError;
        //  37     46     279    284    Ljava/io/IOException;
        //  37     46     266    271    Any
        //  56     81     81     85     Ljava/lang/OutOfMemoryError;
        //  56     81     279    284    Ljava/io/IOException;
        //  56     81     266    271    Any
        //  85     94     258    266    Any
        //  98     102    243    248    Ljava/io/IOException;
        //  118    158    81     85     Ljava/lang/OutOfMemoryError;
        //  118    158    279    284    Ljava/io/IOException;
        //  118    158    266    271    Any
        //  167    172    175    180    Ljava/io/IOException;
        //  185    190    193    198    Ljava/io/IOException;
        //  203    213    266    271    Any
        //  218    223    248    253    Ljava/io/IOException;
        //  235    240    253    258    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 145, Size: 145
        //     at java.util.ArrayList.rangeCheck(Unknown Source)
        //     at java.util.ArrayList.get(Unknown Source)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3419)
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
    
    public static c a(final ContentResolver contentResolver, final Uri uri, final int n) {
        final c c = new c();
        Label_0122: {
            if (!"data".equals(uri.getScheme())) {
                break Label_0122;
            }
            b b = new com.android.ex.photo.util.c(contentResolver, uri);
            try {
                while (true) {
                    final BitmapFactory$Options bitmapFactory$Options = new BitmapFactory$Options();
                    bitmapFactory$Options.inJustDecodeBounds = true;
                    a(b, bitmapFactory$Options);
                    final Point point = new Point(bitmapFactory$Options.outWidth, bitmapFactory$Options.outHeight);
                    final BitmapFactory$Options bitmapFactory$Options2 = new BitmapFactory$Options();
                    bitmapFactory$Options2.inSampleSize = Math.max(point.x / n, point.y / n);
                    c.afe = a(b, bitmapFactory$Options2);
                    c.status = 0;
                    return c;
                    b = new b(contentResolver, uri);
                    continue;
                }
            }
            catch (IOException ex) {
                c.status = 1;
            }
            catch (SecurityException ex2) {
                c.status = 1;
                goto Label_0143;
            }
            catch (IllegalArgumentException ex3) {
                goto Label_0143;
            }
            catch (FileNotFoundException ex4) {
                goto Label_0143;
            }
        }
    }
    
    public static boolean aW(final String s) {
        return s != null && s.startsWith("image/");
    }
}
