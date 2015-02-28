package com.android.mail.providers;

import android.app.*;
import com.android.mail.utils.*;
import java.io.*;
import java.util.*;
import android.net.*;
import com.google.common.collect.*;
import android.os.*;
import android.database.*;
import android.text.*;
import android.content.*;

public class EmlAttachmentProvider extends ContentProvider
{
    private static final UriMatcher azR;
    private static boolean azS;
    private static Uri azT;
    private static final String mW;
    private DownloadManager azU;
    private Map<Uri, List<Uri>> azV;
    private Map<Uri, Attachment> azW;
    
    static {
        mW = D.AU();
        azR = new UriMatcher(-1);
        EmlAttachmentProvider.azS = false;
    }
    
    private void a(final MatrixCursor matrixCursor, final Uri uri, final List<String> list) {
        final Attachment attachment = this.azW.get(uri);
        if (list != null && !list.isEmpty()) {
            final Iterator<String> iterator = list.iterator();
            while (iterator.hasNext()) {
                if (attachment.getContentType().startsWith(iterator.next())) {
                    a(matrixCursor, attachment);
                    break;
                }
            }
            return;
        }
        a(matrixCursor, attachment);
    }
    
    private static void a(final MatrixCursor matrixCursor, final Attachment attachment) {
        final MatrixCursor$RowBuilder add = matrixCursor.newRow().add((Object)attachment.getName()).add((Object)attachment.size).add((Object)attachment.uri).add((Object)attachment.getContentType()).add((Object)attachment.state).add((Object)attachment.ayN).add((Object)attachment.ayO).add((Object)attachment.ayP).add((Object)attachment.ayQ).add((Object)attachment.ayR).add((Object)attachment.ayS);
        int n;
        if (attachment.uz()) {
            n = 1;
        }
        else {
            n = 0;
        }
        add.add((Object)n).add((Object)attachment.type).add((Object)attachment.flags).add((Object)attachment.partId);
    }
    
    private void b(final File file) {
        if (file.isDirectory()) {
            final File[] listFiles = file.listFiles();
            for (int length = listFiles.length, i = 0; i < length; ++i) {
                this.b(listFiles[i]);
            }
        }
        file.delete();
    }
    
