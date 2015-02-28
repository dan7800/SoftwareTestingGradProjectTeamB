package com.google.analytics.tracking.android;

import android.database.sqlite.*;
import java.io.*;
import android.os.*;
import android.database.*;
import android.text.*;
import java.util.*;
import com.google.android.gms.analytics.internal.*;
import android.content.*;

final class ac extends SQLiteOpenHelper
{
    final /* synthetic */ Z aVq;
    private boolean aVr;
    private long aVs;
    
    ac(final Z aVq, final Context context, final String s) {
        this.aVq = aVq;
        super(context, s, (SQLiteDatabase$CursorFactory)null, 1);
        this.aVs = 0L;
    }
    
    private static boolean a(final String p0, final SQLiteDatabase p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_2       
        //     2: aload_1        
        //     3: ldc             "SQLITE_MASTER"
        //     5: iconst_1       
        //     6: anewarray       Ljava/lang/String;
        //     9: dup            
        //    10: iconst_0       
        //    11: ldc             "name"
        //    13: aastore        
        //    14: ldc             "name=?"
        //    16: iconst_1       
        //    17: anewarray       Ljava/lang/String;
        //    20: dup            
        //    21: iconst_0       
        //    22: aload_0        
        //    23: aastore        
        //    24: aconst_null    
        //    25: aconst_null    
        //    26: aconst_null    
        //    27: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    30: astore          8
        //    32: aload           8
        //    34: invokeinterface android/database/Cursor.moveToFirst:()Z
        //    39: istore          10
        //    41: aload           8
        //    43: ifnull          53
        //    46: aload           8
        //    48: invokeinterface android/database/Cursor.close:()V
        //    53: iload           10
        //    55: ireturn        
        //    56: astore          4
        //    58: aconst_null    
        //    59: astore          5
        //    61: new             Ljava/lang/StringBuilder;
        //    64: dup            
        //    65: ldc             "error querying for table "
        //    67: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    70: aload_0        
        //    71: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    74: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    77: invokestatic    com/google/analytics/tracking/android/Q.da:(Ljava/lang/String;)I
        //    80: pop            
        //    81: aload           5
        //    83: ifnull          93
        //    86: aload           5
        //    88: invokeinterface android/database/Cursor.close:()V
        //    93: iconst_0       
        //    94: ireturn        
        //    95: astore_3       
        //    96: aload_2        
        //    97: ifnull          106
        //   100: aload_2        
        //   101: invokeinterface android/database/Cursor.close:()V
        //   106: aload_3        
        //   107: athrow         
        //   108: astore_3       
        //   109: aload           8
        //   111: astore_2       
        //   112: goto            96
        //   115: astore          6
        //   117: aload           5
        //   119: astore_2       
        //   120: aload           6
        //   122: astore_3       
        //   123: goto            96
        //   126: astore          9
        //   128: aload           8
        //   130: astore          5
        //   132: goto            61
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  2      32     56     61     Landroid/database/sqlite/SQLiteException;
        //  2      32     95     96     Any
        //  32     41     126    135    Landroid/database/sqlite/SQLiteException;
        //  32     41     108    115    Any
        //  61     81     115    126    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 70, Size: 70
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
    
    public final SQLiteDatabase getWritableDatabase() {
        if (this.aVr && 3600000L + this.aVs > this.aVq.aSA.currentTimeMillis()) {
            throw new SQLiteException("Database creation failed");
        }
        this.aVr = true;
        this.aVs = this.aVq.aSA.currentTimeMillis();
        while (true) {
            try {
                SQLiteDatabase sqLiteDatabase = super.getWritableDatabase();
                if (sqLiteDatabase == null) {
                    sqLiteDatabase = super.getWritableDatabase();
                }
                this.aVr = false;
                return sqLiteDatabase;
            }
            catch (SQLiteException ex) {
                this.aVq.mContext.getDatabasePath(this.aVq.aVo).delete();
                final SQLiteDatabase sqLiteDatabase = null;
                continue;
            }
            break;
        }
    }
    
    public final void onCreate(final SQLiteDatabase sqLiteDatabase) {
        final String path = sqLiteDatabase.getPath();
        if (s.version() >= 9) {
            final File file = new File(path);
            file.setReadable(false, false);
            file.setWritable(false, false);
            file.setReadable(true, true);
            file.setWritable(true, true);
        }
    }
    
    public final void onOpen(final SQLiteDatabase sqLiteDatabase) {
        Label_0032: {
            if (Build$VERSION.SDK_INT >= 15) {
                break Label_0032;
            }
            while (true) {
                final Cursor rawQuery = sqLiteDatabase.rawQuery("PRAGMA journal_mode=memory", (String[])null);
                try {
                    rawQuery.moveToFirst();
                    rawQuery.close();
                    if (!a("hits2", sqLiteDatabase)) {
                        sqLiteDatabase.execSQL(Z.aVk);
                        return;
                    }
                }
                finally {
                    rawQuery.close();
                }
                final Cursor rawQuery2 = sqLiteDatabase.rawQuery("SELECT * FROM hits2 WHERE 0", (String[])null);
                final HashSet<String> set = new HashSet<String>();
                try {
                    final String[] columnNames = rawQuery2.getColumnNames();
                    for (int i = 0; i < columnNames.length; ++i) {
                        set.add(columnNames[i]);
                    }
                    rawQuery2.close();
                    if (!set.remove("hit_id") || !set.remove("hit_url") || !set.remove("hit_string") || !set.remove("hit_time")) {
                        throw new SQLiteException("Database column missing");
                    }
                }
                finally {
                    rawQuery2.close();
                }
                final boolean remove = set.remove("hit_app_id");
                boolean b = false;
                if (!remove) {
                    b = true;
                }
                if (!set.isEmpty()) {
                    throw new SQLiteException("Database has extra columns");
                }
                if (b) {
                    sqLiteDatabase.execSQL("ALTER TABLE hits2 ADD COLUMN hit_app_id");
                }
            }
        }
    }
    
    public final void onUpgrade(final SQLiteDatabase sqLiteDatabase, final int n, final int n2) {
    }
}
