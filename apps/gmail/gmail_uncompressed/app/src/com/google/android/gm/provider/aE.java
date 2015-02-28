package com.google.android.gm.provider;

import android.accounts.*;
import java.util.concurrent.*;
import android.content.*;
import com.google.common.a.a.*;
import com.android.mail.utils.*;
import java.io.*;
import com.google.android.gm.persistence.*;
import android.database.*;
import com.google.common.collect.*;
import android.database.sqlite.*;
import android.text.*;
import java.util.*;
import com.google.android.gm.c.*;

public final class ae implements aj
{
    private static final String TAG;
    private static final Map<String, Integer> bhJ;
    private static Set<String> bhO;
    private static Set<String> bhP;
    private static final Set<String> bhQ;
    private static final Set<String> bhR;
    private static final Set<String> bhf;
    protected final Account Tw;
    private final SQLiteDatabase bcJ;
    final D bdw;
    private final Operations bhA;
    long bhB;
    Collection<ah> bhC;
    Map<Long, Boolean> bhD;
    private final Map<String, String> bhE;
    private final Map<String, byte[]> bhF;
    final ag bhG;
    private final w bhH;
    private boolean bhI;
    private final Map<Long, af> bhK;
    private final Map<String, af> bhL;
    private long bhM;
    private long bhN;
    private String bhS;
    private boolean bhT;
    private final Context mContext;
    
    static {
        TAG = com.android.mail.utils.D.AU();
        bhJ = new y<String, Integer>().p("^i", 1).p("^sq_ig_i_personal", 2).p("^sq_ig_i_social", 3).p("^sq_ig_i_promo", 4).p("^sq_ig_i_notification", 5).p("^sq_ig_i_group", 6).p("^iim", 7).p("^t", 8).p("^io_im", 9).p("^b", 10).p("^f", 11).p("^^out", 12).p("^r", 13).p("^all", 14).p("^s", 15).p("^k", 16).Zo();
        ae.bhO = Sets.p("^r", "^^out", "^s");
        ae.bhP = Sets.p("^f", "^t", "^b", "^all", "^k", "^io_im");
        bhQ = Sets.p("^^out", "^r");
        bhf = Sets.p("^f");
        bhR = Sets.p("^all", "^b", "^s", "^k");
    }
    
    public ae(final Context mContext, final Account tw, final SQLiteDatabase bcJ, final Operations bhA, final ag bhG) {
        this.bhE = new ConcurrentHashMap<String, String>();
        this.bhF = new ConcurrentHashMap<String, byte[]>();
        this.bhI = false;
        this.bhK = (Map<Long, af>)Maps.aan();
        this.bhL = (Map<String, af>)Maps.aan();
        this.bhM = 0L;
        this.bhN = 0L;
        this.bhT = false;
        this.mContext = mContext;
        this.Tw = tw;
        this.bcJ = bcJ;
        this.bhA = bhA;
        this.bhC = null;
        this.bhG = bhG;
        this.Fm();
        this.bdw = new D(this.bcJ.query("labels", new String[] { "_id", "canonicalName", "name", "numConversations", "numUnreadConversations", "numUnseenConversations", "color", "hidden" }, (String)null, (String[])null, (String)null, (String)null, (String)null));
        this.bhH = new w(this.bcJ, this);
        this.Fp();
    }
    
    public static void E(final SQLiteDatabase sqLiteDatabase) {
        final Cursor query = sqLiteDatabase.query("labels", new String[] { "_id", "canonicalName" }, (String)null, (String[])null, (String)null, (String)null, (String)null);
        long min = -1L;
        try {
            while (query.moveToNext()) {
                final long long1 = query.getLong(0);
                if (au(long1)) {
                    min = Math.min(min, long1);
                }
            }
            query.moveToPosition(-1);
            while (query.moveToNext()) {
                final long long2 = query.getLong(0);
                if (eN(query.getString(1)) && !au(long2)) {
                    --min;
                    final String[] array = { Long.toString(min), Long.toString(long2) };
                    sqLiteDatabase.execSQL("UPDATE labels SET _id = ? WHERE _id = ?", (Object[])array);
                    sqLiteDatabase.execSQL("UPDATE message_labels SET labels_id = ? WHERE labels_id = ?", (Object[])array);
                    sqLiteDatabase.execSQL("UPDATE conversation_labels SET labels_id = ? WHERE labels_id = ?", (Object[])array);
                    Operations.a(sqLiteDatabase, long2, min);
                    sqLiteDatabase.execSQL("UPDATE conversations SET labelIds = REPLACE(labelIds, '," + long2 + ",', '," + min + ",')");
                }
            }
        }
        finally {
            query.close();
        }
        query.close();
    }
    
    private void Fm() {
        final Cursor query = this.bcJ.query("server_preferences", new String[] { "name", "value", "blobValue" }, (String)null, (String[])null, (String)null, (String)null, (String)null);
        if (query != null) {
            while (query.moveToNext()) {
                final String string = query.getString(0);
                final String string2 = query.getString(1);
                final byte[] blob = query.getBlob(2);
                if (string2 != null) {
                    this.bhE.put(string, string2);
                }
                else {
                    this.bhF.put(string, blob);
                }
            }
            query.close();
        }
    }
    
    private void Fp() {
        if (this.bhI) {
            return;
        }
        while (true) {
            this.bcJ.beginTransactionNonExclusive();
            while (true) {
                String s;
                Integer n;
                try {
                    final Iterator<Map.Entry<String, Integer>> iterator = ae.bhJ.entrySet().iterator();
                    if (!iterator.hasNext()) {
                        break;
                    }
                    final Map.Entry<String, Integer> entry = iterator.next();
                    s = entry.getKey();
                    n = entry.getValue();
                    if (!this.bcJ.inTransaction()) {
                        throw new IllegalStateException("Must be in transaction");
                    }
                }
                finally {
                    this.bcJ.endTransaction();
                }
                final ContentValues contentValues = new ContentValues();
                contentValues.put("systemLabelOrder", n);
                this.a(s, contentValues);
                this.bcJ.update("labels", contentValues, "canonicalName = ?", new String[] { s });
                continue;
            }
        }
        this.bhI = true;
        this.FI();
        this.bcJ.setTransactionSuccessful();
        this.bcJ.endTransaction();
    }
    
