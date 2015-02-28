package com.android.a;

import android.os.*;
import android.graphics.*;
import java.io.*;

public class b extends AsyncTask<Void, Void, i>
{
    private static final String TAG;
    private final d GA;
    private final h GB;
    private final c GC;
    private final a GD;
    private final BitmapFactory$Options GF;
    private i GG;
    private final g Gz;
    
    static {
        TAG = b.class.getSimpleName();
    }
    
    public b(final g gz, final d ga, final a gd) {
        this.GF = new BitmapFactory$Options();
        this.GG = null;
        this.Gz = gz;
        this.GA = ga;
        this.GB = null;
        this.GC = null;
        this.GD = gd;
    }
    
    private Bitmap a(final ParcelFileDescriptor parcelFileDescriptor, final InputStream inputStream) {
        if (parcelFileDescriptor != null) {
            return BitmapFactory.decodeFileDescriptor(parcelFileDescriptor.getFileDescriptor(), (Rect)null, this.GF);
        }
        return BitmapFactory.decodeStream(inputStream, (Rect)null, this.GF);
    }
    
    private InputStream a(InputStream inputStream) {
        com.android.a.a.a.beginSection("create stream");
        if (inputStream == null) {
            inputStream = this.Gz.fW();
        }
        else if (inputStream.markSupported()) {
            inputStream.reset();
        }
        else {
            while (true) {
                try {
                    inputStream.close();
                    inputStream = this.Gz.fW();
                }
                catch (IOException ex) {
                    continue;
                }
                break;
            }
        }
        com.android.a.a.a.endSection();
        return inputStream;
    }
    
