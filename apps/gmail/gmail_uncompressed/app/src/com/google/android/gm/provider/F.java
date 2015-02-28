package com.google.android.gm.provider;

import android.content.*;
import com.android.mail.utils.*;
import com.google.android.gms.appdatasearch.*;
import android.database.sqlite.*;
import android.accounts.*;

public final class f
{
    private static final RegisterSectionInfo[] bcD;
    private static final QuerySpecification bcE;
    private static int bcF;
    private final a bcG;
    private final Context mContext;
    
    static {
        f.bcF = 0;
        final String[] array = { "conversation", "message_id" };
        final String[] array2 = { "from_address", "to_addresses", "subject", "body" };
        final RegisterSectionInfo[] bcD2 = new RegisterSectionInfo[array.length + array2.length];
        final int length = array.length;
        int i = 0;
        int n = 0;
        while (i < length) {
            bcD2[n] = new h(array[i]).fF("plain").Jo().Jp();
            final int n2 = n + 1;
            ++i;
            n = n2;
        }
        final int length2 = array2.length;
        int n3 = n;
        for (final String s : array2) {
            RegisterSectionInfo registerSectionInfo;
            if (s.equals("body")) {
                registerSectionInfo = new h(s).fF("html").Jp();
            }
            else if (s.contains("address")) {
                registerSectionInfo = new h(s).fF("rfc822").Jp();
            }
            else {
                registerSectionInfo = new h(s).fF("plain").Jp();
            }
            bcD2[n3] = registerSectionInfo;
            ++n3;
        }
        bcD = bcD2;
        bcE = new com.google.android.gms.appdatasearch.f().fB("^f").a(new Section("conversation")).a(new Section("body", true, 80)).Jl();
    }
    
    private f(final Context mContext) {
        this.mContext = mContext;
        this.bcG = new a(this.mContext);
    }
    
    public static boolean bW(final Context context) {
        if (f.bcF == 0) {
            if (ag.aF(context)) {
                f.bcF = 2;
            }
            else {
                final int cf = com.google.android.gms.common.f.cf(context);
                if (cf == 0) {
                    f.bcF = 1;
                }
                else {
                    f.bcF = 2;
                    E.f("Gmail", "Google play services not available: %d", cf);
                }
            }
        }
        return f.bcF == 1;
    }
    
    public static f bX(final Context context) {
        if (!bW(context)) {
            return null;
        }
        return new f(context);
    }
    