    private a Ft() {
        final byte[] array = this.bhF.get("sx_piac");
        if (array == null) {
            E.e(ae.TAG, "Could not find personal inbox android config protobuf", new Object[0]);
            return null;
        }
        try {
            return new a(com.google.android.gm.provider.a.a.boa).o(array);
        }
        catch (IOException ex) {
            E.f(ae.TAG, "Unable to parse personal inbox android config protobuf", ex);
            return null;
        }
    }
    
    public static String a(final af af) {
        if (af == null) {
            throw new IllegalArgumentException("null label");
        }
        return af.bhU;
    }
    
    private void a(final long n, final long n2, final long n3, final boolean b, final Operations$RecordHistory operations$RecordHistory) {
        this.a(n, n2, n3, b, operations$RecordHistory, true);
    }
    
    private void a(final long n, final long n2, final long n3, final boolean b, final Operations$RecordHistory operations$RecordHistory, final boolean b2) {
        final long el = this.bdw.El();
        final long eo = this.bdw.Eo();
        if (b) {
            String s;
            if (el == n3) {
                s = "UPDATE conversations SET labelIds = ? || REPLACE(labelIds, ?, ?), forceAllUnread = 1 WHERE queryId != 0 AND _id = ?";
            }
            else {
                s = "UPDATE conversations SET labelIds = ? || REPLACE(labelIds, ?, ?) WHERE queryId != 0 AND _id = ?";
            }
            this.bcJ.execSQL(s, (Object[])new String[] { "," + n3, "," + n3 + ",", ",", Long.toString(n) });
            if (eo == n3) {
                if (b2) {
                    this.a(n2, n3, true, operations$RecordHistory, false);
                }
            }
            else {
                final String string = Long.toString(n);
                this.bcJ.execSQL("INSERT or REPLACE INTO message_labels (message_messageId, labels_id, message_conversation) SELECT messageId, ?, ? FROM messages WHERE conversation = ? AND messageId <= ?", (Object[])new String[] { Long.toString(n3), string, string, Long.toString(n2) });
                if (operations$RecordHistory == Operations$RecordHistory.bmO) {
                    this.bhA.a(n, n2, "conversationLabelAdded", n3);
                }
                if (this.bdw.Ej() == n3) {
                    this.a(n, n2, this.bdw.Ep(), false, operations$RecordHistory);
                    return;
                }
                if (this.bdw.Ep() == n3) {
                    this.a(n, n2, this.bdw.Ej(), false, operations$RecordHistory);
                }
            }
            return;
        }
        final String string2 = Long.toString(n);
        this.bcJ.delete("message_labels", "labels_id = ? AND message_labels.message_conversation = ? AND message_labels.message_messageId <= ?", new String[] { Long.toString(n3), string2, Long.toString(n2) });
        if (operations$RecordHistory == Operations$RecordHistory.bmO) {
            this.bhA.a(n, n2, "conversationLabelRemoved", n3);
        }
        String s2;
        if (el == n3) {
            s2 = "UPDATE conversations SET labelIds = REPLACE(labelIds, ?, ?), forceAllUnread = 0 WHERE queryId != 0 AND _id = ?";
        }
        else {
            s2 = "UPDATE conversations SET labelIds = REPLACE(labelIds, ?, ?) WHERE queryId != 0 AND _id = ?";
        }
        this.bcJ.execSQL(s2, (Object[])new String[] { "," + n3 + ",", ",", string2 });
    }
    
    private void a(final long n, final long n2, final boolean b, final Operations$RecordHistory operations$RecordHistory, final boolean b2) {
        final long ao = this.ao(n);
        final long eo = this.bdw.Eo();
        while (true) {
            Label_0116: {
                if (!b) {
                    break Label_0116;
                }
                this.b(n2, n, ao);
                if (operations$RecordHistory == Operations$RecordHistory.bmO) {
                    this.bhA.a(ao, n, "messageLabelAdded", n2);
                }
                break Label_0116;
                while (true) {
                    final SQLiteStatement compileStatement = this.bcJ.compileStatement("SELECT maxMessageId FROM conversations WHERE _id = ? AND queryId = 0 LIMIT 1");
                    long simpleQueryForLong = 0L;
                    Label_0202: {
                        try {
                            compileStatement.bindLong(1, ao);
                            simpleQueryForLong = compileStatement.simpleQueryForLong();
                            compileStatement.close();
                            if (b) {
                                this.a(ao, simpleQueryForLong, n2, b, operations$RecordHistory, false);
                                return;
                            }
                            break Label_0202;
                            while (true) {
                                this.bhA.a(ao, n, "messageLabelRemoved", n2);
                                break;
                                this.bcJ.delete("message_labels", "labels_id = ? AND message_messageId = ?", new String[] { Long.toString(n2), Long.toString(n) });
                                continue;
                            }
                        }
                        // iftrue(Label_0052:, operations$RecordHistory != Operations$RecordHistory.bmO)
                        catch (SQLiteDoneException ex) {
                            return;
                        }
                        finally {
                            compileStatement.close();
                        }
                    }
                    final SQLiteStatement compileStatement2 = this.bcJ.compileStatement("SELECT COUNT(*) FROM message_labels WHERE labels_id = ? AND message_conversation = ?");
                    try {
                        compileStatement2.bindLong(1, n2);
                        compileStatement2.bindLong(2, ao);
                        final long simpleQueryForLong2 = compileStatement2.simpleQueryForLong();
                        compileStatement2.close();
                        if (simpleQueryForLong2 == 0L) {
                            this.a(ao, simpleQueryForLong, n2, b, operations$RecordHistory, false);
                        }
                        return;
                    }
                    finally {
                        compileStatement2.close();
                    }
                }
            }
            if (eo == n2 && b2) {
                continue;
            }
            break;
        }
    }
    
