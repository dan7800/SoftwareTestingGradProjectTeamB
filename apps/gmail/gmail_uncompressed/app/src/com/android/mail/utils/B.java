package com.android.mail.utils;

import java.util.*;
import android.content.*;
import java.text.*;
import com.android.mail.providers.*;
import android.text.*;
import android.os.*;
import android.app.*;
import android.net.*;
import com.google.common.collect.*;

public final class b
{
    private static Map<String, String> aOW;
    private static final String mW;
    
    static {
        mW = D.AU();
    }
    
    public static String E(final Context context, final long n) {
        if (n == 0L) {
            return "";
        }
        if (n < 1024L) {
            return context.getString(2131296454, new Object[] { String.valueOf(n) });
        }
        if (n < 1048576L) {
            return context.getString(2131296455, new Object[] { String.valueOf(n / 1024L) });
        }
        return context.getString(2131296456, new Object[] { new DecimalFormat("0.#").format(n / 1048576.0f) });
    }
    
    public static String a(final Context context, final Attachment attachment) {
        String s;
        if ((0x400 & attachment.flags) != 0x0) {
            s = "";
        }
        else {
            final String contentType = attachment.getContentType();
            s = u(context, contentType);
            int index;
            if (!TextUtils.isEmpty((CharSequence)contentType)) {
                index = contentType.indexOf(47);
            }
            else {
                index = -1;
            }
            if (s == null && index > 0) {
                s = u(context, contentType.substring(0, index));
            }
            if (s == null) {
                final String ci = ag.cI(attachment.getName());
                if (ci != null && ci.length() > 1 && ci.indexOf(46) == 0) {
                    s = context.getString(2131296465, new Object[] { ci.substring(1).toUpperCase() });
                }
            }
            if (s == null) {
                return "";
            }
        }
        return s;
    }
    
