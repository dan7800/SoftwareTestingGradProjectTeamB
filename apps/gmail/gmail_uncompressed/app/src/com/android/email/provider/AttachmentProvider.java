package com.android.email.provider;

import android.graphics.*;
import com.android.emailcommon.*;
import android.net.*;
import com.android.emailcommon.provider.*;
import com.android.emailcommon.b.*;
import java.util.*;
import android.database.*;
import android.content.*;
import java.io.*;
import android.os.*;
import com.android.mail.utils.*;

public class AttachmentProvider extends ContentProvider
{
    private static final String[] Ry;
    private static final String[] Rz;
    
    static {
        Ry = new String[] { "mimeType", "fileName" };
        Rz = new String[] { "fileName", "size", "contentUri" };
    }
    
    private static Bitmap c(final InputStream inputStream) {
        try {
            return BitmapFactory.decodeStream(inputStream);
        }
        catch (OutOfMemoryError outOfMemoryError) {
            E.c(b.mW, "createImageThumbnail failed with " + outOfMemoryError.getMessage(), new Object[0]);
            return null;
        }
        catch (Exception ex) {
            E.c(b.mW, "createImageThumbnail failed with " + ex.getMessage(), new Object[0]);
            return null;
        }
    }
    
    public int delete(final Uri uri, final String s, final String[] array) {
        return 0;
    }
    
