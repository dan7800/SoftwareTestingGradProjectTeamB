package android.support.v4.d;

import android.net.*;
import android.os.*;
import android.print.*;
import android.content.*;
import android.graphics.*;
import android.util.*;
import java.io.*;

final class f extends PrintDocumentAdapter
{
    private PrintAttributes fL;
    AsyncTask<Uri, Boolean, Bitmap> fM;
    Bitmap fN;
    final /* synthetic */ String fO;
    final /* synthetic */ Uri fP;
    final /* synthetic */ i fQ;
    final /* synthetic */ int fR;
    final /* synthetic */ e fS;
    
    f(final e fs, final String fo, final Uri fp, final i i, final int fr) {
        this.fS = fs;
        this.fO = fo;
        this.fP = fp;
        this.fQ = null;
        this.fR = fr;
        this.fN = null;
    }
    
    private void aA() {
        synchronized (this.fS.fK) {
            if (this.fS.fJ != null) {
                this.fS.fJ.requestCancelDecode();
                this.fS.fJ = null;
            }
        }
    }
    
    public final void onFinish() {
        super.onFinish();
        this.aA();
        this.fM.cancel(true);
        if (this.fQ != null) {
            final i fq = this.fQ;
        }
    }
    
    public final void onLayout(final PrintAttributes printAttributes, final PrintAttributes printAttributes2, final CancellationSignal cancellationSignal, final PrintDocumentAdapter$LayoutResultCallback printDocumentAdapter$LayoutResultCallback, final Bundle bundle) {
        int n = 1;
        if (cancellationSignal.isCanceled()) {
            printDocumentAdapter$LayoutResultCallback.onLayoutCancelled();
            this.fL = printAttributes2;
            return;
        }
        if (this.fN != null) {
            final PrintDocumentInfo build = new PrintDocumentInfo$Builder(this.fO).setContentType(n).setPageCount(n).build();
            if (printAttributes2.equals((Object)printAttributes)) {
                n = 0;
            }
            printDocumentAdapter$LayoutResultCallback.onLayoutFinished(build, (boolean)(n != 0));
            return;
        }
        (this.fM = new g(this, cancellationSignal, printAttributes2, printAttributes, printDocumentAdapter$LayoutResultCallback)).execute((Object[])new Uri[0]);
        this.fL = printAttributes2;
    }
    