    private void a(final String s, final ContentValues contentValues) {
        final b dd = b.DD();
        boolean b;
        if (Gmail.dZ(s) || s.startsWith("^")) {
            b = true;
        }
        else {
            b = false;
        }
        int n;
        if (b) {
            n = 1;
        }
        else {
            n = 0;
        }
        contentValues.put("systemLabel", n);
        final String a = dd.a(this.mContext, this.Tw.name, false);
        final boolean equals = a.equals("priority");
        if (ae.bhJ.containsKey(s)) {
            int n2;
            if (s.equals(com.google.android.gm.persistence.b.q(this.mContext, a, this.Tw.name))) {
                n2 = 1;
            }
            else {
                n2 = 1 + ae.bhJ.get(s);
            }
            contentValues.put("systemLabelOrder", n2);
        }
        if (b) {
            final boolean b2 = !ae.bhJ.containsKey(s);
            final boolean e = dd.E(this.mContext, this.Tw.name);
            boolean b3 = false;
            Label_0229: {
                if (Gmail.ea(s)) {
                    if (e && !equals) {
                        final Iterator<ai> iterator = this.Fu().values().iterator();
                        while (iterator.hasNext()) {
                            final boolean equals2 = s.equals(iterator.next().getLabel());
                            b3 = false;
                            if (equals2) {
                                break Label_0229;
                            }
                        }
                        b3 = true;
                    }
                    else {
                        b3 = true;
                    }
                }
                else if ("^i".equals(s) || "^iim".equals(s)) {
                    b3 = false;
                    if (e) {
                        b3 = false;
                        if (!equals) {
                            b3 = true;
                        }
                    }
                }
                else {
                    b3 = ("^b".equals(s) || b2);
                }
            }
            contentValues.put("hidden", b3);
        }
        if (ae.bhP.contains(s)) {
            contentValues.put("labelCountDisplayBehavior", 2);
        }
        if (ae.bhO.contains(s)) {
            contentValues.put("labelCountDisplayBehavior", 1);
        }
        if (ae.bhQ.contains(s)) {
            contentValues.put("labelSyncPolicy", 1);
        }
        if (ae.bhR.contains(s)) {
            contentValues.put("labelSyncPolicy", 2);
        }
        if (ae.bhf.contains(s)) {
            contentValues.put("labelSyncPolicy", 3);
        }
    }
    
    private void a(final Map<String, String> map, final boolean b) {
        try {
            this.bcJ.beginTransactionNonExclusive();
            for (final Map.Entry<String, String> entry : map.entrySet()) {
                this.b(entry.getKey(), entry.getValue(), b);
                if (b) {
                    this.bhA.ab(entry.getKey(), entry.getValue());
                }
            }
        }
        finally {
            this.bcJ.endTransaction();
        }
        this.bhE.putAll(map);
        this.bcJ.setTransactionSuccessful();
        this.bcJ.endTransaction();
    }
    
    private long ao(final long n) {
        try {
            return DatabaseUtils.longForQuery(this.bcJ, "select conversation from messages where messageId = ?", new String[] { Long.toString(n) });
        }
        catch (SQLException ex) {
            return 0L;
        }
    }
    
    public static boolean au(final long n) {
        return n < -1L && n >= -1000L;
    }
    
    public static String b(final af af) {
        if (af == null) {
            return null;
        }
        return af.bhU;
    }
    
    private void b(final long n, final long n2, final long n3) {
        final ContentValues contentValues = new ContentValues();
        contentValues.put("labels_id", n);
        contentValues.put("message_messageId", n2);
        contentValues.put("message_conversation", n3);
        this.bcJ.replace("message_labels", (String)null, contentValues);
    }
    
    private void c(final a a) {
        this.m(ImmutableMap.r("sx_piac", a.toByteArray()));
    }
    
    private int eK(final String s) {
        final String em = this.eM(s);
        if (em == null) {
            return -1;
        }
        try {
            return Integer.parseInt(em);
        }
        catch (NumberFormatException ex) {
            E.e(ae.TAG, ex, "Value %s for key %s cannot be parsed as an int", em, s);
            return -1;
        }
    }
    
    public static boolean eN(final String s) {
        return s != null && s.startsWith("^^");
    }
    
    private boolean n(final String s, final boolean b) {
        final String em = this.eM(s);
        if (em == null) {
            return b;
        }
        return !em.equals("0") && (em.equals("1") || Boolean.parseBoolean(em));
    }
    
    public final void A(final Collection<ah> bhC) {
        this.bhC = bhC;
    }
    
    public final boolean FA() {
        return !"1".equals(this.bhE.get("bx_ioao"));
    }
    
    public final boolean FB() {
        final boolean n = this.n("temp_adie", false);
        E.c(ae.TAG, "reading always-show-images CF, val=%s acct=%s", n, this.Tw.name);
        return n;
    }
    
    public final boolean FC() {
        if (!this.FB()) {
            return false;
        }
        final boolean n = this.n("bx_eid", true);
        E.c(ae.TAG, "MailCore.getAlwaysShowImages(), val=%s acct=%s", n, this.Tw.name);
        return n;
    }
    
    public final boolean FD() {
        return this.n("bx_eidps", false);
    }
    
    public final void FE() {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("bx_eidps", "true");
        this.a(hashMap, true);
    }
    
    public final boolean FF() {
        return this.n("bx_sc", false);
    }
    
    public final int FG() {
        return this.eK("ix_awtsv");
    }
    
    public final void FH() {
        if (1 > this.eK("ix_awtsv")) {
            this.a(ImmutableMap.r("ix_awtsv", "1"), true);
        }
    }
    