    public final SuggestionResults K(final String p0, final String p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aconst_null    
        //     1: astore_3       
        //     2: aload_0        
        //     3: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //     6: astore          4
        //     8: aload           4
        //    10: monitorenter   
        //    11: aload_0        
        //    12: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //    15: ldc2_w          10000
        //    18: invokevirtual   com/google/android/gms/appdatasearch/a.aX:(J)Lcom/google/android/gms/common/a;
        //    21: astore          6
        //    23: aload           6
        //    25: invokevirtual   com/google/android/gms/common/a.Kk:()Z
        //    28: istore          7
        //    30: iload           7
        //    32: ifeq            196
        //    35: aload_2        
        //    36: ifnonnull       105
        //    39: aconst_null    
        //    40: astore          10
        //    42: aload_0        
        //    43: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //    46: aload_1        
        //    47: aload           10
        //    49: bipush          20
        //    51: invokevirtual   com/google/android/gms/appdatasearch/a.a:(Ljava/lang/String;[Ljava/lang/String;I)Lcom/google/android/gms/appdatasearch/SuggestionResults;
        //    54: astore          17
        //    56: aload           17
        //    58: astore          13
        //    60: aload           13
        //    62: invokevirtual   com/google/android/gms/appdatasearch/SuggestionResults.hasError:()Z
        //    65: ifeq            242
        //    68: iconst_1       
        //    69: anewarray       Ljava/lang/Object;
        //    72: astore          18
        //    74: aload           18
        //    76: iconst_0       
        //    77: aload           13
        //    79: invokevirtual   com/google/android/gms/appdatasearch/SuggestionResults.Jq:()Ljava/lang/String;
        //    82: aastore        
        //    83: ldc             "Gmail"
        //    85: ldc             "Error from suggestions: %s"
        //    87: aload           18
        //    89: invokestatic    com/google/android/gm/provider/ad.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //    92: pop            
        //    93: aload_0        
        //    94: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //    97: invokevirtual   com/google/android/gms/appdatasearch/a.disconnect:()V
        //   100: aload           4
        //   102: monitorexit    
        //   103: aload_3        
        //   104: areturn        
        //   105: iconst_1       
        //   106: anewarray       Ljava/lang/String;
        //   109: dup            
        //   110: iconst_0       
        //   111: aload_2        
        //   112: aastore        
        //   113: astore          10
        //   115: goto            42
        //   118: astore          15
        //   120: ldc             "Gmail"
        //   122: aload           15
        //   124: ldc             "Error executing suggestion query"
        //   126: iconst_0       
        //   127: anewarray       Ljava/lang/Object;
        //   130: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   133: pop            
        //   134: aload_0        
        //   135: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //   138: invokevirtual   com/google/android/gms/appdatasearch/a.disconnect:()V
        //   141: goto            100
        //   144: astore          5
        //   146: aload           4
        //   148: monitorexit    
        //   149: aload           5
        //   151: athrow         
        //   152: astore          12
        //   154: aconst_null    
        //   155: astore          13
        //   157: ldc             "Gmail"
        //   159: aload           12
        //   161: ldc             "Error executing suggestion query"
        //   163: iconst_0       
        //   164: anewarray       Ljava/lang/Object;
        //   167: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   170: pop            
        //   171: aload_0        
        //   172: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //   175: invokevirtual   com/google/android/gms/appdatasearch/a.disconnect:()V
        //   178: aload           13
        //   180: astore_3       
        //   181: goto            100
        //   184: astore          11
        //   186: aload_0        
        //   187: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //   190: invokevirtual   com/google/android/gms/appdatasearch/a.disconnect:()V
        //   193: aload           11
        //   195: athrow         
        //   196: iconst_1       
        //   197: anewarray       Ljava/lang/Object;
        //   200: astore          8
        //   202: aload           8
        //   204: iconst_0       
        //   205: aload           6
        //   207: invokevirtual   com/google/android/gms/common/a.getErrorCode:()I
        //   210: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   213: aastore        
        //   214: ldc             "Gmail"
        //   216: ldc             "Couldn't connect to appdatasearch for suggestions: %d"
        //   218: aload           8
        //   220: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   223: pop            
        //   224: aconst_null    
        //   225: astore_3       
        //   226: goto            100
        //   229: astore          12
        //   231: goto            157
        //   234: astore          15
        //   236: aload           13
        //   238: astore_3       
        //   239: goto            120
        //   242: aload           13
        //   244: astore_3       
        //   245: goto            93
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                             
        //  -----  -----  -----  -----  ---------------------------------
        //  11     30     144    152    Any
        //  42     56     118    120    Ljava/lang/NullPointerException;
        //  42     56     152    157    Ljava/lang/IllegalStateException;
        //  42     56     184    196    Any
        //  60     93     234    242    Ljava/lang/NullPointerException;
        //  60     93     229    234    Ljava/lang/IllegalStateException;
        //  60     93     184    196    Any
        //  93     100    144    152    Any
        //  100    103    144    152    Any
        //  105    115    118    120    Ljava/lang/NullPointerException;
        //  105    115    152    157    Ljava/lang/IllegalStateException;
        //  105    115    184    196    Any
        //  120    134    184    196    Any
        //  134    141    144    152    Any
        //  157    171    184    196    Any
        //  171    178    144    152    Any
        //  186    196    144    152    Any
        //  196    224    144    152    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 126, Size: 126
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
    
    public final SearchResults c(final String p0, final String p1, final int p2, final int p3) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //     4: astore          5
        //     6: aload           5
        //     8: monitorenter   
        //     9: aload_0        
        //    10: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //    13: ldc2_w          10000
        //    16: invokevirtual   com/google/android/gms/appdatasearch/a.aX:(J)Lcom/google/android/gms/common/a;
        //    19: astore          7
        //    21: aload           7
        //    23: invokevirtual   com/google/android/gms/common/a.Kk:()Z
        //    26: istore          8
        //    28: iload           8
        //    30: ifeq            188
        //    33: aload_0        
        //    34: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //    37: aload_1        
        //    38: iconst_1       
        //    39: anewarray       Ljava/lang/String;
        //    42: dup            
        //    43: iconst_0       
        //    44: aload_2        
        //    45: aastore        
        //    46: iload_3        
        //    47: iload           4
        //    49: getstatic       com/google/android/gm/provider/f.bcE:Lcom/google/android/gms/appdatasearch/QuerySpecification;
        //    52: invokevirtual   com/google/android/gms/appdatasearch/a.a:(Ljava/lang/String;[Ljava/lang/String;IILcom/google/android/gms/appdatasearch/QuerySpecification;)Lcom/google/android/gms/appdatasearch/SearchResults;
        //    55: astore          17
        //    57: aload           17
        //    59: astore          11
        //    61: aload           11
        //    63: invokevirtual   com/google/android/gms/appdatasearch/SearchResults.hasError:()Z
        //    66: ifeq            97
        //    69: iconst_1       
        //    70: anewarray       Ljava/lang/Object;
        //    73: astore          18
        //    75: aload           18
        //    77: iconst_0       
        //    78: aload           11
        //    80: invokevirtual   com/google/android/gms/appdatasearch/SearchResults.Jq:()Ljava/lang/String;
        //    83: aastore        
        //    84: ldc             "Gmail"
        //    86: ldc             "Error searching: %s"
        //    88: aload           18
        //    90: invokestatic    com/google/android/gm/provider/ad.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //    93: pop            
        //    94: aconst_null    
        //    95: astore          11
        //    97: aload_0        
        //    98: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //   101: invokevirtual   com/google/android/gms/appdatasearch/a.disconnect:()V
        //   104: aload           5
        //   106: monitorexit    
        //   107: aload           11
        //   109: areturn        
        //   110: astore          15
        //   112: aconst_null    
        //   113: astore          11
        //   115: ldc             "Gmail"
        //   117: aload           15
        //   119: ldc             "Error executing search query"
        //   121: iconst_0       
        //   122: anewarray       Ljava/lang/Object;
        //   125: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   128: pop            
        //   129: aload_0        
        //   130: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //   133: invokevirtual   com/google/android/gms/appdatasearch/a.disconnect:()V
        //   136: goto            104
        //   139: astore          6
        //   141: aload           5
        //   143: monitorexit    
        //   144: aload           6
        //   146: athrow         
        //   147: astore          13
        //   149: aconst_null    
        //   150: astore          11
        //   152: ldc             "Gmail"
        //   154: aload           13
        //   156: ldc             "Error executing search query"
        //   158: iconst_0       
        //   159: anewarray       Ljava/lang/Object;
        //   162: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   165: pop            
        //   166: aload_0        
        //   167: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //   170: invokevirtual   com/google/android/gms/appdatasearch/a.disconnect:()V
        //   173: goto            104
        //   176: astore          12
        //   178: aload_0        
        //   179: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //   182: invokevirtual   com/google/android/gms/appdatasearch/a.disconnect:()V
        //   185: aload           12
        //   187: athrow         
        //   188: iconst_1       
        //   189: anewarray       Ljava/lang/Object;
        //   192: astore          9
        //   194: aload           9
        //   196: iconst_0       
        //   197: aload           7
        //   199: invokevirtual   com/google/android/gms/common/a.getErrorCode:()I
        //   202: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   205: aastore        
        //   206: ldc             "Gmail"
        //   208: ldc             "Couldn't connect to appdatasearch for search: %d"
        //   210: aload           9
        //   212: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   215: pop            
        //   216: aconst_null    
        //   217: astore          11
        //   219: goto            104
        //   222: astore          13
        //   224: goto            152
        //   227: astore          15
        //   229: goto            115
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                             
        //  -----  -----  -----  -----  ---------------------------------
        //  9      28     139    147    Any
        //  33     57     110    115    Ljava/lang/NullPointerException;
        //  33     57     147    152    Ljava/lang/IllegalStateException;
        //  33     57     176    188    Any
        //  61     94     227    232    Ljava/lang/NullPointerException;
        //  61     94     222    227    Ljava/lang/IllegalStateException;
        //  61     94     176    188    Any
        //  97     104    139    147    Any
        //  104    107    139    147    Any
        //  115    129    176    188    Any
        //  129    136    139    147    Any
        //  152    166    176    188    Any
        //  166    173    139    147    Any
        //  178    188    139    147    Any
        //  188    216    139    147    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 116, Size: 116
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
    
    public final void d(final SQLiteDatabase p0, final String p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: lconst_0       
        //     1: lstore_3       
        //     2: ldc             "Gmail"
        //     4: ldc             "Schedule indexing for %s"
        //     6: iconst_1       
        //     7: anewarray       Ljava/lang/Object;
        //    10: dup            
        //    11: iconst_0       
        //    12: aload_2        
        //    13: aastore        
        //    14: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //    17: pop            
        //    18: aload_1        
        //    19: ldc             "SELECT min(_id), max(_id) FROM search_sequence"
        //    21: aconst_null    
        //    22: invokevirtual   android/database/sqlite/SQLiteDatabase.rawQuery:(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
        //    25: astore          6
        //    27: aload           6
        //    29: invokeinterface android/database/Cursor.moveToNext:()Z
        //    34: ifeq            363
        //    37: aload           6
        //    39: iconst_0       
        //    40: invokeinterface android/database/Cursor.getLong:(I)J
        //    45: lstore          8
        //    47: aload           6
        //    49: iconst_1       
        //    50: invokeinterface android/database/Cursor.getLong:(I)J
        //    55: lstore          26
        //    57: lload           26
        //    59: lstore_3       
        //    60: aload           6
        //    62: invokeinterface android/database/Cursor.close:()V
        //    67: aload_0        
        //    68: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //    71: astore          10
        //    73: aload           10
        //    75: monitorenter   
        //    76: aload_0        
        //    77: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //    80: ldc2_w          30000
        //    83: invokevirtual   com/google/android/gms/appdatasearch/a.aX:(J)Lcom/google/android/gms/common/a;
        //    86: astore          12
        //    88: aload           12
        //    90: invokevirtual   com/google/android/gms/common/a.Kk:()Z
        //    93: ifne            140
        //    96: iconst_1       
        //    97: anewarray       Ljava/lang/Object;
        //   100: astore          24
        //   102: aload           24
        //   104: iconst_0       
        //   105: aload           12
        //   107: invokevirtual   com/google/android/gms/common/a.getErrorCode:()I
        //   110: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   113: aastore        
        //   114: ldc             "Gmail"
        //   116: ldc             "Connection to search failed: %d"
        //   118: aload           24
        //   120: invokestatic    com/google/android/gm/provider/ad.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   123: pop            
        //   124: aload           10
        //   126: monitorexit    
        //   127: return         
        //   128: astore          7
        //   130: aload           6
        //   132: invokeinterface android/database/Cursor.close:()V
        //   137: aload           7
        //   139: athrow         
        //   140: ldc             "Gmail"
        //   142: ldc             "Getting status for %s"
        //   144: iconst_1       
        //   145: anewarray       Ljava/lang/Object;
        //   148: dup            
        //   149: iconst_0       
        //   150: aload_2        
        //   151: aastore        
        //   152: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   155: pop            
        //   156: aload_0        
        //   157: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //   160: aload_2        
        //   161: invokevirtual   com/google/android/gms/appdatasearch/a.fA:(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/CorpusStatus;
        //   164: astore          19
        //   166: aload           19
        //   168: invokevirtual   com/google/android/gms/appdatasearch/CorpusStatus.Jg:()Z
        //   171: ifne            224
        //   174: ldc             "Gmail"
        //   176: new             Ljava/lang/StringBuilder;
        //   179: dup            
        //   180: ldc             "Account "
        //   182: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   185: aload_2        
        //   186: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   189: ldc             " is not registered for search"
        //   191: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   194: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   197: iconst_0       
        //   198: anewarray       Ljava/lang/Object;
        //   201: invokestatic    com/google/android/gm/provider/ad.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   204: pop            
        //   205: aload_0        
        //   206: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //   209: invokevirtual   com/google/android/gms/appdatasearch/a.disconnect:()V
        //   212: aload           10
        //   214: monitorexit    
        //   215: return         
        //   216: astore          11
        //   218: aload           10
        //   220: monitorexit    
        //   221: aload           11
        //   223: athrow         
        //   224: lload           8
        //   226: aload           19
        //   228: invokevirtual   com/google/android/gms/appdatasearch/CorpusStatus.Ji:()J
        //   231: lcmp           
        //   232: ifgt            266
        //   235: iconst_1       
        //   236: anewarray       Ljava/lang/String;
        //   239: astore          21
        //   241: aload           21
        //   243: iconst_0       
        //   244: aload           19
        //   246: invokevirtual   com/google/android/gms/appdatasearch/CorpusStatus.Ji:()J
        //   249: invokestatic    java/lang/String.valueOf:(J)Ljava/lang/String;
        //   252: aastore        
        //   253: aload_1        
        //   254: ldc_w           "search_sequence"
        //   257: ldc_w           "_id <= ?"
        //   260: aload           21
        //   262: invokevirtual   android/database/sqlite/SQLiteDatabase.delete:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
        //   265: pop            
        //   266: lload_3        
        //   267: aload           19
        //   269: invokevirtual   com/google/android/gms/appdatasearch/CorpusStatus.Jh:()J
        //   272: lcmp           
        //   273: ifle            286
        //   276: aload_0        
        //   277: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //   280: aload_2        
        //   281: lload_3        
        //   282: invokevirtual   com/google/android/gms/appdatasearch/a.r:(Ljava/lang/String;J)Z
        //   285: pop            
        //   286: aload_0        
        //   287: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //   290: invokevirtual   com/google/android/gms/appdatasearch/a.disconnect:()V
        //   293: aload           10
        //   295: monitorexit    
        //   296: return         
        //   297: astore          16
        //   299: ldc             "Gmail"
        //   301: aload           16
        //   303: ldc_w           "Error scheduling search indexing"
        //   306: iconst_0       
        //   307: anewarray       Ljava/lang/Object;
        //   310: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   313: pop            
        //   314: aload_0        
        //   315: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //   318: invokevirtual   com/google/android/gms/appdatasearch/a.disconnect:()V
        //   321: goto            293
        //   324: astore          14
        //   326: ldc             "Gmail"
        //   328: aload           14
        //   330: ldc_w           "Error scheduling search indexing"
        //   333: iconst_0       
        //   334: anewarray       Ljava/lang/Object;
        //   337: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   340: pop            
        //   341: aload_0        
        //   342: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //   345: invokevirtual   com/google/android/gms/appdatasearch/a.disconnect:()V
        //   348: goto            293
        //   351: astore          13
        //   353: aload_0        
        //   354: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //   357: invokevirtual   com/google/android/gms/appdatasearch/a.disconnect:()V
        //   360: aload           13
        //   362: athrow         
        //   363: lload_3        
        //   364: lstore          8
        //   366: goto            60
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                             
        //  -----  -----  -----  -----  ---------------------------------
        //  27     57     128    140    Any
        //  76     127    216    224    Any
        //  140    205    297    324    Ljava/lang/NullPointerException;
        //  140    205    324    351    Ljava/lang/IllegalStateException;
        //  140    205    351    363    Any
        //  205    215    216    224    Any
        //  224    266    297    324    Ljava/lang/NullPointerException;
        //  224    266    324    351    Ljava/lang/IllegalStateException;
        //  224    266    351    363    Any
        //  266    286    297    324    Ljava/lang/NullPointerException;
        //  266    286    324    351    Ljava/lang/IllegalStateException;
        //  266    286    351    363    Any
        //  286    293    216    224    Any
        //  293    296    216    224    Any
        //  299    314    351    363    Any
        //  314    321    216    224    Any
        //  326    341    351    363    Any
        //  341    348    216    224    Any
        //  353    363    216    224    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0140:
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
    
    public final void onAccountsUpdated(final Account[] p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: arraylength    
        //     2: invokestatic    com/google/common/collect/Sets.fs:(I)Ljava/util/HashSet;
        //     5: astore_2       
        //     6: aload_1        
        //     7: arraylength    
        //     8: istore_3       
        //     9: iconst_0       
        //    10: istore          4
        //    12: iload           4
        //    14: iload_3        
        //    15: if_icmpge       83
        //    18: aload_1        
        //    19: iload           4
        //    21: aaload         
        //    22: astore          23
        //    24: aload           23
        //    26: getfield        android/accounts/Account.type:Ljava/lang/String;
        //    29: ldc_w           "com.google"
        //    32: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //    35: ifeq            77
        //    38: aload_0        
        //    39: getfield        com/google/android/gm/provider/f.mContext:Landroid/content/Context;
        //    42: invokestatic    com/google/android/gm/i.aT:(Landroid/content/Context;)Lcom/google/android/gm/i;
        //    45: aload           23
        //    47: getfield        android/accounts/Account.name:Ljava/lang/String;
        //    50: invokevirtual   com/google/android/gm/i.dt:(Ljava/lang/String;)Ljava/lang/String;
        //    53: astore          24
        //    55: aload           23
        //    57: getfield        android/accounts/Account.name:Ljava/lang/String;
        //    60: aload           24
        //    62: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //    65: ifeq            77
        //    68: aload_2        
        //    69: aload           23
        //    71: invokeinterface java/util/Set.add:(Ljava/lang/Object;)Z
        //    76: pop            
        //    77: iinc            4, 1
        //    80: goto            12
        //    83: aload_2        
        //    84: invokeinterface java/util/Set.size:()I
        //    89: invokestatic    com/google/common/collect/Lists.fn:(I)Ljava/util/ArrayList;
        //    92: astore          5
        //    94: aload_2        
        //    95: invokeinterface java/util/Set.iterator:()Ljava/util/Iterator;
        //   100: astore          6
        //   102: aload           6
        //   104: invokeinterface java/util/Iterator.hasNext:()Z
        //   109: ifeq            248
        //   112: aload           6
        //   114: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   119: checkcast       Landroid/accounts/Account;
        //   122: astore          20
        //   124: new             Ljava/lang/StringBuilder;
        //   127: dup            
        //   128: ldc_w           "content://gmail-appindexing/"
        //   131: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   134: aload           20
        //   136: getfield        android/accounts/Account.name:Ljava/lang/String;
        //   139: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   142: ldc_w           "/appdatasearch"
        //   145: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   148: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   151: astore          21
        //   153: aload           5
        //   155: new             Lcom/google/android/gms/appdatasearch/g;
        //   158: dup            
        //   159: aload           20
        //   161: getfield        android/accounts/Account.name:Ljava/lang/String;
        //   164: invokespecial   com/google/android/gms/appdatasearch/g.<init>:(Ljava/lang/String;)V
        //   167: aload           20
        //   169: invokevirtual   com/google/android/gms/appdatasearch/g.c:(Landroid/accounts/Account;)Lcom/google/android/gms/appdatasearch/g;
        //   172: getstatic       com/google/android/gm/provider/f.bcD:[Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;
        //   175: invokevirtual   com/google/android/gms/appdatasearch/g.a:([Lcom/google/android/gms/appdatasearch/RegisterSectionInfo;)Lcom/google/android/gms/appdatasearch/g;
        //   178: aload           21
        //   180: invokevirtual   com/google/android/gms/appdatasearch/g.fD:(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/g;
        //   183: new             Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;
        //   186: dup            
        //   187: iconst_4       
        //   188: anewarray       Ljava/lang/String;
        //   191: dup            
        //   192: iconst_0       
        //   193: ldc             "from_address"
        //   195: aastore        
        //   196: dup            
        //   197: iconst_1       
        //   198: ldc             "to_addresses"
        //   200: aastore        
        //   201: dup            
        //   202: iconst_2       
        //   203: ldc             "subject"
        //   205: aastore        
        //   206: dup            
        //   207: iconst_3       
        //   208: ldc             "body"
        //   210: aastore        
        //   211: ldc             "^f"
        //   213: ldc             "to_addresses"
        //   215: invokespecial   com/google/android/gms/appdatasearch/RegisterCorpusIMEInfo.<init>:([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
        //   218: invokevirtual   com/google/android/gms/appdatasearch/g.a:(Lcom/google/android/gms/appdatasearch/RegisterCorpusIMEInfo;)Lcom/google/android/gms/appdatasearch/g;
        //   221: ldc_w           "EmailMessage"
        //   224: invokevirtual   com/google/android/gms/appdatasearch/g.fE:(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/g;
        //   227: invokevirtual   com/google/android/gms/appdatasearch/g.Jm:()Lcom/google/android/gms/appdatasearch/g;
        //   230: ldc_w           "1"
        //   233: invokevirtual   com/google/android/gms/appdatasearch/g.fC:(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/g;
        //   236: invokevirtual   com/google/android/gms/appdatasearch/g.Jn:()Lcom/google/android/gms/appdatasearch/RegisterCorpusInfo;
        //   239: invokeinterface java/util/List.add:(Ljava/lang/Object;)Z
        //   244: pop            
        //   245: goto            102
        //   248: aload_0        
        //   249: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //   252: astore          7
        //   254: aload           7
        //   256: monitorenter   
        //   257: aload_0        
        //   258: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //   261: ldc2_w          30000
        //   264: invokevirtual   com/google/android/gms/appdatasearch/a.aX:(J)Lcom/google/android/gms/common/a;
        //   267: astore          9
        //   269: aload           9
        //   271: invokevirtual   com/google/android/gms/common/a.Kk:()Z
        //   274: ifne            310
        //   277: iconst_1       
        //   278: anewarray       Ljava/lang/Object;
        //   281: astore          18
        //   283: aload           18
        //   285: iconst_0       
        //   286: aload           9
        //   288: invokevirtual   com/google/android/gms/common/a.getErrorCode:()I
        //   291: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   294: aastore        
        //   295: ldc             "Gmail"
        //   297: ldc_w           "Search registration failed: %d"
        //   300: aload           18
        //   302: invokestatic    com/google/android/gm/provider/ad.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   305: pop            
        //   306: aload           7
        //   308: monitorexit    
        //   309: return         
        //   310: aload_0        
        //   311: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //   314: aload           5
        //   316: invokevirtual   com/google/android/gms/appdatasearch/a.C:(Ljava/util/Collection;)Z
        //   319: pop            
        //   320: aload_0        
        //   321: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //   324: invokevirtual   com/google/android/gms/appdatasearch/a.disconnect:()V
        //   327: aload           7
        //   329: monitorexit    
        //   330: return         
        //   331: astore          8
        //   333: aload           7
        //   335: monitorexit    
        //   336: aload           8
        //   338: athrow         
        //   339: astore          15
        //   341: ldc             "Gmail"
        //   343: aload           15
        //   345: ldc_w           "Error registering corpora"
        //   348: iconst_0       
        //   349: anewarray       Ljava/lang/Object;
        //   352: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   355: pop            
        //   356: aload_0        
        //   357: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //   360: invokevirtual   com/google/android/gms/appdatasearch/a.disconnect:()V
        //   363: goto            327
        //   366: astore          13
        //   368: ldc             "Gmail"
        //   370: aload           13
        //   372: ldc_w           "Error registering corpora"
        //   375: iconst_0       
        //   376: anewarray       Ljava/lang/Object;
        //   379: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   382: pop            
        //   383: aload_0        
        //   384: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //   387: invokevirtual   com/google/android/gms/appdatasearch/a.disconnect:()V
        //   390: goto            327
        //   393: astore          11
        //   395: ldc             "Gmail"
        //   397: aload           11
        //   399: ldc_w           "Illegal argument registering corpora"
        //   402: iconst_0       
        //   403: anewarray       Ljava/lang/Object;
        //   406: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   409: pop            
        //   410: aload_0        
        //   411: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //   414: invokevirtual   com/google/android/gms/appdatasearch/a.disconnect:()V
        //   417: goto            327
        //   420: astore          10
        //   422: aload_0        
        //   423: getfield        com/google/android/gm/provider/f.bcG:Lcom/google/android/gms/appdatasearch/a;
        //   426: invokevirtual   com/google/android/gms/appdatasearch/a.disconnect:()V
        //   429: aload           10
        //   431: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                
        //  -----  -----  -----  -----  ------------------------------------
        //  257    309    331    339    Any
        //  310    320    339    366    Ljava/lang/NullPointerException;
        //  310    320    366    393    Ljava/lang/IllegalStateException;
        //  310    320    393    420    Ljava/lang/IllegalArgumentException;
        //  310    320    420    432    Any
        //  320    327    331    339    Any
        //  327    330    331    339    Any
        //  341    356    420    432    Any
        //  356    363    331    339    Any
        //  368    383    420    432    Any
        //  383    390    331    339    Any
        //  395    410    420    432    Any
        //  410    417    331    339    Any
        //  422    432    331    339    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0310:
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
}