    public String getType(final Uri uri) {
        final long clearCallingIdentity = Binder.clearCallingIdentity();
        try {
            final List pathSegments = uri.getPathSegments();
            final String s = pathSegments.get(1);
            if ("THUMBNAIL".equals(pathSegments.get(2))) {
                return "image/png";
            }
            final Cursor query = this.getContext().getContentResolver().query(ContentUris.withAppendedId(EmailContent$Attachment.CONTENT_URI, Long.parseLong(s)), AttachmentProvider.Ry, (String)null, (String[])null, (String)null);
            try {
                if (query.moveToFirst()) {
                    return a.u(query.getString(1), query.getString(0));
                }
                return null;
            }
            finally {
                query.close();
            }
        }
        finally {
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
    }
    
    public Uri insert(final Uri uri, final ContentValues contentValues) {
        return null;
    }
    
    public boolean onCreate() {
        final File[] listFiles = this.getContext().getCacheDir().listFiles();
        if (listFiles != null) {
            for (final File file : listFiles) {
                final String name = file.getName();
                if (name.endsWith(".tmp") || name.startsWith("thmb_")) {
                    file.delete();
                }
            }
        }
        return true;
    }
    
    public ParcelFileDescriptor openFile(final Uri p0, final String p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_2        
        //     1: ldc             "w"
        //     3: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //     6: ifeq            109
        //     9: aload_0        
        //    10: invokevirtual   com/android/email/provider/AttachmentProvider.getContext:()Landroid/content/Context;
        //    13: astore          30
        //    15: aload           30
        //    17: getstatic       com/android/emailcommon/provider/EmailContent.Yg:Ljava/lang/String;
        //    20: invokevirtual   android/content/Context.checkCallingOrSelfPermission:(Ljava/lang/String;)I
        //    23: ifeq            34
        //    26: new             Ljava/io/FileNotFoundException;
        //    29: dup            
        //    30: invokespecial   java/io/FileNotFoundException.<init>:()V
        //    33: athrow         
        //    34: aload_1        
        //    35: invokevirtual   android/net/Uri.getPathSegments:()Ljava/util/List;
        //    38: astore          31
        //    40: aload           31
        //    42: iconst_0       
        //    43: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //    48: checkcast       Ljava/lang/String;
        //    51: astore          32
        //    53: aload           31
        //    55: iconst_1       
        //    56: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //    61: checkcast       Ljava/lang/String;
        //    64: astore          33
        //    66: aload           30
        //    68: aload           32
        //    70: invokestatic    java/lang/Long.parseLong:(Ljava/lang/String;)J
        //    73: invokestatic    com/android/emailcommon/b/a.A:(Landroid/content/Context;J)Ljava/io/File;
        //    76: astore          34
        //    78: aload           34
        //    80: invokevirtual   java/io/File.exists:()Z
        //    83: ifne            92
        //    86: aload           34
        //    88: invokevirtual   java/io/File.mkdirs:()Z
        //    91: pop            
        //    92: new             Ljava/io/File;
        //    95: dup            
        //    96: aload           34
        //    98: aload           33
        //   100: invokespecial   java/io/File.<init>:(Ljava/io/File;Ljava/lang/String;)V
        //   103: ldc             1006632960
        //   105: invokestatic    android/os/ParcelFileDescriptor.open:(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
        //   108: areturn        
        //   109: invokestatic    android/os/Binder.clearCallingIdentity:()J
        //   112: lstore_3       
        //   113: aload_1        
        //   114: invokevirtual   android/net/Uri.getPathSegments:()Ljava/util/List;
        //   117: astore          6
        //   119: aload           6
        //   121: iconst_0       
        //   122: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //   127: checkcast       Ljava/lang/String;
        //   130: astore          7
        //   132: aload           6
        //   134: iconst_1       
        //   135: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //   140: checkcast       Ljava/lang/String;
        //   143: astore          8
        //   145: ldc             "THUMBNAIL"
        //   147: aload           6
        //   149: iconst_2       
        //   150: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //   155: checkcast       Ljava/lang/String;
        //   158: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   161: ifeq            568
        //   164: aload           6
        //   166: iconst_3       
        //   167: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //   172: checkcast       Ljava/lang/String;
        //   175: invokestatic    java/lang/Integer.parseInt:(Ljava/lang/String;)I
        //   178: istore          10
        //   180: aload           6
        //   182: iconst_4       
        //   183: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //   188: checkcast       Ljava/lang/String;
        //   191: invokestatic    java/lang/Integer.parseInt:(Ljava/lang/String;)I
        //   194: istore          11
        //   196: new             Ljava/lang/StringBuilder;
        //   199: dup            
        //   200: ldc             "thmb_"
        //   202: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   205: aload           7
        //   207: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   210: ldc             "_"
        //   212: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   215: aload           8
        //   217: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   220: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   223: astore          12
        //   225: new             Ljava/io/File;
        //   228: dup            
        //   229: aload_0        
        //   230: invokevirtual   com/android/email/provider/AttachmentProvider.getContext:()Landroid/content/Context;
        //   233: invokevirtual   android/content/Context.getCacheDir:()Ljava/io/File;
        //   236: aload           12
        //   238: invokespecial   java/io/File.<init>:(Ljava/io/File;Ljava/lang/String;)V
        //   241: astore          13
        //   243: aload           13
        //   245: invokevirtual   java/io/File.exists:()Z
        //   248: ifne            471
        //   251: aload           7
        //   253: invokestatic    java/lang/Long.parseLong:(Ljava/lang/String;)J
        //   256: aload           8
        //   258: invokestatic    java/lang/Long.parseLong:(Ljava/lang/String;)J
        //   261: invokestatic    com/android/emailcommon/b/a.c:(JJ)Landroid/net/Uri;
        //   264: astore          15
        //   266: aload_0        
        //   267: aload           15
        //   269: iconst_1       
        //   270: anewarray       Ljava/lang/String;
        //   273: dup            
        //   274: iconst_0       
        //   275: ldc             "_data"
        //   277: aastore        
        //   278: aconst_null    
        //   279: aconst_null    
        //   280: aconst_null    
        //   281: invokevirtual   com/android/email/provider/AttachmentProvider.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   284: astore          16
        //   286: aload           16
        //   288: ifnull          325
        //   291: aload           16
        //   293: invokeinterface android/database/Cursor.moveToFirst:()Z
        //   298: ifeq            385
        //   301: aload           16
        //   303: iconst_0       
        //   304: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   309: invokestatic    android/net/Uri.parse:(Ljava/lang/String;)Landroid/net/Uri;
        //   312: astore          29
        //   314: aload           29
        //   316: astore          15
        //   318: aload           16
        //   320: invokeinterface android/database/Cursor.close:()V
        //   325: aload_0        
        //   326: invokevirtual   com/android/email/provider/AttachmentProvider.getContext:()Landroid/content/Context;
        //   329: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //   332: aload           15
        //   334: invokevirtual   android/content/ContentResolver.getType:(Landroid/net/Uri;)Ljava/lang/String;
        //   337: astore          17
        //   339: aload_0        
        //   340: invokevirtual   com/android/email/provider/AttachmentProvider.getContext:()Landroid/content/Context;
        //   343: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //   346: aload           15
        //   348: invokevirtual   android/content/ContentResolver.openInputStream:(Landroid/net/Uri;)Ljava/io/InputStream;
        //   351: astore          22
        //   353: aload           17
        //   355: ldc             "image/*"
        //   357: invokestatic    com/android/emailcommon/a/i.s:(Ljava/lang/String;Ljava/lang/String;)Z
        //   360: ifeq            419
        //   363: aload           22
        //   365: invokestatic    com/android/email/provider/AttachmentProvider.c:(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
        //   368: astore          27
        //   370: aload           27
        //   372: astore          23
        //   374: aload           23
        //   376: ifnonnull       425
        //   379: lload_3        
        //   380: invokestatic    android/os/Binder.restoreCallingIdentity:(J)V
        //   383: aconst_null    
        //   384: areturn        
        //   385: aload           16
        //   387: invokeinterface android/database/Cursor.close:()V
        //   392: lload_3        
        //   393: invokestatic    android/os/Binder.restoreCallingIdentity:(J)V
        //   396: aconst_null    
        //   397: areturn        
        //   398: astore          28
        //   400: aload           16
        //   402: invokeinterface android/database/Cursor.close:()V
        //   407: aload           28
        //   409: athrow         
        //   410: astore          5
        //   412: lload_3        
        //   413: invokestatic    android/os/Binder.restoreCallingIdentity:(J)V
        //   416: aload           5
        //   418: athrow         
        //   419: aconst_null    
        //   420: astore          23
        //   422: goto            374
        //   425: aload           23
        //   427: iload           10
        //   429: iload           11
        //   431: iconst_1       
        //   432: invokestatic    android/graphics/Bitmap.createScaledBitmap:(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
        //   435: astore          24
        //   437: new             Ljava/io/FileOutputStream;
        //   440: dup            
        //   441: aload           13
        //   443: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/File;)V
        //   446: astore          25
        //   448: aload           24
        //   450: getstatic       android/graphics/Bitmap$CompressFormat.PNG:Landroid/graphics/Bitmap$CompressFormat;
        //   453: bipush          100
        //   455: aload           25
        //   457: invokevirtual   android/graphics/Bitmap.compress:(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
        //   460: pop            
        //   461: aload           25
        //   463: invokevirtual   java/io/FileOutputStream.close:()V
        //   466: aload           22
        //   468: invokevirtual   java/io/InputStream.close:()V
        //   471: aload           13
        //   473: ldc_w           268435456
        //   476: invokestatic    android/os/ParcelFileDescriptor.open:(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
        //   479: astore          14
        //   481: lload_3        
        //   482: invokestatic    android/os/Binder.restoreCallingIdentity:(J)V
        //   485: aload           14
        //   487: areturn        
        //   488: astore          20
        //   490: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   493: new             Ljava/lang/StringBuilder;
        //   496: dup            
        //   497: ldc_w           "openFile/thumbnail failed with "
        //   500: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   503: aload           20
        //   505: invokevirtual   java/io/IOException.getMessage:()Ljava/lang/String;
        //   508: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   511: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   514: iconst_0       
        //   515: anewarray       Ljava/lang/Object;
        //   518: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   521: pop            
        //   522: lload_3        
        //   523: invokestatic    android/os/Binder.restoreCallingIdentity:(J)V
        //   526: aconst_null    
        //   527: areturn        
        //   528: astore          18
        //   530: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   533: new             Ljava/lang/StringBuilder;
        //   536: dup            
        //   537: ldc_w           "openFile/thumbnail failed with "
        //   540: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   543: aload           18
        //   545: invokevirtual   java/lang/OutOfMemoryError.getMessage:()Ljava/lang/String;
        //   548: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   551: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   554: iconst_0       
        //   555: anewarray       Ljava/lang/Object;
        //   558: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   561: pop            
        //   562: lload_3        
        //   563: invokestatic    android/os/Binder.restoreCallingIdentity:(J)V
        //   566: aconst_null    
        //   567: areturn        
        //   568: new             Ljava/io/File;
        //   571: dup            
        //   572: aload_0        
        //   573: invokevirtual   com/android/email/provider/AttachmentProvider.getContext:()Landroid/content/Context;
        //   576: new             Ljava/lang/StringBuilder;
        //   579: dup            
        //   580: invokespecial   java/lang/StringBuilder.<init>:()V
        //   583: aload           7
        //   585: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   588: ldc_w           ".db_att"
        //   591: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   594: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   597: invokevirtual   android/content/Context.getDatabasePath:(Ljava/lang/String;)Ljava/io/File;
        //   600: aload           8
        //   602: invokespecial   java/io/File.<init>:(Ljava/io/File;Ljava/lang/String;)V
        //   605: ldc_w           268435456
        //   608: invokestatic    android/os/ParcelFileDescriptor.open:(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
        //   611: astore          9
        //   613: lload_3        
        //   614: invokestatic    android/os/Binder.restoreCallingIdentity:(J)V
        //   617: aload           9
        //   619: areturn        
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                        
        //  -----  -----  -----  -----  ----------------------------
        //  113    286    410    419    Any
        //  291    314    398    410    Any
        //  318    325    410    419    Any
        //  325    339    410    419    Any
        //  339    370    488    528    Ljava/io/IOException;
        //  339    370    528    568    Ljava/lang/OutOfMemoryError;
        //  339    370    410    419    Any
        //  385    392    410    419    Any
        //  400    410    410    419    Any
        //  425    471    488    528    Ljava/io/IOException;
        //  425    471    528    568    Ljava/lang/OutOfMemoryError;
        //  425    471    410    419    Any
        //  471    481    410    419    Any
        //  490    522    410    419    Any
        //  530    562    410    419    Any
        //  568    613    410    419    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0374:
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
    
    public Cursor query(final Uri uri, String[] array, final String s, final String[] array2, final String s2) {
        final long clearCallingIdentity = Binder.clearCallingIdentity();
        while (true) {
            if (array == null) {
                G g;
                Object[] array3;
                while (true) {
                    while (true) {
                        int n = 0;
                        Label_0316: {
                            String string;
                            int int1;
                            String string2;
                            String s4;
                            try {
                                array = new String[] { "_id", "_data" };
                                final List pathSegments = uri.getPathSegments();
                                pathSegments.get(0);
                                final String s3 = pathSegments.get(1);
                                pathSegments.get(2);
                                final Cursor query = this.getContext().getContentResolver().query(ContentUris.withAppendedId(EmailContent$Attachment.CONTENT_URI, Long.parseLong(s3)), AttachmentProvider.Rz, (String)null, (String[])null, (String)null);
                                try {
                                    if (!query.moveToFirst()) {
                                        return null;
                                    }
                                    string = query.getString(0);
                                    int1 = query.getInt(1);
                                    string2 = query.getString(2);
                                    query.close();
                                    g = new G(array);
                                    array3 = new Object[array.length];
                                    n = 0;
                                    final int length = array.length;
                                    if (n >= length) {
                                        break;
                                    }
                                    s4 = array[n];
                                    if ("_id".equals(s4)) {
                                        array3[n] = s3;
                                        break Label_0316;
                                    }
                                }
                                finally {
                                    query.close();
                                }
                            }
                            finally {
                                Binder.restoreCallingIdentity(clearCallingIdentity);
                            }
                            if ("_data".equals(s4)) {
                                array3[n] = string2;
                            }
                            else if ("_display_name".equals(s4)) {
                                array3[n] = string;
                            }
                            else if ("_size".equals(s4)) {
                                array3[n] = int1;
                            }
                        }
                        ++n;
                        continue;
                    }
                }
                g.addRow(array3);
                Binder.restoreCallingIdentity(clearCallingIdentity);
                return (Cursor)g;
            }
            continue;
        }
    }
    
    public void shutdown() {
    }
    
    public int update(final Uri uri, final ContentValues contentValues, final String s, final String[] array) {
        return 0;
    }
}