    public final void FI() {
        synchronized (this) {
            if (!this.bcJ.inTransaction()) {
                throw new IllegalStateException("Must be in transaction");
            }
        }
        this.bhK.clear();
        this.bhL.clear();
        this.bdw.requery();
        long id = 0L;
        long n = -1L;
        for (final Map.Entry<String, V> entry : this.bdw.Eh().getRows().entrySet()) {
            final long long1 = Long.parseLong(entry.getKey());
            final String asString = ((ContentValues)entry.getValue()).getAsString("canonicalName");
            if (asString == null) {
                E.f(ae.TAG, "Null canonical name in onLabelsChanged", new Object[0]);
            }
            else {
                final af af = new af(long1, asString);
                if (au(long1) != eN(asString) && !asString.equals("") && !Gmail.bdN.containsKey(long1)) {
                    throw new IllegalStateException("Not clear whether label is local: " + af);
                }
                this.bhK.put(long1, af);
                this.bhL.put(af.bhU, af);
                if (long1 > id) {
                    id = af.id;
                }
                long id2;
                if (au(long1) && long1 < n) {
                    id2 = af.id;
                }
                else {
                    id2 = n;
                }
                n = id2;
            }
        }
        this.bhM = id + 1L;
        this.bhN = n - 1L;
    }
    // monitorexit(this)
    
    public final Set<Long> FJ() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: ldc             "^^out"
        //     3: invokevirtual   com/google/android/gm/provider/ae.eE:(Ljava/lang/String;)Lcom/google/android/gm/provider/af;
        //     6: astore_1       
        //     7: aload_0        
        //     8: ldc_w           "^^retry"
        //    11: invokevirtual   com/google/android/gm/provider/ae.eE:(Ljava/lang/String;)Lcom/google/android/gm/provider/af;
        //    14: astore_2       
        //    15: aload_1        
        //    16: ifnull          23
        //    19: aload_2        
        //    20: ifnonnull       49
        //    23: getstatic       com/google/android/gm/provider/ae.TAG:Ljava/lang/String;
        //    26: ldc_w           "null label in setRetryOnAllOutgoing. outbox: %s retry: %s"
        //    29: iconst_2       
        //    30: anewarray       Ljava/lang/Object;
        //    33: dup            
        //    34: iconst_0       
        //    35: aload_1        
        //    36: aastore        
        //    37: dup            
        //    38: iconst_1       
        //    39: aload_2        
        //    40: aastore        
        //    41: invokestatic    com/google/android/gm/provider/ad.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //    44: pop            
        //    45: getstatic       java/util/Collections.EMPTY_SET:Ljava/util/Set;
        //    48: areturn        
        //    49: aload_1        
        //    50: getfield        com/google/android/gm/provider/af.id:J
        //    53: lstore          4
        //    55: aload_2        
        //    56: getfield        com/google/android/gm/provider/af.id:J
        //    59: lstore          6
        //    61: new             Ljava/util/HashSet;
        //    64: dup            
        //    65: invokespecial   java/util/HashSet.<init>:()V
        //    68: astore          8
        //    70: aload_0        
        //    71: getfield        com/google/android/gm/provider/ae.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //    74: invokevirtual   android/database/sqlite/SQLiteDatabase.beginTransactionNonExclusive:()V
        //    77: aload_0        
        //    78: getfield        com/google/android/gm/provider/ae.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //    81: astore          11
        //    83: iconst_1       
        //    84: anewarray       Ljava/lang/String;
        //    87: dup            
        //    88: iconst_0       
        //    89: ldc_w           "message_messageId"
        //    92: aastore        
        //    93: astore          12
        //    95: iconst_1       
        //    96: anewarray       Ljava/lang/String;
        //    99: astore          13
        //   101: aload           13
        //   103: iconst_0       
        //   104: lload           4
        //   106: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //   109: aastore        
        //   110: aload           11
        //   112: ldc_w           "message_labels"
        //   115: aload           12
        //   117: ldc_w           "labels_id = ?"
        //   120: aload           13
        //   122: aconst_null    
        //   123: aconst_null    
        //   124: aconst_null    
        //   125: invokevirtual   android/database/sqlite/SQLiteDatabase.query:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //   128: astore          14
        //   130: aload           14
        //   132: invokeinterface android/database/Cursor.moveToFirst:()Z
        //   137: ifeq            191
        //   140: aload           14
        //   142: iconst_0       
        //   143: invokeinterface android/database/Cursor.getLong:(I)J
        //   148: lstore          15
        //   150: aload_0        
        //   151: lload           15
        //   153: invokespecial   com/google/android/gm/provider/ae.ao:(J)J
        //   156: lstore          17
        //   158: aload           8
        //   160: lload           17
        //   162: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   165: invokeinterface java/util/Set.add:(Ljava/lang/Object;)Z
        //   170: pop            
        //   171: aload_0        
        //   172: lload           6
        //   174: lload           15
        //   176: lload           17
        //   178: invokespecial   com/google/android/gm/provider/ae.b:(JJJ)V
        //   181: aload           14
        //   183: invokeinterface android/database/Cursor.moveToNext:()Z
        //   188: ifne            140
        //   191: aload_0        
        //   192: getfield        com/google/android/gm/provider/ae.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //   195: invokevirtual   android/database/sqlite/SQLiteDatabase.setTransactionSuccessful:()V
        //   198: aload_0        
        //   199: getfield        com/google/android/gm/provider/ae.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //   202: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //   205: aload           14
        //   207: ifnull          217
        //   210: aload           14
        //   212: invokeinterface android/database/Cursor.close:()V
        //   217: aload           8
        //   219: areturn        
        //   220: astore          9
        //   222: aconst_null    
        //   223: astore          10
        //   225: aload_0        
        //   226: getfield        com/google/android/gm/provider/ae.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //   229: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //   232: aload           10
        //   234: ifnull          244
        //   237: aload           10
        //   239: invokeinterface android/database/Cursor.close:()V
        //   244: aload           9
        //   246: athrow         
        //   247: astore          9
        //   249: aload           14
        //   251: astore          10
        //   253: goto            225
        //    Signature:
        //  ()Ljava/util/Set<Ljava/lang/Long;>;
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  77     130    220    225    Any
        //  130    140    247    256    Any
        //  140    191    247    256    Any
        //  191    198    247    256    Any
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
    
    public final D Fn() {
        return this.bdw;
    }
    
    public final Collection<af> Fo() {
        synchronized (this) {
            return this.bhL.values();
        }
    }
    