    private int c(final Uri p0, final ContentValues p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_2        
        //     1: ldc             "state"
        //     3: invokevirtual   android/content/ContentValues.getAsInteger:(Ljava/lang/String;)Ljava/lang/Integer;
        //     6: astore_3       
        //     7: aload_2        
        //     8: ldc             "destination"
        //    10: invokevirtual   android/content/ContentValues.getAsInteger:(Ljava/lang/String;)Ljava/lang/Integer;
        //    13: astore          4
        //    15: aload_3        
        //    16: ifnonnull       26
        //    19: aload           4
        //    21: ifnonnull       26
        //    24: iconst_0       
        //    25: ireturn        
        //    26: aload           4
        //    28: ifnull          77
        //    31: aload           4
        //    33: invokevirtual   java/lang/Integer.intValue:()I
        //    36: istore          5
        //    38: iload           5
        //    40: iconst_1       
        //    41: if_icmpne       83
        //    44: iconst_1       
        //    45: istore          6
        //    47: aload_0        
        //    48: getfield        com/android/mail/providers/EmlAttachmentProvider.azW:Ljava/util/Map;
        //    51: aload_1        
        //    52: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //    57: checkcast       Lcom/android/mail/providers/Attachment;
        //    60: astore          7
        //    62: iload           6
        //    64: ifeq            75
        //    67: aload           7
        //    69: invokevirtual   com/android/mail/providers/Attachment.uu:()Z
        //    72: ifeq            89
        //    75: iconst_0       
        //    76: ireturn        
        //    77: iconst_0       
        //    78: istore          5
        //    80: goto            38
        //    83: iconst_0       
        //    84: istore          6
        //    86: goto            47
        //    89: aload_0        
        //    90: aload_1        
        //    91: invokespecial   com/android/mail/providers/EmlAttachmentProvider.r:(Landroid/net/Uri;)Ljava/lang/String;
        //    94: astore          8
        //    96: aload           7
        //    98: iconst_1       
        //    99: putfield        com/android/mail/providers/Attachment.ayN:I
        //   102: aload_0        
        //   103: aload_1        
        //   104: invokespecial   com/android/mail/providers/EmlAttachmentProvider.r:(Landroid/net/Uri;)Ljava/lang/String;
        //   107: astore          9
        //   109: new             Ljava/io/FileInputStream;
        //   112: dup            
        //   113: aload           8
        //   115: invokespecial   java/io/FileInputStream.<init>:(Ljava/lang/String;)V
        //   118: astore          10
        //   120: new             Ljava/io/FileOutputStream;
        //   123: dup            
        //   124: aload           9
        //   126: invokespecial   java/io/FileOutputStream.<init>:(Ljava/lang/String;)V
        //   129: astore          11
        //   131: invokestatic    android/os/SystemClock.elapsedRealtime:()J
        //   134: lstore          22
        //   136: sipush          4096
        //   139: newarray        B
        //   141: astore          24
        //   143: iconst_0       
        //   144: istore          25
        //   146: aload           10
        //   148: aload           24
        //   150: invokevirtual   java/io/InputStream.read:([B)I
        //   153: istore          26
        //   155: iload           26
        //   157: iconst_m1      
        //   158: if_icmpeq       322
        //   161: aload           11
        //   163: aload           24
        //   165: iconst_0       
        //   166: iload           26
        //   168: invokevirtual   java/io/OutputStream.write:([BII)V
        //   171: iload           26
        //   173: iload           25
        //   175: iadd           
        //   176: istore          27
        //   178: invokestatic    android/os/SystemClock.elapsedRealtime:()J
        //   181: lload           22
        //   183: lsub           
        //   184: ldc2_w          3600000
        //   187: lcmp           
        //   188: ifle            315
        //   191: new             Ljava/io/IOException;
        //   194: dup            
        //   195: ldc             "Timed out copying attachment."
        //   197: invokespecial   java/io/IOException.<init>:(Ljava/lang/String;)V
        //   200: athrow         
        //   201: astore          17
        //   203: getstatic       com/android/mail/providers/EmlAttachmentProvider.mW:Ljava/lang/String;
        //   206: aload           17
        //   208: ldc             "Cannot write to file %s"
        //   210: iconst_1       
        //   211: anewarray       Ljava/lang/Object;
        //   214: dup            
        //   215: iconst_0       
        //   216: aload           9
        //   218: aastore        
        //   219: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   222: pop            
        //   223: new             Ljava/io/File;
        //   226: dup            
        //   227: aload           9
        //   229: invokespecial   java/io/File.<init>:(Ljava/lang/String;)V
        //   232: invokevirtual   java/io/File.delete:()Z
        //   235: pop            
        //   236: aload           10
        //   238: invokevirtual   java/io/InputStream.close:()V
        //   241: aload           11
        //   243: invokevirtual   java/io/OutputStream.close:()V
        //   246: aload_0        
        //   247: invokevirtual   com/android/mail/providers/EmlAttachmentProvider.getContext:()Landroid/content/Context;
        //   250: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //   253: aload_1        
        //   254: invokestatic    com/android/mail/providers/EmlAttachmentProvider.q:(Landroid/net/Uri;)Landroid/net/Uri;
        //   257: aconst_null    
        //   258: iconst_0       
        //   259: invokevirtual   android/content/ContentResolver.notifyChange:(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
        //   262: iconst_1       
        //   263: ireturn        
        //   264: astore          39
        //   266: getstatic       com/android/mail/providers/EmlAttachmentProvider.mW:Ljava/lang/String;
        //   269: ldc_w           "File not found for file %s"
        //   272: iconst_1       
        //   273: anewarray       Ljava/lang/Object;
        //   276: dup            
        //   277: iconst_0       
        //   278: aload           8
        //   280: aastore        
        //   281: invokestatic    com/android/mail/utils/E.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   284: pop            
        //   285: iconst_0       
        //   286: ireturn        
        //   287: astore          36
        //   289: getstatic       com/android/mail/providers/EmlAttachmentProvider.mW:Ljava/lang/String;
        //   292: ldc_w           "File not found for file %s"
        //   295: iconst_1       
        //   296: anewarray       Ljava/lang/Object;
        //   299: dup            
        //   300: iconst_0       
        //   301: aload           9
        //   303: aastore        
        //   304: invokestatic    com/android/mail/utils/E.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   307: pop            
        //   308: aload           10
        //   310: invokevirtual   java/io/InputStream.close:()V
        //   313: iconst_0       
        //   314: ireturn        
        //   315: iload           27
        //   317: istore          25
        //   319: goto            146
        //   322: aload           7
        //   324: invokevirtual   com/android/mail/providers/Attachment.getContentType:()Ljava/lang/String;
        //   327: invokestatic    com/android/mail/utils/I.cz:(Ljava/lang/String;)Z
        //   330: ifeq            359
        //   333: aload           7
        //   335: new             Ljava/lang/StringBuilder;
        //   338: dup            
        //   339: ldc_w           "file://"
        //   342: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   345: aload           9
        //   347: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   350: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   353: invokestatic    android/net/Uri.parse:(Ljava/lang/String;)Landroid/net/Uri;
        //   356: putfield        com/android/mail/providers/Attachment.ayP:Landroid/net/Uri;
        //   359: aload           7
        //   361: invokevirtual   com/android/mail/providers/Attachment.getName:()Ljava/lang/String;
        //   364: astore          33
        //   366: aload_0        
        //   367: getfield        com/android/mail/providers/EmlAttachmentProvider.azU:Landroid/app/DownloadManager;
        //   370: aload           7
        //   372: invokevirtual   com/android/mail/providers/Attachment.getName:()Ljava/lang/String;
        //   375: aload           33
        //   377: iconst_1       
        //   378: aload           7
        //   380: invokevirtual   com/android/mail/providers/Attachment.getContentType:()Ljava/lang/String;
        //   383: aload           9
        //   385: iload           25
        //   387: i2l            
        //   388: iconst_0       
        //   389: invokevirtual   android/app/DownloadManager.addCompletedDownload:(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J
        //   392: pop2           
        //   393: new             Landroid/content/Intent;
        //   396: dup            
        //   397: ldc_w           "android.intent.action.MEDIA_SCANNER_SCAN_FILE"
        //   400: invokespecial   android/content/Intent.<init>:(Ljava/lang/String;)V
        //   403: astore          30
        //   405: aload           30
        //   407: new             Ljava/lang/StringBuilder;
        //   410: dup            
        //   411: ldc_w           "file://"
        //   414: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   417: aload           9
        //   419: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   422: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   425: invokestatic    android/net/Uri.parse:(Ljava/lang/String;)Landroid/net/Uri;
        //   428: invokevirtual   android/content/Intent.setData:(Landroid/net/Uri;)Landroid/content/Intent;
        //   431: pop            
        //   432: aload_0        
        //   433: invokevirtual   com/android/mail/providers/EmlAttachmentProvider.getContext:()Landroid/content/Context;
        //   436: aload           30
        //   438: invokevirtual   android/content/Context.sendBroadcast:(Landroid/content/Intent;)V
        //   441: new             Ljava/io/File;
        //   444: dup            
        //   445: aload           8
        //   447: invokespecial   java/io/File.<init>:(Ljava/lang/String;)V
        //   450: invokevirtual   java/io/File.delete:()Z
        //   453: pop            
        //   454: goto            236
        //   457: astore          12
        //   459: aload           11
        //   461: astore          13
        //   463: aload           10
        //   465: astore          14
        //   467: aload           14
        //   469: ifnull          477
        //   472: aload           14
        //   474: invokevirtual   java/io/InputStream.close:()V
        //   477: aload           13
        //   479: ifnull          487
        //   482: aload           13
        //   484: invokevirtual   java/io/OutputStream.close:()V
        //   487: aload           12
        //   489: athrow         
        //   490: astore          28
        //   492: getstatic       com/android/mail/providers/EmlAttachmentProvider.mW:Ljava/lang/String;
        //   495: aload           28
        //   497: ldc_w           "Failed to save download to Downloads app."
        //   500: iconst_0       
        //   501: anewarray       Ljava/lang/Object;
        //   504: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   507: pop            
        //   508: goto            393
        //   511: astore          38
        //   513: goto            313
        //   516: astore          20
        //   518: goto            241
        //   521: astore          21
        //   523: goto            246
        //   526: astore          16
        //   528: goto            477
        //   531: astore          15
        //   533: goto            487
        //   536: astore          12
        //   538: aconst_null    
        //   539: astore          13
        //   541: aconst_null    
        //   542: astore          14
        //   544: goto            467
        //   547: astore          12
        //   549: aload           10
        //   551: astore          14
        //   553: aconst_null    
        //   554: astore          13
        //   556: goto            467
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                
        //  -----  -----  -----  -----  ------------------------------------
        //  109    120    264    287    Ljava/io/FileNotFoundException;
        //  109    120    536    547    Any
        //  120    131    287    315    Ljava/io/FileNotFoundException;
        //  120    131    547    559    Any
        //  131    143    201    236    Ljava/io/IOException;
        //  131    143    457    467    Any
        //  146    155    201    236    Ljava/io/IOException;
        //  146    155    457    467    Any
        //  161    171    201    236    Ljava/io/IOException;
        //  161    171    457    467    Any
        //  178    201    201    236    Ljava/io/IOException;
        //  178    201    457    467    Any
        //  203    236    457    467    Any
        //  236    241    516    521    Ljava/io/IOException;
        //  241    246    521    526    Ljava/io/IOException;
        //  266    285    536    547    Any
        //  289    308    547    559    Any
        //  308    313    511    516    Ljava/io/IOException;
        //  322    359    201    236    Ljava/io/IOException;
        //  322    359    457    467    Any
        //  359    393    490    511    Ljava/lang/IllegalArgumentException;
        //  359    393    201    236    Ljava/io/IOException;
        //  359    393    457    467    Any
        //  393    454    201    236    Ljava/io/IOException;
        //  393    454    457    467    Any
        //  472    477    526    531    Ljava/io/IOException;
        //  482    487    531    536    Ljava/io/IOException;
        //  492    508    201    236    Ljava/io/IOException;
        //  492    508    457    467    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 265, Size: 265
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
    
    public static Uri c(final Uri uri, final String s, final String s2) {
        return EmlAttachmentProvider.azT.buildUpon().appendPath("attachment").appendPath(Integer.toString(uri.hashCode())).appendPath(s).appendPath(s2).build();
    }
    
    public static Uri d(final Uri uri, final String s) {
        return EmlAttachmentProvider.azT.buildUpon().appendPath("attachments").appendPath(Integer.toString(uri.hashCode())).appendPath(s).build();
    }
    
    public static Uri e(final Uri uri, final String s) {
        return EmlAttachmentProvider.azT.buildUpon().appendPath("attachmentByCid").appendPath(Integer.toString(uri.hashCode())).appendPath(s).build();
    }
    
    private static Uri q(final Uri uri) {
        final List pathSegments = uri.getPathSegments();
        return EmlAttachmentProvider.azT.buildUpon().appendPath("attachments").appendPath((String)pathSegments.get(1)).appendPath((String)pathSegments.get(2)).build();
    }
    
    private String r(final Uri uri) {
        final Attachment attachment = this.azW.get(uri);
        boolean b;
        if (attachment.ayN == 1) {
            b = true;
        }
        else {
            b = false;
        }
        String s;
        if (b) {
            s = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getAbsolutePath();
        }
        else {
            s = this.uO();
        }
        if (!b) {
            s += uri.getEncodedPath();
        }
        final File file = new File(s);
        if (!file.exists()) {
            file.mkdirs();
        }
        return s + "/" + attachment.getName();
    }
    
    private String uO() {
        return this.getContext().getCacheDir().getAbsolutePath().concat("/eml");
    }
    
    public int delete(final Uri uri, final String s, final String[] array) {
        switch (EmlAttachmentProvider.azR.match(uri)) {
            default: {
                return 0;
            }
            case 0: {
                final List<Uri> list = this.azV.remove(uri);
                final Iterator<Uri> iterator = list.iterator();
                while (iterator.hasNext()) {
                    this.azW.remove(iterator.next());
                }
                this.b(new File(this.uO() + "/" + Uri.encode((String)uri.getPathSegments().get(1))));
                return list.size();
            }
        }
    }
    
    public String getType(final Uri uri) {
        switch (EmlAttachmentProvider.azR.match(uri)) {
            default: {
                return null;
            }
            case 1: {
                return this.azW.get(uri).getContentType();
            }
        }
    }
    
    public Uri insert(final Uri uri, final ContentValues contentValues) {
        final Uri q = q(uri);
        if (this.azW.put(uri, new Attachment(contentValues)) == null) {
            List<Uri> list = this.azV.get(q);
            if (list == null) {
                list = new ArrayList<Uri>();
                this.azV.put(q, list);
            }
            list.add(uri);
        }
        return uri;
    }
    
    public boolean onCreate() {
        final String string = this.getContext().getResources().getString(2131296658);
        EmlAttachmentProvider.azT = new Uri$Builder().scheme("content").authority(string).build();
        if (!EmlAttachmentProvider.azS) {
            EmlAttachmentProvider.azS = true;
            EmlAttachmentProvider.azR.addURI(string, "attachments/*/*", 0);
            EmlAttachmentProvider.azR.addURI(string, "attachment/*/*/#", 1);
            EmlAttachmentProvider.azR.addURI(string, "attachmentByCid/*/*/*", 2);
        }
        this.azU = (DownloadManager)this.getContext().getSystemService("download");
        this.azV = (Map<Uri, List<Uri>>)Maps.aan();
        this.azW = (Map<Uri, Attachment>)Maps.aan();
        return true;
    }
    
    public ParcelFileDescriptor openFile(final Uri uri, final String s) {
        final String r = this.r(uri);
        int n;
        if ("rwt".equals(s)) {
            n = 1006632960;
        }
        else if ("rw".equals(s)) {
            n = 939524096;
        }
        else {
            n = 268435456;
        }
        return ParcelFileDescriptor.open(new File(r), n);
    }
    
    public Cursor query(final Uri uri, final String[] array, final String s, final String[] array2, final String s2) {
        final int match = EmlAttachmentProvider.azR.match(uri);
        final MatrixCursor matrixCursor = new MatrixCursor(E.aCz);
        final ContentResolver contentResolver = this.getContext().getContentResolver();
        switch (match) {
            case 0: {
                final List queryParameters = uri.getQueryParameters("contentType");
                final Uri build = uri.buildUpon().clearQuery().build();
                final Iterator<Uri> iterator = this.azV.get(build).iterator();
                while (iterator.hasNext()) {
                    this.a(matrixCursor, iterator.next(), queryParameters);
                }
                matrixCursor.setNotificationUri(contentResolver, build);
                return (Cursor)matrixCursor;
            }
            case 1: {
                a(matrixCursor, this.azW.get(uri));
                matrixCursor.setNotificationUri(contentResolver, q(uri));
                return (Cursor)matrixCursor;
            }
            case 2: {
                final Uri q = q(uri);
                final String s3 = uri.getPathSegments().get(3);
                final List<Uri> list = this.azV.get(q);
                if (list != null) {
                    final Iterator<Uri> iterator2 = list.iterator();
                    while (iterator2.hasNext()) {
                        final Attachment attachment = this.azW.get(iterator2.next());
                        if (TextUtils.equals((CharSequence)s3, (CharSequence)attachment.partId)) {
                            a(matrixCursor, attachment);
                            matrixCursor.setNotificationUri(contentResolver, q);
                            return (Cursor)matrixCursor;
                        }
                    }
                    break;
                }
                break;
            }
        }
        return (Cursor)matrixCursor;
    }
    
    public int update(final Uri uri, final ContentValues contentValues, final String s, final String[] array) {
        switch (EmlAttachmentProvider.azR.match(uri)) {
            default: {
                return 0;
            }
            case 1: {
                return this.c(uri, contentValues);
            }
        }
    }
}