    public static String a(final Context p0, final Attachment p1, final Bundle p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokevirtual   android/content/Context.getCacheDir:()Ljava/io/File;
        //     4: astore_3       
        //     5: aload_3        
        //     6: invokevirtual   java/io/File.getTotalSpace:()J
        //     9: lstore          4
        //    11: aload_1        
        //    12: getfield        com/android/mail/providers/Attachment.size:I
        //    15: ifle            86
        //    18: aload_3        
        //    19: invokevirtual   java/io/File.getUsableSpace:()J
        //    22: aload_1        
        //    23: getfield        com/android/mail/providers/Attachment.size:I
        //    26: i2l            
        //    27: lsub           
        //    28: lstore          38
        //    30: lload           4
        //    32: lload           38
        //    34: invokestatic    com/android/mail/utils/b.d:(JJ)Z
        //    37: ifeq            86
        //    40: getstatic       com/android/mail/utils/b.mW:Ljava/lang/String;
        //    43: astore          40
        //    45: iconst_3       
        //    46: anewarray       Ljava/lang/Object;
        //    49: astore          41
        //    51: aload           41
        //    53: iconst_0       
        //    54: lload           38
        //    56: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //    59: aastore        
        //    60: aload           41
        //    62: iconst_1       
        //    63: lload           4
        //    65: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //    68: aastore        
        //    69: aload           41
        //    71: iconst_2       
        //    72: aload_1        
        //    73: aastore        
        //    74: aload           40
        //    76: ldc             "Low memory (%d/%d). Can't cache attachment %s"
        //    78: aload           41
        //    80: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //    83: pop            
        //    84: aconst_null    
        //    85: areturn        
        //    86: aconst_null    
        //    87: astore          6
        //    89: aconst_null    
        //    90: astore          7
        //    92: aconst_null    
        //    93: astore          8
        //    95: new             Ljava/text/SimpleDateFormat;
        //    98: dup            
        //    99: ldc             "yyyy-MM-dd-kk:mm:ss"
        //   101: invokespecial   java/text/SimpleDateFormat.<init>:(Ljava/lang/String;)V
        //   104: new             Ljava/util/Date;
        //   107: dup            
        //   108: invokespecial   java/util/Date.<init>:()V
        //   111: invokevirtual   java/text/SimpleDateFormat.format:(Ljava/util/Date;)Ljava/lang/String;
        //   114: ldc             ".attachment"
        //   116: aload_3        
        //   117: invokestatic    java/io/File.createTempFile:(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
        //   120: astore          8
        //   122: aload_2        
        //   123: ifnull          296
        //   126: aload_1        
        //   127: getfield        com/android/mail/providers/Attachment.ayP:Landroid/net/Uri;
        //   130: ifnull          296
        //   133: aload_2        
        //   134: aload_1        
        //   135: getfield        com/android/mail/providers/Attachment.ayP:Landroid/net/Uri;
        //   138: invokevirtual   android/net/Uri.toString:()Ljava/lang/String;
        //   141: invokevirtual   android/os/Bundle.getParcelable:(Ljava/lang/String;)Landroid/os/Parcelable;
        //   144: checkcast       Landroid/os/ParcelFileDescriptor;
        //   147: astore          18
        //   149: aload           18
        //   151: ifnull          302
        //   154: new             Ljava/io/FileInputStream;
        //   157: dup            
        //   158: aload           18
        //   160: invokevirtual   android/os/ParcelFileDescriptor.getFileDescriptor:()Ljava/io/FileDescriptor;
        //   163: invokespecial   java/io/FileInputStream.<init>:(Ljava/io/FileDescriptor;)V
        //   166: astore          10
        //   168: new             Ljava/io/FileOutputStream;
        //   171: dup            
        //   172: aload           8
        //   174: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/File;)V
        //   177: astore          19
        //   179: invokestatic    android/os/SystemClock.elapsedRealtime:()J
        //   182: lstore          20
        //   184: sipush          1024
        //   187: newarray        B
        //   189: astore          22
        //   191: aload           10
        //   193: aload           22
        //   195: invokevirtual   java/io/InputStream.read:([B)I
        //   198: istore          23
        //   200: iload           23
        //   202: ifle            356
        //   205: aload           19
        //   207: aload           22
        //   209: iconst_0       
        //   210: iload           23
        //   212: invokevirtual   java/io/FileOutputStream.write:([BII)V
        //   215: invokestatic    android/os/SystemClock.elapsedRealtime:()J
        //   218: lload           20
        //   220: lsub           
        //   221: ldc2_w          3600000
        //   224: lcmp           
        //   225: ifle            191
        //   228: new             Ljava/io/IOException;
        //   231: dup            
        //   232: ldc             "Timed out reading attachment data"
        //   234: invokespecial   java/io/IOException.<init>:(Ljava/lang/String;)V
        //   237: athrow         
        //   238: astore          9
        //   240: aload           19
        //   242: astore          7
        //   244: getstatic       com/android/mail/utils/b.mW:Ljava/lang/String;
        //   247: aload           9
        //   249: ldc             "Failed to cache attachment %s"
        //   251: iconst_1       
        //   252: anewarray       Ljava/lang/Object;
        //   255: dup            
        //   256: iconst_0       
        //   257: aload_1        
        //   258: aastore        
        //   259: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   262: pop            
        //   263: aload           8
        //   265: ifnull          274
        //   268: aload           8
        //   270: invokevirtual   java/io/File.delete:()Z
        //   273: pop            
        //   274: aload           10
        //   276: ifnull          284
        //   279: aload           10
        //   281: invokevirtual   java/io/InputStream.close:()V
        //   284: aload           7
        //   286: ifnull          294
        //   289: aload           7
        //   291: invokevirtual   java/io/FileOutputStream.close:()V
        //   294: aconst_null    
        //   295: areturn        
        //   296: aconst_null    
        //   297: astore          18
        //   299: goto            149
        //   302: aload_1        
        //   303: getfield        com/android/mail/providers/Attachment.ayP:Landroid/net/Uri;
        //   306: ifnonnull       336
        //   309: getstatic       com/android/mail/utils/b.mW:Ljava/lang/String;
        //   312: ldc             "contentUri is null in attachment: %s"
        //   314: iconst_1       
        //   315: anewarray       Ljava/lang/Object;
        //   318: dup            
        //   319: iconst_0       
        //   320: aload_1        
        //   321: aastore        
        //   322: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   325: pop            
        //   326: new             Ljava/io/FileNotFoundException;
        //   329: dup            
        //   330: ldc             "Missing contentUri in attachment"
        //   332: invokespecial   java/io/FileNotFoundException.<init>:(Ljava/lang/String;)V
        //   335: athrow         
        //   336: aload_0        
        //   337: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //   340: aload_1        
        //   341: getfield        com/android/mail/providers/Attachment.ayP:Landroid/net/Uri;
        //   344: invokevirtual   android/content/ContentResolver.openInputStream:(Landroid/net/Uri;)Ljava/io/InputStream;
        //   347: astore          36
        //   349: aload           36
        //   351: astore          10
        //   353: goto            168
        //   356: aload           19
        //   358: invokevirtual   java/io/FileOutputStream.flush:()V
        //   361: aload           8
        //   363: invokevirtual   java/io/File.getAbsolutePath:()Ljava/lang/String;
        //   366: astore          24
        //   368: getstatic       com/android/mail/utils/b.mW:Ljava/lang/String;
        //   371: astore          25
        //   373: iconst_2       
        //   374: anewarray       Ljava/lang/Object;
        //   377: astore          26
        //   379: aload           26
        //   381: iconst_0       
        //   382: aload_1        
        //   383: getfield        com/android/mail/providers/Attachment.ayP:Landroid/net/Uri;
        //   386: aastore        
        //   387: aload           26
        //   389: iconst_1       
        //   390: aload           24
        //   392: aastore        
        //   393: aload           25
        //   395: ldc             "Cached %s to %s"
        //   397: aload           26
        //   399: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   402: pop            
        //   403: aload_3        
        //   404: invokevirtual   java/io/File.getUsableSpace:()J
        //   407: lstore          28
        //   409: lload           4
        //   411: lload           28
        //   413: invokestatic    com/android/mail/utils/b.d:(JJ)Z
        //   416: ifeq            472
        //   419: aload           8
        //   421: invokevirtual   java/io/File.delete:()Z
        //   424: pop            
        //   425: getstatic       com/android/mail/utils/b.mW:Ljava/lang/String;
        //   428: astore          33
        //   430: iconst_3       
        //   431: anewarray       Ljava/lang/Object;
        //   434: astore          34
        //   436: aload           34
        //   438: iconst_0       
        //   439: lload           28
        //   441: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   444: aastore        
        //   445: aload           34
        //   447: iconst_1       
        //   448: lload           4
        //   450: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   453: aastore        
        //   454: aload           34
        //   456: iconst_2       
        //   457: aload_1        
        //   458: aastore        
        //   459: aload           33
        //   461: ldc             "Low memory (%d/%d). Can't cache attachment %s"
        //   463: aload           34
        //   465: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   468: pop            
        //   469: aconst_null    
        //   470: astore          24
        //   472: aload           10
        //   474: ifnull          482
        //   477: aload           10
        //   479: invokevirtual   java/io/InputStream.close:()V
        //   482: aload           19
        //   484: invokevirtual   java/io/FileOutputStream.close:()V
        //   487: aload           24
        //   489: areturn        
        //   490: astore          30
        //   492: getstatic       com/android/mail/utils/b.mW:Ljava/lang/String;
        //   495: aload           30
        //   497: ldc             "Failed to close stream"
        //   499: iconst_0       
        //   500: anewarray       Ljava/lang/Object;
        //   503: invokestatic    com/android/mail/utils/E.d:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   506: pop            
        //   507: aload           24
        //   509: areturn        
        //   510: astore          16
        //   512: getstatic       com/android/mail/utils/b.mW:Ljava/lang/String;
        //   515: aload           16
        //   517: ldc             "Failed to close stream"
        //   519: iconst_0       
        //   520: anewarray       Ljava/lang/Object;
        //   523: invokestatic    com/android/mail/utils/E.d:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   526: pop            
        //   527: goto            294
        //   530: astore          11
        //   532: aconst_null    
        //   533: astore          10
        //   535: aload           10
        //   537: ifnull          545
        //   540: aload           10
        //   542: invokevirtual   java/io/InputStream.close:()V
        //   545: aload           7
        //   547: ifnull          555
        //   550: aload           7
        //   552: invokevirtual   java/io/FileOutputStream.close:()V
        //   555: aload           11
        //   557: athrow         
        //   558: astore          12
        //   560: getstatic       com/android/mail/utils/b.mW:Ljava/lang/String;
        //   563: aload           12
        //   565: ldc             "Failed to close stream"
        //   567: iconst_0       
        //   568: anewarray       Ljava/lang/Object;
        //   571: invokestatic    com/android/mail/utils/E.d:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   574: pop            
        //   575: goto            555
        //   578: astore          9
        //   580: aload           6
        //   582: astore          10
        //   584: goto            244
        //   587: astore          11
        //   589: goto            535
        //   592: astore          11
        //   594: aload           19
        //   596: astore          7
        //   598: goto            535
        //   601: astore          9
        //   603: aconst_null    
        //   604: astore          7
        //   606: goto            244
        //   609: astore          9
        //   611: aload           10
        //   613: astore          6
        //   615: aconst_null    
        //   616: astore          7
        //   618: goto            580
        //   621: astore          9
        //   623: aload           19
        //   625: astore          7
        //   627: aload           10
        //   629: astore          6
        //   631: goto            580
        //   634: astore          9
        //   636: aconst_null    
        //   637: astore          7
        //   639: aconst_null    
        //   640: astore          10
        //   642: goto            244
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                         
        //  -----  -----  -----  -----  -----------------------------
        //  95     122    634    645    Ljava/io/IOException;
        //  95     122    578    580    Ljava/lang/SecurityException;
        //  95     122    530    535    Any
        //  126    149    634    645    Ljava/io/IOException;
        //  126    149    578    580    Ljava/lang/SecurityException;
        //  126    149    530    535    Any
        //  154    168    634    645    Ljava/io/IOException;
        //  154    168    578    580    Ljava/lang/SecurityException;
        //  154    168    530    535    Any
        //  168    179    601    609    Ljava/io/IOException;
        //  168    179    609    621    Ljava/lang/SecurityException;
        //  168    179    587    592    Any
        //  179    191    238    244    Ljava/io/IOException;
        //  179    191    621    634    Ljava/lang/SecurityException;
        //  179    191    592    601    Any
        //  191    200    238    244    Ljava/io/IOException;
        //  191    200    621    634    Ljava/lang/SecurityException;
        //  191    200    592    601    Any
        //  205    238    238    244    Ljava/io/IOException;
        //  205    238    621    634    Ljava/lang/SecurityException;
        //  205    238    592    601    Any
        //  244    263    587    592    Any
        //  268    274    587    592    Any
        //  279    284    510    530    Ljava/io/IOException;
        //  289    294    510    530    Ljava/io/IOException;
        //  302    336    634    645    Ljava/io/IOException;
        //  302    336    578    580    Ljava/lang/SecurityException;
        //  302    336    530    535    Any
        //  336    349    634    645    Ljava/io/IOException;
        //  336    349    578    580    Ljava/lang/SecurityException;
        //  336    349    530    535    Any
        //  356    469    238    244    Ljava/io/IOException;
        //  356    469    621    634    Ljava/lang/SecurityException;
        //  356    469    592    601    Any
        //  477    482    490    510    Ljava/io/IOException;
        //  482    487    490    510    Ljava/io/IOException;
        //  540    545    558    578    Ljava/io/IOException;
        //  550    555    558    578    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0191:
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
    
    public static boolean ay(final Context context) {
        final NetworkInfo activeNetworkInfo = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return false;
        }
        if (!activeNetworkInfo.isConnected()) {
            return false;
        }
        if (activeNetworkInfo.getType() != 0) {
            return true;
        }
        DownloadManager.getMaxBytesOverMobile(context);
        return true;
    }
    
    private static boolean d(final long n, final long n2) {
        return n2 < Math.min(0.25f * n, 1.048576E8f);
    }
    
    private static String u(final Context context, final String s) {
        synchronized (b.class) {
            if (b.aOW == null) {
                final String string = context.getString(2131296461);
                final String string2 = context.getString(2131296462);
                final String string3 = context.getString(2131296463);
                b.aOW = new y<String, String>().p("image", context.getString(2131296457)).p("audio", context.getString(2131296459)).p("video", context.getString(2131296458)).p("text", context.getString(2131296460)).p("application/pdf", context.getString(2131296464)).p("application/msword", string).p("application/vnd.openxmlformats-officedocument.wordprocessingml.document", string).p("application/vnd.ms-powerpoint", string2).p("application/vnd.openxmlformats-officedocument.presentationml.presentation", string2).p("application/vnd.ms-excel", string3).p("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", string3).Zo();
            }
            return b.aOW.get(s);
        }
    }
}