    public final Cursor Fq() {
        final SQLiteQueryBuilder sqLiteQueryBuilder = new SQLiteQueryBuilder();
        sqLiteQueryBuilder.setTables("custom_from_prefs");
        return sqLiteQueryBuilder.query(this.bcJ, (String[])null, (String)null, (String[])null, (String)null, (String)null, com.google.android.gm.c.b.bqO + " ASC");
    }
    
    public final String Fr() {
        Label_0086: {
            if (this.bhT) {
                break Label_0086;
            }
            final SQLiteQueryBuilder sqLiteQueryBuilder = new SQLiteQueryBuilder();
            sqLiteQueryBuilder.setTables("dasher_info");
            final Cursor query = sqLiteQueryBuilder.query(this.bcJ, Gmail.bdV, (String)null, (String[])null, (String)null, (String)null, (String)null);
            Label_0071: {
                if (query == null) {
                    break Label_0071;
                }
                try {
                    if (query.moveToFirst()) {
                        this.bhS = query.getString(query.getColumnIndex("domainTitle"));
                    }
                    if (query != null) {
                        query.close();
                    }
                    this.bhT = true;
                    return this.bhS;
                }
                finally {
                    if (query != null) {
                        query.close();
                    }
                }
            }
        }
    }
    
    public final void Fs() {
        this.bcJ.beginTransactionNonExclusive();
        try {
            for (final String s : Gmail.bdE) {
                final ContentValues contentValues = new ContentValues();
                this.a(s, contentValues);
                this.bcJ.update("labels", contentValues, "canonicalName = ?", new String[] { s });
            }
        }
        finally {
            this.bcJ.endTransaction();
        }
        final ContentValues contentValues2 = new ContentValues();
        this.a("^i", contentValues2);
        this.bcJ.update("labels", contentValues2, "canonicalName = ?", new String[] { "^i" });
        final ContentValues contentValues3 = new ContentValues();
        this.a("^iim", contentValues3);
        this.bcJ.update("labels", contentValues3, "canonicalName = ?", new String[] { "^iim" });
        this.FI();
        this.bcJ.setTransactionSuccessful();
        this.bcJ.endTransaction();
    }
    
    public final Map<String, ai> Fu() {
        final a ft = this.Ft();
        if (ft == null) {
            return (Map<String, ai>)ImmutableMap.Zu();
        }
        final y<String, ai> y = new y<String, ai>();
        for (int fa = ft.fA(1), i = 0; i < fa; ++i) {
            final a ap = ft.ap(1, i);
            final String string = ap.getString(1);
            y.p(string, new ai(string, ap.getString(2), ap.getInt(3)));
        }
        return y.Zo();
    }
    
    public final boolean Fv() {
        final a ft = this.Ft();
        return ft != null && ft.fx(2);
    }
    
    public final boolean Fw() {
        return this.n("bx_pie", false);
    }
    
    public final boolean Fx() {
        return this.n("bx_piuf", false);
    }
    
    public final boolean Fy() {
        return this.n("ShouldShowSectionedInboxOOBE", false);
    }
    
    public final void Fz() {
        this.bhE.remove("ShouldShowSectionedInboxOOBE");
    }
    
    public final void G(final List<Long> list) {
        final String join = TextUtils.join((CharSequence)", ", (Iterable)list);
        this.bcJ.delete("message_labels", "message_messageId IN (" + join + ")", (String[])null);
        this.bhA.I(list);
        final int delete = this.bcJ.delete("messages", "messageId IN (" + join + ")", (String[])null);
        if (delete != list.size()) {
            E.e(ae.TAG, "Deleted messages count (%d) does not match delete request count (%d)", delete, list.size());
        }
    }
    
    public final void U(final String s, final String s2) {
        final String replace = s2.replace("/customfrom/", "");
        com.google.android.gm.c.b.f(GmailProvider.en(s), replace);
        this.bcJ.delete("custom_from_prefs", "_id= ?", new String[] { replace });
    }
    
    public final String V(final String s, final String s2) {
        final String em = this.eM(s);
        if (em == null) {
            return s2;
        }
        return em;
    }
    
    public final int W(final String s, final String s2) {
        final T v = Y.v(this.mContext, this.Tw.name, Gmail.ei(s));
        if (v != null) {
            final long id = v.getId();
            final T v2 = Y.v(this.mContext, this.Tw.name, s2);
            if (v2 != null) {
                final long id2 = v2.getId();
                final T v3 = Y.v(this.mContext, this.Tw.name, Gmail.ei(s2));
                if (v3 != null) {
                    final long id3 = v3.getId();
                    this.bcJ.beginTransactionNonExclusive();
                    try {
                        final ContentValues contentValues = new ContentValues(1);
                        contentValues.put("labels_id", Long.toString(id3));
                        final String[] array = { Long.toString(id), Long.toString(id2) };
                        final int updateWithOnConflict = this.bcJ.updateWithOnConflict("conversation_labels", contentValues, "labels_id = ? AND conversation_id IN (SELECT conversation_id FROM conversation_labels WHERE labels_id = ?)", array, 5);
                        this.bcJ.updateWithOnConflict("message_labels", contentValues, "labels_id = ? AND message_conversation IN (SELECT conversation_id FROM conversation_labels WHERE labels_id = ?)", array, 5);
                        final ContentValues contentValues2 = new ContentValues(3);
                        contentValues2.put("numConversations", updateWithOnConflict);
                        contentValues2.put("numUnreadConversations", updateWithOnConflict);
                        contentValues2.put("numUnseenConversations", updateWithOnConflict);
                        this.bcJ.update("labels", contentValues2, "_id = ?", new String[] { Long.toString(id3) });
                        this.bcJ.setTransactionSuccessful();
                        this.FI();
                        return updateWithOnConflict;
                    }
                    finally {
                        this.bcJ.endTransaction();
                    }
                }
            }
        }
        return 0;
    }
    
    public final void a(final long n, final long n2, final af af, final boolean b, final Operations$RecordHistory operations$RecordHistory) {
        this.a(n, n2, af.id, b, operations$RecordHistory);
    }
    
    public final void a(final long n, final MailSync$SyncRationale mailSync$SyncRationale) {
        this.bhH.a(n, mailSync$SyncRationale);
    }
    
