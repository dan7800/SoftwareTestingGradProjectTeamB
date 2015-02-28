package com.google.api.client.googleapis.media;

import java.util.*;
import com.google.api.client.http.*;
import com.google.api.client.util.*;
import java.io.*;

public final class MediaHttpUploader
{
    private MediaHttpUploader$UploadState cvC;
    private final b cvD;
    private final u cvE;
    private k cvF;
    private long cvG;
    private boolean cvH;
    private String cvI;
    private o cvJ;
    private t cvK;
    private InputStream cvL;
    @Deprecated
    private boolean cvM;
    private boolean cvN;
    private a cvO;
    String cvP;
    private long cvQ;
    private int cvR;
    private Byte cvS;
    private long cvT;
    private int cvU;
    private byte[] cvV;
    private boolean cvW;
    
    private boolean WU() {
        return this.WV() >= 0L;
    }
    
    private long WV() {
        if (!this.cvH) {
            this.cvG = this.cvD.getLength();
            this.cvH = true;
        }
        return this.cvG;
    }
    
    private void a(final MediaHttpUploader$UploadState cvC) {
        this.cvC = cvC;
        if (this.cvO != null) {
            final a cvO = this.cvO;
        }
    }
    
    private w b(final j j) {
        this.a(MediaHttpUploader$UploadState.cwa);
        k k = this.cvD;
        Label_0128: {
            if (this.cvF == null) {
                break Label_0128;
            }
            k = new F().E(Arrays.asList(this.cvF, this.cvD));
            j.o("uploadType", "multipart");
            while (true) {
                final t a = this.cvE.a(this.cvI, j, k);
                a.XD().putAll(this.cvJ);
                final w d = this.d(a);
                try {
                    if (this.WU()) {
                        this.cvQ = this.WV();
                    }
                    this.a(MediaHttpUploader$UploadState.cwb);
                    return d;
                    j.o("uploadType", "media");
                }
                finally {
                    d.disconnect();
                }
            }
        }
    }
    
