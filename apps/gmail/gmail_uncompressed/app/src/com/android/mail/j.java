package com.android.mail;

import com.google.common.collect.*;
import android.content.*;
import java.util.*;

public final class j extends AsyncTaskLoader<ImmutableMap<String, a>>
{
    private static final String[] akb;
    private static final String[] akc;
    private final Set<String> akd;
    
    static {
        akb = new String[] { "_id", "data1", "contact_id", "photo_id" };
        akc = new String[] { "_id", "data15" };
    }
    
    public j(final Context context, final Set<String> akd) {
        super(context);
        this.akd = akd;
    }
    
    public static ImmutableMap<String, a> a(final ContentResolver p0, final Set<String> p1, final boolean p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: ldc             "load contact photos util"
        //     2: invokestatic    com/android/a/a/a.beginSection:(Ljava/lang/String;)V
        //     5: ldc             "build first query"
        //     7: invokestatic    com/android/a/a/a.beginSection:(Ljava/lang/String;)V
        //    10: invokestatic    com/google/common/collect/Maps.aan:()Ljava/util/HashMap;
        //    13: astore_3       
        //    14: invokestatic    com/google/common/collect/Maps.aan:()Ljava/util/HashMap;
        //    17: astore          4
        //    19: new             Ljava/util/ArrayList;
        //    22: dup            
        //    23: invokespecial   java/util/ArrayList.<init>:()V
        //    26: astore          5
        //    28: aload_1        
        //    29: invokestatic    com/android/mail/j.b:(Ljava/util/Collection;)Ljava/util/ArrayList;
        //    32: astore          6
        //    34: new             Ljava/lang/StringBuilder;
        //    37: dup            
        //    38: ldc             "mimetype='vnd.android.cursor.item/email_v2"
        //    40: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    43: ldc             "' AND data1 IN ("
        //    45: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    48: astore          7
        //    50: aload           7
        //    52: aload           6
        //    54: invokestatic    com/android/mail/j.a:(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)V
        //    57: aload           7
        //    59: bipush          41
        //    61: invokevirtual   java/lang/StringBuilder.append:(C)Ljava/lang/StringBuilder;
        //    64: pop            
        //    65: invokestatic    com/android/a/a/a.endSection:()V
        //    68: invokestatic    com/android/mail/utils/ag.Bh:()Z
        //    71: ifeq            136
        //    74: ldc             "in_default_directory ASC, _id"
        //    76: astore          9
        //    78: ldc             "query 1"
        //    80: invokestatic    com/android/a/a/a.beginSection:(Ljava/lang/String;)V
        //    83: aload_0        
        //    84: getstatic       android/provider/ContactsContract$Data.CONTENT_URI:Landroid/net/Uri;
        //    87: getstatic       com/android/mail/j.akb:[Ljava/lang/String;
        //    90: aload           7
        //    92: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    95: aload           6
        //    97: invokestatic    com/android/mail/j.c:(Ljava/util/Collection;)[Ljava/lang/String;
        //   100: aload           9
        //   102: invokevirtual   android/content/ContentResolver.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   105: astore          12
        //   107: invokestatic    com/android/a/a/a.endSection:()V
        //   110: aload           12
        //   112: ifnonnull       142
        //   115: invokestatic    com/android/a/a/a.endSection:()V
        //   118: aload           12
        //   120: ifnull          130
        //   123: aload           12
        //   125: invokeinterface android/database/Cursor.close:()V
        //   130: aconst_null    
        //   131: astore          13
        //   133: aload           13
        //   135: areturn        
        //   136: aconst_null    
        //   137: astore          9
        //   139: goto            78
        //   142: ldc             "get photo id"
        //   144: invokestatic    com/android/a/a/a.beginSection:(Ljava/lang/String;)V
        //   147: iconst_m1      
        //   148: istore          14
        //   150: iinc            14, 1
        //   153: aload           12
        //   155: iload           14
        //   157: invokeinterface android/database/Cursor.moveToPosition:(I)Z
        //   162: ifeq            289
        //   165: aload           12
        //   167: iconst_1       
        //   168: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   173: astore          33
        //   175: aload           12
        //   177: iconst_2       
        //   178: invokeinterface android/database/Cursor.getLong:(I)J
        //   183: lstore          34
        //   185: new             Lcom/android/mail/a;
        //   188: dup            
        //   189: getstatic       android/provider/ContactsContract$Contacts.CONTENT_URI:Landroid/net/Uri;
        //   192: lload           34
        //   194: invokestatic    android/content/ContentUris.withAppendedId:(Landroid/net/Uri;J)Landroid/net/Uri;
        //   197: invokespecial   com/android/mail/a.<init>:(Landroid/net/Uri;)V
        //   200: astore          36
        //   202: aload           12
        //   204: iconst_3       
        //   205: invokeinterface android/database/Cursor.isNull:(I)Z
        //   210: ifne            254
        //   213: aload           12
        //   215: iconst_3       
        //   216: invokeinterface android/database/Cursor.getLong:(I)J
        //   221: lstore          38
        //   223: aload           5
        //   225: lload           38
        //   227: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //   230: invokevirtual   java/util/ArrayList.add:(Ljava/lang/Object;)Z
        //   233: pop            
        //   234: aload           4
        //   236: lload           38
        //   238: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   241: aload           33
        //   243: aload           36
        //   245: invokestatic    android/util/Pair.create:(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
        //   248: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   253: pop            
        //   254: aload_3        
        //   255: aload           33
        //   257: aload           36
        //   259: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   264: pop            
        //   265: goto            150
        //   268: astore          10
        //   270: aload           12
        //   272: astore          11
        //   274: aload           11
        //   276: ifnull          286
        //   279: aload           11
        //   281: invokeinterface android/database/Cursor.close:()V
        //   286: aload           10
        //   288: athrow         
        //   289: aload           12
        //   291: invokeinterface android/database/Cursor.close:()V
        //   296: invokestatic    com/android/a/a/a.endSection:()V
        //   299: aload           6
        //   301: invokevirtual   java/util/ArrayList.iterator:()Ljava/util/Iterator;
        //   304: astore          15
        //   306: aload           15
        //   308: invokeinterface java/util/Iterator.hasNext:()Z
        //   313: ifeq            359
        //   316: aload           15
        //   318: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   323: checkcast       Ljava/lang/String;
        //   326: astore          31
        //   328: aload_3        
        //   329: aload           31
        //   331: invokeinterface java/util/Map.containsKey:(Ljava/lang/Object;)Z
        //   336: ifne            306
        //   339: aload_3        
        //   340: aload           31
        //   342: new             Lcom/android/mail/a;
        //   345: dup            
        //   346: aconst_null    
        //   347: invokespecial   com/android/mail/a.<init>:(Landroid/net/Uri;)V
        //   350: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   355: pop            
        //   356: goto            306
        //   359: aload           5
        //   361: invokevirtual   java/util/ArrayList.isEmpty:()Z
        //   364: ifeq            395
        //   367: invokestatic    com/android/a/a/a.endSection:()V
        //   370: aload_3        
        //   371: invokestatic    com/google/common/collect/ImmutableMap.q:(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;
        //   374: astore          30
        //   376: aload           30
        //   378: astore          13
        //   380: aload           12
        //   382: ifnull          133
        //   385: aload           12
        //   387: invokeinterface android/database/Cursor.close:()V
        //   392: aload           13
        //   394: areturn        
        //   395: ldc             "build second query"
        //   397: invokestatic    com/android/a/a/a.beginSection:(Ljava/lang/String;)V
        //   400: aload           5
        //   402: invokestatic    com/android/mail/j.b:(Ljava/util/Collection;)Ljava/util/ArrayList;
        //   405: astore          16
        //   407: aload           7
        //   409: iconst_0       
        //   410: invokevirtual   java/lang/StringBuilder.setLength:(I)V
        //   413: aload           7
        //   415: ldc             "_id IN ("
        //   417: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   420: pop            
        //   421: aload           7
        //   423: aload           16
        //   425: invokestatic    com/android/mail/j.a:(Ljava/lang/StringBuilder;Ljava/lang/Iterable;)V
        //   428: aload           7
        //   430: bipush          41
        //   432: invokevirtual   java/lang/StringBuilder.append:(C)Ljava/lang/StringBuilder;
        //   435: pop            
        //   436: invokestatic    com/android/a/a/a.endSection:()V
        //   439: ldc             "query 2"
        //   441: invokestatic    com/android/a/a/a.beginSection:(Ljava/lang/String;)V
        //   444: aload_0        
        //   445: getstatic       android/provider/ContactsContract$Data.CONTENT_URI:Landroid/net/Uri;
        //   448: getstatic       com/android/mail/j.akc:[Ljava/lang/String;
        //   451: aload           7
        //   453: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   456: aload           16
        //   458: invokestatic    com/android/mail/j.c:(Ljava/util/Collection;)[Ljava/lang/String;
        //   461: aload           9
        //   463: invokevirtual   android/content/ContentResolver.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   466: astore          19
        //   468: invokestatic    com/android/a/a/a.endSection:()V
        //   471: aload           19
        //   473: ifnonnull       504
        //   476: invokestatic    com/android/a/a/a.endSection:()V
        //   479: aload_3        
        //   480: invokestatic    com/google/common/collect/ImmutableMap.q:(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;
        //   483: astore          20
        //   485: aload           20
        //   487: astore          13
        //   489: aload           19
        //   491: ifnull          133
        //   494: aload           19
        //   496: invokeinterface android/database/Cursor.close:()V
        //   501: aload           13
        //   503: areturn        
        //   504: ldc             "get photo blob"
        //   506: invokestatic    com/android/a/a/a.beginSection:(Ljava/lang/String;)V
        //   509: iconst_m1      
        //   510: istore          21
        //   512: iload           21
        //   514: iconst_1       
        //   515: iadd           
        //   516: istore          22
        //   518: aload           19
        //   520: iload           22
        //   522: invokeinterface android/database/Cursor.moveToPosition:(I)Z
        //   527: ifeq            671
        //   530: aload           19
        //   532: iconst_1       
        //   533: invokeinterface android/database/Cursor.getBlob:(I)[B
        //   538: astore          23
        //   540: aload           23
        //   542: ifnull          711
        //   545: aload           4
        //   547: aload           19
        //   549: iconst_0       
        //   550: invokeinterface android/database/Cursor.getLong:(I)J
        //   555: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   558: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   563: checkcast       Landroid/util/Pair;
        //   566: astore          24
        //   568: aload           24
        //   570: getfield        android/util/Pair.first:Ljava/lang/Object;
        //   573: checkcast       Ljava/lang/String;
        //   576: astore          25
        //   578: aload           24
        //   580: getfield        android/util/Pair.second:Ljava/lang/Object;
        //   583: checkcast       Lcom/android/mail/a;
        //   586: astore          26
        //   588: iload_2        
        //   589: ifeq            641
        //   592: ldc             "decode bitmap"
        //   594: invokestatic    com/android/a/a/a.beginSection:(Ljava/lang/String;)V
        //   597: aload           23
        //   599: iconst_0       
        //   600: aload           23
        //   602: arraylength    
        //   603: invokestatic    android/graphics/BitmapFactory.decodeByteArray:([BII)Landroid/graphics/Bitmap;
        //   606: astore          27
        //   608: invokestatic    com/android/a/a/a.endSection:()V
        //   611: aload_3        
        //   612: aload           25
        //   614: new             Lcom/android/mail/a;
        //   617: dup            
        //   618: aload           26
        //   620: getfield        com/android/mail/a.ajO:Landroid/net/Uri;
        //   623: aload           27
        //   625: invokespecial   com/android/mail/a.<init>:(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
        //   628: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   633: pop            
        //   634: iload           22
        //   636: istore          21
        //   638: goto            512
        //   641: aload_3        
        //   642: aload           25
        //   644: new             Lcom/android/mail/a;
        //   647: dup            
        //   648: aload           26
        //   650: getfield        com/android/mail/a.ajO:Landroid/net/Uri;
        //   653: aload           23
        //   655: invokespecial   com/android/mail/a.<init>:(Landroid/net/Uri;[B)V
        //   658: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   663: pop            
        //   664: iload           22
        //   666: istore          21
        //   668: goto            512
        //   671: invokestatic    com/android/a/a/a.endSection:()V
        //   674: aload           19
        //   676: ifnull          686
        //   679: aload           19
        //   681: invokeinterface android/database/Cursor.close:()V
        //   686: invokestatic    com/android/a/a/a.endSection:()V
        //   689: aload_3        
        //   690: invokestatic    com/google/common/collect/ImmutableMap.q:(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;
        //   693: areturn        
        //   694: astore          10
        //   696: aconst_null    
        //   697: astore          11
        //   699: goto            274
        //   702: astore          10
        //   704: aload           19
        //   706: astore          11
        //   708: goto            274
        //   711: iload           22
        //   713: istore          21
        //   715: goto            512
        //    Signature:
        //  (Landroid/content/ContentResolver;Ljava/util/Set<Ljava/lang/String;>;Z)Lcom/google/common/collect/ImmutableMap<Ljava/lang/String;Lcom/android/mail/a;>;
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  78     107    694    702    Any
        //  107    110    268    274    Any
        //  115    118    268    274    Any
        //  142    147    268    274    Any
        //  153    254    268    274    Any
        //  254    265    268    274    Any
        //  289    306    268    274    Any
        //  306    356    268    274    Any
        //  359    376    268    274    Any
        //  395    468    268    274    Any
        //  468    471    702    711    Any
        //  476    485    702    711    Any
        //  504    509    702    711    Any
        //  518    540    702    711    Any
        //  545    588    702    711    Any
        //  592    634    702    711    Any
        //  641    664    702    711    Any
        //  671    674    702    711    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0504:
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
    
    private static void a(final StringBuilder sb, final Iterable<?> iterable) {
        int n = 1;
        final Iterator<?> iterator = iterable.iterator();
        while (iterator.hasNext()) {
            iterator.next();
            if (n != 0) {
                n = 0;
            }
            else {
                sb.append(',');
            }
            sb.append('?');
        }
    }
    
    private static ArrayList<String> b(final Collection<String> collection) {
        final int min = Math.min(collection.size(), 75);
        final ArrayList list = new ArrayList<String>(min);
        final Iterator<String> iterator = collection.iterator();
        int n = 0;
        while (iterator.hasNext()) {
            list.add(iterator.next());
            final int n2 = n + 1;
            if (n2 >= min) {
                break;
            }
            n = n2;
        }
        return (ArrayList<String>)list;
    }
    
    private static String[] c(final Collection<String> collection) {
        return collection.toArray(new String[collection.size()]);
    }
    
    protected final void onStartLoading() {
        this.forceLoad();
    }
    
    protected final void onStopLoading() {
        this.cancelLoad();
    }
}
