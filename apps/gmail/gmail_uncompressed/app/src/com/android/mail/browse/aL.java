package com.android.mail.browse;

import com.android.mail.ui.*;
import android.net.*;
import com.android.mail.utils.*;
import android.content.*;

public final class al extends cp<ConversationMessage>
{
    private static final String mW;
    private Uri arB;
    
    static {
        mW = D.AU();
    }
    
    public al(final Context context, final Uri arB) {
        super(context);
        this.arB = arB;
    }
    
    private ConversationMessage ra() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokevirtual   com/android/mail/browse/al.getContext:()Landroid/content/Context;
        //     4: astore_1       
        //     5: aload_1        
        //     6: invokestatic    com/android/emailcommon/e.V:(Landroid/content/Context;)V
        //     9: aload_1        
        //    10: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //    13: astore_2       
        //    14: aload_2        
        //    15: aload_0        
        //    16: getfield        com/android/mail/browse/al.arB:Landroid/net/Uri;
        //    19: invokevirtual   android/content/ContentResolver.openInputStream:(Landroid/net/Uri;)Ljava/io/InputStream;
        //    22: astore          7
        //    24: new             Lcom/android/mail/browse/ConversationMessage;
        //    27: dup            
        //    28: aload_1        
        //    29: new             Lcom/android/emailcommon/a/f;
        //    32: dup            
        //    33: aload           7
        //    35: invokespecial   com/android/emailcommon/a/f.<init>:(Ljava/io/InputStream;)V
        //    38: aload_0        
        //    39: getfield        com/android/mail/browse/al.arB:Landroid/net/Uri;
        //    42: invokespecial   com/android/mail/browse/ConversationMessage.<init>:(Landroid/content/Context;Lcom/android/emailcommon/a/f;Landroid/net/Uri;)V
        //    45: astore          8
        //    47: aload           7
        //    49: invokevirtual   java/io/InputStream.close:()V
        //    52: invokestatic    com/android/emailcommon/e.kM:()Ljava/io/File;
        //    55: invokevirtual   java/io/File.listFiles:()[Ljava/io/File;
        //    58: astore          10
        //    60: aload           10
        //    62: arraylength    
        //    63: istore          11
        //    65: iconst_0       
        //    66: istore          12
        //    68: iload           12
        //    70: iload           11
        //    72: if_icmpge       499
        //    75: aload           10
        //    77: iload           12
        //    79: aaload         
        //    80: astore          13
        //    82: aload           13
        //    84: invokevirtual   java/io/File.getName:()Ljava/lang/String;
        //    87: ldc             "body"
        //    89: invokevirtual   java/lang/String.startsWith:(Ljava/lang/String;)Z
        //    92: ifeq            134
        //    95: aload           13
        //    97: invokevirtual   java/io/File.delete:()Z
        //   100: ifne            134
        //   103: getstatic       com/android/mail/browse/al.mW:Ljava/lang/String;
        //   106: new             Ljava/lang/StringBuilder;
        //   109: dup            
        //   110: ldc             "Failed to delete temp file"
        //   112: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   115: aload           13
        //   117: invokevirtual   java/io/File.getName:()Ljava/lang/String;
        //   120: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   123: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   126: iconst_0       
        //   127: anewarray       Ljava/lang/Object;
        //   130: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   133: pop            
        //   134: iinc            12, 1
        //   137: goto            68
        //   140: astore_3       
        //   141: getstatic       com/android/mail/browse/al.mW:Ljava/lang/String;
        //   144: astore          4
        //   146: iconst_1       
        //   147: anewarray       Ljava/lang/Object;
        //   150: astore          5
        //   152: aload           5
        //   154: iconst_0       
        //   155: aload_0        
        //   156: getfield        com/android/mail/browse/al.arB:Landroid/net/Uri;
        //   159: aastore        
        //   160: aload           4
        //   162: aload_3        
        //   163: ldc             "Could not find eml file at uri: %s"
        //   165: aload           5
        //   167: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   170: pop            
        //   171: aconst_null    
        //   172: areturn        
        //   173: astore          9
        //   175: aconst_null    
        //   176: astore          8
        //   178: goto            52
        //   181: astore          30
        //   183: getstatic       com/android/mail/browse/al.mW:Ljava/lang/String;
        //   186: aload           30
        //   188: ldc             "Could not read eml file"
        //   190: iconst_0       
        //   191: anewarray       Ljava/lang/Object;
        //   194: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   197: pop            
        //   198: aload           7
        //   200: invokevirtual   java/io/InputStream.close:()V
        //   203: invokestatic    com/android/emailcommon/e.kM:()Ljava/io/File;
        //   206: invokevirtual   java/io/File.listFiles:()[Ljava/io/File;
        //   209: astore          33
        //   211: aload           33
        //   213: arraylength    
        //   214: istore          34
        //   216: iconst_0       
        //   217: istore          35
        //   219: iload           35
        //   221: iload           34
        //   223: if_icmpge       171
        //   226: aload           33
        //   228: iload           35
        //   230: aaload         
        //   231: astore          36
        //   233: aload           36
        //   235: invokevirtual   java/io/File.getName:()Ljava/lang/String;
        //   238: ldc             "body"
        //   240: invokevirtual   java/lang/String.startsWith:(Ljava/lang/String;)Z
        //   243: ifeq            285
        //   246: aload           36
        //   248: invokevirtual   java/io/File.delete:()Z
        //   251: ifne            285
        //   254: getstatic       com/android/mail/browse/al.mW:Ljava/lang/String;
        //   257: new             Ljava/lang/StringBuilder;
        //   260: dup            
        //   261: ldc             "Failed to delete temp file"
        //   263: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   266: aload           36
        //   268: invokevirtual   java/io/File.getName:()Ljava/lang/String;
        //   271: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   274: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   277: iconst_0       
        //   278: anewarray       Ljava/lang/Object;
        //   281: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   284: pop            
        //   285: iinc            35, 1
        //   288: goto            219
        //   291: astore          22
        //   293: getstatic       com/android/mail/browse/al.mW:Ljava/lang/String;
        //   296: aload           22
        //   298: ldc             "Error in parsing eml file"
        //   300: iconst_0       
        //   301: anewarray       Ljava/lang/Object;
        //   304: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   307: pop            
        //   308: aload           7
        //   310: invokevirtual   java/io/InputStream.close:()V
        //   313: invokestatic    com/android/emailcommon/e.kM:()Ljava/io/File;
        //   316: invokevirtual   java/io/File.listFiles:()[Ljava/io/File;
        //   319: astore          25
        //   321: aload           25
        //   323: arraylength    
        //   324: istore          26
        //   326: iconst_0       
        //   327: istore          27
        //   329: iload           27
        //   331: iload           26
        //   333: if_icmpge       171
        //   336: aload           25
        //   338: iload           27
        //   340: aaload         
        //   341: astore          28
        //   343: aload           28
        //   345: invokevirtual   java/io/File.getName:()Ljava/lang/String;
        //   348: ldc             "body"
        //   350: invokevirtual   java/lang/String.startsWith:(Ljava/lang/String;)Z
        //   353: ifeq            395
        //   356: aload           28
        //   358: invokevirtual   java/io/File.delete:()Z
        //   361: ifne            395
        //   364: getstatic       com/android/mail/browse/al.mW:Ljava/lang/String;
        //   367: new             Ljava/lang/StringBuilder;
        //   370: dup            
        //   371: ldc             "Failed to delete temp file"
        //   373: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   376: aload           28
        //   378: invokevirtual   java/io/File.getName:()Ljava/lang/String;
        //   381: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   384: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   387: iconst_0       
        //   388: anewarray       Ljava/lang/Object;
        //   391: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   394: pop            
        //   395: iinc            27, 1
        //   398: goto            329
        //   401: astore          15
        //   403: aload           7
        //   405: invokevirtual   java/io/InputStream.close:()V
        //   408: invokestatic    com/android/emailcommon/e.kM:()Ljava/io/File;
        //   411: invokevirtual   java/io/File.listFiles:()[Ljava/io/File;
        //   414: astore          17
        //   416: aload           17
        //   418: arraylength    
        //   419: istore          18
        //   421: iconst_0       
        //   422: istore          19
        //   424: iload           19
        //   426: iload           18
        //   428: if_icmpge       496
        //   431: aload           17
        //   433: iload           19
        //   435: aaload         
        //   436: astore          20
        //   438: aload           20
        //   440: invokevirtual   java/io/File.getName:()Ljava/lang/String;
        //   443: ldc             "body"
        //   445: invokevirtual   java/lang/String.startsWith:(Ljava/lang/String;)Z
        //   448: ifeq            490
        //   451: aload           20
        //   453: invokevirtual   java/io/File.delete:()Z
        //   456: ifne            490
        //   459: getstatic       com/android/mail/browse/al.mW:Ljava/lang/String;
        //   462: new             Ljava/lang/StringBuilder;
        //   465: dup            
        //   466: ldc             "Failed to delete temp file"
        //   468: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   471: aload           20
        //   473: invokevirtual   java/io/File.getName:()Ljava/lang/String;
        //   476: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   479: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   482: iconst_0       
        //   483: anewarray       Ljava/lang/Object;
        //   486: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   489: pop            
        //   490: iinc            19, 1
        //   493: goto            424
        //   496: aload           15
        //   498: athrow         
        //   499: aload           8
        //   501: areturn        
        //   502: astore          32
        //   504: goto            203
        //   507: astore          24
        //   509: goto            313
        //   512: astore          16
        //   514: goto            408
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                             
        //  -----  -----  -----  -----  -------------------------------------------------
        //  14     24     140    171    Ljava/io/FileNotFoundException;
        //  24     47     181    291    Ljava/io/IOException;
        //  24     47     291    401    Lcom/android/emailcommon/mail/MessagingException;
        //  24     47     401    499    Any
        //  47     52     173    181    Ljava/io/IOException;
        //  183    198    401    499    Any
        //  198    203    502    507    Ljava/io/IOException;
        //  293    308    401    499    Any
        //  308    313    507    512    Ljava/io/IOException;
        //  403    408    512    517    Ljava/io/IOException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 234, Size: 234
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