    final void a(final long n, final MailSync$SyncRationale mailSync$SyncRationale, final boolean b, final boolean b2) {
        this.bhH.a(n, mailSync$SyncRationale, b, b2);
    }
    
    public final void a(final long n, final af af, final boolean b, final Operations$RecordHistory operations$RecordHistory) {
        this.a(n, af.id, b, operations$RecordHistory, true);
    }
    
    public final void a(final long n, final Set<Long> set) {
        this.bcJ.delete("message_labels", "message_messageId = ?", new String[] { Long.toString(n) });
        final Iterator<Long> iterator = set.iterator();
        while (iterator.hasNext()) {
            this.a(n, iterator.next(), true, Operations$RecordHistory.bmN, false);
        }
    }
    
    public final void a(final af af, final int n, final int n2, final int n3, final int n4, final String s) {
        final ContentValues contentValues = new ContentValues();
        contentValues.put("numConversations", n);
        contentValues.put("numUnreadConversations", n2);
        contentValues.put("numUnseenConversations", n3);
        contentValues.put("color", n4);
        contentValues.put("visibility", s);
        this.bcJ.beginTransactionNonExclusive();
        try {
            this.bcJ.update("labels", contentValues, "_id = ?", new String[] { Long.toString(af.id) });
            this.bcJ.setTransactionSuccessful();
            this.FI();
        }
        finally {
            this.bcJ.endTransaction();
        }
    }
    
    public final void a(final af af, final String s, final String s2, final int n, final String s3) {
        if (!this.bcJ.inTransaction()) {
            throw new IllegalStateException("Must be in transaction");
        }
        final ContentValues contentValues = new ContentValues();
        contentValues.put("canonicalName", s);
        contentValues.put("name", s2);
        contentValues.put("color", n);
        contentValues.put("visibility", s3);
        this.a(s, contentValues);
        this.bcJ.update("labels", contentValues, "_id = ?", new String[] { Long.toString(af.id) });
    }
    
    public final void a(final String s, final Map<String, bb> map, final boolean b) {
        while (true) {
            while (true) {
                Map.Entry<String, bb> entry = null;
                Label_0222: {
                    try {
                        this.bcJ.beginTransactionNonExclusive();
                        if (b) {
                            this.bcJ.delete("custom_from_prefs", (String)null, (String[])null);
                            com.google.android.gm.c.b.fr(s);
                        }
                        final Iterator<Map.Entry<String, bb>> iterator = map.entrySet().iterator();
                        while (iterator.hasNext()) {
                            entry = iterator.next();
                            final ContentValues contentValues = new ContentValues();
                            contentValues.put("name", entry.getValue().name);
                            contentValues.put("is_default", entry.getValue().blc);
                            if (!TextUtils.isEmpty((CharSequence)entry.getValue().replyTo)) {
                                break Label_0222;
                            }
                            final String replyTo = entry.getKey();
                            contentValues.put("reply_to", replyTo);
                            contentValues.put("address", entry.getValue().address);
                            contentValues.put("_id", (String)entry.getKey());
                            this.bcJ.insertWithOnConflict("custom_from_prefs", (String)null, contentValues, 5);
                        }
                        break;
                    }
                    finally {
                        this.bcJ.endTransaction();
                    }
                }
                final String replyTo = entry.getValue().replyTo;
                continue;
            }
        }
        this.bcJ.setTransactionSuccessful();
        com.google.android.gm.c.b.a(GmailProvider.en(s), this.Fq());
        this.bcJ.endTransaction();
    }
    
    final void a(final Set<String> set, final boolean b) {
        final a ft = this.Ft();
        if (ft == null) {
            E.e(ae.TAG, "User changed section config, but we have no existing protobuf", new Object[0]);
            return;
        }
        final int fa = ft.fA(1);
        final HashSet<Object> fs = Sets.fs(fa);
        for (int i = fa - 1; i >= 0; --i) {
            final String string = ft.ap(1, i).getString(1);
            if (!set.contains(string)) {
                ft.fz(i);
            }
            else {
                fs.add(string);
            }
        }
        for (final String s : set) {
            if (!fs.contains(s)) {
                final a a = new a(com.google.android.gm.provider.a.a.bnZ);
                a.setString(1, s);
                a.setString(2, "label:" + s);
                a.setInt(3, f.IC());
            }
        }
    Label_0205_Outer:
        while (true) {
            ft.q(2, b);
            while (true) {
                while (true) {
                    try {
                        this.c(ft);
                        if (set.size() > 1) {
                            final boolean b2 = true;
                            this.k(ImmutableMap.r("bx_pie", Boolean.toString(b2)));
                            return;
                        }
                    }
                    catch (IOException ex) {
                        E.f(ae.TAG, "Error writing tab config protobuf. Requires server sync", new Object[0]);
                        continue Label_0205_Outer;
                    }
                    break;
                }
                final boolean b2 = false;
                continue;
            }
        }
    }
    
    public final void a(final af[] array, final af[] array2) {
        this.bhD = (Map<Long, Boolean>)Maps.aan();
        for (final af af : array) {
            if (af != null) {
                this.bhD.put(af.id, true);
            }
        }
        for (final af af2 : array2) {
            if (af2 != null) {
                this.bhD.put(af2.id, false);
            }
        }
    }
    
    public final void an(final long bhB) {
        this.bhB = bhB;
    }
    
    public final boolean ap(final long n) {
        final String[] array = { Long.toString(n) };
        this.bcJ.delete("conversation_labels", "conversation_id = ? AND queryId = 0", array);
        this.bcJ.delete("conversations", "_id = ? AND queryId = 0", array);
        this.bcJ.delete("message_labels", "message_conversation = ?", array);
        final int delete = this.bcJ.delete("messages", "conversation = ? AND queryId = 0", array);
        E.b(ae.TAG, "Purged %d messages in conversation %d", delete, n);
        final ContentValues contentValues = new ContentValues();
        contentValues.put("status", -1);
        this.bcJ.update("attachments", contentValues, "messages_conversation = ?", array);
        return delete != 0;
    }
    
    public final af aq(final long n) {
        synchronized (this) {
            return this.bhK.get(n);
        }
    }
    