    public final void onWrite(final PageRange[] p0, final ParcelFileDescriptor p1, final CancellationSignal p2, final PrintDocumentAdapter$WriteResultCallback p3) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Landroid/print/pdf/PrintedPdfDocument;
        //     3: dup            
        //     4: aload_0        
        //     5: getfield        android/support/v4/d/f.fS:Landroid/support/v4/d/e;
        //     8: getfield        android/support/v4/d/e.mContext:Landroid/content/Context;
        //    11: aload_0        
        //    12: getfield        android/support/v4/d/f.fL:Landroid/print/PrintAttributes;
        //    15: invokespecial   android/print/pdf/PrintedPdfDocument.<init>:(Landroid/content/Context;Landroid/print/PrintAttributes;)V
        //    18: astore          5
        //    20: aload           5
        //    22: iconst_1       
        //    23: invokevirtual   android/print/pdf/PrintedPdfDocument.startPage:(I)Landroid/graphics/pdf/PdfDocument$Page;
        //    26: astore          8
        //    28: new             Landroid/graphics/RectF;
        //    31: dup            
        //    32: aload           8
        //    34: invokevirtual   android/graphics/pdf/PdfDocument$Page.getInfo:()Landroid/graphics/pdf/PdfDocument$PageInfo;
        //    37: invokevirtual   android/graphics/pdf/PdfDocument$PageInfo.getContentRect:()Landroid/graphics/Rect;
        //    40: invokespecial   android/graphics/RectF.<init>:(Landroid/graphics/Rect;)V
        //    43: astore          9
        //    45: aload_0        
        //    46: getfield        android/support/v4/d/f.fS:Landroid/support/v4/d/e;
        //    49: pop            
        //    50: aload_0        
        //    51: getfield        android/support/v4/d/f.fN:Landroid/graphics/Bitmap;
        //    54: invokevirtual   android/graphics/Bitmap.getWidth:()I
        //    57: istore          11
        //    59: aload_0        
        //    60: getfield        android/support/v4/d/f.fN:Landroid/graphics/Bitmap;
        //    63: invokevirtual   android/graphics/Bitmap.getHeight:()I
        //    66: istore          12
        //    68: aload_0        
        //    69: getfield        android/support/v4/d/f.fR:I
        //    72: istore          13
        //    74: new             Landroid/graphics/Matrix;
        //    77: dup            
        //    78: invokespecial   android/graphics/Matrix.<init>:()V
        //    81: astore          14
        //    83: aload           9
        //    85: invokevirtual   android/graphics/RectF.width:()F
        //    88: iload           11
        //    90: i2f            
        //    91: fdiv           
        //    92: fstore          15
        //    94: iload           13
        //    96: iconst_2       
        //    97: if_icmpne       232
        //   100: fload           15
        //   102: aload           9
        //   104: invokevirtual   android/graphics/RectF.height:()F
        //   107: iload           12
        //   109: i2f            
        //   110: fdiv           
        //   111: invokestatic    java/lang/Math.max:(FF)F
        //   114: fstore          16
        //   116: aload           14
        //   118: fload           16
        //   120: fload           16
        //   122: invokevirtual   android/graphics/Matrix.postScale:(FF)Z
        //   125: pop            
        //   126: aload           14
        //   128: aload           9
        //   130: invokevirtual   android/graphics/RectF.width:()F
        //   133: fload           16
        //   135: iload           11
        //   137: i2f            
        //   138: fmul           
        //   139: fsub           
        //   140: fconst_2       
        //   141: fdiv           
        //   142: aload           9
        //   144: invokevirtual   android/graphics/RectF.height:()F
        //   147: fload           16
        //   149: iload           12
        //   151: i2f            
        //   152: fmul           
        //   153: fsub           
        //   154: fconst_2       
        //   155: fdiv           
        //   156: invokevirtual   android/graphics/Matrix.postTranslate:(FF)Z
        //   159: pop            
        //   160: aload           8
        //   162: invokevirtual   android/graphics/pdf/PdfDocument$Page.getCanvas:()Landroid/graphics/Canvas;
        //   165: aload_0        
        //   166: getfield        android/support/v4/d/f.fN:Landroid/graphics/Bitmap;
        //   169: aload           14
        //   171: aconst_null    
        //   172: invokevirtual   android/graphics/Canvas.drawBitmap:(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
        //   175: aload           5
        //   177: aload           8
        //   179: invokevirtual   android/print/pdf/PrintedPdfDocument.finishPage:(Landroid/graphics/pdf/PdfDocument$Page;)V
        //   182: aload           5
        //   184: new             Ljava/io/FileOutputStream;
        //   187: dup            
        //   188: aload_2        
        //   189: invokevirtual   android/os/ParcelFileDescriptor.getFileDescriptor:()Ljava/io/FileDescriptor;
        //   192: invokespecial   java/io/FileOutputStream.<init>:(Ljava/io/FileDescriptor;)V
        //   195: invokevirtual   android/print/pdf/PrintedPdfDocument.writeTo:(Ljava/io/OutputStream;)V
        //   198: iconst_1       
        //   199: anewarray       Landroid/print/PageRange;
        //   202: astore          22
        //   204: aload           22
        //   206: iconst_0       
        //   207: getstatic       android/print/PageRange.ALL_PAGES:Landroid/print/PageRange;
        //   210: aastore        
        //   211: aload           4
        //   213: aload           22
        //   215: invokevirtual   android/print/PrintDocumentAdapter$WriteResultCallback.onWriteFinished:([Landroid/print/PageRange;)V
        //   218: aload           5
        //   220: invokevirtual   android/print/pdf/PrintedPdfDocument.close:()V
        //   223: aload_2        
        //   224: ifnull          231
        //   227: aload_2        
        //   228: invokevirtual   android/os/ParcelFileDescriptor.close:()V
        //   231: return         
        //   232: fload           15
        //   234: aload           9
        //   236: invokevirtual   android/graphics/RectF.height:()F
        //   239: iload           12
        //   241: i2f            
        //   242: fdiv           
        //   243: invokestatic    java/lang/Math.min:(FF)F
        //   246: fstore          16
        //   248: goto            116
        //   251: astore          19
        //   253: ldc             "PrintHelperKitkat"
        //   255: ldc             "Error writing printed content"
        //   257: aload           19
        //   259: invokestatic    android/util/Log.e:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
        //   262: pop            
        //   263: aload           4
        //   265: aconst_null    
        //   266: invokevirtual   android/print/PrintDocumentAdapter$WriteResultCallback.onWriteFailed:(Ljava/lang/CharSequence;)V
        //   269: goto            218
        //   272: astore          6
        //   274: aload           5
        //   276: invokevirtual   android/print/pdf/PrintedPdfDocument.close:()V
        //   279: aload_2        
        //   280: ifnull          287
        //   283: aload_2        
        //   284: invokevirtual   android/os/ParcelFileDescriptor.close:()V
        //   287: aload           6
        //   289: athrow         
        //   290: astore          21
        //   292: return         
        //   293: astore          7
        //   295: goto            287
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  20     94     272    290    Any
        //  100    116    272    290    Any
        //  116    182    272    290    Any
        //  182    218    251    272    Ljava/io/IOException;
        //  182    218    272    290    Any
        //  227    231    290    293    Ljava/io/IOException;
        //  232    248    272    290    Any
        //  253    269    272    290    Any
        //  283    287    293    298    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 147, Size: 147
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