    private w c(final j p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: aload_1        
        //     2: invokespecial   com/google/api/client/googleapis/media/MediaHttpUploader.d:(Lcom/google/api/client/http/j;)Lcom/google/api/client/http/w;
        //     5: astore_2       
        //     6: aload_2        
        //     7: invokevirtual   com/google/api/client/http/w.XO:()Z
        //    10: ifne            15
        //    13: aload_2        
        //    14: areturn        
        //    15: new             Lcom/google/api/client/http/j;
        //    18: dup            
        //    19: aload_2        
        //    20: invokevirtual   com/google/api/client/http/w.XD:()Lcom/google/api/client/http/o;
        //    23: invokevirtual   com/google/api/client/http/o.getLocation:()Ljava/lang/String;
        //    26: invokespecial   com/google/api/client/http/j.<init>:(Ljava/lang/String;)V
        //    29: astore_3       
        //    30: aload_2        
        //    31: invokevirtual   com/google/api/client/http/w.disconnect:()V
        //    34: aload_0        
        //    35: aload_0        
        //    36: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvD:Lcom/google/api/client/http/b;
        //    39: invokevirtual   com/google/api/client/http/b.getInputStream:()Ljava/io/InputStream;
        //    42: putfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvL:Ljava/io/InputStream;
        //    45: aload_0        
        //    46: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvL:Ljava/io/InputStream;
        //    49: invokevirtual   java/io/InputStream.markSupported:()Z
        //    52: ifne            77
        //    55: aload_0        
        //    56: invokespecial   com/google/api/client/googleapis/media/MediaHttpUploader.WU:()Z
        //    59: ifeq            77
        //    62: aload_0        
        //    63: new             Ljava/io/BufferedInputStream;
        //    66: dup            
        //    67: aload_0        
        //    68: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvL:Ljava/io/InputStream;
        //    71: invokespecial   java/io/BufferedInputStream.<init>:(Ljava/io/InputStream;)V
        //    74: putfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvL:Ljava/io/InputStream;
        //    77: aload_0        
        //    78: aload_0        
        //    79: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvE:Lcom/google/api/client/http/u;
        //    82: ldc             "PUT"
        //    84: aload_3        
        //    85: aconst_null    
        //    86: invokevirtual   com/google/api/client/http/u.a:(Ljava/lang/String;Lcom/google/api/client/http/j;Lcom/google/api/client/http/k;)Lcom/google/api/client/http/t;
        //    89: putfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvK:Lcom/google/api/client/http/t;
        //    92: aload_0        
        //    93: invokespecial   com/google/api/client/googleapis/media/MediaHttpUploader.WU:()Z
        //    96: ifeq            336
        //    99: aload_0        
        //   100: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvR:I
        //   103: i2l            
        //   104: aload_0        
        //   105: invokespecial   com/google/api/client/googleapis/media/MediaHttpUploader.WV:()J
        //   108: aload_0        
        //   109: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvQ:J
        //   112: lsub           
        //   113: invokestatic    java/lang/Math.min:(JJ)J
        //   116: l2i            
        //   117: istore          4
        //   119: aload_0        
        //   120: invokespecial   com/google/api/client/googleapis/media/MediaHttpUploader.WU:()Z
        //   123: ifeq            345
        //   126: aload_0        
        //   127: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvL:Ljava/io/InputStream;
        //   130: iload           4
        //   132: invokevirtual   java/io/InputStream.mark:(I)V
        //   135: aload_0        
        //   136: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvL:Ljava/io/InputStream;
        //   139: iload           4
        //   141: i2l            
        //   142: invokestatic    com/google/api/client/util/h.a:(Ljava/io/InputStream;J)Ljava/io/InputStream;
        //   145: astore          28
        //   147: new             Lcom/google/api/client/http/C;
        //   150: dup            
        //   151: aload_0        
        //   152: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvD:Lcom/google/api/client/http/b;
        //   155: invokevirtual   com/google/api/client/http/b.getType:()Ljava/lang/String;
        //   158: aload           28
        //   160: invokespecial   com/google/api/client/http/C.<init>:(Ljava/lang/String;Ljava/io/InputStream;)V
        //   163: invokevirtual   com/google/api/client/http/C.XU:()Lcom/google/api/client/http/C;
        //   166: iload           4
        //   168: i2l            
        //   169: invokevirtual   com/google/api/client/http/C.be:(J)Lcom/google/api/client/http/C;
        //   172: iconst_0       
        //   173: invokevirtual   com/google/api/client/http/C.co:(Z)Lcom/google/api/client/http/C;
        //   176: astore          8
        //   178: aload_0        
        //   179: aload_0        
        //   180: invokespecial   com/google/api/client/googleapis/media/MediaHttpUploader.WV:()J
        //   183: invokestatic    java/lang/String.valueOf:(J)Ljava/lang/String;
        //   186: putfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvP:Ljava/lang/String;
        //   189: aload_0        
        //   190: iload           4
        //   192: putfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvU:I
        //   195: aload_0        
        //   196: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvK:Lcom/google/api/client/http/t;
        //   199: aload           8
        //   201: invokevirtual   com/google/api/client/http/t.b:(Lcom/google/api/client/http/k;)Lcom/google/api/client/http/t;
        //   204: pop            
        //   205: iload           4
        //   207: ifne            610
        //   210: aload_0        
        //   211: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvK:Lcom/google/api/client/http/t;
        //   214: invokevirtual   com/google/api/client/http/t.XD:()Lcom/google/api/client/http/o;
        //   217: ldc             "bytes */0"
        //   219: invokevirtual   com/google/api/client/http/o.hj:(Ljava/lang/String;)Lcom/google/api/client/http/o;
        //   222: pop            
        //   223: aload_0        
        //   224: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvM:Z
        //   227: ifeq            676
        //   230: aload_0        
        //   231: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvK:Lcom/google/api/client/http/t;
        //   234: new             Lcom/google/api/client/googleapis/media/c;
        //   237: dup            
        //   238: aload_0        
        //   239: invokespecial   com/google/api/client/googleapis/media/c.<init>:(Lcom/google/api/client/googleapis/media/MediaHttpUploader;)V
        //   242: invokevirtual   com/google/api/client/http/t.a:(Lcom/google/api/client/http/c;)Lcom/google/api/client/http/t;
        //   245: pop            
        //   246: aload_0        
        //   247: invokespecial   com/google/api/client/googleapis/media/MediaHttpUploader.WU:()Z
        //   250: ifne            275
        //   253: aload_0        
        //   254: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvW:Z
        //   257: ifne            275
        //   260: aload_0        
        //   261: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvK:Lcom/google/api/client/http/t;
        //   264: new             Lcom/google/api/client/http/h;
        //   267: dup            
        //   268: invokespecial   com/google/api/client/http/h.<init>:()V
        //   271: invokevirtual   com/google/api/client/http/t.a:(Lcom/google/api/client/http/l;)Lcom/google/api/client/http/t;
        //   274: pop            
        //   275: aload_0        
        //   276: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvK:Lcom/google/api/client/http/t;
        //   279: invokestatic    com/google/api/client/googleapis/media/MediaHttpUploader.c:(Lcom/google/api/client/http/t;)Lcom/google/api/client/http/w;
        //   282: astore          12
        //   284: aload           12
        //   286: invokevirtual   com/google/api/client/http/w.XO:()Z
        //   289: ifeq            692
        //   292: aload_0        
        //   293: aload_0        
        //   294: invokespecial   com/google/api/client/googleapis/media/MediaHttpUploader.WV:()J
        //   297: putfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvQ:J
        //   300: aload_0        
        //   301: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvD:Lcom/google/api/client/http/b;
        //   304: invokevirtual   com/google/api/client/http/b.Xl:()Z
        //   307: ifeq            317
        //   310: aload_0        
        //   311: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvL:Ljava/io/InputStream;
        //   314: invokevirtual   java/io/InputStream.close:()V
        //   317: aload_0        
        //   318: getstatic       com/google/api/client/googleapis/media/MediaHttpUploader$UploadState.cwb:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;
        //   321: invokespecial   com/google/api/client/googleapis/media/MediaHttpUploader.a:(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V
        //   324: aload           12
        //   326: areturn        
        //   327: astore          29
        //   329: aload_2        
        //   330: invokevirtual   com/google/api/client/http/w.disconnect:()V
        //   333: aload           29
        //   335: athrow         
        //   336: aload_0        
        //   337: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvR:I
        //   340: istore          4
        //   342: goto            119
        //   345: aload_0        
        //   346: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvV:[B
        //   349: ifnonnull       529
        //   352: aload_0        
        //   353: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvS:Ljava/lang/Byte;
        //   356: ifnonnull       522
        //   359: iload           4
        //   361: iconst_1       
        //   362: iadd           
        //   363: istore          27
        //   365: aload_0        
        //   366: iload           4
        //   368: iconst_1       
        //   369: iadd           
        //   370: newarray        B
        //   372: putfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvV:[B
        //   375: aload_0        
        //   376: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvS:Ljava/lang/Byte;
        //   379: ifnull          908
        //   382: aload_0        
        //   383: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvV:[B
        //   386: iconst_0       
        //   387: aload_0        
        //   388: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvS:Ljava/lang/Byte;
        //   391: invokevirtual   java/lang/Byte.byteValue:()B
        //   394: bastore        
        //   395: iload           27
        //   397: istore          6
        //   399: iconst_0       
        //   400: istore          5
        //   402: aload_0        
        //   403: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvL:Ljava/io/InputStream;
        //   406: aload_0        
        //   407: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvV:[B
        //   410: iload           4
        //   412: iconst_1       
        //   413: iadd           
        //   414: iload           6
        //   416: isub           
        //   417: iload           6
        //   419: invokestatic    com/google/api/client/util/h.a:(Ljava/io/InputStream;[BII)I
        //   422: istore          7
        //   424: iload           7
        //   426: iload           6
        //   428: if_icmpge       593
        //   431: iload           5
        //   433: iconst_0       
        //   434: iload           7
        //   436: invokestatic    java/lang/Math.max:(II)I
        //   439: iadd           
        //   440: istore          4
        //   442: aload_0        
        //   443: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvS:Ljava/lang/Byte;
        //   446: ifnull          457
        //   449: iinc            4, 1
        //   452: aload_0        
        //   453: aconst_null    
        //   454: putfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvS:Ljava/lang/Byte;
        //   457: aload_0        
        //   458: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvP:Ljava/lang/String;
        //   461: ldc_w           "*"
        //   464: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   467: ifeq            485
        //   470: aload_0        
        //   471: aload_0        
        //   472: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvQ:J
        //   475: iload           4
        //   477: i2l            
        //   478: ladd           
        //   479: invokestatic    java/lang/String.valueOf:(J)Ljava/lang/String;
        //   482: putfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvP:Ljava/lang/String;
        //   485: new             Lcom/google/api/client/http/d;
        //   488: dup            
        //   489: aload_0        
        //   490: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvD:Lcom/google/api/client/http/b;
        //   493: invokevirtual   com/google/api/client/http/b.getType:()Ljava/lang/String;
        //   496: aload_0        
        //   497: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvV:[B
        //   500: iload           4
        //   502: invokespecial   com/google/api/client/http/d.<init>:(Ljava/lang/String;[BI)V
        //   505: astore          8
        //   507: aload_0        
        //   508: aload_0        
        //   509: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvQ:J
        //   512: iload           4
        //   514: i2l            
        //   515: ladd           
        //   516: putfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvT:J
        //   519: goto            189
        //   522: iload           4
        //   524: istore          27
        //   526: goto            365
        //   529: aload_0        
        //   530: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvT:J
        //   533: aload_0        
        //   534: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvQ:J
        //   537: lsub           
        //   538: l2i            
        //   539: istore          5
        //   541: aload_0        
        //   542: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvV:[B
        //   545: aload_0        
        //   546: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvU:I
        //   549: iload           5
        //   551: isub           
        //   552: aload_0        
        //   553: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvV:[B
        //   556: iconst_0       
        //   557: iload           5
        //   559: invokestatic    java/lang/System.arraycopy:(Ljava/lang/Object;ILjava/lang/Object;II)V
        //   562: aload_0        
        //   563: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvS:Ljava/lang/Byte;
        //   566: ifnull          583
        //   569: aload_0        
        //   570: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvV:[B
        //   573: iload           5
        //   575: aload_0        
        //   576: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvS:Ljava/lang/Byte;
        //   579: invokevirtual   java/lang/Byte.byteValue:()B
        //   582: bastore        
        //   583: iload           4
        //   585: iload           5
        //   587: isub           
        //   588: istore          6
        //   590: goto            402
        //   593: aload_0        
        //   594: aload_0        
        //   595: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvV:[B
        //   598: iload           4
        //   600: baload         
        //   601: invokestatic    java/lang/Byte.valueOf:(B)Ljava/lang/Byte;
        //   604: putfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvS:Ljava/lang/Byte;
        //   607: goto            485
        //   610: aload_0        
        //   611: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvK:Lcom/google/api/client/http/t;
        //   614: invokevirtual   com/google/api/client/http/t.XD:()Lcom/google/api/client/http/o;
        //   617: new             Ljava/lang/StringBuilder;
        //   620: dup            
        //   621: ldc_w           "bytes "
        //   624: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   627: aload_0        
        //   628: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvQ:J
        //   631: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
        //   634: ldc_w           "-"
        //   637: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   640: aload_0        
        //   641: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvQ:J
        //   644: iload           4
        //   646: i2l            
        //   647: ladd           
        //   648: lconst_1       
        //   649: lsub           
        //   650: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
        //   653: ldc_w           "/"
        //   656: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   659: aload_0        
        //   660: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvP:Ljava/lang/String;
        //   663: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   666: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   669: invokevirtual   com/google/api/client/http/o.hj:(Ljava/lang/String;)Lcom/google/api/client/http/o;
        //   672: pop            
        //   673: goto            223
        //   676: new             Lcom/google/api/client/googleapis/media/b;
        //   679: dup            
        //   680: aload_0        
        //   681: aload_0        
        //   682: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvK:Lcom/google/api/client/http/t;
        //   685: invokespecial   com/google/api/client/googleapis/media/b.<init>:(Lcom/google/api/client/googleapis/media/MediaHttpUploader;Lcom/google/api/client/http/t;)V
        //   688: pop            
        //   689: goto            246
        //   692: aload           12
        //   694: invokevirtual   com/google/api/client/http/w.getStatusCode:()I
        //   697: sipush          308
        //   700: if_icmpeq       706
        //   703: aload           12
        //   705: areturn        
        //   706: aload           12
        //   708: invokevirtual   com/google/api/client/http/w.XD:()Lcom/google/api/client/http/o;
        //   711: invokevirtual   com/google/api/client/http/o.getLocation:()Ljava/lang/String;
        //   714: astore          14
        //   716: aload           14
        //   718: ifnull          731
        //   721: new             Lcom/google/api/client/http/j;
        //   724: dup            
        //   725: aload           14
        //   727: invokespecial   com/google/api/client/http/j.<init>:(Ljava/lang/String;)V
        //   730: astore_3       
        //   731: aload           12
        //   733: invokevirtual   com/google/api/client/http/w.XD:()Lcom/google/api/client/http/o;
        //   736: invokevirtual   com/google/api/client/http/o.Xu:()Ljava/lang/String;
        //   739: astore          15
        //   741: aload           15
        //   743: ifnonnull       859
        //   746: lconst_0       
        //   747: lstore          16
        //   749: lload           16
        //   751: aload_0        
        //   752: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvQ:J
        //   755: lsub           
        //   756: lstore          18
        //   758: lload           18
        //   760: lconst_0       
        //   761: lcmp           
        //   762: iflt            918
        //   765: lload           18
        //   767: aload_0        
        //   768: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvU:I
        //   771: i2l            
        //   772: lcmp           
        //   773: ifgt            918
        //   776: iconst_1       
        //   777: istore          20
        //   779: iload           20
        //   781: invokestatic    com/google/api/client/util/H.cq:(Z)V
        //   784: aload_0        
        //   785: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvU:I
        //   788: i2l            
        //   789: lload           18
        //   791: lsub           
        //   792: lstore          21
        //   794: aload_0        
        //   795: invokespecial   com/google/api/client/googleapis/media/MediaHttpUploader.WU:()Z
        //   798: ifeq            883
        //   801: lload           21
        //   803: lconst_0       
        //   804: lcmp           
        //   805: ifle            838
        //   808: aload_0        
        //   809: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvL:Ljava/io/InputStream;
        //   812: invokevirtual   java/io/InputStream.reset:()V
        //   815: lload           18
        //   817: aload_0        
        //   818: getfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvL:Ljava/io/InputStream;
        //   821: lload           18
        //   823: invokevirtual   java/io/InputStream.skip:(J)J
        //   826: lcmp           
        //   827: ifne            924
        //   830: iconst_1       
        //   831: istore          23
        //   833: iload           23
        //   835: invokestatic    com/google/api/client/util/H.cq:(Z)V
        //   838: aload_0        
        //   839: lload           16
        //   841: putfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvQ:J
        //   844: aload_0        
        //   845: getstatic       com/google/api/client/googleapis/media/MediaHttpUploader$UploadState.cwa:Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;
        //   848: invokespecial   com/google/api/client/googleapis/media/MediaHttpUploader.a:(Lcom/google/api/client/googleapis/media/MediaHttpUploader$UploadState;)V
        //   851: aload           12
        //   853: invokevirtual   com/google/api/client/http/w.disconnect:()V
        //   856: goto            77
        //   859: lconst_1       
        //   860: aload           15
        //   862: iconst_1       
        //   863: aload           15
        //   865: bipush          45
        //   867: invokevirtual   java/lang/String.indexOf:(I)I
        //   870: iadd           
        //   871: invokevirtual   java/lang/String.substring:(I)Ljava/lang/String;
        //   874: invokestatic    java/lang/Long.parseLong:(Ljava/lang/String;)J
        //   877: ladd           
        //   878: lstore          16
        //   880: goto            749
        //   883: lload           21
        //   885: lconst_0       
        //   886: lcmp           
        //   887: ifne            838
        //   890: aload_0        
        //   891: aconst_null    
        //   892: putfield        com/google/api/client/googleapis/media/MediaHttpUploader.cvV:[B
        //   895: goto            838
        //   898: astore          13
        //   900: aload           12
        //   902: invokevirtual   com/google/api/client/http/w.disconnect:()V
        //   905: aload           13
        //   907: athrow         
        //   908: iload           27
        //   910: istore          6
        //   912: iconst_0       
        //   913: istore          5
        //   915: goto            402
        //   918: iconst_0       
        //   919: istore          20
        //   921: goto            779
        //   924: iconst_0       
        //   925: istore          23
        //   927: goto            833
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  15     30     327    336    Any
        //  284    317    898    908    Any
        //  317    324    898    908    Any
        //  692    703    898    908    Any
        //  706    716    898    908    Any
        //  721    731    898    908    Any
        //  731    741    898    908    Any
        //  749    758    898    908    Any
        //  765    776    898    908    Any
        //  779    801    898    908    Any
        //  808    830    898    908    Any
        //  833    838    898    908    Any
        //  838    851    898    908    Any
        //  859    880    898    908    Any
        //  890    895    898    908    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0317:
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
    
    private static w c(final t t) {
        new com.google.api.client.googleapis.b().b(t);
        t.XM();
        return t.XN();
    }
    
    private w d(final j j) {
        this.a(MediaHttpUploader$UploadState.cvY);
        j.o("uploadType", "resumable");
        Label_0120: {
            if (this.cvF != null) {
                break Label_0120;
            }
            k cvF = new e();
            while (true) {
                final t a = this.cvE.a(this.cvI, j, cvF);
                this.cvJ.m("X-Upload-Content-Type", this.cvD.getType());
                if (this.WU()) {
                    this.cvJ.m("X-Upload-Content-Length", this.WV());
                }
                a.XD().putAll(this.cvJ);
                final w d = this.d(a);
                try {
                    this.a(MediaHttpUploader$UploadState.cvZ);
                    return d;
                    cvF = this.cvF;
                    continue;
                }
                finally {
                    d.disconnect();
                }
                break;
            }
        }
    }
    
    private w d(final t t) {
        if (this.cvM) {
            t.a(new f());
        }
        if (!this.cvW && !(t.XA() instanceof e)) {
            t.a(new h());
        }
        return c(t);
    }
    
    final void WW() {
        H.i(this.cvK, "The current request should not be null");
        this.cvK.b(new e());
        final o xd = this.cvK.XD();
        final StringBuilder sb = new StringBuilder("bytes */");
        Serializable value;
        if (this.WU()) {
            value = this.WV();
        }
        else {
            value = "*";
        }
        xd.hj(sb.append(value).toString());
    }
    
    public final MediaHttpUploader a(final o cvJ) {
        this.cvJ = cvJ;
        return this;
    }
    
    public final w a(final j j) {
        H.cp(this.cvC == MediaHttpUploader$UploadState.cvX);
        if (this.cvN) {
            return this.b(j);
        }
        return this.c(j);
    }
    
    public final MediaHttpUploader cm(final boolean cvW) {
        this.cvW = cvW;
        return this;
    }
}
