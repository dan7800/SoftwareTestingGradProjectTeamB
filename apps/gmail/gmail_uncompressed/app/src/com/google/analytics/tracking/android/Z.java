package com.google.analytics.tracking.android;

import android.database.*;
import android.database.sqlite.*;
import android.text.*;
import java.util.*;
import com.google.android.gms.analytics.internal.*;
import android.content.*;

final class Z implements g
{
    private static final String aVk;
    private k aSA;
    private final ac aVl;
    private volatile l aVm;
    private final h aVn;
    private final String aVo;
    private long aVp;
    private final Context mContext;
    
    static {
        aVk = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL, '%s' TEXT NOT NULL, '%s' INTEGER);", "hits2", "hit_id", "hit_time", "hit_url", "hit_string", "hit_app_id");
    }
    
    Z(final h h, final Context context) {
        this(h, context, "google_analytics_v2.db");
    }
    
    private Z(final h aVn, final Context context, final String aVo) {
        this.mContext = context.getApplicationContext();
        this.aVo = aVo;
        this.aVn = aVn;
        this.aSA = new aa(this);
        this.aVl = new ac(this, this.mContext, this.aVo);
        this.aVm = new af(new ab(this), this.mContext);
        this.aVp = 0L;
    }
    
    private int Ch() {
        Cursor rawQuery = null;
        final SQLiteDatabase dg = this.dg("Error opening database for requestNumHitsPending");
        int n = 0;
        if (dg == null) {
            return n;
        }
        try {
            rawQuery = dg.rawQuery("SELECT COUNT(*) from hits2", (String[])null);
            final boolean moveToFirst = rawQuery.moveToFirst();
            n = 0;
            if (moveToFirst) {
                n = (int)rawQuery.getLong(0);
            }
            return n;
        }
        catch (SQLiteException ex) {
            Q.da("Error getting numStoredHits");
            n = 0;
            return 0;
        }
        finally {
            if (rawQuery != null) {
                rawQuery.close();
            }
        }
    }
    
    private SQLiteDatabase dg(final String s) {
        try {
            return this.aVl.getWritableDatabase();
        }
        catch (SQLiteException ex) {
            Q.da(s);
            return null;
        }
    }
    
    private List<N> dx(final int p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: ldc             "Error opening database for peekHits"
        //     3: invokespecial   com/google/analytics/tracking/android/Z.dg:(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
        //     6: astore_2       
        //     7: aload_2        
        //     8: ifnonnull       21
        //    11: new             Ljava/util/ArrayList;
        //    14: dup            
        //    15: invokespecial   java/util/ArrayList.<init>:()V
        //    18: astore_3       
        //    19: aload_3        
        //    20: areturn        
        //    21: aconst_null    
        //    22: astore          4
        //    24: new             Ljava/util/ArrayList;
        //    27: dup            
        //    28: invokespecial   java/util/ArrayList.<init>:()V
        //    31: pop            
        //    32: aload_2        
        //    33: ldc             "hits2"
        //    35: iconst_3       
        //    36: anewarray       Ljava/lang/String;
        //    39: dup            
        //    40: iconst_0       
        //    41: ldc             "hit_id"
        //    43: aastore        
        //    44: dup            
        //    45: iconst_1       
        //    46: ldc             "hit_time"
        //    48: aastore        
        //    49: dup            
        //    50: iconst_2       
        //    51: ldc             "hit_url"
        //    53: aastore        
        //    54: aconst_null    
        //    55: aconst_null    
        //    56: aconst_null    
        //    57: aconst_null    
        //    58: ldc             "%s ASC, %s ASC"
        //    60: iconst_2       
        //    61: anewarray       Ljava/lang/Object;
        //    64: dup            
        //    65: iconst_0       
        //    66: ldc             "hit_url"
        //    68: aastore        
        //    69: dup            
        //    70: iconst_1       
        //    71: ldc             "hit_id"
        //    73: aastore        
        //    74: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //    77: iload_1        
        //    78: invokestatic    java/lang/Integer.toString:(I)Ljava/lang/String;
        //    81: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    84: astore          10
        //    86: aload           10
        //    88: astore          11
        //    90: new             Ljava/util/ArrayList;
        //    93: dup            
        //    94: invokespecial   java/util/ArrayList.<init>:()V
        //    97: astore          12
        //    99: aload           11
        //   101: invokeinterface android/database/Cursor.moveToFirst:()Z
        //   106: ifeq            171
        //   109: new             Lcom/google/analytics/tracking/android/N;
        //   112: dup            
        //   113: aload           11
        //   115: iconst_0       
        //   116: invokeinterface android/database/Cursor.getLong:(I)J
        //   121: aload           11
        //   123: iconst_1       
        //   124: invokeinterface android/database/Cursor.getLong:(I)J
        //   129: invokespecial   com/google/analytics/tracking/android/N.<init>:(JJ)V
        //   132: astore          13
        //   134: aload           13
        //   136: aload           11
        //   138: iconst_2       
        //   139: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   144: invokevirtual   com/google/analytics/tracking/android/N.cU:(Ljava/lang/String;)V
        //   147: aload           12
        //   149: aload           13
        //   151: invokeinterface java/util/List.add:(Ljava/lang/Object;)Z
        //   156: pop            
        //   157: aload           11
        //   159: invokeinterface android/database/Cursor.moveToNext:()Z
        //   164: istore          15
        //   166: iload           15
        //   168: ifne            109
        //   171: aload           11
        //   173: ifnull          183
        //   176: aload           11
        //   178: invokeinterface android/database/Cursor.close:()V
        //   183: aload_2        
        //   184: ldc             "hits2"
        //   186: iconst_2       
        //   187: anewarray       Ljava/lang/String;
        //   190: dup            
        //   191: iconst_0       
        //   192: ldc             "hit_id"
        //   194: aastore        
        //   195: dup            
        //   196: iconst_1       
        //   197: ldc             "hit_string"
        //   199: aastore        
        //   200: aconst_null    
        //   201: aconst_null    
        //   202: aconst_null    
        //   203: aconst_null    
        //   204: ldc             "%s ASC"
        //   206: iconst_1       
        //   207: anewarray       Ljava/lang/Object;
        //   210: dup            
        //   211: iconst_0       
        //   212: ldc             "hit_id"
        //   214: aastore        
        //   215: invokestatic    java/lang/String.format:(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //   218: iload_1        
        //   219: invokestatic    java/lang/Integer.toString:(I)Ljava/lang/String;
        //   222: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   225: astore          24
        //   227: aload           24
        //   229: invokeinterface android/database/Cursor.moveToFirst:()Z
        //   234: ifeq            321
        //   237: iconst_0       
        //   238: istore          25
        //   240: aload           24
        //   242: instanceof      Landroid/database/sqlite/SQLiteCursor;
        //   245: ifeq            404
        //   248: aload           24
        //   250: checkcast       Landroid/database/sqlite/SQLiteCursor;
        //   253: invokevirtual   android/database/sqlite/SQLiteCursor.getWindow:()Landroid/database/CursorWindow;
        //   256: invokevirtual   android/database/CursorWindow.getNumRows:()I
        //   259: ifgt            404
        //   262: new             Ljava/lang/StringBuilder;
        //   265: dup            
        //   266: ldc             "hitString for hitId "
        //   268: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   271: aload           12
        //   273: iload           25
        //   275: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //   280: checkcast       Lcom/google/analytics/tracking/android/N;
        //   283: invokevirtual   com/google/analytics/tracking/android/N.Cb:()J
        //   286: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
        //   289: ldc             " too large.  Hit will be deleted."
        //   291: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   294: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   297: invokestatic    com/google/analytics/tracking/android/Q.da:(Ljava/lang/String;)I
        //   300: pop            
        //   301: iload           25
        //   303: iconst_1       
        //   304: iadd           
        //   305: istore          26
        //   307: aload           24
        //   309: invokeinterface android/database/Cursor.moveToNext:()Z
        //   314: istore          27
        //   316: iload           27
        //   318: ifne            608
        //   321: aload           24
        //   323: ifnull          333
        //   326: aload           24
        //   328: invokeinterface android/database/Cursor.close:()V
        //   333: aload           12
        //   335: areturn        
        //   336: astore          7
        //   338: aconst_null    
        //   339: astore          8
        //   341: new             Ljava/lang/StringBuilder;
        //   344: dup            
        //   345: ldc             "error in peekHits fetching hitIds: "
        //   347: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   350: aload           7
        //   352: invokevirtual   android/database/sqlite/SQLiteException.getMessage:()Ljava/lang/String;
        //   355: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   358: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   361: invokestatic    com/google/analytics/tracking/android/Q.da:(Ljava/lang/String;)I
        //   364: pop            
        //   365: new             Ljava/util/ArrayList;
        //   368: dup            
        //   369: invokespecial   java/util/ArrayList.<init>:()V
        //   372: astore_3       
        //   373: aload           8
        //   375: ifnull          19
        //   378: aload           8
        //   380: invokeinterface android/database/Cursor.close:()V
        //   385: aload_3        
        //   386: areturn        
        //   387: astore          6
        //   389: aload           4
        //   391: ifnull          401
        //   394: aload           4
        //   396: invokeinterface android/database/Cursor.close:()V
        //   401: aload           6
        //   403: athrow         
        //   404: aload           12
        //   406: iload           25
        //   408: invokeinterface java/util/List.get:(I)Ljava/lang/Object;
        //   413: checkcast       Lcom/google/analytics/tracking/android/N;
        //   416: aload           24
        //   418: iconst_1       
        //   419: invokeinterface android/database/Cursor.getString:(I)Ljava/lang/String;
        //   424: invokevirtual   com/google/analytics/tracking/android/N.cT:(Ljava/lang/String;)V
        //   427: goto            301
        //   430: astore          16
        //   432: aload           24
        //   434: astore          11
        //   436: new             Ljava/lang/StringBuilder;
        //   439: dup            
        //   440: ldc             "error in peekHits fetching hitString: "
        //   442: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   445: aload           16
        //   447: invokevirtual   android/database/sqlite/SQLiteException.getMessage:()Ljava/lang/String;
        //   450: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   453: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   456: invokestatic    com/google/analytics/tracking/android/Q.da:(Ljava/lang/String;)I
        //   459: pop            
        //   460: new             Ljava/util/ArrayList;
        //   463: dup            
        //   464: invokespecial   java/util/ArrayList.<init>:()V
        //   467: astore          19
        //   469: iconst_0       
        //   470: istore          20
        //   472: aload           12
        //   474: invokeinterface java/util/List.iterator:()Ljava/util/Iterator;
        //   479: astore          21
        //   481: aload           21
        //   483: invokeinterface java/util/Iterator.hasNext:()Z
        //   488: ifeq            552
        //   491: aload           21
        //   493: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   498: checkcast       Lcom/google/analytics/tracking/android/N;
        //   501: astore          22
        //   503: aload           22
        //   505: invokevirtual   com/google/analytics/tracking/android/N.Ca:()Ljava/lang/String;
        //   508: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //   511: ifeq            522
        //   514: iload           20
        //   516: ifne            552
        //   519: iconst_1       
        //   520: istore          20
        //   522: aload           19
        //   524: aload           22
        //   526: invokeinterface java/util/List.add:(Ljava/lang/Object;)Z
        //   531: pop            
        //   532: goto            481
        //   535: astore          17
        //   537: aload           11
        //   539: ifnull          549
        //   542: aload           11
        //   544: invokeinterface android/database/Cursor.close:()V
        //   549: aload           17
        //   551: athrow         
        //   552: aload           11
        //   554: ifnull          564
        //   557: aload           11
        //   559: invokeinterface android/database/Cursor.close:()V
        //   564: aload           19
        //   566: areturn        
        //   567: astore          17
        //   569: aload           24
        //   571: astore          11
        //   573: goto            537
        //   576: astore          16
        //   578: goto            436
        //   581: astore          6
        //   583: aload           11
        //   585: astore          4
        //   587: goto            389
        //   590: astore          6
        //   592: aload           8
        //   594: astore          4
        //   596: goto            389
        //   599: astore          7
        //   601: aload           11
        //   603: astore          8
        //   605: goto            341
        //   608: iload           26
        //   610: istore          25
        //   612: goto            240
        //    Signature:
        //  (I)Ljava/util/List<Lcom/google/analytics/tracking/android/N;>;
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  32     86     336    341    Landroid/database/sqlite/SQLiteException;
        //  32     86     387    389    Any
        //  90     109    599    608    Landroid/database/sqlite/SQLiteException;
        //  90     109    581    590    Any
        //  109    166    599    608    Landroid/database/sqlite/SQLiteException;
        //  109    166    581    590    Any
        //  183    227    576    581    Landroid/database/sqlite/SQLiteException;
        //  183    227    535    537    Any
        //  227    237    430    436    Landroid/database/sqlite/SQLiteException;
        //  227    237    567    576    Any
        //  240    301    430    436    Landroid/database/sqlite/SQLiteException;
        //  240    301    567    576    Any
        //  307    316    430    436    Landroid/database/sqlite/SQLiteException;
        //  307    316    567    576    Any
        //  341    373    590    599    Any
        //  404    427    430    436    Landroid/database/sqlite/SQLiteException;
        //  404    427    567    576    Any
        //  436    469    535    537    Any
        //  472    481    535    537    Any
        //  481    514    535    537    Any
        //  522    532    535    537    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 277, Size: 277
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
    
    private static String h(final Map<String, String> map) {
        final ArrayList<String> list = new ArrayList<String>(map.size());
        for (final Map.Entry<String, String> entry : map.entrySet()) {
            list.add(entry.getKey() + "=" + O.encode(entry.getValue()));
        }
        return TextUtils.join((CharSequence)"&", (Iterable)list);
    }
    
    private void u(final Collection<N> collection) {
        if (collection == null) {
            throw new NullPointerException("hits cannot be null");
        }
        if (!collection.isEmpty()) {
            final SQLiteDatabase dg = this.dg("Error opening database for deleteHit");
            if (dg != null) {
                final String[] array = new String[collection.size()];
                final String format = String.format("HIT_ID in (%s)", TextUtils.join((CharSequence)",", (Iterable)Collections.nCopies(array.length, "?")));
                final Iterator<N> iterator = collection.iterator();
                int n = 0;
                while (iterator.hasNext()) {
                    final N n2 = iterator.next();
                    final int n3 = n + 1;
                    array[n] = Long.toString(n2.Cb());
                    n = n3;
                }
                try {
                    dg.delete("hits2", format, array);
                    final h aVn = this.aVn;
                    final int ch = this.Ch();
                    boolean b = false;
                    if (ch == 0) {
                        b = true;
                    }
                    aVn.bH(b);
                }
                catch (SQLiteException ex) {
                    Q.da("Error deleting hit " + collection);
                }
            }
        }
    }
    
    @Override
    public final void BA() {
        int n = 1;
        final SQLiteDatabase dg = this.dg("Error opening database for clearHits");
        if (dg != null) {
            if (0L == 0L) {
                dg.delete("hits2", (String)null, (String[])null);
            }
            else {
                final String[] array = new String[n];
                array[0] = Long.valueOf(0L).toString();
                dg.delete("hits2", "hit_app_id = ?", array);
            }
            final h aVn = this.aVn;
            if (this.Ch() != 0) {
                n = 0;
            }
            aVn.bH(n != 0);
        }
    }
    
    @Override
    public final void BB() {
        Q.cZ("dispatch running...");
        if (this.aVm.BD()) {
            final List<N> dx = this.dx(40);
            if (dx.isEmpty()) {
                Q.cZ("...nothing to dispatch");
                this.aVn.bH(true);
                return;
            }
            final int b = this.aVm.B(dx);
            Q.cZ("sent " + b + " of " + dx.size() + " hits");
            this.u(dx.subList(0, Math.min(b, dx.size())));
            if (b == dx.size() && this.Ch() > 0) {
                u.BI().BB();
            }
        }
    }
    
    @Override
    public final void a(final Map<String, String> map, final long n, String s, final Collection<Command> collection) {
        int n2 = 1;
        final long currentTimeMillis = this.aSA.currentTimeMillis();
        while (true) {
            Label_0394: {
                SQLiteDatabase dg2 = null;
                ContentValues contentValues = null;
                Label_0400: {
                Label_0183_Outer:
                    while (true) {
                        Label_0114: {
                            if (currentTimeMillis <= 86400000L + this.aVp) {
                                break Label_0114;
                            }
                            this.aVp = currentTimeMillis;
                            final SQLiteDatabase dg = this.dg("Error opening database for deleteStaleHits");
                            if (dg == null) {
                                break Label_0114;
                            }
                            final long n3 = this.aSA.currentTimeMillis() - 2592000000L;
                            final String[] array = new String[n2];
                            array[0] = Long.toString(n3);
                            dg.delete("hits2", "HIT_TIME < ?", array);
                            final h aVn = this.aVn;
                            if (this.Ch() != 0) {
                                break Label_0183_Outer;
                            }
                            aVn.bH(n2 != 0);
                        }
                    Label_0183:
                        while (true) {
                            Label_0385: {
                                for (final Command command : collection) {
                                    if (command.getId().equals("appendVersion")) {
                                        final String value = command.getValue();
                                        final String je = command.Je();
                                        if (value == null) {
                                            final String s2 = "";
                                            break Label_0183;
                                        }
                                        break Label_0385;
                                    }
                                }
                                Label_0199: {
                                    break Label_0199;
                                    final String je;
                                    if (je != null) {
                                        final String s2;
                                        map.put(je, s2);
                                    }
                                }
                                final int n4 = 1 + (-2000 + this.Ch());
                                if (n4 > 0) {
                                    final List<N> dx = this.dx(n4);
                                    Q.db("Store full, deleting " + dx.size() + " hits to make room");
                                    this.u(dx);
                                }
                                dg2 = this.dg("Error opening database for putHit");
                                if (dg2 == null) {
                                    return;
                                }
                                contentValues = new ContentValues();
                                contentValues.put("hit_string", h(map));
                                contentValues.put("hit_time", n);
                                if (!map.containsKey("AppUID")) {
                                    break Label_0394;
                                }
                                try {
                                    final long long1 = Long.parseLong(map.get("AppUID"));
                                    contentValues.put("hit_app_id", long1);
                                    if (s == null) {
                                        s = "http://www.google-analytics.com/collect";
                                    }
                                    if (s.length() == 0) {
                                        Q.da("empty path: not sending hit");
                                        return;
                                    }
                                    break Label_0400;
                                    final String value;
                                    final String s2 = value;
                                    continue Label_0183;
                                    n2 = 0;
                                    continue Label_0183_Outer;
                                }
                                catch (NumberFormatException ex) {}
                            }
                            break;
                        }
                        break;
                    }
                    break Label_0394;
                }
                contentValues.put("hit_url", s);
                try {
                    dg2.insert("hits2", (String)null, contentValues);
                    this.aVn.bH(false);
                    return;
                }
                catch (SQLiteException ex2) {
                    Q.da("Error storing hit");
                    return;
                }
            }
            final long long1 = 0L;
            continue;
        }
    }
}