    public final af ar(final long n) {
        af af = this.aq(n);
        if (af == null) {
            this.bcJ.beginTransactionNonExclusive();
            try {
                if (!this.bcJ.inTransaction()) {
                    throw new IllegalStateException("Must be in transaction");
                }
            }
            finally {
                this.bcJ.endTransaction();
            }
            if (this.bhM == 0L) {
                throw new IllegalStateException("onLabelsChanged not yet called");
            }
            final ContentValues contentValues = new ContentValues();
            contentValues.put("canonicalName", "");
            contentValues.put("name", "");
            contentValues.put("numConversations", 0);
            contentValues.put("numUnreadConversations", 0);
            contentValues.put("numUnseenConversations", 0);
            contentValues.put("color", Integer.MAX_VALUE);
            contentValues.put("visibility", "SHOW");
            contentValues.put("_id", n);
            this.bcJ.replace("labels", (String)null, contentValues);
            this.bcJ.setTransactionSuccessful();
            this.FI();
            af = this.aq(n);
            this.bcJ.endTransaction();
        }
        return af;
    }
    
    @Override
    public final af as(final long n) {
        final af af;
        synchronized (this) {
            af = this.bhK.get(n);
            if (af == null) {
                throw new IllegalArgumentException("Unknown label id: " + n);
            }
        }
        // monitorexit(this)
        return af;
    }
    
    public final void at(final long n) {
        final ContentValues contentValues = new ContentValues(1);
        contentValues.put("numUnseenConversations", 0);
        this.bcJ.beginTransactionNonExclusive();
        try {
            this.bcJ.update("labels", contentValues, "_id = ?", new String[] { Long.toString(n) });
            this.bcJ.setTransactionSuccessful();
            this.FI();
        }
        finally {
            this.bcJ.endTransaction();
        }
    }
    
    public final long av(final long n) {
        final long id = this.eF("^^failed").id;
        final long ao = this.ao(n);
        this.bcJ.beginTransactionNonExclusive();
        try {
            this.b(id, n, ao);
            this.bcJ.setTransactionSuccessful();
            return ao;
        }
        finally {
            this.bcJ.endTransaction();
        }
    }
    
    public final void b(final String s, final String s2, final boolean b) {
        final ContentValues contentValues = new ContentValues(3);
        contentValues.put("_id", s);
        contentValues.put("name", s);
        contentValues.put("value", s2);
        this.bcJ.insertWithOnConflict("server_preferences", (String)null, contentValues, 5);
        if (!com.google.android.gm.c.b.bqQ.equals(s)) {
            if ("sx_rt".equals(s)) {
                g.ag(this.Tw.name, s2);
            }
            else if ("sx_dn".equals(s)) {
                g.ah(this.Tw.name, s2);
            }
            else if ("bx_pie".equals(s)) {
                b.DD().a(this.mContext, this.Tw.name, Boolean.parseBoolean(s2), this.Fu().keySet(), this.bhG);
                com.android.mail.widget.b.v(this.mContext, "application/gmail-ls");
            }
        }
        this.bhE.put(s, s2);
        if (b) {
            this.bhA.ab(s, s2);
        }
    }
    
    public final void bV(final boolean b) {
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        hashMap.put("bx_eid", String.valueOf(b));
        this.a(hashMap, true);
    }
    
    public final void c(final af af) {
        if (!this.bcJ.inTransaction()) {
            throw new IllegalStateException("Must be in transaction");
        }
        final String[] array = { Long.toString(af.id) };
        this.bcJ.delete("message_labels", "labels_id = ?", array);
        this.bcJ.delete("labels", "_id = ?", array);
        this.bcJ.delete("conversation_labels", "labels_id = ?", array);
        this.bhA.aR(af.id);
    }
    
    public final void d(final String s, final Map<String, bc> map) {
        try {
            this.bcJ.beginTransactionNonExclusive();
            for (final Map.Entry<String, bc> entry : map.entrySet()) {
                final ContentValues contentValues = new ContentValues();
                contentValues.put(f.bqZ, (String)entry.getKey());
                contentValues.put(f.bra, entry.getValue().bld);
                contentValues.put(f.bqY, entry.getValue().ble);
                contentValues.put("_id", Integer.parseInt(entry.getKey()));
                this.bcJ.insertWithOnConflict("custom_label_color_prefs", (String)null, contentValues, 5);
                f.a(s, entry.getKey(), entry.getValue());
            }
        }
        finally {
            this.bcJ.endTransaction();
        }
        this.bcJ.setTransactionSuccessful();
        this.bcJ.endTransaction();
    }
    
    final int e(final ContentValues contentValues) {
        if (contentValues == null || contentValues.size() == 0) {
            E.f(ae.TAG, "Attempting to update recent labels with empty or null map: %s", contentValues);
            return 0;
        }
        final String[] array = new String[3 * contentValues.size()];
        final StringBuilder sb = new StringBuilder("UPDATE labels SET ");
        sb.append("lastTouched");
        sb.append(" = (CASE ");
        sb.append("canonicalName");
        final Set keySet = contentValues.keySet();
        final Iterator<String> iterator = keySet.iterator();
        int n = 0;
        while (iterator.hasNext()) {
            final String s = iterator.next();
            sb.append(" WHEN ?");
            final int n2 = n + 1;
            array[n] = s;
            sb.append(" THEN ?");
            n = n2 + 1;
            array[n2] = contentValues.getAsString(s);
        }
        sb.append(" END)");
        sb.append(" WHERE ");
        sb.append("canonicalName");
        sb.append(" IN (");
        final Iterator<String> iterator2 = keySet.iterator();
        int n3 = n;
        int n4 = 1;
        while (iterator2.hasNext()) {
            final String s2 = iterator2.next();
            if (n4 != 0) {
                n4 = 0;
            }
            else {
                sb.append(", ");
            }
            sb.append("?");
            final int n5 = n3 + 1;
            array[n3] = s2;
            n3 = n5;
        }
        sb.append(")");
        this.bcJ.beginTransactionNonExclusive();
        try {
            this.bcJ.execSQL(sb.toString(), (Object[])array);
            this.bcJ.setTransactionSuccessful();
            return 1;
        }
        finally {
            this.bcJ.endTransaction();
        }
    }
    