    public final i fT() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokevirtual   com/android/a/b.isCancelled:()Z
        //     4: ifeq            13
        //     7: aconst_null    
        //     8: astore          5
        //    10: aload           5
        //    12: areturn        
        //    13: aconst_null    
        //    14: astore_1       
        //    15: aconst_null    
        //    16: astore_2       
        //    17: aload_0        
        //    18: getfield        com/android/a/b.GB:Lcom/android/a/h;
        //    21: ifnull          153
        //    24: ldc             "create fd"
        //    26: invokestatic    com/android/a/a/a.beginSection:(Ljava/lang/String;)V
        //    29: aload_0        
        //    30: getfield        com/android/a/b.GB:Lcom/android/a/h;
        //    33: invokeinterface com/android/a/h.fX:()Landroid/os/ParcelFileDescriptor;
        //    38: astore          134
        //    40: invokestatic    com/android/a/a/a.endSection:()V
        //    43: aload           134
        //    45: astore          7
        //    47: getstatic       android/os/Build$VERSION.SDK_INT:I
        //    50: bipush          16
        //    52: if_icmplt       268
        //    55: iconst_1       
        //    56: istore          20
        //    58: iload           20
        //    60: ifeq            87
        //    63: ldc             "poll for reusable bitmap"
        //    65: invokestatic    com/android/a/a/a.beginSection:(Ljava/lang/String;)V
        //    68: aload_0        
        //    69: aload_0        
        //    70: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //    73: invokeinterface com/android/a/a.poll:()Ljava/lang/Object;
        //    78: checkcast       Lcom/android/a/i;
        //    81: putfield        com/android/a/b.GG:Lcom/android/a/i;
        //    84: invokestatic    com/android/a/a/a.endSection:()V
        //    87: aload_0        
        //    88: invokevirtual   com/android/a/b.isCancelled:()Z
        //    91: istore          21
        //    93: iload           21
        //    95: ifeq            274
        //    98: aload           7
        //   100: ifnull          108
        //   103: aload           7
        //   105: invokevirtual   android/os/ParcelFileDescriptor.close:()V
        //   108: aload_2        
        //   109: ifnull          116
        //   112: aload_2        
        //   113: invokevirtual   java/io/InputStream.close:()V
        //   116: aload_0        
        //   117: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //   120: aload_0        
        //   121: getfield        com/android/a/b.Gz:Lcom/android/a/g;
        //   124: aconst_null    
        //   125: invokeinterface com/android/a/a.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   130: pop            
        //   131: aload_0        
        //   132: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //   135: ifnull          151
        //   138: aload_0        
        //   139: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //   142: aload_0        
        //   143: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //   146: invokeinterface com/android/a/a.N:(Ljava/lang/Object;)V
        //   151: aconst_null    
        //   152: areturn        
        //   153: aload_0        
        //   154: aconst_null    
        //   155: invokespecial   com/android/a/b.a:(Ljava/io/InputStream;)Ljava/io/InputStream;
        //   158: astore          16
        //   160: aload           16
        //   162: astore_2       
        //   163: aload_2        
        //   164: ifnonnull       212
        //   167: aload_2        
        //   168: ifnull          175
        //   171: aload_2        
        //   172: invokevirtual   java/io/InputStream.close:()V
        //   175: aload_0        
        //   176: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //   179: aload_0        
        //   180: getfield        com/android/a/b.Gz:Lcom/android/a/g;
        //   183: aconst_null    
        //   184: invokeinterface com/android/a/a.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   189: pop            
        //   190: aload_0        
        //   191: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //   194: ifnull          210
        //   197: aload_0        
        //   198: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //   201: aload_0        
        //   202: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //   205: invokeinterface com/android/a/a.N:(Ljava/lang/Object;)V
        //   210: aconst_null    
        //   211: areturn        
        //   212: aload_0        
        //   213: invokevirtual   com/android/a/b.isCancelled:()Z
        //   216: istore          18
        //   218: iload           18
        //   220: ifeq            2893
        //   223: aload_2        
        //   224: ifnull          231
        //   227: aload_2        
        //   228: invokevirtual   java/io/InputStream.close:()V
        //   231: aload_0        
        //   232: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //   235: aload_0        
        //   236: getfield        com/android/a/b.Gz:Lcom/android/a/g;
        //   239: aconst_null    
        //   240: invokeinterface com/android/a/a.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   245: pop            
        //   246: aload_0        
        //   247: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //   250: ifnull          266
        //   253: aload_0        
        //   254: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //   257: aload_0        
        //   258: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //   261: invokeinterface com/android/a/a.N:(Ljava/lang/Object;)V
        //   266: aconst_null    
        //   267: areturn        
        //   268: iconst_0       
        //   269: istore          20
        //   271: goto            58
        //   274: ldc             "get bytesize"
        //   276: invokestatic    com/android/a/a/a.beginSection:(Ljava/lang/String;)V
        //   279: aload           7
        //   281: ifnull          290
        //   284: aload           7
        //   286: invokevirtual   android/os/ParcelFileDescriptor.getStatSize:()J
        //   289: pop2           
        //   290: invokestatic    com/android/a/a/a.endSection:()V
        //   293: ldc             "get orientation"
        //   295: invokestatic    com/android/a/a/a.beginSection:(Ljava/lang/String;)V
        //   298: aload_0        
        //   299: getfield        com/android/a/b.Gz:Lcom/android/a/g;
        //   302: pop            
        //   303: invokestatic    com/android/a/a/a.endSection:()V
        //   306: aload_0        
        //   307: invokevirtual   com/android/a/b.isCancelled:()Z
        //   310: istore          25
        //   312: iload           25
        //   314: ifeq            372
        //   317: aload           7
        //   319: ifnull          327
        //   322: aload           7
        //   324: invokevirtual   android/os/ParcelFileDescriptor.close:()V
        //   327: aload_2        
        //   328: ifnull          335
        //   331: aload_2        
        //   332: invokevirtual   java/io/InputStream.close:()V
        //   335: aload_0        
        //   336: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //   339: aload_0        
        //   340: getfield        com/android/a/b.Gz:Lcom/android/a/g;
        //   343: aconst_null    
        //   344: invokeinterface com/android/a/a.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   349: pop            
        //   350: aload_0        
        //   351: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //   354: ifnull          370
        //   357: aload_0        
        //   358: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //   361: aload_0        
        //   362: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //   365: invokeinterface com/android/a/a.N:(Ljava/lang/Object;)V
        //   370: aconst_null    
        //   371: areturn        
        //   372: aload           7
        //   374: ifnonnull       512
        //   377: aload_0        
        //   378: aload_2        
        //   379: invokespecial   com/android/a/b.a:(Ljava/io/InputStream;)Ljava/io/InputStream;
        //   382: astore          116
        //   384: aload           116
        //   386: astore_2       
        //   387: aload_2        
        //   388: ifnonnull       446
        //   391: aload           7
        //   393: ifnull          401
        //   396: aload           7
        //   398: invokevirtual   android/os/ParcelFileDescriptor.close:()V
        //   401: aload_2        
        //   402: ifnull          409
        //   405: aload_2        
        //   406: invokevirtual   java/io/InputStream.close:()V
        //   409: aload_0        
        //   410: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //   413: aload_0        
        //   414: getfield        com/android/a/b.Gz:Lcom/android/a/g;
        //   417: aconst_null    
        //   418: invokeinterface com/android/a/a.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   423: pop            
        //   424: aload_0        
        //   425: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //   428: ifnull          444
        //   431: aload_0        
        //   432: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //   435: aload_0        
        //   436: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //   439: invokeinterface com/android/a/a.N:(Ljava/lang/Object;)V
        //   444: aconst_null    
        //   445: areturn        
        //   446: aload_0        
        //   447: invokevirtual   com/android/a/b.isCancelled:()Z
        //   450: istore          117
        //   452: iload           117
        //   454: ifeq            512
        //   457: aload           7
        //   459: ifnull          467
        //   462: aload           7
        //   464: invokevirtual   android/os/ParcelFileDescriptor.close:()V
        //   467: aload_2        
        //   468: ifnull          475
        //   471: aload_2        
        //   472: invokevirtual   java/io/InputStream.close:()V
        //   475: aload_0        
        //   476: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //   479: aload_0        
        //   480: getfield        com/android/a/b.Gz:Lcom/android/a/g;
        //   483: aconst_null    
        //   484: invokeinterface com/android/a/a.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   489: pop            
        //   490: aload_0        
        //   491: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //   494: ifnull          510
        //   497: aload_0        
        //   498: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //   501: aload_0        
        //   502: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //   505: invokeinterface com/android/a/a.N:(Ljava/lang/Object;)V
        //   510: aconst_null    
        //   511: areturn        
        //   512: ldc             "decodeBounds"
        //   514: invokestatic    com/android/a/a/a.beginSection:(Ljava/lang/String;)V
        //   517: aload_0        
        //   518: getfield        com/android/a/b.GF:Landroid/graphics/BitmapFactory$Options;
        //   521: iconst_1       
        //   522: putfield        android/graphics/BitmapFactory$Options.inJustDecodeBounds:Z
        //   525: aload           7
        //   527: ifnull          613
        //   530: aload           7
        //   532: invokevirtual   android/os/ParcelFileDescriptor.getFileDescriptor:()Ljava/io/FileDescriptor;
        //   535: aconst_null    
        //   536: aload_0        
        //   537: getfield        com/android/a/b.GF:Landroid/graphics/BitmapFactory$Options;
        //   540: invokestatic    android/graphics/BitmapFactory.decodeFileDescriptor:(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
        //   543: pop            
        //   544: invokestatic    com/android/a/a/a.endSection:()V
        //   547: aload_0        
        //   548: invokevirtual   com/android/a/b.isCancelled:()Z
        //   551: istore          27
        //   553: iload           27
        //   555: ifeq            692
        //   558: aload           7
        //   560: ifnull          568
        //   563: aload           7
        //   565: invokevirtual   android/os/ParcelFileDescriptor.close:()V
        //   568: aload_2        
        //   569: ifnull          576
        //   572: aload_2        
        //   573: invokevirtual   java/io/InputStream.close:()V
        //   576: aload_0        
        //   577: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //   580: aload_0        
        //   581: getfield        com/android/a/b.Gz:Lcom/android/a/g;
        //   584: aconst_null    
        //   585: invokeinterface com/android/a/a.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   590: pop            
        //   591: aload_0        
        //   592: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //   595: ifnull          611
        //   598: aload_0        
        //   599: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //   602: aload_0        
        //   603: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //   606: invokeinterface com/android/a/a.N:(Ljava/lang/Object;)V
        //   611: aconst_null    
        //   612: areturn        
        //   613: aload_2        
        //   614: aconst_null    
        //   615: aload_0        
        //   616: getfield        com/android/a/b.GF:Landroid/graphics/BitmapFactory$Options;
        //   619: invokestatic    android/graphics/BitmapFactory.decodeStream:(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
        //   622: pop            
        //   623: goto            544
        //   626: astore          19
        //   628: aload_2        
        //   629: astore          6
        //   631: aload           19
        //   633: astore          4
        //   635: aconst_null    
        //   636: astore          5
        //   638: aload           4
        //   640: invokevirtual   java/lang/Exception.printStackTrace:()V
        //   643: aload           7
        //   645: ifnull          653
        //   648: aload           7
        //   650: invokevirtual   android/os/ParcelFileDescriptor.close:()V
        //   653: aload           6
        //   655: ifnull          663
        //   658: aload           6
        //   660: invokevirtual   java/io/InputStream.close:()V
        //   663: aload_0        
        //   664: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //   667: aload_0        
        //   668: getfield        com/android/a/b.Gz:Lcom/android/a/g;
        //   671: aload           5
        //   673: invokeinterface com/android/a/a.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   678: pop            
        //   679: aload           5
        //   681: ifnull          2509
        //   684: aload           5
        //   686: invokevirtual   com/android/a/i.acquireReference:()V
        //   689: aload           5
        //   691: areturn        
        //   692: aload_0        
        //   693: getfield        com/android/a/b.GF:Landroid/graphics/BitmapFactory$Options;
        //   696: getfield        android/graphics/BitmapFactory$Options.outWidth:I
        //   699: istore          28
        //   701: aload_0        
        //   702: getfield        com/android/a/b.GF:Landroid/graphics/BitmapFactory$Options;
        //   705: getfield        android/graphics/BitmapFactory$Options.outHeight:I
        //   708: istore          29
        //   710: iload           28
        //   712: i2f            
        //   713: aload_0        
        //   714: getfield        com/android/a/b.GA:Lcom/android/a/d;
        //   717: getfield        com/android/a/d.GH:I
        //   720: i2f            
        //   721: fdiv           
        //   722: iload           29
        //   724: i2f            
        //   725: aload_0        
        //   726: getfield        com/android/a/b.GA:Lcom/android/a/d;
        //   729: getfield        com/android/a/d.GI:I
        //   732: i2f            
        //   733: fdiv           
        //   734: invokestatic    java/lang/Math.min:(FF)F
        //   737: fstore          30
        //   739: aload_0        
        //   740: getfield        com/android/a/b.GA:Lcom/android/a/d;
        //   743: getfield        com/android/a/d.GL:I
        //   746: tableswitch {
        //                2: 942
        //                3: 950
        //          default: 768
        //        }
        //   768: ldc2_w          2.0
        //   771: ldc2_w          0.5
        //   774: fload           30
        //   776: f2d            
        //   777: invokestatic    java/lang/Math.log:(D)D
        //   780: ldc2_w          2.0
        //   783: invokestatic    java/lang/Math.log:(D)D
        //   786: ddiv           
        //   787: dadd           
        //   788: d2i            
        //   789: i2d            
        //   790: invokestatic    java/lang/Math.pow:(DD)D
        //   793: d2i            
        //   794: istore          33
        //   796: aload_0        
        //   797: getfield        com/android/a/b.GF:Landroid/graphics/BitmapFactory$Options;
        //   800: iconst_1       
        //   801: iload           33
        //   803: invokestatic    java/lang/Math.max:(II)I
        //   806: putfield        android/graphics/BitmapFactory$Options.inSampleSize:I
        //   809: aload_0        
        //   810: getfield        com/android/a/b.GF:Landroid/graphics/BitmapFactory$Options;
        //   813: iconst_0       
        //   814: putfield        android/graphics/BitmapFactory$Options.inJustDecodeBounds:Z
        //   817: aload_0        
        //   818: getfield        com/android/a/b.GF:Landroid/graphics/BitmapFactory$Options;
        //   821: iconst_1       
        //   822: putfield        android/graphics/BitmapFactory$Options.inMutable:Z
        //   825: iload           20
        //   827: ifeq            980
        //   830: aload_0        
        //   831: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //   834: ifnonnull       966
        //   837: ldc             "create reusable bitmap"
        //   839: invokestatic    com/android/a/a/a.beginSection:(Ljava/lang/String;)V
        //   842: aload_0        
        //   843: new             Lcom/android/a/i;
        //   846: dup            
        //   847: aload_0        
        //   848: getfield        com/android/a/b.GA:Lcom/android/a/d;
        //   851: getfield        com/android/a/d.GH:I
        //   854: aload_0        
        //   855: getfield        com/android/a/b.GA:Lcom/android/a/d;
        //   858: getfield        com/android/a/d.GI:I
        //   861: getstatic       android/graphics/Bitmap$Config.ARGB_8888:Landroid/graphics/Bitmap$Config;
        //   864: invokestatic    android/graphics/Bitmap.createBitmap:(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
        //   867: invokespecial   com/android/a/i.<init>:(Landroid/graphics/Bitmap;)V
        //   870: putfield        com/android/a/b.GG:Lcom/android/a/i;
        //   873: invokestatic    com/android/a/a/a.endSection:()V
        //   876: aload_0        
        //   877: invokevirtual   com/android/a/b.isCancelled:()Z
        //   880: istore          108
        //   882: iload           108
        //   884: ifeq            966
        //   887: aload           7
        //   889: ifnull          897
        //   892: aload           7
        //   894: invokevirtual   android/os/ParcelFileDescriptor.close:()V
        //   897: aload_2        
        //   898: ifnull          905
        //   901: aload_2        
        //   902: invokevirtual   java/io/InputStream.close:()V
        //   905: aload_0        
        //   906: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //   909: aload_0        
        //   910: getfield        com/android/a/b.Gz:Lcom/android/a/g;
        //   913: aconst_null    
        //   914: invokeinterface com/android/a/a.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   919: pop            
        //   920: aload_0        
        //   921: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //   924: ifnull          940
        //   927: aload_0        
        //   928: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //   931: aload_0        
        //   932: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //   935: invokeinterface com/android/a/a.N:(Ljava/lang/Object;)V
        //   940: aconst_null    
        //   941: areturn        
        //   942: fload           30
        //   944: f2i            
        //   945: istore          33
        //   947: goto            796
        //   950: fload           30
        //   952: f2d            
        //   953: dstore          31
        //   955: dload           31
        //   957: invokestatic    java/lang/Math.ceil:(D)D
        //   960: d2i            
        //   961: istore          33
        //   963: goto            796
        //   966: aload_0        
        //   967: getfield        com/android/a/b.GF:Landroid/graphics/BitmapFactory$Options;
        //   970: aload_0        
        //   971: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //   974: getfield        com/android/a/i.GM:Landroid/graphics/Bitmap;
        //   977: putfield        android/graphics/BitmapFactory$Options.inBitmap:Landroid/graphics/Bitmap;
        //   980: aload_0        
        //   981: invokevirtual   com/android/a/b.isCancelled:()Z
        //   984: istore          34
        //   986: iload           34
        //   988: ifeq            1046
        //   991: aload           7
        //   993: ifnull          1001
        //   996: aload           7
        //   998: invokevirtual   android/os/ParcelFileDescriptor.close:()V
        //  1001: aload_2        
        //  1002: ifnull          1009
        //  1005: aload_2        
        //  1006: invokevirtual   java/io/InputStream.close:()V
        //  1009: aload_0        
        //  1010: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //  1013: aload_0        
        //  1014: getfield        com/android/a/b.Gz:Lcom/android/a/g;
        //  1017: aconst_null    
        //  1018: invokeinterface com/android/a/a.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //  1023: pop            
        //  1024: aload_0        
        //  1025: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //  1028: ifnull          1044
        //  1031: aload_0        
        //  1032: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //  1035: aload_0        
        //  1036: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //  1039: invokeinterface com/android/a/a.N:(Ljava/lang/Object;)V
        //  1044: aconst_null    
        //  1045: areturn        
        //  1046: aload           7
        //  1048: ifnonnull       1186
        //  1051: aload_0        
        //  1052: aload_2        
        //  1053: invokespecial   com/android/a/b.a:(Ljava/io/InputStream;)Ljava/io/InputStream;
        //  1056: astore          97
        //  1058: aload           97
        //  1060: astore_2       
        //  1061: aload_2        
        //  1062: ifnonnull       1120
        //  1065: aload           7
        //  1067: ifnull          1075
        //  1070: aload           7
        //  1072: invokevirtual   android/os/ParcelFileDescriptor.close:()V
        //  1075: aload_2        
        //  1076: ifnull          1083
        //  1079: aload_2        
        //  1080: invokevirtual   java/io/InputStream.close:()V
        //  1083: aload_0        
        //  1084: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //  1087: aload_0        
        //  1088: getfield        com/android/a/b.Gz:Lcom/android/a/g;
        //  1091: aconst_null    
        //  1092: invokeinterface com/android/a/a.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //  1097: pop            
        //  1098: aload_0        
        //  1099: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //  1102: ifnull          1118
        //  1105: aload_0        
        //  1106: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //  1109: aload_0        
        //  1110: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //  1113: invokeinterface com/android/a/a.N:(Ljava/lang/Object;)V
        //  1118: aconst_null    
        //  1119: areturn        
        //  1120: aload_0        
        //  1121: invokevirtual   com/android/a/b.isCancelled:()Z
        //  1124: istore          98
        //  1126: iload           98
        //  1128: ifeq            1186
        //  1131: aload           7
        //  1133: ifnull          1141
        //  1136: aload           7
        //  1138: invokevirtual   android/os/ParcelFileDescriptor.close:()V
        //  1141: aload_2        
        //  1142: ifnull          1149
        //  1145: aload_2        
        //  1146: invokevirtual   java/io/InputStream.close:()V
        //  1149: aload_0        
        //  1150: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //  1153: aload_0        
        //  1154: getfield        com/android/a/b.Gz:Lcom/android/a/g;
        //  1157: aconst_null    
        //  1158: invokeinterface com/android/a/a.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //  1163: pop            
        //  1164: aload_0        
        //  1165: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //  1168: ifnull          1184
        //  1171: aload_0        
        //  1172: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //  1175: aload_0        
        //  1176: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //  1179: invokeinterface com/android/a/a.N:(Ljava/lang/Object;)V
        //  1184: aconst_null    
        //  1185: areturn        
        //  1186: new             Landroid/graphics/Rect;
        //  1189: dup            
        //  1190: invokespecial   android/graphics/Rect.<init>:()V
        //  1193: astore          35
        //  1195: new             Ljava/lang/StringBuilder;
        //  1198: dup            
        //  1199: ldc             "decodeCropped"
        //  1201: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1204: aload_0        
        //  1205: getfield        com/android/a/b.GF:Landroid/graphics/BitmapFactory$Options;
        //  1208: getfield        android/graphics/BitmapFactory$Options.inSampleSize:I
        //  1211: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //  1214: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1217: invokestatic    com/android/a/a/a.beginSection:(Ljava/lang/String;)V
        //  1220: aload           7
        //  1222: ifnull          1329
        //  1225: aload           7
        //  1227: invokevirtual   android/os/ParcelFileDescriptor.getFileDescriptor:()Ljava/io/FileDescriptor;
        //  1230: iconst_1       
        //  1231: invokestatic    android/graphics/BitmapRegionDecoder.newInstance:(Ljava/io/FileDescriptor;Z)Landroid/graphics/BitmapRegionDecoder;
        //  1234: astore          73
        //  1236: aload_0        
        //  1237: invokevirtual   com/android/a/b.isCancelled:()Z
        //  1240: ifeq            1339
        //  1243: aconst_null    
        //  1244: astore          74
        //  1246: aload           73
        //  1248: invokevirtual   android/graphics/BitmapRegionDecoder.recycle:()V
        //  1251: invokestatic    com/android/a/a/a.endSection:()V
        //  1254: aload_2        
        //  1255: astore          6
        //  1257: aload           74
        //  1259: astore          38
        //  1261: aload_0        
        //  1262: invokevirtual   com/android/a/b.isCancelled:()Z
        //  1265: istore          40
        //  1267: iload           40
        //  1269: ifeq            1959
        //  1272: aload           7
        //  1274: ifnull          1282
        //  1277: aload           7
        //  1279: invokevirtual   android/os/ParcelFileDescriptor.close:()V
        //  1282: aload           6
        //  1284: ifnull          1292
        //  1287: aload           6
        //  1289: invokevirtual   java/io/InputStream.close:()V
        //  1292: aload_0        
        //  1293: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //  1296: aload_0        
        //  1297: getfield        com/android/a/b.Gz:Lcom/android/a/g;
        //  1300: aconst_null    
        //  1301: invokeinterface com/android/a/a.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //  1306: pop            
        //  1307: aload_0        
        //  1308: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //  1311: ifnull          1327
        //  1314: aload_0        
        //  1315: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //  1318: aload_0        
        //  1319: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //  1322: invokeinterface com/android/a/a.N:(Ljava/lang/Object;)V
        //  1327: aconst_null    
        //  1328: areturn        
        //  1329: aload_2        
        //  1330: iconst_1       
        //  1331: invokestatic    android/graphics/BitmapRegionDecoder.newInstance:(Ljava/io/InputStream;Z)Landroid/graphics/BitmapRegionDecoder;
        //  1334: astore          73
        //  1336: goto            1236
        //  1339: aload_0        
        //  1340: getfield        com/android/a/b.GA:Lcom/android/a/d;
        //  1343: getfield        com/android/a/d.GH:I
        //  1346: istore          75
        //  1348: aload_0        
        //  1349: getfield        com/android/a/b.GA:Lcom/android/a/d;
        //  1352: getfield        com/android/a/d.GI:I
        //  1355: istore          76
        //  1357: aload_0        
        //  1358: getfield        com/android/a/b.GA:Lcom/android/a/d;
        //  1361: getfield        com/android/a/d.GI:I
        //  1364: istore          77
        //  1366: aload_0        
        //  1367: getfield        com/android/a/b.GF:Landroid/graphics/BitmapFactory$Options;
        //  1370: getfield        android/graphics/BitmapFactory$Options.inSampleSize:I
        //  1373: istore          78
        //  1375: aload_0        
        //  1376: getfield        com/android/a/b.GA:Lcom/android/a/d;
        //  1379: getfield        com/android/a/d.GJ:F
        //  1382: fstore          79
        //  1384: aload_0        
        //  1385: getfield        com/android/a/b.GA:Lcom/android/a/d;
        //  1388: getfield        com/android/a/d.GK:F
        //  1391: fstore          80
        //  1393: iload           78
        //  1395: ifgt            2886
        //  1398: iconst_1       
        //  1399: istore          81
        //  1401: iload           28
        //  1403: i2f            
        //  1404: iload           75
        //  1406: i2f            
        //  1407: fdiv           
        //  1408: fstore          82
        //  1410: iload           29
        //  1412: i2f            
        //  1413: iload           76
        //  1415: i2f            
        //  1416: fdiv           
        //  1417: fstore          83
        //  1419: fload           83
        //  1421: fload           82
        //  1423: fcmpg          
        //  1424: ifge            1433
        //  1427: fload           83
        //  1429: fconst_1       
        //  1430: fdiv           
        //  1431: fstore          82
        //  1433: iload           81
        //  1435: i2f            
        //  1436: fload           82
        //  1438: invokestatic    java/lang/Math.min:(FF)F
        //  1441: fstore          84
        //  1443: fload           84
        //  1445: iload           75
        //  1447: i2f            
        //  1448: fmul           
        //  1449: invokestatic    java/lang/Math.round:(F)I
        //  1452: istore          85
        //  1454: fload           84
        //  1456: iload           76
        //  1458: i2f            
        //  1459: fmul           
        //  1460: invokestatic    java/lang/Math.round:(F)I
        //  1463: istore          86
        //  1465: fload           84
        //  1467: iload           77
        //  1469: i2f            
        //  1470: fmul           
        //  1471: invokestatic    java/lang/Math.round:(F)I
        //  1474: iload           29
        //  1476: invokestatic    java/lang/Math.min:(II)I
        //  1479: iconst_2       
        //  1480: idiv           
        //  1481: istore          87
        //  1483: aload           35
        //  1485: fload           79
        //  1487: iload           28
        //  1489: iload           85
        //  1491: isub           
        //  1492: i2f            
        //  1493: fmul           
        //  1494: f2i            
        //  1495: putfield        android/graphics/Rect.left:I
        //  1498: aload           35
        //  1500: iload           85
        //  1502: aload           35
        //  1504: getfield        android/graphics/Rect.left:I
        //  1507: iadd           
        //  1508: putfield        android/graphics/Rect.right:I
        //  1511: aload           35
        //  1513: iload           87
        //  1515: iload           29
        //  1517: iload           87
        //  1519: isub           
        //  1520: fload           80
        //  1522: iload           29
        //  1524: i2f            
        //  1525: fmul           
        //  1526: invokestatic    java/lang/Math.round:(F)I
        //  1529: invokestatic    java/lang/Math.min:(II)I
        //  1532: invokestatic    java/lang/Math.max:(II)I
        //  1535: iload           86
        //  1537: iconst_2       
        //  1538: idiv           
        //  1539: isub           
        //  1540: putfield        android/graphics/Rect.top:I
        //  1543: aload           35
        //  1545: iload           86
        //  1547: aload           35
        //  1549: getfield        android/graphics/Rect.top:I
        //  1552: iadd           
        //  1553: putfield        android/graphics/Rect.bottom:I
        //  1556: new             Landroid/graphics/Rect;
        //  1559: dup            
        //  1560: iconst_0       
        //  1561: iconst_0       
        //  1562: iload           28
        //  1564: iload           29
        //  1566: invokespecial   android/graphics/Rect.<init>:(IIII)V
        //  1569: astore          88
        //  1571: new             Landroid/graphics/Matrix;
        //  1574: dup            
        //  1575: invokespecial   android/graphics/Matrix.<init>:()V
        //  1578: astore          89
        //  1580: aload           89
        //  1582: fconst_0       
        //  1583: invokevirtual   android/graphics/Matrix.setRotate:(F)V
        //  1586: new             Landroid/graphics/RectF;
        //  1589: dup            
        //  1590: aload           88
        //  1592: invokespecial   android/graphics/RectF.<init>:(Landroid/graphics/Rect;)V
        //  1595: astore          90
        //  1597: new             Landroid/graphics/RectF;
        //  1600: dup            
        //  1601: aload           35
        //  1603: invokespecial   android/graphics/RectF.<init>:(Landroid/graphics/Rect;)V
        //  1606: astore          91
        //  1608: aload           89
        //  1610: aload           90
        //  1612: invokevirtual   android/graphics/Matrix.mapRect:(Landroid/graphics/RectF;)Z
        //  1615: pop            
        //  1616: aload           89
        //  1618: aload           91
        //  1620: invokevirtual   android/graphics/Matrix.mapRect:(Landroid/graphics/RectF;)Z
        //  1623: pop            
        //  1624: aload           89
        //  1626: invokevirtual   android/graphics/Matrix.reset:()V
        //  1629: aload           89
        //  1631: aload           90
        //  1633: getfield        android/graphics/RectF.left:F
        //  1636: fneg           
        //  1637: aload           90
        //  1639: getfield        android/graphics/RectF.top:F
        //  1642: fneg           
        //  1643: invokevirtual   android/graphics/Matrix.setTranslate:(FF)V
        //  1646: aload           89
        //  1648: aload           90
        //  1650: invokevirtual   android/graphics/Matrix.mapRect:(Landroid/graphics/RectF;)Z
        //  1653: pop            
        //  1654: aload           89
        //  1656: aload           91
        //  1658: invokevirtual   android/graphics/Matrix.mapRect:(Landroid/graphics/RectF;)Z
        //  1661: pop            
        //  1662: aload           88
        //  1664: aload           90
        //  1666: getfield        android/graphics/RectF.left:F
        //  1669: f2i            
        //  1670: aload           90
        //  1672: getfield        android/graphics/RectF.top:F
        //  1675: f2i            
        //  1676: aload           90
        //  1678: getfield        android/graphics/RectF.right:F
        //  1681: f2i            
        //  1682: aload           90
        //  1684: getfield        android/graphics/RectF.bottom:F
        //  1687: f2i            
        //  1688: invokevirtual   android/graphics/Rect.set:(IIII)V
        //  1691: aload           35
        //  1693: aload           91
        //  1695: getfield        android/graphics/RectF.left:F
        //  1698: f2i            
        //  1699: aload           91
        //  1701: getfield        android/graphics/RectF.top:F
        //  1704: f2i            
        //  1705: aload           91
        //  1707: getfield        android/graphics/RectF.right:F
        //  1710: f2i            
        //  1711: aload           91
        //  1713: getfield        android/graphics/RectF.bottom:F
        //  1716: f2i            
        //  1717: invokevirtual   android/graphics/Rect.set:(IIII)V
        //  1720: aload           73
        //  1722: aload           35
        //  1724: aload_0        
        //  1725: getfield        com/android/a/b.GF:Landroid/graphics/BitmapFactory$Options;
        //  1728: invokevirtual   android/graphics/BitmapRegionDecoder.decodeRegion:(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
        //  1731: astore          96
        //  1733: aload           96
        //  1735: astore          74
        //  1737: goto            1246
        //  1740: astore          37
        //  1742: aload           7
        //  1744: ifnonnull       1888
        //  1747: aload_0        
        //  1748: aload_2        
        //  1749: invokespecial   com/android/a/b.a:(Ljava/io/InputStream;)Ljava/io/InputStream;
        //  1752: astore          65
        //  1754: aload           65
        //  1756: astore_2       
        //  1757: aload_2        
        //  1758: ifnonnull       1819
        //  1761: invokestatic    com/android/a/a/a.endSection:()V
        //  1764: aload           7
        //  1766: ifnull          1774
        //  1769: aload           7
        //  1771: invokevirtual   android/os/ParcelFileDescriptor.close:()V
        //  1774: aload_2        
        //  1775: ifnull          1782
        //  1778: aload_2        
        //  1779: invokevirtual   java/io/InputStream.close:()V
        //  1782: aload_0        
        //  1783: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //  1786: aload_0        
        //  1787: getfield        com/android/a/b.Gz:Lcom/android/a/g;
        //  1790: aconst_null    
        //  1791: invokeinterface com/android/a/a.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //  1796: pop            
        //  1797: aload_0        
        //  1798: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //  1801: ifnull          1817
        //  1804: aload_0        
        //  1805: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //  1808: aload_0        
        //  1809: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //  1812: invokeinterface com/android/a/a.N:(Ljava/lang/Object;)V
        //  1817: aconst_null    
        //  1818: areturn        
        //  1819: aload_0        
        //  1820: invokevirtual   com/android/a/b.isCancelled:()Z
        //  1823: istore          66
        //  1825: iload           66
        //  1827: ifeq            1888
        //  1830: invokestatic    com/android/a/a/a.endSection:()V
        //  1833: aload           7
        //  1835: ifnull          1843
        //  1838: aload           7
        //  1840: invokevirtual   android/os/ParcelFileDescriptor.close:()V
        //  1843: aload_2        
        //  1844: ifnull          1851
        //  1847: aload_2        
        //  1848: invokevirtual   java/io/InputStream.close:()V
        //  1851: aload_0        
        //  1852: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //  1855: aload_0        
        //  1856: getfield        com/android/a/b.Gz:Lcom/android/a/g;
        //  1859: aconst_null    
        //  1860: invokeinterface com/android/a/a.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //  1865: pop            
        //  1866: aload_0        
        //  1867: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //  1870: ifnull          1886
        //  1873: aload_0        
        //  1874: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //  1877: aload_0        
        //  1878: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //  1881: invokeinterface com/android/a/a.N:(Ljava/lang/Object;)V
        //  1886: aconst_null    
        //  1887: areturn        
        //  1888: aload           37
        //  1890: invokevirtual   java/io/IOException.printStackTrace:()V
        //  1893: invokestatic    com/android/a/a/a.endSection:()V
        //  1896: aload_2        
        //  1897: astore          6
        //  1899: aconst_null    
        //  1900: astore          38
        //  1902: goto            1261
        //  1905: astore          36
        //  1907: invokestatic    com/android/a/a/a.endSection:()V
        //  1910: aload           36
        //  1912: athrow         
        //  1913: astore          9
        //  1915: aload           7
        //  1917: ifnull          1925
        //  1920: aload           7
        //  1922: invokevirtual   android/os/ParcelFileDescriptor.close:()V
        //  1925: aload_2        
        //  1926: ifnull          1933
        //  1929: aload_2        
        //  1930: invokevirtual   java/io/InputStream.close:()V
        //  1933: aload_0        
        //  1934: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //  1937: aload_0        
        //  1938: getfield        com/android/a/b.Gz:Lcom/android/a/g;
        //  1941: aload_1        
        //  1942: invokeinterface com/android/a/a.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //  1947: pop            
        //  1948: aload_1        
        //  1949: ifnull          2532
        //  1952: aload_1        
        //  1953: invokevirtual   com/android/a/i.acquireReference:()V
        //  1956: aload           9
        //  1958: athrow         
        //  1959: aload           38
        //  1961: ifnonnull       2222
        //  1964: aload_0        
        //  1965: invokevirtual   com/android/a/b.isCancelled:()Z
        //  1968: istore          52
        //  1970: iload           52
        //  1972: ifne            2222
        //  1975: new             Ljava/lang/StringBuilder;
        //  1978: dup            
        //  1979: ldc_w           "decode"
        //  1982: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1985: aload_0        
        //  1986: getfield        com/android/a/b.GF:Landroid/graphics/BitmapFactory$Options;
        //  1989: getfield        android/graphics/BitmapFactory$Options.inSampleSize:I
        //  1992: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //  1995: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1998: invokestatic    com/android/a/a/a.beginSection:(Ljava/lang/String;)V
        //  2001: aload_0        
        //  2002: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //  2005: ifnull          2034
        //  2008: aload_0        
        //  2009: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //  2012: aload_0        
        //  2013: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //  2016: invokeinterface com/android/a/a.N:(Ljava/lang/Object;)V
        //  2021: aload_0        
        //  2022: aconst_null    
        //  2023: putfield        com/android/a/b.GG:Lcom/android/a/i;
        //  2026: aload_0        
        //  2027: getfield        com/android/a/b.GF:Landroid/graphics/BitmapFactory$Options;
        //  2030: aconst_null    
        //  2031: putfield        android/graphics/BitmapFactory$Options.inBitmap:Landroid/graphics/Bitmap;
        //  2034: aload_0        
        //  2035: aload           7
        //  2037: aload           6
        //  2039: invokespecial   com/android/a/b.a:(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
        //  2042: astore          61
        //  2044: aload           61
        //  2046: astore          41
        //  2048: invokestatic    com/android/a/a/a.endSection:()V
        //  2051: aload_0        
        //  2052: invokevirtual   com/android/a/b.isCancelled:()Z
        //  2055: istore          56
        //  2057: iload           56
        //  2059: ifeq            2226
        //  2062: aload           7
        //  2064: ifnull          2072
        //  2067: aload           7
        //  2069: invokevirtual   android/os/ParcelFileDescriptor.close:()V
        //  2072: aload           6
        //  2074: ifnull          2082
        //  2077: aload           6
        //  2079: invokevirtual   java/io/InputStream.close:()V
        //  2082: aload_0        
        //  2083: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //  2086: aload_0        
        //  2087: getfield        com/android/a/b.Gz:Lcom/android/a/g;
        //  2090: aconst_null    
        //  2091: invokeinterface com/android/a/a.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //  2096: pop            
        //  2097: aload_0        
        //  2098: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //  2101: ifnull          2117
        //  2104: aload_0        
        //  2105: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //  2108: aload_0        
        //  2109: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //  2112: invokeinterface com/android/a/a.N:(Ljava/lang/Object;)V
        //  2117: aconst_null    
        //  2118: areturn        
        //  2119: astore          54
        //  2121: getstatic       com/android/a/b.TAG:Ljava/lang/String;
        //  2124: new             Ljava/lang/StringBuilder;
        //  2127: dup            
        //  2128: ldc_w           "decode failed: reason='"
        //  2131: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  2134: aload           54
        //  2136: invokevirtual   java/lang/IllegalArgumentException.getMessage:()Ljava/lang/String;
        //  2139: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2142: ldc_w           "' ss="
        //  2145: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //  2148: aload_0        
        //  2149: getfield        com/android/a/b.GF:Landroid/graphics/BitmapFactory$Options;
        //  2152: getfield        android/graphics/BitmapFactory$Options.inSampleSize:I
        //  2155: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //  2158: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  2161: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;)I
        //  2164: pop            
        //  2165: aload_0        
        //  2166: getfield        com/android/a/b.GF:Landroid/graphics/BitmapFactory$Options;
        //  2169: getfield        android/graphics/BitmapFactory$Options.inSampleSize:I
        //  2172: iconst_1       
        //  2173: if_icmple       2879
        //  2176: aload_0        
        //  2177: getfield        com/android/a/b.GF:Landroid/graphics/BitmapFactory$Options;
        //  2180: iconst_1       
        //  2181: putfield        android/graphics/BitmapFactory$Options.inSampleSize:I
        //  2184: aload_0        
        //  2185: aload           7
        //  2187: aload           6
        //  2189: invokespecial   com/android/a/b.a:(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
        //  2192: astore          60
        //  2194: aload           60
        //  2196: astore          41
        //  2198: invokestatic    com/android/a/a/a.endSection:()V
        //  2201: goto            2051
        //  2204: astore          53
        //  2206: invokestatic    com/android/a/a/a.endSection:()V
        //  2209: aload           53
        //  2211: athrow         
        //  2212: astore          9
        //  2214: aload           6
        //  2216: astore_2       
        //  2217: aconst_null    
        //  2218: astore_1       
        //  2219: goto            1915
        //  2222: aload           38
        //  2224: astore          41
        //  2226: aload           41
        //  2228: ifnonnull       2288
        //  2231: aload           7
        //  2233: ifnull          2241
        //  2236: aload           7
        //  2238: invokevirtual   android/os/ParcelFileDescriptor.close:()V
        //  2241: aload           6
        //  2243: ifnull          2251
        //  2246: aload           6
        //  2248: invokevirtual   java/io/InputStream.close:()V
        //  2251: aload_0        
        //  2252: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //  2255: aload_0        
        //  2256: getfield        com/android/a/b.Gz:Lcom/android/a/g;
        //  2259: aconst_null    
        //  2260: invokeinterface com/android/a/a.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //  2265: pop            
        //  2266: aload_0        
        //  2267: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //  2270: ifnull          2286
        //  2273: aload_0        
        //  2274: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //  2277: aload_0        
        //  2278: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //  2281: invokeinterface com/android/a/a.N:(Ljava/lang/Object;)V
        //  2286: aconst_null    
        //  2287: areturn        
        //  2288: aload_0        
        //  2289: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //  2292: ifnull          2447
        //  2295: aload_0        
        //  2296: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //  2299: astore          47
        //  2301: aload           35
        //  2303: invokevirtual   android/graphics/Rect.isEmpty:()Z
        //  2306: ifne            2416
        //  2309: aload           47
        //  2311: aload           35
        //  2313: getfield        android/graphics/Rect.right:I
        //  2316: aload           35
        //  2318: getfield        android/graphics/Rect.left:I
        //  2321: isub           
        //  2322: aload_0        
        //  2323: getfield        com/android/a/b.GF:Landroid/graphics/BitmapFactory$Options;
        //  2326: getfield        android/graphics/BitmapFactory$Options.inSampleSize:I
        //  2329: idiv           
        //  2330: invokevirtual   com/android/a/i.aC:(I)V
        //  2333: aload           47
        //  2335: aload           35
        //  2337: getfield        android/graphics/Rect.bottom:I
        //  2340: aload           35
        //  2342: getfield        android/graphics/Rect.top:I
        //  2345: isub           
        //  2346: aload_0        
        //  2347: getfield        com/android/a/b.GF:Landroid/graphics/BitmapFactory$Options;
        //  2350: getfield        android/graphics/BitmapFactory$Options.inSampleSize:I
        //  2353: idiv           
        //  2354: invokevirtual   com/android/a/i.aD:(I)V
        //  2357: aload           47
        //  2359: astore          5
        //  2361: aload           5
        //  2363: iconst_0       
        //  2364: invokevirtual   com/android/a/i.setOrientation:(I)V
        //  2367: aload           7
        //  2369: ifnull          2377
        //  2372: aload           7
        //  2374: invokevirtual   android/os/ParcelFileDescriptor.close:()V
        //  2377: aload           6
        //  2379: ifnull          2387
        //  2382: aload           6
        //  2384: invokevirtual   java/io/InputStream.close:()V
        //  2387: aload_0        
        //  2388: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //  2391: aload_0        
        //  2392: getfield        com/android/a/b.Gz:Lcom/android/a/g;
        //  2395: aload           5
        //  2397: invokeinterface com/android/a/a.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //  2402: pop            
        //  2403: aload           5
        //  2405: ifnull          2486
        //  2408: aload           5
        //  2410: invokevirtual   com/android/a/i.acquireReference:()V
        //  2413: aload           5
        //  2415: areturn        
        //  2416: aload           47
        //  2418: aload_0        
        //  2419: getfield        com/android/a/b.GF:Landroid/graphics/BitmapFactory$Options;
        //  2422: getfield        android/graphics/BitmapFactory$Options.outWidth:I
        //  2425: invokevirtual   com/android/a/i.aC:(I)V
        //  2428: aload           47
        //  2430: aload_0        
        //  2431: getfield        com/android/a/b.GF:Landroid/graphics/BitmapFactory$Options;
        //  2434: getfield        android/graphics/BitmapFactory$Options.outHeight:I
        //  2437: invokevirtual   com/android/a/i.aD:(I)V
        //  2440: aload           47
        //  2442: astore          5
        //  2444: goto            2361
        //  2447: new             Lcom/android/a/i;
        //  2450: dup            
        //  2451: aload           41
        //  2453: iconst_0       
        //  2454: invokespecial   com/android/a/i.<init>:(Landroid/graphics/Bitmap;Z)V
        //  2457: astore          42
        //  2459: aload           42
        //  2461: aload           41
        //  2463: invokevirtual   android/graphics/Bitmap.getWidth:()I
        //  2466: invokevirtual   com/android/a/i.aC:(I)V
        //  2469: aload           42
        //  2471: aload           41
        //  2473: invokevirtual   android/graphics/Bitmap.getHeight:()I
        //  2476: invokevirtual   com/android/a/i.aD:(I)V
        //  2479: aload           42
        //  2481: astore          5
        //  2483: goto            2361
        //  2486: aload_0        
        //  2487: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //  2490: ifnull          10
        //  2493: aload_0        
        //  2494: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //  2497: aload_0        
        //  2498: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //  2501: invokeinterface com/android/a/a.N:(Ljava/lang/Object;)V
        //  2506: aload           5
        //  2508: areturn        
        //  2509: aload_0        
        //  2510: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //  2513: ifnull          10
        //  2516: aload_0        
        //  2517: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //  2520: aload_0        
        //  2521: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //  2524: invokeinterface com/android/a/a.N:(Ljava/lang/Object;)V
        //  2529: aload           5
        //  2531: areturn        
        //  2532: aload_0        
        //  2533: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //  2536: ifnull          1956
        //  2539: aload_0        
        //  2540: getfield        com/android/a/b.GD:Lcom/android/a/a;
        //  2543: aload_0        
        //  2544: getfield        com/android/a/b.GG:Lcom/android/a/i;
        //  2547: invokeinterface com/android/a/a.N:(Ljava/lang/Object;)V
        //  2552: goto            1956
        //  2555: astore          133
        //  2557: goto            175
        //  2560: astore          131
        //  2562: goto            231
        //  2565: astore          129
        //  2567: goto            108
        //  2570: astore          128
        //  2572: goto            116
        //  2575: astore          126
        //  2577: goto            327
        //  2580: astore          125
        //  2582: goto            335
        //  2585: astore          123
        //  2587: goto            401
        //  2590: astore          122
        //  2592: goto            409
        //  2595: astore          120
        //  2597: goto            467
        //  2600: astore          119
        //  2602: goto            475
        //  2605: astore          114
        //  2607: goto            568
        //  2610: astore          113
        //  2612: goto            576
        //  2615: astore          111
        //  2617: goto            897
        //  2620: astore          110
        //  2622: goto            905
        //  2625: astore          107
        //  2627: goto            1001
        //  2630: astore          106
        //  2632: goto            1009
        //  2635: astore          104
        //  2637: goto            1075
        //  2640: astore          103
        //  2642: goto            1083
        //  2645: astore          101
        //  2647: goto            1141
        //  2650: astore          100
        //  2652: goto            1149
        //  2655: astore          72
        //  2657: goto            1774
        //  2660: astore          71
        //  2662: goto            1782
        //  2665: astore          69
        //  2667: goto            1843
        //  2670: astore          68
        //  2672: goto            1851
        //  2675: astore          64
        //  2677: goto            1282
        //  2680: astore          63
        //  2682: goto            1292
        //  2685: astore          59
        //  2687: goto            2072
        //  2690: astore          58
        //  2692: goto            2082
        //  2695: astore          51
        //  2697: goto            2241
        //  2700: astore          50
        //  2702: goto            2251
        //  2705: astore          46
        //  2707: goto            2377
        //  2710: astore          45
        //  2712: goto            2387
        //  2715: astore          15
        //  2717: goto            653
        //  2720: astore          14
        //  2722: goto            663
        //  2725: astore          12
        //  2727: goto            1925
        //  2730: astore          11
        //  2732: goto            1933
        //  2735: astore          9
        //  2737: aconst_null    
        //  2738: astore          7
        //  2740: aconst_null    
        //  2741: astore_1       
        //  2742: goto            1915
        //  2745: astore          9
        //  2747: aload           134
        //  2749: astore          7
        //  2751: aconst_null    
        //  2752: astore_2       
        //  2753: aconst_null    
        //  2754: astore_1       
        //  2755: goto            1915
        //  2758: astore          9
        //  2760: aload           47
        //  2762: astore_1       
        //  2763: aload           6
        //  2765: astore_2       
        //  2766: goto            1915
        //  2769: astore          9
        //  2771: aload           42
        //  2773: astore_1       
        //  2774: aload           6
        //  2776: astore_2       
        //  2777: goto            1915
        //  2780: astore          8
        //  2782: aload           5
        //  2784: astore_1       
        //  2785: aload           8
        //  2787: astore          9
        //  2789: aload           6
        //  2791: astore_2       
        //  2792: goto            1915
        //  2795: astore_3       
        //  2796: aload_3        
        //  2797: astore          4
        //  2799: aconst_null    
        //  2800: astore          5
        //  2802: aconst_null    
        //  2803: astore          6
        //  2805: aconst_null    
        //  2806: astore          7
        //  2808: goto            638
        //  2811: astore          135
        //  2813: aload           134
        //  2815: astore          7
        //  2817: aload           135
        //  2819: astore          4
        //  2821: aconst_null    
        //  2822: astore          5
        //  2824: aconst_null    
        //  2825: astore          6
        //  2827: goto            638
        //  2830: astore          17
        //  2832: aload_2        
        //  2833: astore          6
        //  2835: aload           17
        //  2837: astore          4
        //  2839: aconst_null    
        //  2840: astore          5
        //  2842: aconst_null    
        //  2843: astore          7
        //  2845: goto            638
        //  2848: astore          48
        //  2850: aload           47
        //  2852: astore          5
        //  2854: aload           48
        //  2856: astore          4
        //  2858: goto            638
        //  2861: astore          43
        //  2863: aload           42
        //  2865: astore          5
        //  2867: aload           43
        //  2869: astore          4
        //  2871: goto            638
        //  2874: astore          4
        //  2876: goto            638
        //  2879: aload           38
        //  2881: astore          41
        //  2883: goto            2198
        //  2886: iload           78
        //  2888: istore          81
        //  2890: goto            1401
        //  2893: aconst_null    
        //  2894: astore          7
        //  2896: goto            47
        //  2899: astore          39
        //  2901: aload           39
        //  2903: astore          4
        //  2905: aconst_null    
        //  2906: astore          5
        //  2908: goto            638
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                
        //  -----  -----  -----  -----  ------------------------------------
        //  17     40     2795   2811   Ljava/lang/Exception;
        //  17     40     2735   2745   Any
        //  40     43     2811   2830   Ljava/lang/Exception;
        //  40     43     2745   2758   Any
        //  47     55     626    638    Ljava/lang/Exception;
        //  47     55     1913   1915   Any
        //  63     87     626    638    Ljava/lang/Exception;
        //  63     87     1913   1915   Any
        //  87     93     626    638    Ljava/lang/Exception;
        //  87     93     1913   1915   Any
        //  103    108    2565   2570   Ljava/io/IOException;
        //  112    116    2570   2575   Ljava/io/IOException;
        //  153    160    2795   2811   Ljava/lang/Exception;
        //  153    160    2735   2745   Any
        //  171    175    2555   2560   Ljava/io/IOException;
        //  212    218    2830   2848   Ljava/lang/Exception;
        //  212    218    2735   2745   Any
        //  227    231    2560   2565   Ljava/io/IOException;
        //  274    279    626    638    Ljava/lang/Exception;
        //  274    279    1913   1915   Any
        //  284    290    626    638    Ljava/lang/Exception;
        //  284    290    1913   1915   Any
        //  290    312    626    638    Ljava/lang/Exception;
        //  290    312    1913   1915   Any
        //  322    327    2575   2580   Ljava/io/IOException;
        //  331    335    2580   2585   Ljava/io/IOException;
        //  377    384    626    638    Ljava/lang/Exception;
        //  377    384    1913   1915   Any
        //  396    401    2585   2590   Ljava/io/IOException;
        //  405    409    2590   2595   Ljava/io/IOException;
        //  446    452    626    638    Ljava/lang/Exception;
        //  446    452    1913   1915   Any
        //  462    467    2595   2600   Ljava/io/IOException;
        //  471    475    2600   2605   Ljava/io/IOException;
        //  512    525    626    638    Ljava/lang/Exception;
        //  512    525    1913   1915   Any
        //  530    544    626    638    Ljava/lang/Exception;
        //  530    544    1913   1915   Any
        //  544    553    626    638    Ljava/lang/Exception;
        //  544    553    1913   1915   Any
        //  563    568    2605   2610   Ljava/io/IOException;
        //  572    576    2610   2615   Ljava/io/IOException;
        //  613    623    626    638    Ljava/lang/Exception;
        //  613    623    1913   1915   Any
        //  638    643    2780   2795   Any
        //  648    653    2715   2720   Ljava/io/IOException;
        //  658    663    2720   2725   Ljava/io/IOException;
        //  692    768    626    638    Ljava/lang/Exception;
        //  692    768    1913   1915   Any
        //  768    796    626    638    Ljava/lang/Exception;
        //  768    796    1913   1915   Any
        //  796    825    626    638    Ljava/lang/Exception;
        //  796    825    1913   1915   Any
        //  830    882    626    638    Ljava/lang/Exception;
        //  830    882    1913   1915   Any
        //  892    897    2615   2620   Ljava/io/IOException;
        //  901    905    2620   2625   Ljava/io/IOException;
        //  955    963    626    638    Ljava/lang/Exception;
        //  955    963    1913   1915   Any
        //  966    980    626    638    Ljava/lang/Exception;
        //  966    980    1913   1915   Any
        //  980    986    626    638    Ljava/lang/Exception;
        //  980    986    1913   1915   Any
        //  996    1001   2625   2630   Ljava/io/IOException;
        //  1005   1009   2630   2635   Ljava/io/IOException;
        //  1051   1058   626    638    Ljava/lang/Exception;
        //  1051   1058   1913   1915   Any
        //  1070   1075   2635   2640   Ljava/io/IOException;
        //  1079   1083   2640   2645   Ljava/io/IOException;
        //  1120   1126   626    638    Ljava/lang/Exception;
        //  1120   1126   1913   1915   Any
        //  1136   1141   2645   2650   Ljava/io/IOException;
        //  1145   1149   2650   2655   Ljava/io/IOException;
        //  1186   1195   626    638    Ljava/lang/Exception;
        //  1186   1195   1913   1915   Any
        //  1195   1220   1740   2675   Ljava/io/IOException;
        //  1195   1220   1905   1913   Any
        //  1225   1236   1740   2675   Ljava/io/IOException;
        //  1225   1236   1905   1913   Any
        //  1236   1243   1740   2675   Ljava/io/IOException;
        //  1236   1243   1905   1913   Any
        //  1246   1251   1740   2675   Ljava/io/IOException;
        //  1246   1251   1905   1913   Any
        //  1251   1254   626    638    Ljava/lang/Exception;
        //  1251   1254   1913   1915   Any
        //  1261   1267   2899   2911   Ljava/lang/Exception;
        //  1261   1267   2212   2222   Any
        //  1277   1282   2675   2680   Ljava/io/IOException;
        //  1287   1292   2680   2685   Ljava/io/IOException;
        //  1329   1336   1740   2675   Ljava/io/IOException;
        //  1329   1336   1905   1913   Any
        //  1339   1393   1740   2675   Ljava/io/IOException;
        //  1339   1393   1905   1913   Any
        //  1401   1419   1740   2675   Ljava/io/IOException;
        //  1401   1419   1905   1913   Any
        //  1427   1433   1740   2675   Ljava/io/IOException;
        //  1427   1433   1905   1913   Any
        //  1433   1733   1740   2675   Ljava/io/IOException;
        //  1433   1733   1905   1913   Any
        //  1747   1754   1905   1913   Any
        //  1761   1764   626    638    Ljava/lang/Exception;
        //  1761   1764   1913   1915   Any
        //  1769   1774   2655   2660   Ljava/io/IOException;
        //  1778   1782   2660   2665   Ljava/io/IOException;
        //  1819   1825   1905   1913   Any
        //  1830   1833   626    638    Ljava/lang/Exception;
        //  1830   1833   1913   1915   Any
        //  1838   1843   2665   2670   Ljava/io/IOException;
        //  1847   1851   2670   2675   Ljava/io/IOException;
        //  1888   1893   1905   1913   Any
        //  1893   1896   626    638    Ljava/lang/Exception;
        //  1893   1896   1913   1915   Any
        //  1907   1913   626    638    Ljava/lang/Exception;
        //  1907   1913   1913   1915   Any
        //  1920   1925   2725   2730   Ljava/io/IOException;
        //  1929   1933   2730   2735   Ljava/io/IOException;
        //  1964   1970   2899   2911   Ljava/lang/Exception;
        //  1964   1970   2212   2222   Any
        //  1975   2034   2119   2204   Ljava/lang/IllegalArgumentException;
        //  1975   2034   2204   2212   Any
        //  2034   2044   2119   2204   Ljava/lang/IllegalArgumentException;
        //  2034   2044   2204   2212   Any
        //  2048   2051   2899   2911   Ljava/lang/Exception;
        //  2048   2051   2212   2222   Any
        //  2051   2057   2899   2911   Ljava/lang/Exception;
        //  2051   2057   2212   2222   Any
        //  2067   2072   2685   2690   Ljava/io/IOException;
        //  2077   2082   2690   2695   Ljava/io/IOException;
        //  2121   2194   2204   2212   Any
        //  2198   2201   2899   2911   Ljava/lang/Exception;
        //  2198   2201   2212   2222   Any
        //  2206   2212   2899   2911   Ljava/lang/Exception;
        //  2206   2212   2212   2222   Any
        //  2236   2241   2695   2700   Ljava/io/IOException;
        //  2246   2251   2700   2705   Ljava/io/IOException;
        //  2288   2301   2899   2911   Ljava/lang/Exception;
        //  2288   2301   2212   2222   Any
        //  2301   2357   2848   2861   Ljava/lang/Exception;
        //  2301   2357   2758   2769   Any
        //  2361   2367   2874   2879   Ljava/lang/Exception;
        //  2361   2367   2780   2795   Any
        //  2372   2377   2705   2710   Ljava/io/IOException;
        //  2382   2387   2710   2715   Ljava/io/IOException;
        //  2416   2440   2848   2861   Ljava/lang/Exception;
        //  2416   2440   2758   2769   Any
        //  2447   2459   2899   2911   Ljava/lang/Exception;
        //  2447   2459   2212   2222   Any
        //  2459   2479   2861   2874   Ljava/lang/Exception;
        //  2459   2479   2769   2780   Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 1336, Size: 1336
        //     at java.util.ArrayList.rangeCheck(Unknown Source)
        //     at java.util.ArrayList.get(Unknown Source)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3419)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3419)
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
}