    @Override
    public final af eE(final String s) {
        synchronized (this) {
            return this.bhL.get(s);
        }
    }
    
    @Override
    public final af eF(final String s) {
        final af af;
        synchronized (this) {
            af = this.bhL.get(s);
            if (af == null) {
                throw new IllegalArgumentException("Could not find label with canonical name: " + s);
            }
        }
        // monitorexit(this)
        return af;
    }
    
    public final af eG(final String s) {
        af af = this.eE(s);
        if (af == null) {
            this.bcJ.beginTransactionNonExclusive();
            try {
                if (!this.bcJ.inTransaction()) {
                    throw new IllegalStateException("Must be in transaction");
                }
            }
            finally {
                this.bcJ.endTransaction();
            }
            if (this.bhM == 0L) {
                throw new IllegalStateException("onLabelsChanged not yet called");
            }
            final ContentValues contentValues = new ContentValues();
            contentValues.put("canonicalName", s);
            contentValues.put("name", "");
            contentValues.put("numConversations", 0);
            contentValues.put("numUnreadConversations", 0);
            contentValues.put("numUnseenConversations", 0);
            contentValues.put("color", Integer.MAX_VALUE);
            contentValues.put("visibility", "SHOW");
            this.a(s, contentValues);
            Long n;
            if (eN(s)) {
                n = this.bhN--;
            }
            else if (Gmail.bdO.contains(s)) {
                n = Gmail.bdN.YQ().get(s);
            }
            else {
                final long bhM = this.bhM;
                this.bhM = 1L + bhM;
                n = bhM;
            }
            contentValues.put("_id", n);
            if (this.bcJ.replace("labels", (String)null, contentValues) == -1L) {
                throw new IllegalStateException("Failed to insert row for label: " + s);
            }
            this.bcJ.setTransactionSuccessful();
            this.FI();
            af = this.eE(s);
            this.bcJ.endTransaction();
        }
        return af;
    }
    
    public final void eH(final String bhS) {
        this.bhS = bhS;
        final ContentValues contentValues = new ContentValues(1);
        contentValues.put("domainTitle", bhS);
        try {
            this.bcJ.beginTransactionNonExclusive();
            this.bcJ.delete("dasher_info", (String)null, (String[])null);
            this.bcJ.insertWithOnConflict("dasher_info", (String)null, contentValues, 5);
            this.bcJ.setTransactionSuccessful();
        }
        finally {
            this.bcJ.endTransaction();
        }
    }
    
    public final void eI(final String s) {
        if (this.bhE.containsKey(s)) {
            this.bhE.remove(s);
            this.bcJ.delete("server_preferences", "name = ?", new String[] { s });
            return;
        }
        E.e(ae.TAG, "Trying to delete a pref that is not present: " + s, new Object[0]);
    }
    
    public final boolean eJ(final String s) {
        return this.n(s, false);
    }
    
    public final long eL(final String s) {
        final String em = this.eM(s);
        if (em == null) {
            return 0L;
        }
        try {
            return Long.parseLong(em);
        }
        catch (NumberFormatException ex) {
            E.e(ae.TAG, ex, "Value %s for key %s cannot be parsed as a long", em, s);
            return 0L;
        }
    }
    
    public final String eM(final String s) {
        final String s2 = this.bhE.get(s);
        E.b(ae.TAG, "userpref %s is %s for %s", s, s2, this.Tw.name);
        return s2;
    }
    
    public final void g(final long n, final long n2) {
        if (!this.bcJ.inTransaction()) {
            throw new IllegalStateException("Must be in transaction");
        }
        final String string = Long.toString(n);
        final String string2 = Long.toString(n2);
        this.bcJ.execSQL("UPDATE labels SET lastMessageTimestamp = ? WHERE _id = ? AND lastMessageTimestamp < ?", (Object[])new String[] { string2, string, string2 });
    }
    
    public final void k(final Map<String, String> map) {
        this.a(map, false);
    }
    
    final void l(final Map<String, String> map) {
        this.bhE.putAll(map);
    }
    
    public final void m(final Map<String, byte[]> map) {
        final Set<String> keySet = this.Fu().keySet();
        try {
            this.bcJ.beginTransactionNonExclusive();
            for (final Map.Entry<String, byte[]> entry : map.entrySet()) {
                final ContentValues contentValues = new ContentValues();
                contentValues.put("name", (String)entry.getKey());
                contentValues.putNull("value");
                contentValues.put("blobValue", (byte[])entry.getValue());
                contentValues.put("_id", (String)entry.getKey());
                this.bcJ.insertWithOnConflict("server_preferences", (String)null, contentValues, 5);
                this.bhF.put(entry.getKey(), entry.getValue());
            }
        }
        finally {
            this.bcJ.endTransaction();
        }
        this.bcJ.setTransactionSuccessful();
        this.bcJ.endTransaction();
        if (map.containsKey("sx_piac")) {
            this.Fs();
            this.bhG.FK();
            final Set<String> keySet2 = this.Fu().keySet();
            final HashSet<Object> g = Sets.g((Iterable<?>)keySet2);
            g.removeAll(keySet);
            final Gmail$Settings p = Gmail.P(this.mContext, this.Tw.name);
            final HashSet<String> set = new HashSet<String>();
            set.addAll((Collection<?>)p.EB());
            final HashSet<String> set2 = new HashSet<String>();
            set2.addAll((Collection<?>)p.EA());
            if (set2.contains("^sq_ig_i_personal")) {
                set2.addAll((Collection<?>)g);
            }
            else if (set.contains("^sq_ig_i_personal")) {
                set.addAll((Collection<?>)g);
            }
            final HashSet<?> g2 = Sets.g((Iterable<?>)keySet);
            g2.removeAll(keySet2);
            set.removeAll(g2);
            set2.removeAll(g2);
            p.z(set);
            p.y(set2);
            Gmail.a(this.Tw.name, p, this.mContext.getContentResolver());
        }
    }
}
