package com.google.android.gm.provider;

import com.google.android.common.http.*;
import com.google.android.gm.c.*;
import com.google.android.gsf.*;
import org.apache.http.conn.params.*;
import android.content.pm.*;
import android.content.res.*;
import org.apache.http.params.*;
import android.app.*;
import com.google.android.gm.provider.uiprovider.*;
import java.io.*;
import android.text.*;
import org.apache.http.client.methods.*;
import java.util.*;
import com.google.common.collect.*;
import android.net.http.*;
import com.google.android.gms.common.*;
import org.apache.http.*;
import org.apache.http.client.*;
import org.apache.http.protocol.*;
import java.net.*;
import org.json.*;
import com.android.mail.a.*;
import com.google.android.mail.common.base.*;
import android.accounts.*;
import com.android.mail.utils.*;
import android.content.*;
import android.util.*;
import android.database.*;
import android.database.sqlite.*;
import com.google.android.gm.*;
import com.android.mail.providers.*;
import android.os.*;
import android.net.*;

public final class MailEngine implements j
{
    static final String TAG;
    private static boolean aQy;
    private static ab aQz;
    private static HandlerThread biT;
    static final String[] bia;
    static final String[] bib;
    static final String[] bic;
    private static final String[] bid;
    private static final String[] bie;
    private static final String[] bif;
    private static final String[] big;
    private static final String[] bih;
    private static String bii;
    private static final String[] bij;
    private static final Map<Integer, String> bik;
    private static final Set<Integer> bil;
    private static final Random bim;
    private static aJ bin;
    private static aU bio;
    private static long bja;
    private static Object bjb;
    static final Set<Thread> bjd;
    private static final Map<String, aK> bje;
    private static Handler bjg;
    private static final String[][] bji;
    private static final Map<String, String> bjj;
    static final Map<String, String> bjk;
    static long bjt;
    static aH bju;
    private Account Tw;
    private volatile int aAC;
    final Object aBL;
    SQLiteDatabase bcJ;
    private bG bcK;
    private final g bdb;
    ae bdv;
    private D bdw;
    Operations bhA;
    private aJ biA;
    private final aU biB;
    private final Map<Long, Boolean> biC;
    private GoogleHttpClient biD;
    private final CookieStore biE;
    private final P biF;
    private volatile boolean biG;
    private boolean biH;
    private List<Pair<Handler, aL>> biI;
    private final Object biJ;
    private volatile boolean biK;
    private int biL;
    private long biM;
    private final Object biN;
    private long biO;
    private boolean biP;
    private final Object biQ;
    private Thread biR;
    private final Observer biS;
    private final aI biU;
    private int biV;
    private final Runnable biW;
    private final int biX;
    private final int biY;
    private final int biZ;
    private final Object bip;
    private volatile boolean biq;
    private Thread bir;
    private boolean bis;
    MailSync bit;
    SQLiteDatabase biu;
    private final bH biv;
    final bB biw;
    final Object bix;
    private final BitSet biy;
    ba biz;
    private volatile boolean bjc;
    PowerManager$WakeLock bjf;
    private final Map<String, Long> bjh;
    private final Handler bjl;
    private final PendingIntent bjm;
    private boolean bjn;
    private volatile boolean bjo;
    private final Object bjp;
    private String bjq;
    private String bjr;
    private aG bjs;
    private final Map<Long, aP> bjv;
    private final Object bjw;
    private boolean bjx;
    private final Context mContext;
    
    static {
        TAG = com.android.mail.utils.D.AU();
        bia = new String[] { "conversation_fts_table", "message_fts_table" };
        bib = new String[] { "toAddresses", "ccAddresses", "bccAddresses" };
        bic = new String[] { "fromAddress" };
        bid = new String[] { "messageId", "conversation" };
        bie = new String[] { "value" };
        bif = new String[] { "synced" };
        big = new String[] { "event_id" };
        bih = new String[] { "SELECTION_ARGUMENT_DO_NOT_BECOME_ACTIVE_NETWORK_CURSOR" };
        MailEngine.bii = null;
        bij = new String[] { "^^cached", "^^out", "^imi", "^imn", "^im", "^io_ns", "^^important", "^^unimportant", "^^retry", "^^failed" };
        bik = ImmutableMap.Zv().p(5, "gmail_message_ad_forward").p(4, "gmail_message_ad_save_to_inbox").p(3, "gmail_message_ad_dismiss").p(8, "gmail_message_ad_dismiss_body").Zo();
        bil = ImmutableSet.Zx().k(1, 4, 9, 3, 8).Zy();
        bim = new Random(System.currentTimeMillis());
        MailEngine.bja = 0L;
        MailEngine.bjb = new Object();
        bjd = new HashSet<Thread>();
        bje = Maps.aan();
        MailEngine.bjg = null;
        bji = new String[][] { { "clientCreated" }, { "synced" }, { "queryId" }, { "_id", "messages._id" }, { "conversation", "messages.conversation" }, { "subject", "messages.subject" }, { "snippet", "messages.snippet" }, { "fromAddress", "messages.fromAddress" }, { "toAddresses", "messages.toAddresses" }, { "ccAddresses", "messages.ccAddresses" }, { "bccAddresses", "messages.bccAddresses" }, { "body", "CASE WHEN bodyCompressed IS NULL THEN '0' || messages.body ELSE '1' || bodyCompressed END" }, { "labelIds", "group_concat(labels_id, ' ')" }, { "labelCount", "COUNT(*)" }, { "messageLabels", "group_concat((labels._id || '^*^' || labels.canonicalName || '^*^' || (CASE labels.canonicalName    WHEN '^f' THEN ?    WHEN '^^out' THEN ?    WHEN '^i' THEN ?    WHEN '^r' THEN ?    WHEN '^b' THEN ?    WHEN '^all' THEN ?    WHEN '^u' THEN ?    WHEN '^k' THEN ?    WHEN '^s' THEN ?    WHEN '^t' THEN ?    WHEN '^g' THEN ?    WHEN '^io_im' THEN ?    WHEN '^iim' THEN ?    WHEN '^sq_ig_i_personal' THEN ?    WHEN '^sq_ig_i_social' THEN ?    WHEN '^sq_ig_i_promo' THEN ?    WHEN '^sq_ig_i_notification' THEN ?    WHEN '^sq_ig_i_group' THEN ?    ELSE labels.name END)  || '^*^' || labels.color || '^*^' || labels.hidden), '^**^')" }, { "isStarred", "SUM(CASE labels.canonicalName WHEN '^t' THEN 1 ELSE 0 END)" }, { "isDraft", "SUM(CASE labels.canonicalName WHEN '^r' THEN 1 ELSE 0 END)" }, { "isInOutbox", "SUM(CASE labels.canonicalName WHEN '^^out' THEN 1 ELSE 0 END)" }, { "isInRetry", "SUM(CASE labels.canonicalName WHEN '^^retry' THEN 1 ELSE 0 END)" }, { "isInFailed", "SUM(CASE labels.canonicalName WHEN '^^failed' THEN 1 ELSE 0 END)" }, { "isUnread", "SUM(CASE labels.canonicalName WHEN '^u' THEN 1 ELSE 0 END)" } };
        bjj = new bu().D(Gmail.aCy).a(MailEngine.bji).HJ();
        bjk = new bu().D(Gmail.bai).ac("name", "(CASE labels.canonicalName    WHEN '^f' THEN ?    WHEN '^^out' THEN ?    WHEN '^i' THEN ?    WHEN '^r' THEN ?    WHEN '^b' THEN ?    WHEN '^all' THEN ?    WHEN '^u' THEN ?    WHEN '^k' THEN ?    WHEN '^s' THEN ?    WHEN '^t' THEN ?    WHEN '^g' THEN ?    WHEN '^io_im' THEN ?    WHEN '^iim' THEN ?    WHEN '^sq_ig_i_personal' THEN ?    WHEN '^sq_ig_i_social' THEN ?    WHEN '^sq_ig_i_promo' THEN ?    WHEN '^sq_ig_i_notification' THEN ?    WHEN '^sq_ig_i_group' THEN ?    ELSE labels.name END) ").ac("sortOrder", "CASE labels.systemLabel WHEN 0 THEN labels.canonicalName ELSE labels.systemLabelOrder END").HJ();
        MailEngine.aQy = false;
        aa.a(MailEngine.aQz = new av());
        MailEngine.bjt = 1L;
        MailEngine.bju = null;
    }
    
    private MailEngine(final Context p0, final String p1, final String p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokespecial   java/lang/Object.<init>:()V
        //     4: aload_0        
        //     5: new             Ljava/lang/Object;
        //     8: dup            
        //     9: invokespecial   java/lang/Object.<init>:()V
        //    12: putfield        com/google/android/gm/provider/MailEngine.bip:Ljava/lang/Object;
        //    15: aload_0        
        //    16: iconst_0       
        //    17: putfield        com/google/android/gm/provider/MailEngine.biq:Z
        //    20: aload_0        
        //    21: aconst_null    
        //    22: putfield        com/google/android/gm/provider/MailEngine.bir:Ljava/lang/Thread;
        //    25: aload_0        
        //    26: iconst_0       
        //    27: putfield        com/google/android/gm/provider/MailEngine.bis:Z
        //    30: aload_0        
        //    31: new             Ljava/lang/Object;
        //    34: dup            
        //    35: invokespecial   java/lang/Object.<init>:()V
        //    38: putfield        com/google/android/gm/provider/MailEngine.aBL:Ljava/lang/Object;
        //    41: aload_0        
        //    42: new             Ljava/lang/Object;
        //    45: dup            
        //    46: invokespecial   java/lang/Object.<init>:()V
        //    49: putfield        com/google/android/gm/provider/MailEngine.bix:Ljava/lang/Object;
        //    52: aload_0        
        //    53: new             Ljava/util/BitSet;
        //    56: dup            
        //    57: invokespecial   java/util/BitSet.<init>:()V
        //    60: putfield        com/google/android/gm/provider/MailEngine.biy:Ljava/util/BitSet;
        //    63: aload_0        
        //    64: iconst_0       
        //    65: putfield        com/google/android/gm/provider/MailEngine.aAC:I
        //    68: aload_0        
        //    69: new             Ljava/util/concurrent/ConcurrentHashMap;
        //    72: dup            
        //    73: invokespecial   java/util/concurrent/ConcurrentHashMap.<init>:()V
        //    76: putfield        com/google/android/gm/provider/MailEngine.biC:Ljava/util/Map;
        //    79: aload_0        
        //    80: iconst_0       
        //    81: putfield        com/google/android/gm/provider/MailEngine.biH:Z
        //    84: aload_0        
        //    85: new             Ljava/lang/Object;
        //    88: dup            
        //    89: invokespecial   java/lang/Object.<init>:()V
        //    92: putfield        com/google/android/gm/provider/MailEngine.biJ:Ljava/lang/Object;
        //    95: aload_0        
        //    96: iconst_0       
        //    97: putfield        com/google/android/gm/provider/MailEngine.biL:I
        //   100: aload_0        
        //   101: invokestatic    android/os/SystemClock.elapsedRealtime:()J
        //   104: putfield        com/google/android/gm/provider/MailEngine.biM:J
        //   107: aload_0        
        //   108: new             Ljava/lang/Object;
        //   111: dup            
        //   112: invokespecial   java/lang/Object.<init>:()V
        //   115: putfield        com/google/android/gm/provider/MailEngine.biN:Ljava/lang/Object;
        //   118: aload_0        
        //   119: lconst_0       
        //   120: putfield        com/google/android/gm/provider/MailEngine.biO:J
        //   123: aload_0        
        //   124: iconst_0       
        //   125: putfield        com/google/android/gm/provider/MailEngine.biP:Z
        //   128: aload_0        
        //   129: new             Ljava/lang/Object;
        //   132: dup            
        //   133: invokespecial   java/lang/Object.<init>:()V
        //   136: putfield        com/google/android/gm/provider/MailEngine.biQ:Ljava/lang/Object;
        //   139: aload_0        
        //   140: aconst_null    
        //   141: putfield        com/google/android/gm/provider/MailEngine.biR:Ljava/lang/Thread;
        //   144: aload_0        
        //   145: new             Lcom/google/android/gm/provider/ak;
        //   148: dup            
        //   149: aload_0        
        //   150: invokespecial   com/google/android/gm/provider/ak.<init>:(Lcom/google/android/gm/provider/MailEngine;)V
        //   153: putfield        com/google/android/gm/provider/MailEngine.biS:Ljava/util/Observer;
        //   156: aload_0        
        //   157: iconst_0       
        //   158: putfield        com/google/android/gm/provider/MailEngine.biV:I
        //   161: aload_0        
        //   162: new             Lcom/google/android/gm/provider/au;
        //   165: dup            
        //   166: aload_0        
        //   167: invokespecial   com/google/android/gm/provider/au.<init>:(Lcom/google/android/gm/provider/MailEngine;)V
        //   170: putfield        com/google/android/gm/provider/MailEngine.biW:Ljava/lang/Runnable;
        //   173: aload_0        
        //   174: iconst_0       
        //   175: putfield        com/google/android/gm/provider/MailEngine.bjc:Z
        //   178: aload_0        
        //   179: aconst_null    
        //   180: putfield        com/google/android/gm/provider/MailEngine.bjf:Landroid/os/PowerManager$WakeLock;
        //   183: aload_0        
        //   184: invokestatic    com/google/common/collect/Maps.aan:()Ljava/util/HashMap;
        //   187: putfield        com/google/android/gm/provider/MailEngine.bjh:Ljava/util/Map;
        //   190: aload_0        
        //   191: iconst_0       
        //   192: putfield        com/google/android/gm/provider/MailEngine.bjn:Z
        //   195: aload_0        
        //   196: aconst_null    
        //   197: putfield        com/google/android/gm/provider/MailEngine.bdw:Lcom/google/android/gm/provider/D;
        //   200: aload_0        
        //   201: iconst_0       
        //   202: putfield        com/google/android/gm/provider/MailEngine.bjo:Z
        //   205: aload_0        
        //   206: new             Ljava/lang/Object;
        //   209: dup            
        //   210: invokespecial   java/lang/Object.<init>:()V
        //   213: putfield        com/google/android/gm/provider/MailEngine.bjp:Ljava/lang/Object;
        //   216: aload_0        
        //   217: aconst_null    
        //   218: putfield        com/google/android/gm/provider/MailEngine.bjq:Ljava/lang/String;
        //   221: aload_0        
        //   222: aconst_null    
        //   223: putfield        com/google/android/gm/provider/MailEngine.bjr:Ljava/lang/String;
        //   226: aload_0        
        //   227: aconst_null    
        //   228: putfield        com/google/android/gm/provider/MailEngine.bjs:Lcom/google/android/gm/provider/aG;
        //   231: aload_0        
        //   232: invokestatic    com/google/common/collect/Maps.aan:()Ljava/util/HashMap;
        //   235: putfield        com/google/android/gm/provider/MailEngine.bjv:Ljava/util/Map;
        //   238: aload_0        
        //   239: new             Ljava/lang/Object;
        //   242: dup            
        //   243: invokespecial   java/lang/Object.<init>:()V
        //   246: putfield        com/google/android/gm/provider/MailEngine.bjw:Ljava/lang/Object;
        //   249: new             Landroid/os/HandlerThread;
        //   252: dup            
        //   253: ldc_w           "Background tasks"
        //   256: bipush          10
        //   258: invokespecial   android/os/HandlerThread.<init>:(Ljava/lang/String;I)V
        //   261: astore          4
        //   263: aload           4
        //   265: invokevirtual   android/os/HandlerThread.start:()V
        //   268: invokestatic    com/google/android/gm/b/a.tg:()V
        //   271: aload_0        
        //   272: new             Landroid/os/Handler;
        //   275: dup            
        //   276: aload           4
        //   278: invokevirtual   android/os/HandlerThread.getLooper:()Landroid/os/Looper;
        //   281: invokespecial   android/os/Handler.<init>:(Landroid/os/Looper;)V
        //   284: putfield        com/google/android/gm/provider/MailEngine.bjl:Landroid/os/Handler;
        //   287: aload_0        
        //   288: aload_1        
        //   289: putfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //   292: aload_0        
        //   293: new             Landroid/accounts/Account;
        //   296: dup            
        //   297: aload_2        
        //   298: ldc_w           "com.google"
        //   301: invokespecial   android/accounts/Account.<init>:(Ljava/lang/String;Ljava/lang/String;)V
        //   304: putfield        com/google/android/gm/provider/MailEngine.Tw:Landroid/accounts/Account;
        //   307: aload_0        
        //   308: new             Lcom/google/android/gm/provider/bG;
        //   311: dup            
        //   312: aload_2        
        //   313: new             Lcom/google/android/gm/provider/a;
        //   316: dup            
        //   317: aload_0        
        //   318: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //   321: aload_0        
        //   322: getfield        com/google/android/gm/provider/MailEngine.Tw:Landroid/accounts/Account;
        //   325: invokespecial   com/google/android/gm/provider/a.<init>:(Landroid/content/Context;Landroid/accounts/Account;)V
        //   328: invokespecial   com/google/android/gm/provider/bG.<init>:(Ljava/lang/String;Lcom/google/android/gm/provider/a;)V
        //   331: putfield        com/google/android/gm/provider/MailEngine.bcK:Lcom/google/android/gm/provider/bG;
        //   334: aload_0        
        //   335: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //   338: astore          6
        //   340: aload_3        
        //   341: invokestatic    com/google/android/gm/provider/MailEngine.eR:(Ljava/lang/String;)Ljava/lang/String;
        //   344: astore          7
        //   346: invokestatic    com/google/android/gm/b/a.tg:()V
        //   349: aload_0        
        //   350: aload           6
        //   352: aload           7
        //   354: iconst_0       
        //   355: aconst_null    
        //   356: new             Landroid/database/DefaultDatabaseErrorHandler;
        //   359: dup            
        //   360: invokespecial   android/database/DefaultDatabaseErrorHandler.<init>:()V
        //   363: invokevirtual   android/content/Context.openOrCreateDatabase:(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;Landroid/database/DatabaseErrorHandler;)Landroid/database/sqlite/SQLiteDatabase;
        //   366: putfield        com/google/android/gm/provider/MailEngine.biu:Landroid/database/sqlite/SQLiteDatabase;
        //   369: aload_0        
        //   370: getfield        com/google/android/gm/provider/MailEngine.biu:Landroid/database/sqlite/SQLiteDatabase;
        //   373: invokevirtual   android/database/sqlite/SQLiteDatabase.beginTransactionNonExclusive:()V
        //   376: aload_0        
        //   377: getfield        com/google/android/gm/provider/MailEngine.biu:Landroid/database/sqlite/SQLiteDatabase;
        //   380: invokevirtual   android/database/sqlite/SQLiteDatabase.getVersion:()I
        //   383: istore          9
        //   385: new             Lcom/google/android/gm/provider/S;
        //   388: dup            
        //   389: aload_0        
        //   390: invokespecial   com/google/android/gm/provider/S.<init>:(Lcom/google/android/gm/provider/MailEngine;)V
        //   393: astore          10
        //   395: iload           9
        //   397: ifne            507
        //   400: aload           10
        //   402: invokevirtual   com/google/android/gm/provider/x.DU:()V
        //   405: aload_0        
        //   406: getfield        com/google/android/gm/provider/MailEngine.biu:Landroid/database/sqlite/SQLiteDatabase;
        //   409: invokevirtual   android/database/sqlite/SQLiteDatabase.getVersion:()I
        //   412: iconst_2       
        //   413: if_icmpeq       522
        //   416: new             Ljava/lang/IllegalStateException;
        //   419: dup            
        //   420: new             Ljava/lang/StringBuilder;
        //   423: dup            
        //   424: ldc_w           "Failed to upgrade internal db from version "
        //   427: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   430: iload           9
        //   432: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //   435: ldc_w           " to 2"
        //   438: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   441: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   444: invokespecial   java/lang/IllegalStateException.<init>:(Ljava/lang/String;)V
        //   447: athrow         
        //   448: astore          8
        //   450: aload_0        
        //   451: getfield        com/google/android/gm/provider/MailEngine.biu:Landroid/database/sqlite/SQLiteDatabase;
        //   454: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //   457: aload           8
        //   459: athrow         
        //   460: astore          5
        //   462: aload_0        
        //   463: getfield        com/google/android/gm/provider/MailEngine.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //   466: ifnull          476
        //   469: aload_0        
        //   470: getfield        com/google/android/gm/provider/MailEngine.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //   473: invokevirtual   android/database/sqlite/SQLiteDatabase.close:()V
        //   476: aload_0        
        //   477: getfield        com/google/android/gm/provider/MailEngine.biu:Landroid/database/sqlite/SQLiteDatabase;
        //   480: ifnull          490
        //   483: aload_0        
        //   484: getfield        com/google/android/gm/provider/MailEngine.biu:Landroid/database/sqlite/SQLiteDatabase;
        //   487: invokevirtual   android/database/sqlite/SQLiteDatabase.close:()V
        //   490: aload_0        
        //   491: getfield        com/google/android/gm/provider/MailEngine.biD:Lcom/google/android/common/http/GoogleHttpClient;
        //   494: ifnull          504
        //   497: aload_0        
        //   498: getfield        com/google/android/gm/provider/MailEngine.biD:Lcom/google/android/common/http/GoogleHttpClient;
        //   501: invokevirtual   com/google/android/common/http/GoogleHttpClient.close:()V
        //   504: aload           5
        //   506: athrow         
        //   507: iload           9
        //   509: iconst_2       
        //   510: if_icmpeq       405
        //   513: aload           10
        //   515: iconst_2       
        //   516: invokevirtual   com/google/android/gm/provider/x.dJ:(I)V
        //   519: goto            405
        //   522: aload_0        
        //   523: getfield        com/google/android/gm/provider/MailEngine.biu:Landroid/database/sqlite/SQLiteDatabase;
        //   526: invokevirtual   android/database/sqlite/SQLiteDatabase.setTransactionSuccessful:()V
        //   529: aload_0        
        //   530: getfield        com/google/android/gm/provider/MailEngine.biu:Landroid/database/sqlite/SQLiteDatabase;
        //   533: invokevirtual   android/database/sqlite/SQLiteDatabase.endTransaction:()V
        //   536: invokestatic    com/google/android/gm/b/a.th:()V
        //   539: aload_0        
        //   540: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //   543: astore          11
        //   545: aload_3        
        //   546: invokestatic    com/google/android/gm/provider/MailEngine.eQ:(Ljava/lang/String;)Ljava/lang/String;
        //   549: astore          12
        //   551: invokestatic    com/google/android/gm/b/a.tg:()V
        //   554: new             Lcom/google/android/gm/provider/aO;
        //   557: dup            
        //   558: aload_0        
        //   559: aload           11
        //   561: aload           12
        //   563: invokespecial   com/google/android/gm/provider/aO.<init>:(Lcom/google/android/gm/provider/MailEngine;Landroid/content/Context;Ljava/lang/String;)V
        //   566: astore          13
        //   568: aload_0        
        //   569: aload           13
        //   571: invokevirtual   com/google/android/gm/provider/aO.getWritableDatabase:()Landroid/database/sqlite/SQLiteDatabase;
        //   574: putfield        com/google/android/gm/provider/MailEngine.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //   577: invokestatic    com/google/android/gm/b/a.th:()V
        //   580: aload_0        
        //   581: new             Lcom/google/android/gm/provider/bB;
        //   584: dup            
        //   585: aload_0        
        //   586: getfield        com/google/android/gm/provider/MailEngine.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //   589: invokespecial   com/google/android/gm/provider/bB.<init>:(Landroid/database/sqlite/SQLiteDatabase;)V
        //   592: putfield        com/google/android/gm/provider/MailEngine.biw:Lcom/google/android/gm/provider/bB;
        //   595: aload_0        
        //   596: getfield        com/google/android/gm/provider/MailEngine.biw:Lcom/google/android/gm/provider/bB;
        //   599: invokevirtual   com/google/android/gm/provider/bB.beginTransactionNonExclusive:()V
        //   602: aload_0        
        //   603: invokespecial   com/google/android/gm/provider/MailEngine.nD:()V
        //   606: aload_0        
        //   607: getfield        com/google/android/gm/provider/MailEngine.biw:Lcom/google/android/gm/provider/bB;
        //   610: invokevirtual   com/google/android/gm/provider/bB.setTransactionSuccessful:()V
        //   613: aload_0        
        //   614: getfield        com/google/android/gm/provider/MailEngine.biw:Lcom/google/android/gm/provider/bB;
        //   617: invokevirtual   com/google/android/gm/provider/bB.endTransaction:()V
        //   620: aload           13
        //   622: aload_0        
        //   623: getfield        com/google/android/gm/provider/MailEngine.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //   626: invokestatic    com/google/android/gm/provider/aO.a:(Lcom/google/android/gm/provider/aO;Landroid/database/sqlite/SQLiteDatabase;)V
        //   629: aload_0        
        //   630: new             Lcom/google/android/gm/provider/P;
        //   633: dup            
        //   634: aload_1        
        //   635: aload_0        
        //   636: aload_2        
        //   637: invokespecial   com/google/android/gm/provider/P.<init>:(Landroid/content/Context;Lcom/google/android/gm/provider/MailEngine;Ljava/lang/String;)V
        //   640: putfield        com/google/android/gm/provider/MailEngine.biF:Lcom/google/android/gm/provider/P;
        //   643: aload_0        
        //   644: new             Lorg/apache/http/impl/client/BasicCookieStore;
        //   647: dup            
        //   648: invokespecial   org/apache/http/impl/client/BasicCookieStore.<init>:()V
        //   651: putfield        com/google/android/gm/provider/MailEngine.biE:Lorg/apache/http/client/CookieStore;
        //   654: getstatic       com/google/android/gm/provider/MailEngine.bin:Lcom/google/android/gm/provider/aJ;
        //   657: ifnonnull       958
        //   660: aload_0        
        //   661: new             Lcom/google/android/gm/provider/aT;
        //   664: dup            
        //   665: invokespecial   com/google/android/gm/provider/aT.<init>:()V
        //   668: putfield        com/google/android/gm/provider/MailEngine.biA:Lcom/google/android/gm/provider/aJ;
        //   671: getstatic       com/google/android/gm/provider/MailEngine.bio:Lcom/google/android/gm/provider/aU;
        //   674: ifnonnull       968
        //   677: aload_0        
        //   678: aload_0        
        //   679: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //   682: invokestatic    com/google/android/gm/persistence/b.bP:(Landroid/content/Context;)Lcom/google/android/gm/provider/aU;
        //   685: putfield        com/google/android/gm/provider/MailEngine.biB:Lcom/google/android/gm/provider/aU;
        //   688: aload_0        
        //   689: new             Lcom/google/android/gm/provider/aB;
        //   692: dup            
        //   693: aload_0        
        //   694: aload_1        
        //   695: invokespecial   com/google/android/gm/provider/aB.<init>:(Lcom/google/android/gm/provider/MailEngine;Landroid/content/Context;)V
        //   698: invokevirtual   com/google/android/gm/provider/MailEngine.g:(Ljava/lang/Runnable;)V
        //   701: aload_0        
        //   702: new             Lcom/google/android/gm/provider/al;
        //   705: dup            
        //   706: aload_0        
        //   707: aload_1        
        //   708: invokespecial   com/google/android/gm/provider/al.<init>:(Lcom/google/android/gm/provider/MailEngine;Landroid/content/Context;)V
        //   711: invokevirtual   com/google/android/gm/provider/MailEngine.g:(Ljava/lang/Runnable;)V
        //   714: aload_0        
        //   715: new             Lcom/google/android/gm/provider/g;
        //   718: dup            
        //   719: aload_0        
        //   720: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //   723: aload_0        
        //   724: getfield        com/google/android/gm/provider/MailEngine.Tw:Landroid/accounts/Account;
        //   727: getfield        android/accounts/Account.name:Ljava/lang/String;
        //   730: aload_0        
        //   731: getfield        com/google/android/gm/provider/MailEngine.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //   734: aload_0        
        //   735: getfield        com/google/android/gm/provider/MailEngine.bcK:Lcom/google/android/gm/provider/bG;
        //   738: aload_0        
        //   739: invokespecial   com/google/android/gm/provider/g.<init>:(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/gm/provider/bG;Lcom/google/android/gm/provider/j;)V
        //   742: putfield        com/google/android/gm/provider/MailEngine.bdb:Lcom/google/android/gm/provider/g;
        //   745: aload_0        
        //   746: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //   749: invokestatic    com/google/android/gm/provider/f.bW:(Landroid/content/Context;)Z
        //   752: ifne            996
        //   755: new             Landroid/content/Intent;
        //   758: dup            
        //   759: aload_0        
        //   760: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //   763: ldc_w           Lcom/google/android/gm/provider/MailIndexerService;.class
        //   766: invokespecial   android/content/Intent.<init>:(Landroid/content/Context;Ljava/lang/Class;)V
        //   769: astore          17
        //   771: aload           17
        //   773: ldc_w           "com.google.android.gm.intent.provider.INDEX_MESSAGE_CONTENT"
        //   776: invokevirtual   android/content/Intent.setAction:(Ljava/lang/String;)Landroid/content/Intent;
        //   779: pop            
        //   780: aload           17
        //   782: aload_2        
        //   783: invokestatic    com/google/android/gm/provider/Gmail.dU:(Ljava/lang/String;)Landroid/net/Uri;
        //   786: invokevirtual   android/net/Uri.buildUpon:()Landroid/net/Uri$Builder;
        //   789: ldc_w           "indexer"
        //   792: invokevirtual   android/net/Uri$Builder.appendPath:(Ljava/lang/String;)Landroid/net/Uri$Builder;
        //   795: invokevirtual   android/net/Uri$Builder.build:()Landroid/net/Uri;
        //   798: invokevirtual   android/content/Intent.setData:(Landroid/net/Uri;)Landroid/content/Intent;
        //   801: pop            
        //   802: aload           17
        //   804: ldc_w           "account"
        //   807: aload_2        
        //   808: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
        //   811: pop            
        //   812: aload_0        
        //   813: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //   816: iconst_0       
        //   817: aload           17
        //   819: ldc_w           134217728
        //   822: invokestatic    android/app/PendingIntent.getService:(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
        //   825: astore          23
        //   827: aload           23
        //   829: astore          15
        //   831: aload_0        
        //   832: aload           15
        //   834: putfield        com/google/android/gm/provider/MailEngine.bjm:Landroid/app/PendingIntent;
        //   837: aload_0        
        //   838: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //   841: invokevirtual   android/content/Context.getResources:()Landroid/content/res/Resources;
        //   844: astore          16
        //   846: aload_0        
        //   847: new             Lcom/google/android/gm/provider/aI;
        //   850: dup            
        //   851: aload_0        
        //   852: aload_0        
        //   853: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //   856: aload           16
        //   858: ldc_w           2131427362
        //   861: invokevirtual   android/content/res/Resources.getInteger:(I)I
        //   864: invokespecial   com/google/android/gm/provider/aI.<init>:(Lcom/google/android/gm/provider/MailEngine;Landroid/content/Context;I)V
        //   867: putfield        com/google/android/gm/provider/MailEngine.biU:Lcom/google/android/gm/provider/aI;
        //   870: aload_0        
        //   871: new             Lcom/google/android/gm/provider/bH;
        //   874: dup            
        //   875: aload_0        
        //   876: getfield        com/google/android/gm/provider/MailEngine.bdv:Lcom/google/android/gm/provider/ae;
        //   879: invokespecial   com/google/android/gm/provider/bH.<init>:(Lcom/google/android/gm/provider/ae;)V
        //   882: putfield        com/google/android/gm/provider/MailEngine.biv:Lcom/google/android/gm/provider/bH;
        //   885: aload_0        
        //   886: getfield        com/google/android/gm/provider/MailEngine.biv:Lcom/google/android/gm/provider/bH;
        //   889: invokevirtual   com/google/android/gm/provider/bH.HU:()V
        //   892: aload_0        
        //   893: aload           16
        //   895: ldc_w           2131427401
        //   898: invokevirtual   android/content/res/Resources.getInteger:(I)I
        //   901: putfield        com/google/android/gm/provider/MailEngine.biX:I
        //   904: aload_0        
        //   905: sipush          1000
        //   908: aload           16
        //   910: ldc_w           2131427402
        //   913: invokevirtual   android/content/res/Resources.getInteger:(I)I
        //   916: imul           
        //   917: aload_0        
        //   918: getfield        com/google/android/gm/provider/MailEngine.biX:I
        //   921: idiv           
        //   922: putfield        com/google/android/gm/provider/MailEngine.biY:I
        //   925: aload_0        
        //   926: aload_0        
        //   927: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //   930: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //   933: ldc_w           "gmail_min_interval_between_latency_reports_seconds"
        //   936: sipush          10800
        //   939: invokestatic    com/google/android/gsf/c.getInt:(Landroid/content/ContentResolver;Ljava/lang/String;I)I
        //   942: putfield        com/google/android/gm/provider/MailEngine.biZ:I
        //   945: return         
        //   946: astore          14
        //   948: aload_0        
        //   949: getfield        com/google/android/gm/provider/MailEngine.biw:Lcom/google/android/gm/provider/bB;
        //   952: invokevirtual   com/google/android/gm/provider/bB.endTransaction:()V
        //   955: aload           14
        //   957: athrow         
        //   958: aload_0        
        //   959: getstatic       com/google/android/gm/provider/MailEngine.bin:Lcom/google/android/gm/provider/aJ;
        //   962: putfield        com/google/android/gm/provider/MailEngine.biA:Lcom/google/android/gm/provider/aJ;
        //   965: goto            671
        //   968: aload_0        
        //   969: getstatic       com/google/android/gm/provider/MailEngine.bio:Lcom/google/android/gm/provider/aU;
        //   972: putfield        com/google/android/gm/provider/MailEngine.biB:Lcom/google/android/gm/provider/aU;
        //   975: goto            688
        //   978: astore          18
        //   980: getstatic       com/google/android/gm/provider/MailEngine.TAG:Ljava/lang/String;
        //   983: aload           18
        //   985: ldc_w           "UOE while creating pending intent.  Probably running tests"
        //   988: iconst_0       
        //   989: anewarray       Ljava/lang/Object;
        //   992: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   995: pop            
        //   996: aconst_null    
        //   997: astore          15
        //   999: goto            831
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                     
        //  -----  -----  -----  -----  -----------------------------------------
        //  287    376    460    507    Landroid/database/SQLException;
        //  376    395    448    460    Any
        //  400    405    448    460    Any
        //  405    448    448    460    Any
        //  450    460    460    507    Landroid/database/SQLException;
        //  513    519    448    460    Any
        //  522    529    448    460    Any
        //  529    602    460    507    Landroid/database/SQLException;
        //  602    613    946    958    Any
        //  613    671    460    507    Landroid/database/SQLException;
        //  671    688    460    507    Landroid/database/SQLException;
        //  755    827    978    996    Ljava/lang/UnsupportedOperationException;
        //  948    958    460    507    Landroid/database/SQLException;
        //  958    965    460    507    Landroid/database/SQLException;
        //  968    975    460    507    Landroid/database/SQLException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0831:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createConstructor(AstBuilder.java:692)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:529)
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
    
    private void B(final Collection<String> collection) {
        final ContentResolver contentResolver = this.mContext.getContentResolver();
        final Iterator<String> iterator = collection.iterator();
        while (iterator.hasNext()) {
            contentResolver.notifyChange(GmailProvider.R(this.Tw.name, iterator.next()), (ContentObserver)null);
        }
        this.Gp();
    }
    
    private static Handler FO() {
        synchronized (MailEngine.class) {
            if (MailEngine.bjg == null) {
                final HandlerThread handlerThread = new HandlerThread("MailEngine creation");
                handlerThread.start();
                MailEngine.bjg = new Handler(handlerThread.getLooper());
            }
            return MailEngine.bjg;
        }
    }
    
    static void FS() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: getstatic       com/google/android/gm/provider/MailEngine.bje:Ljava/util/Map;
        //     3: astore_0       
        //     4: aload_0        
        //     5: monitorenter   
        //     6: getstatic       com/google/android/gm/provider/MailEngine.bje:Ljava/util/Map;
        //     9: invokeinterface java/util/Map.values:()Ljava/util/Collection;
        //    14: invokeinterface java/util/Collection.iterator:()Ljava/util/Iterator;
        //    19: astore_2       
        //    20: aload_2        
        //    21: invokeinterface java/util/Iterator.hasNext:()Z
        //    26: ifeq            344
        //    29: aload_2        
        //    30: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //    35: checkcast       Lcom/google/android/gm/provider/aK;
        //    38: astore_3       
        //    39: aload_3        
        //    40: getfield        com/google/android/gm/provider/aK.bko:Ljava/lang/Object;
        //    43: astore          4
        //    45: aload           4
        //    47: monitorenter   
        //    48: aload_3        
        //    49: getfield        com/google/android/gm/provider/aK.bdz:Lcom/google/android/gm/provider/MailEngine;
        //    52: ifnull          330
        //    55: aload_3        
        //    56: getfield        com/google/android/gm/provider/aK.bdz:Lcom/google/android/gm/provider/MailEngine;
        //    59: astore          6
        //    61: aload           6
        //    63: iconst_1       
        //    64: putfield        com/google/android/gm/provider/MailEngine.bjc:Z
        //    67: aload           6
        //    69: invokevirtual   com/google/android/gm/provider/MailEngine.onSyncCanceled:()V
        //    72: aload           6
        //    74: getfield        com/google/android/gm/provider/MailEngine.bip:Ljava/lang/Object;
        //    77: astore          7
        //    79: aload           7
        //    81: monitorenter   
        //    82: aload           6
        //    84: getfield        com/google/android/gm/provider/MailEngine.bir:Ljava/lang/Thread;
        //    87: astore          9
        //    89: aload           7
        //    91: monitorexit    
        //    92: aload           6
        //    94: invokevirtual   com/google/android/gm/provider/MailEngine.onSyncCanceled:()V
        //    97: aload           6
        //    99: aload           9
        //   101: invokespecial   com/google/android/gm/provider/MailEngine.a:(Ljava/lang/Thread;)V
        //   104: aload           6
        //   106: getfield        com/google/android/gm/provider/MailEngine.biQ:Ljava/lang/Object;
        //   109: astore          10
        //   111: aload           10
        //   113: monitorenter   
        //   114: aload           6
        //   116: getfield        com/google/android/gm/provider/MailEngine.biR:Ljava/lang/Thread;
        //   119: astore          12
        //   121: aload           10
        //   123: monitorexit    
        //   124: aload           6
        //   126: aload           12
        //   128: invokespecial   com/google/android/gm/provider/MailEngine.a:(Ljava/lang/Thread;)V
        //   131: getstatic       com/google/android/gm/provider/MailEngine.bjd:Ljava/util/Set;
        //   134: invokestatic    com/google/common/collect/ImmutableSet.L:(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;
        //   137: invokeinterface java/util/Set.iterator:()Ljava/util/Iterator;
        //   142: astore          13
        //   144: aload           13
        //   146: invokeinterface java/util/Iterator.hasNext:()Z
        //   151: ifeq            201
        //   154: aload           6
        //   156: aload           13
        //   158: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   163: checkcast       Ljava/lang/Thread;
        //   166: invokespecial   com/google/android/gm/provider/MailEngine.a:(Ljava/lang/Thread;)V
        //   169: goto            144
        //   172: astore          5
        //   174: aload           4
        //   176: monitorexit    
        //   177: aload           5
        //   179: athrow         
        //   180: astore_1       
        //   181: aload_0        
        //   182: monitorexit    
        //   183: aload_1        
        //   184: athrow         
        //   185: astore          8
        //   187: aload           7
        //   189: monitorexit    
        //   190: aload           8
        //   192: athrow         
        //   193: astore          11
        //   195: aload           10
        //   197: monitorexit    
        //   198: aload           11
        //   200: athrow         
        //   201: aload           6
        //   203: getfield        com/google/android/gm/provider/MailEngine.bjl:Landroid/os/Handler;
        //   206: aconst_null    
        //   207: invokevirtual   android/os/Handler.removeCallbacksAndMessages:(Ljava/lang/Object;)V
        //   210: getstatic       com/google/android/gm/provider/MailEngine.TAG:Ljava/lang/String;
        //   213: ldc_w           "blockUntilBackgroundTasksComplete: queueing"
        //   216: iconst_0       
        //   217: anewarray       Ljava/lang/Object;
        //   220: invokestatic    com/google/android/gm/provider/ad.d:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   223: pop            
        //   224: new             Ljava/util/concurrent/Semaphore;
        //   227: dup            
        //   228: iconst_0       
        //   229: invokespecial   java/util/concurrent/Semaphore.<init>:(I)V
        //   232: astore          15
        //   234: aload           6
        //   236: getfield        com/google/android/gm/provider/MailEngine.bjl:Landroid/os/Handler;
        //   239: new             Lcom/google/android/gm/provider/as;
        //   242: dup            
        //   243: aload           6
        //   245: aload           15
        //   247: invokespecial   com/google/android/gm/provider/as.<init>:(Lcom/google/android/gm/provider/MailEngine;Ljava/util/concurrent/Semaphore;)V
        //   250: invokevirtual   android/os/Handler.post:(Ljava/lang/Runnable;)Z
        //   253: pop            
        //   254: aload           15
        //   256: invokevirtual   java/util/concurrent/Semaphore.acquire:()V
        //   259: getstatic       com/google/android/gm/provider/MailEngine.bju:Lcom/google/android/gm/provider/aH;
        //   262: ifnull          273
        //   265: getstatic       com/google/android/gm/provider/MailEngine.bju:Lcom/google/android/gm/provider/aH;
        //   268: iconst_1       
        //   269: invokevirtual   com/google/android/gm/provider/aH.cancel:(Z)Z
        //   272: pop            
        //   273: aload           6
        //   275: getfield        com/google/android/gm/provider/MailEngine.aBL:Ljava/lang/Object;
        //   278: astore          18
        //   280: aload           18
        //   282: monitorenter   
        //   283: aload           6
        //   285: getfield        com/google/android/gm/provider/MailEngine.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //   288: ifnull          305
        //   291: aload           6
        //   293: getfield        com/google/android/gm/provider/MailEngine.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //   296: invokevirtual   android/database/sqlite/SQLiteDatabase.close:()V
        //   299: aload           6
        //   301: aconst_null    
        //   302: putfield        com/google/android/gm/provider/MailEngine.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //   305: aload           6
        //   307: getfield        com/google/android/gm/provider/MailEngine.biu:Landroid/database/sqlite/SQLiteDatabase;
        //   310: ifnull          327
        //   313: aload           6
        //   315: getfield        com/google/android/gm/provider/MailEngine.biu:Landroid/database/sqlite/SQLiteDatabase;
        //   318: invokevirtual   android/database/sqlite/SQLiteDatabase.close:()V
        //   321: aload           6
        //   323: aconst_null    
        //   324: putfield        com/google/android/gm/provider/MailEngine.biu:Landroid/database/sqlite/SQLiteDatabase;
        //   327: aload           18
        //   329: monitorexit    
        //   330: aload           4
        //   332: monitorexit    
        //   333: goto            20
        //   336: astore          19
        //   338: aload           18
        //   340: monitorexit    
        //   341: aload           19
        //   343: athrow         
        //   344: getstatic       com/google/android/gm/provider/MailEngine.bje:Ljava/util/Map;
        //   347: invokeinterface java/util/Map.clear:()V
        //   352: aload_0        
        //   353: monitorexit    
        //   354: return         
        //   355: astore          17
        //   357: goto            259
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                            
        //  -----  -----  -----  -----  --------------------------------
        //  6      20     180    185    Any
        //  20     48     180    185    Any
        //  48     82     172    180    Any
        //  82     92     185    193    Any
        //  92     114    172    180    Any
        //  114    124    193    201    Any
        //  124    144    172    180    Any
        //  144    169    172    180    Any
        //  174    180    180    185    Any
        //  187    193    172    180    Any
        //  195    201    172    180    Any
        //  201    254    172    180    Any
        //  254    259    355    360    Ljava/lang/InterruptedException;
        //  254    259    172    180    Any
        //  259    273    172    180    Any
        //  273    283    172    180    Any
        //  283    305    336    344    Any
        //  305    327    336    344    Any
        //  327    330    336    344    Any
        //  330    333    172    180    Any
        //  338    344    172    180    Any
        //  344    354    180    185    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 164, Size: 164
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
    
    private void FU() {
        if (!this.bdw.Ee() || this.bjn) {
            return;
        }
        this.bjn = true;
        for (int i = 0; i < MailEngine.bij.length; ++i) {
            final String s = MailEngine.bij[i];
            if (this.bdv.eE(s) == null) {
                this.bdv.eG(s);
            }
        }
        this.Gb();
        this.biz.GA();
    }
    
    private Cursor FV() {
        final SQLiteQueryBuilder sqLiteQueryBuilder = new SQLiteQueryBuilder();
        sqLiteQueryBuilder.setTables("custom_label_color_prefs");
        return sqLiteQueryBuilder.query(this.bcJ, (String[])null, (String)null, (String[])null, (String)null, (String)null, (String)null);
    }
    
    private Cursor FW() {
        return this.d("name = ?", new String[] { b.bqQ });
    }
    
    private GoogleHttpClient FY() {
        int versionCode;
        Configuration configuration;
        StringBuilder sb = null;
        int densityDpi;
        int int1;
        HttpParams params;
        Label_0175_Outer:Label_0230_Outer:
        while (true) {
            while (true) {
            Label_0477:
                while (true) {
                    synchronized (this) {
                        Label_0252: {
                            if (MailEngine.bii != null) {
                                break Label_0252;
                            }
                        Label_0123_Outer:
                            while (true) {
                                while (true) {
                                    while (true) {
                                        try {
                                            versionCode = this.mContext.getPackageManager().getPackageInfo(this.mContext.getApplicationInfo().packageName, 0).versionCode;
                                            configuration = this.mContext.getResources().getConfiguration();
                                            sb = new StringBuilder("Android-GmailProvider");
                                            sb.append("/");
                                            sb.append(versionCode);
                                            sb.append(" (");
                                            if (configuration.smallestScreenWidthDp != 0) {
                                                sb.append("sw");
                                                sb.append(configuration.smallestScreenWidthDp);
                                                sb.append("dp");
                                                sb.append(";");
                                                if (!ag.Bf() || configuration.densityDpi == 0) {
                                                    break;
                                                }
                                                sb.append(" ");
                                                sb.append(configuration.densityDpi);
                                                sb.append("dpi");
                                                sb.append(")");
                                                MailEngine.bii = sb.toString();
                                                a.oq().a("device_info", 1000 * configuration.smallestScreenWidthDp, "swdp", null);
                                                if (ag.Bf()) {
                                                    densityDpi = configuration.densityDpi;
                                                    a.oq().a("device_info", densityDpi * 1000, "dpi", null);
                                                    if (this.biD == null) {
                                                        this.biD = new GoogleHttpClient(this.mContext, MailEngine.bii);
                                                        int1 = c.getInt(this.mContext.getContentResolver(), "gmail_timeout_ms", -1);
                                                        if (int1 != -1) {
                                                            E.d(MailEngine.TAG, "Changing network timeout (because of gservices) to %d", int1);
                                                            params = this.biD.getParams();
                                                            HttpConnectionParams.setConnectionTimeout(params, int1);
                                                            HttpConnectionParams.setSoTimeout(params, int1);
                                                            ConnManagerParams.setTimeout(params, (long)int1);
                                                        }
                                                        this.biD.dn(MailEngine.TAG);
                                                    }
                                                    return this.biD;
                                                }
                                                break Label_0477;
                                            }
                                        }
                                        catch (PackageManager$NameNotFoundException ex2) {
                                            E.f(MailEngine.TAG, "Error finding package %s", this.mContext.getApplicationInfo().packageName);
                                            versionCode = 0;
                                            continue Label_0123_Outer;
                                        }
                                        catch (UnsupportedOperationException ex) {
                                            E.e(MailEngine.TAG, ex, "Error getting the PackageManager ", new Object[0]);
                                            versionCode = 0;
                                            continue Label_0123_Outer;
                                        }
                                        break;
                                    }
                                    sb.append("?swdp");
                                    continue Label_0175_Outer;
                                }
                            }
                        }
                    }
                    sb.append(" ?density");
                    continue Label_0230_Outer;
                }
                densityDpi = -1;
                continue;
            }
        }
    }
    
    private void Gb() {
        if (this.bdw.Ee()) {
            this.bdv.a(this.A(this.bit.Hv()), this.A(this.bit.Hw()));
        }
    }
    
    private void Gf() {
        if (MailProvider.Hh() != null) {
            MailProvider.Hh().d(this.bcJ, this.Tw.name);
        }
        else if (this.biP && this.Ge()) {
            final AlarmManager alarmManager = (AlarmManager)this.mContext.getSystemService("alarm");
            if (alarmManager != null && this.bjm != null) {
                final int int1 = c.getInt(this.mContext.getContentResolver(), "gmail_full_text_search_indexer_delay_msec", 300000);
                E.c(MailEngine.TAG, "Scheduling index for %s ms from now", int1);
                alarmManager.setInexactRepeating(1, System.currentTimeMillis() + int1, 900000L, this.bjm);
            }
        }
    }
    
    private void Gh() {
        final String name = this.Tw.name;
        this.mContext.getContentResolver().notifyChange(Gmail.dX(name), (ContentObserver)null, false);
        GmailProvider.R(this.mContext, name);
    }
    
    private boolean Gm() {
        while (true) {
            while (true) {
                int n;
                try {
                    final Account[] array = (Account[])AccountManager.get(this.mContext).getAccountsByTypeAndFeatures("com.google", com.google.android.gm.a.aWC, (AccountManagerCallback)null, (Handler)null).getResult();
                    final int length = array.length;
                    n = 0;
                    if (n >= length) {
                        E.c(MailEngine.TAG, "Account doesn't support mail %s", this.Tw);
                        return false;
                    }
                    if (this.Tw.equals((Object)array[n])) {
                        return true;
                    }
                }
                catch (AuthenticatorException ex) {
                    throw new IOException(ex.getMessage());
                }
                ++n;
                continue;
            }
        }
    }
    
    private static boolean Gn() {
        return MailEngine.bim.nextInt() % 200L == 0L;
    }
    
    private boolean Go() {
        final ConditionVariable conditionVariable = new ConditionVariable();
        this.a(FO(), new an(this, conditionVariable));
        return conditionVariable.block(10000L);
    }
    
    private void Gp() {
        this.mContext.getContentResolver().notifyChange(GmailProvider.es(this.Tw.name), (ContentObserver)null);
    }
    
    private boolean Gs() {
        final long hx = this.bit.Hx();
        E.b(MailEngine.TAG, "Starting purging messages. Oldest message id in duration: %d", hx);
        final Cursor rawQuery = this.bcJ.rawQuery("SELECT _id FROM conversations\nWHERE\n  (syncRationale = '" + MailSync$SyncRationale.bmn + "'\nOR (syncRationale = '" + MailSync$SyncRationale.bmm + "'  AND syncRationaleMessageId < ?)) AND queryId = 0 LIMIT 100", new String[] { Long.toString(hx) });
        boolean b = false;
        while (true) {
            boolean ap;
            try {
                if (!rawQuery.moveToNext()) {
                    E.b(MailEngine.TAG, "Finished purging messages ", new Object[0]);
                    return b;
                }
                final long long1 = rawQuery.getLong(0);
                if (this.bhA.aP(long1)) {
                    E.b(MailEngine.TAG, " Conversation ID %d has unacked send or save operations.", long1);
                    ap = false;
                }
                else {
                    ap = this.bdv.ap(long1);
                }
            }
            finally {
                rawQuery.close();
            }
            if (ap) {
                b = true;
            }
        }
    }
    
    private void Gw() {
        if (!this.bdw.Ee()) {
            E.d(MailEngine.TAG, "calculateUnknownSyncRationalesAndPurgeInBackground: exiting (labelMap not synced", new Object[0]);
            return;
        }
        E.d(MailEngine.TAG, "calculateUnknownSyncRationalesAndPurgeInBackground: queueing", new Object[0]);
        this.g(new at(this));
    }
    
    private static Looper Gy() {
        synchronized (MailEngine.class) {
            if (MailEngine.biT == null) {
                (MailEngine.biT = new HandlerThread("Dataset changed notifier", 10)).start();
            }
            return MailEngine.biT.getLooper();
        }
    }
    
    static MailEngine V(final Context p0, final String p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_0       
        //     1: istore_2       
        //     2: getstatic       com/google/android/gm/provider/MailEngine.TAG:Ljava/lang/String;
        //     5: astore_3       
        //     6: iconst_1       
        //     7: anewarray       Ljava/lang/Object;
        //    10: astore          4
        //    12: aload           4
        //    14: iconst_0       
        //    15: aload_1        
        //    16: invokestatic    com/google/android/gm/provider/ad.cx:(Ljava/lang/String;)Ljava/lang/String;
        //    19: aastore        
        //    20: aload_3        
        //    21: ldc_w           "getOrMakeMailEngine for %s"
        //    24: aload           4
        //    26: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //    29: pop            
        //    30: aload_1        
        //    31: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //    34: ifeq            48
        //    37: new             Ljava/lang/IllegalArgumentException;
        //    40: dup            
        //    41: ldc_w           "account is empty"
        //    44: invokespecial   java/lang/IllegalArgumentException.<init>:(Ljava/lang/String;)V
        //    47: athrow         
        //    48: aload_0        
        //    49: invokestatic    com/google/android/gm/i.aT:(Landroid/content/Context;)Lcom/google/android/gm/i;
        //    52: astore          6
        //    54: aload           6
        //    56: aload_1        
        //    57: invokevirtual   com/google/android/gm/i.dr:(Ljava/lang/String;)Ljava/lang/String;
        //    60: astore          8
        //    62: getstatic       com/google/android/gm/provider/MailEngine.bje:Ljava/util/Map;
        //    65: astore          9
        //    67: aload           9
        //    69: monitorenter   
        //    70: getstatic       com/google/android/gm/provider/MailEngine.bje:Ljava/util/Map;
        //    73: aload           8
        //    75: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //    80: checkcast       Lcom/google/android/gm/provider/aK;
        //    83: astore          11
        //    85: iconst_0       
        //    86: istore_2       
        //    87: aload           11
        //    89: ifnonnull       238
        //    92: new             Lcom/google/android/gm/provider/aK;
        //    95: dup            
        //    96: invokespecial   com/google/android/gm/provider/aK.<init>:()V
        //    99: astore          12
        //   101: getstatic       com/google/android/gm/provider/MailEngine.bje:Ljava/util/Map;
        //   104: aload           8
        //   106: aload           12
        //   108: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   113: pop            
        //   114: iconst_1       
        //   115: istore_2       
        //   116: aload           12
        //   118: astore          14
        //   120: getstatic       com/google/android/gm/provider/MailEngine.bje:Ljava/util/Map;
        //   123: aload_1        
        //   124: aload           14
        //   126: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   131: pop            
        //   132: aload           9
        //   134: monitorexit    
        //   135: aload           14
        //   137: getfield        com/google/android/gm/provider/aK.bko:Ljava/lang/Object;
        //   140: astore          16
        //   142: aload           16
        //   144: monitorenter   
        //   145: aload           14
        //   147: getfield        com/google/android/gm/provider/aK.bdz:Lcom/google/android/gm/provider/MailEngine;
        //   150: astore          18
        //   152: aload           18
        //   154: ifnonnull       195
        //   157: new             Lcom/google/android/gm/provider/MailEngine;
        //   160: dup            
        //   161: aload_0        
        //   162: aload_1        
        //   163: aload           8
        //   165: invokespecial   com/google/android/gm/provider/MailEngine.<init>:(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
        //   168: astore          18
        //   170: aload           14
        //   172: aload           18
        //   174: putfield        com/google/android/gm/provider/aK.bdz:Lcom/google/android/gm/provider/MailEngine;
        //   177: aload           18
        //   179: getfield        com/google/android/gm/provider/MailEngine.bit:Lcom/google/android/gm/provider/MailSync;
        //   182: invokevirtual   com/google/android/gm/provider/MailSync.Ht:()J
        //   185: lconst_0       
        //   186: lcmp           
        //   187: ifne            195
        //   190: aload           18
        //   192: invokevirtual   com/google/android/gm/provider/MailEngine.FR:()V
        //   195: aload           16
        //   197: monitorexit    
        //   198: iload_2        
        //   199: ifeq            206
        //   202: aload_0        
        //   203: invokestatic    com/google/android/gm/provider/GmailProvider.ca:(Landroid/content/Context;)V
        //   206: aload           18
        //   208: areturn        
        //   209: astore          10
        //   211: aload           9
        //   213: monitorexit    
        //   214: aload           10
        //   216: athrow         
        //   217: astore          7
        //   219: iload_2        
        //   220: ifeq            227
        //   223: aload_0        
        //   224: invokestatic    com/google/android/gm/provider/GmailProvider.ca:(Landroid/content/Context;)V
        //   227: aload           7
        //   229: athrow         
        //   230: astore          17
        //   232: aload           16
        //   234: monitorexit    
        //   235: aload           17
        //   237: athrow         
        //   238: aload           11
        //   240: astore          14
        //   242: iconst_0       
        //   243: istore_2       
        //   244: goto            120
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  54     70     217    230    Any
        //  70     85     209    217    Any
        //  92     114    209    217    Any
        //  120    135    209    217    Any
        //  135    145    217    230    Any
        //  145    152    230    238    Any
        //  157    195    230    238    Any
        //  195    198    230    238    Any
        //  211    217    217    230    Any
        //  232    238    217    230    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0195:
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
    
    public static MailEngine W(final Context context, final String s) {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IllegalStateException("getOrMakeMailEngineSync should not be called on main (UI) thread");
        }
        return V(context, s);
    }
    
    private void X(final String s, final String s2) {
        final ContentValues contentValues = new ContentValues();
        contentValues.put("name", s);
        contentValues.put("value", s2);
        this.bcJ.replace("engine_settings", (String)null, contentValues);
    }
    
    static ParcelFileDescriptor a(final GmailAttachment gmailAttachment) {
        Label_0074: {
            if (TextUtils.isEmpty((CharSequence)gmailAttachment.bor)) {
                break Label_0074;
            }
            String s = gmailAttachment.bor;
        Block_6_Outer:
            while (true) {
                if (s == null) {
                    break Label_0074;
                }
                final String dq = g.dQ(s);
                final long clearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    E.c(MailEngine.TAG, "Opening attachment %s", dq);
                    return ParcelFileDescriptor.open(new File(dq), 268435456);
                    final int bom = gmailAttachment.bom;
                    s = null;
                    // iftrue(Label_0015:, bom != 1)
                    while (true) {
                        Block_5: {
                            break Block_5;
                            s = gmailAttachment.ayP.toString();
                            continue Block_6_Outer;
                        }
                        final boolean d = ag.D(gmailAttachment.ayP);
                        s = null;
                        continue;
                    }
                }
                // iftrue(Label_0015:, d)
                finally {
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                }
                break;
            }
        }
        E.f(MailEngine.TAG, "Couldn't find local attachment", new Object[0]);
        throw new FileNotFoundException("Missing local attachment.");
    }
    
    private aW a(final HttpUriRequest httpUriRequest, final aN an, final aX ax) {
        final aW aw = new aW(this, (byte)0);
        final long elapsedRealtime = SystemClock.elapsedRealtime();
        final HttpResponse b = this.b(httpUriRequest);
        aw.bkE = SystemClock.elapsedRealtime() - elapsedRealtime;
        try {
            aw.bkD = this.bit.a(b, an, ax);
            if (this.Gr()) {
                aw.bkC = true;
            }
            if (!this.bit.fc("moreForwardSyncNeeded")) {
                this.bX(false);
            }
            System.gc();
            return aw;
        }
        finally {
            b(b);
        }
    }
    
    private bm a(final Cursor cursor, final boolean b) {
        boolean blY = true;
        if (cursor.isAfterLast()) {
            return null;
        }
        final bm bm = new bm();
        final long long1 = cursor.getLong(cursor.getColumnIndex("_id"));
        final long long2 = cursor.getLong(cursor.getColumnIndex("messageId"));
        bm.blK = this.Tw.name;
        bm.blL = long1;
        bm.bkt = long2;
        bm.bku = cursor.getLong(cursor.getColumnIndexOrThrow("conversation"));
        bm.blM = cursor.getLong(cursor.getColumnIndexOrThrow("refMessageId"));
        bm.bmg = cursor.getString(cursor.getColumnIndexOrThrow("refAdEventId"));
        bm.blC = b(cursor, "fromAddress");
        bm.bma = b(cursor, "customFromAddress");
        bm.blN = Lists.n(TextUtils.split(b(cursor, "toAddresses"), Gmail.bdF));
        bm.blO = Lists.n(TextUtils.split(b(cursor, "ccAddresses"), Gmail.bdF));
        bm.blP = Lists.n(TextUtils.split(b(cursor, "bccAddresses"), Gmail.bdF));
        bm.blQ = Lists.n(TextUtils.split(b(cursor, "replyToAddresses"), Gmail.bdF));
        bm.blR = cursor.getLong(cursor.getColumnIndex("dateSentMs"));
        bm.aBf = cursor.getLong(cursor.getColumnIndex("dateReceivedMs"));
        bm.ayV = b(cursor, "subject");
        bm.abh = b(cursor, "snippet");
        final TextUtils$StringSplitter dy = Gmail.DY();
        dy.setString(b(cursor, "labelIds"));
        bm.blG = Gmail.a(dy);
        bm.blS = b(cursor, "listInfo");
        bm.blF = Gmail$PersonalLevel.dN(cursor.getInt(cursor.getColumnIndexOrThrow("personalLevel")));
        bm.blV = (cursor.getLong(cursor.getColumnIndexOrThrow("forward")) != 0L && blY);
        bm.blW = (cursor.getLong(cursor.getColumnIndexOrThrow("includeQuotedText")) != 0L && blY);
        bm.blX = cursor.getLong(cursor.getColumnIndex("quoteStartPos"));
        if (cursor.getLong(cursor.getColumnIndexOrThrow("clientCreated")) == 0L) {
            blY = false;
        }
        bm.blY = blY;
        bm.blT.addAll(GmailAttachment.fp(cursor.getString(cursor.getColumnIndexOrThrow("joinedAttachmentInfos"))));
        if (b) {
            bm.bck = cursor.getString(cursor.getColumnIndexOrThrow("body"));
        }
        bm.aBy = cursor.getString(cursor.getColumnIndexOrThrow("permalink"));
        bm.bmh = cursor.getInt(cursor.getColumnIndexOrThrow("clipped"));
        return bm;
    }
    
    private Integer a(final String s, final Integer n) {
        final Cursor es = this.eS(s);
        try {
            if (!es.moveToNext()) {
                return n;
            }
            return es.getInt(es.getColumnIndexOrThrow("value"));
        }
        finally {
            es.close();
        }
    }
    
    private void a(final long n, final MailSync$SyncRationale mailSync$SyncRationale) {
        this.bdv.a(n, mailSync$SyncRationale);
        this.biF.ak(n);
    }
    
    private void a(final long n, final MailSync$SyncRationale mailSync$SyncRationale, final boolean b, final boolean b2, final boolean b3) {
        this.bdv.a(n, mailSync$SyncRationale, b, b2);
        if (!b3) {
            this.biF.ak(n);
        }
    }
    
    private void a(final long n, final String s, final String s2, final Long n2, final boolean b) {
        final Long n3 = this.bjh.get(s);
        if (n3 != null && n3 >= n) {
            return;
        }
        this.bjh.put(s, n);
        final aq aq = new aq(this, s2, n2, b, s, n);
        if (Looper.myLooper() != Looper.getMainLooper()) {
            aq.run();
            return;
        }
        new ar(this, aq).execute((Object[])null);
    }
    
    public static void a(final Context context, final String s, final aM am) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            throw new IllegalArgumentException("account is empty");
        }
        final Handler fo;
        fo.post((Runnable)new ax(context, s, fo = FO(), new Handler(), am));
    }
    
    static void a(final SQLiteDatabase sqLiteDatabase, final String s, final String s2) {
        final ContentValues contentValues = new ContentValues();
        contentValues.put("name", s);
        contentValues.put("value", s2);
        sqLiteDatabase.replace("sync_settings", (String)null, contentValues);
    }
    
    private void a(final Advertisement advertisement, final int n, final String s) {
        this.a(advertisement, n, s, true);
    }
    
    private void a(final Advertisement advertisement, final int n, final String s, final boolean b) {
        if (advertisement.bcy.bcA || MailEngine.bil.contains(n)) {
            this.bhA.a(n, advertisement, s);
            if (b) {
                this.mContext.getContentResolver().notifyChange(Gmail.dU(this.Tw.name), (ContentObserver)null, true);
            }
        }
        if (advertisement.bcy.bcB) {
            if (n != 2) {
                while (true) {
                    Label_0293: {
                        String s2;
                        if (n == 1) {
                            if (TextUtils.isEmpty((CharSequence)advertisement.bcu)) {
                                break Label_0293;
                            }
                            s2 = advertisement.bcu;
                        }
                        else {
                            final boolean containsKey = MailEngine.bik.containsKey(n);
                            s2 = null;
                            if (containsKey) {
                                if (!TextUtils.isEmpty((CharSequence)advertisement.bcw)) {
                                    final Uri$Builder buildUpon = Uri.parse(advertisement.bcw).buildUpon();
                                    buildUpon.appendQueryParameter("label", (String)MailEngine.bik.get(n));
                                    s2 = buildUpon.build().toString();
                                }
                                else {
                                    E.f(MailEngine.TAG, "Missing interaction url", new Object[0]);
                                    s2 = null;
                                }
                            }
                        }
                        if (s2 == null) {
                            return;
                        }
                        final GoogleHttpClient fy = this.FY();
                        try {
                            final HttpResponse execute = fy.execute((HttpUriRequest)new HttpGet(s2));
                            if (execute == null || execute.getStatusLine().getStatusCode() != 200) {
                                E.e(MailEngine.TAG, "Reporting ad event failed for adActionType %d", n);
                            }
                            return;
                        }
                        catch (IOException ex) {
                            E.e(MailEngine.TAG, ex, "Failed to make http request for adActionType: %d", n);
                            return;
                        }
                    }
                    E.f(MailEngine.TAG, "Missing view url", new Object[0]);
                    String s2 = null;
                    continue;
                }
            }
            final String d = this.d(advertisement);
            if (!TextUtils.isEmpty((CharSequence)d)) {
                final String bcd = advertisement.bcd;
                final ContentValues contentValues = new ContentValues(1);
                contentValues.put("click_id", d);
                if (this.bcJ.update("ads", contentValues, "event_id = ?", new String[] { bcd }) > 0) {
                    this.B(Collections.singleton(bcd));
                }
            }
        }
    }
    
    private void a(final Thread thread) {
        if (thread == null) {
            return;
        }
        this.onSyncCanceled();
        thread.interrupt();
        try {
            thread.join();
        }
        catch (InterruptedException ex) {}
    }
    
    private boolean a(final aN p0, final aX p1, final SyncResult p2, final boolean p3) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: invokestatic    com/google/android/gm/persistence/b.DD:()Lcom/google/android/gm/persistence/b;
        //     3: aload_0        
        //     4: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //     7: invokevirtual   com/google/android/gm/persistence/b.bQ:(Landroid/content/Context;)J
        //    10: lstore          5
        //    12: aload_2        
        //    13: getfield        com/google/android/gm/provider/aX.bkG:Z
        //    16: ifeq            391
        //    19: ldc_w           2097152
        //    22: istore          7
        //    24: iload           7
        //    26: aload_0        
        //    27: getfield        com/google/android/gm/provider/MailEngine.Tw:Landroid/accounts/Account;
        //    30: getfield        android/accounts/Account.name:Ljava/lang/String;
        //    33: invokestatic    com/google/android/common/a.dm:(Ljava/lang/String;)I
        //    36: ior            
        //    37: invokestatic    android/net/TrafficStats.setThreadStatsTag:(I)V
        //    40: invokestatic    android/os/SystemClock.elapsedRealtime:()J
        //    43: lstore          16
        //    45: getstatic       com/google/android/gm/provider/MailEngine.TAG:Ljava/lang/String;
        //    48: astore          18
        //    50: iconst_1       
        //    51: anewarray       Ljava/lang/Object;
        //    54: astore          19
        //    56: aload           19
        //    58: iconst_0       
        //    59: aload_2        
        //    60: getfield        com/google/android/gm/provider/aX.bkF:Z
        //    63: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //    66: aastore        
        //    67: aload           18
        //    69: ldc_w           "runSyncLoop normalSync - %b"
        //    72: aload           19
        //    74: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //    77: pop            
        //    78: aload_2        
        //    79: getfield        com/google/android/gm/provider/aX.bkG:Z
        //    82: ifne            399
        //    85: iload           4
        //    87: ifne            399
        //    90: iconst_1       
        //    91: istore          21
        //    93: aload_0        
        //    94: getfield        com/google/android/gm/provider/MailEngine.bit:Lcom/google/android/gm/provider/MailSync;
        //    97: iload           21
        //    99: aload_2        
        //   100: aconst_null    
        //   101: invokevirtual   com/google/android/gm/provider/MailSync.a:(ZLcom/google/android/gm/provider/aX;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpUriRequest;
        //   104: astore          22
        //   106: aload_0        
        //   107: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //   110: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //   113: ldc_w           "gmail-max-sync-per-interval"
        //   116: bipush          50
        //   118: invokestatic    com/google/android/gsf/c.getInt:(Landroid/content/ContentResolver;Ljava/lang/String;I)I
        //   121: istore          23
        //   123: iconst_0       
        //   124: istore          24
        //   126: iconst_0       
        //   127: istore          25
        //   129: lconst_0       
        //   130: lstore          26
        //   132: iconst_0       
        //   133: istore          28
        //   135: aload           22
        //   137: astore          29
        //   139: aload           29
        //   141: ifnull          588
        //   144: aload_0        
        //   145: getfield        com/google/android/gm/provider/MailEngine.biK:Z
        //   148: ifne            588
        //   151: invokestatic    android/os/SystemClock.elapsedRealtime:()J
        //   154: aload_0        
        //   155: getfield        com/google/android/gm/provider/MailEngine.biM:J
        //   158: lsub           
        //   159: ldc2_w          120000
        //   162: lcmp           
        //   163: ifle            178
        //   166: aload_0        
        //   167: iconst_0       
        //   168: putfield        com/google/android/gm/provider/MailEngine.biL:I
        //   171: aload_0        
        //   172: invokestatic    android/os/SystemClock.elapsedRealtime:()J
        //   175: putfield        com/google/android/gm/provider/MailEngine.biM:J
        //   178: aload_0        
        //   179: getfield        com/google/android/gm/provider/MailEngine.biL:I
        //   182: iload           23
        //   184: if_icmple       405
        //   187: getstatic       com/google/android/gm/provider/MailEngine.TAG:Ljava/lang/String;
        //   190: astore          62
        //   192: iconst_3       
        //   193: anewarray       Ljava/lang/Object;
        //   196: astore          63
        //   198: aload           63
        //   200: iconst_0       
        //   201: aload_0        
        //   202: getfield        com/google/android/gm/provider/MailEngine.biM:J
        //   205: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   208: aastore        
        //   209: aload           63
        //   211: iconst_1       
        //   212: aload_0        
        //   213: getfield        com/google/android/gm/provider/MailEngine.biL:I
        //   216: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   219: aastore        
        //   220: aload           63
        //   222: iconst_2       
        //   223: iload           23
        //   225: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   228: aastore        
        //   229: aload           62
        //   231: ldc_w           "Sync check time: %d Sync count: %d Max syncs allowed in period: %d"
        //   234: aload           63
        //   236: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   239: pop            
        //   240: getstatic       com/google/android/gm/provider/MailEngine.TAG:Ljava/lang/String;
        //   243: ldc_w           "Too many sync loops, cancelling sync."
        //   246: iconst_0       
        //   247: anewarray       Ljava/lang/Object;
        //   250: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   253: pop            
        //   254: aload_0        
        //   255: iconst_1       
        //   256: putfield        com/google/android/gm/provider/MailEngine.biK:Z
        //   259: aload_3        
        //   260: ifnull          270
        //   263: aload_3        
        //   264: ldc2_w          30
        //   267: putfield        android/content/SyncResult.delayUntil:J
        //   270: new             Ljava/io/IOException;
        //   273: dup            
        //   274: ldc_w           "Too many sync loops detected"
        //   277: invokespecial   java/io/IOException.<init>:(Ljava/lang/String;)V
        //   280: athrow         
        //   281: astore          13
        //   283: aload_0        
        //   284: getfield        com/google/android/gm/provider/MailEngine.biw:Lcom/google/android/gm/provider/bB;
        //   287: aload_0        
        //   288: getfield        com/google/android/gm/provider/MailEngine.biF:Lcom/google/android/gm/provider/P;
        //   291: invokevirtual   com/google/android/gm/provider/bB.a:(Lcom/google/android/gm/provider/bE;)V
        //   294: aload_0        
        //   295: getfield        com/google/android/gm/provider/MailEngine.bdv:Lcom/google/android/gm/provider/ae;
        //   298: invokevirtual   com/google/android/gm/provider/ae.FJ:()Ljava/util/Set;
        //   301: invokeinterface java/util/Set.iterator:()Ljava/util/Iterator;
        //   306: astore          15
        //   308: aload           15
        //   310: invokeinterface java/util/Iterator.hasNext:()Z
        //   315: ifeq            1197
        //   318: aload_0        
        //   319: aload           15
        //   321: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //   326: checkcast       Ljava/lang/Long;
        //   329: invokevirtual   java/lang/Long.longValue:()J
        //   332: getstatic       com/google/android/gm/provider/MailSync$SyncRationale.bmp:Lcom/google/android/gm/provider/MailSync$SyncRationale;
        //   335: invokespecial   com/google/android/gm/provider/MailEngine.a:(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V
        //   338: goto            308
        //   341: astore          14
        //   343: aload_0        
        //   344: getfield        com/google/android/gm/provider/MailEngine.biw:Lcom/google/android/gm/provider/bB;
        //   347: invokevirtual   com/google/android/gm/provider/bB.endTransaction:()V
        //   350: aload           14
        //   352: athrow         
        //   353: astore          10
        //   355: aload_1        
        //   356: ifnull          368
        //   359: iload           7
        //   361: aload_1        
        //   362: invokevirtual   com/google/android/gm/provider/aN.GY:()I
        //   365: invokestatic    android/net/TrafficStats.incrementOperationCount:(II)V
        //   368: invokestatic    android/net/TrafficStats.clearThreadStatsTag:()V
        //   371: aload_0        
        //   372: getfield        com/google/android/gm/provider/MailEngine.bit:Lcom/google/android/gm/provider/MailSync;
        //   375: invokevirtual   com/google/android/gm/provider/MailSync.Hy:()V
        //   378: invokestatic    com/google/android/gm/persistence/b.DD:()Lcom/google/android/gm/persistence/b;
        //   381: aload_0        
        //   382: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //   385: invokevirtual   com/google/android/gm/persistence/b.bR:(Landroid/content/Context;)V
        //   388: aload           10
        //   390: athrow         
        //   391: ldc_w           1048576
        //   394: istore          7
        //   396: goto            24
        //   399: iconst_0       
        //   400: istore          21
        //   402: goto            93
        //   405: aload_0        
        //   406: aload           29
        //   408: aload_1        
        //   409: aload_2        
        //   410: invokespecial   com/google/android/gm/provider/MailEngine.a:(Lorg/apache/http/client/methods/HttpUriRequest;Lcom/google/android/gm/provider/aN;Lcom/google/android/gm/provider/aX;)Lcom/google/android/gm/provider/aW;
        //   413: astore          59
        //   415: aload           59
        //   417: getfield        com/google/android/gm/provider/aW.bkD:I
        //   420: istore          60
        //   422: iload           60
        //   424: iload           25
        //   426: iadd           
        //   427: istore          53
        //   429: aload           59
        //   431: getfield        com/google/android/gm/provider/aW.bkE:J
        //   434: lstore          51
        //   436: iload           24
        //   438: iconst_1       
        //   439: iadd           
        //   440: istore          54
        //   442: aload           59
        //   444: getfield        com/google/android/gm/provider/aW.bkC:Z
        //   447: istore          61
        //   449: iload           61
        //   451: iload           28
        //   453: ior            
        //   454: istore          57
        //   456: aload_0        
        //   457: getfield        com/google/android/gm/provider/MailEngine.bit:Lcom/google/android/gm/provider/MailSync;
        //   460: iconst_0       
        //   461: aload_2        
        //   462: aconst_null    
        //   463: invokevirtual   com/google/android/gm/provider/MailSync.a:(ZLcom/google/android/gm/provider/aX;Ljava/util/ArrayList;)Lorg/apache/http/client/methods/HttpUriRequest;
        //   466: astore          58
        //   468: aload_0        
        //   469: iconst_1       
        //   470: aload_0        
        //   471: getfield        com/google/android/gm/provider/MailEngine.biL:I
        //   474: iadd           
        //   475: putfield        com/google/android/gm/provider/MailEngine.biL:I
        //   478: lload           51
        //   480: lstore          26
        //   482: iload           53
        //   484: istore          25
        //   486: iload           54
        //   488: istore          24
        //   490: iload           57
        //   492: istore          28
        //   494: aload           58
        //   496: astore          29
        //   498: goto            139
        //   501: aload_0        
        //   502: getfield        com/google/android/gm/provider/MailEngine.biz:Lcom/google/android/gm/provider/ba;
        //   505: aload_2        
        //   506: invokeinterface com/google/android/gm/provider/ba.a:(Lcom/google/android/gm/provider/aX;)Ljava/util/ArrayList;
        //   511: astore          55
        //   513: aload           55
        //   515: invokevirtual   java/util/ArrayList.size:()I
        //   518: ifle            553
        //   521: getstatic       com/google/android/gm/provider/MailEngine.TAG:Ljava/lang/String;
        //   524: aload           50
        //   526: ldc_w           "Exception during conversation sync. Will attempt to fetch one conversation at a time"
        //   529: iconst_0       
        //   530: anewarray       Ljava/lang/Object;
        //   533: invokestatic    com/google/android/gm/provider/ad.d:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   536: pop            
        //   537: iload           28
        //   539: aload_0        
        //   540: aload_2        
        //   541: aload_1        
        //   542: aload           55
        //   544: invokespecial   com/google/android/gm/provider/MailEngine.a:(Lcom/google/android/gm/provider/aX;Lcom/google/android/gm/provider/aN;Ljava/util/ArrayList;)Z
        //   547: ior            
        //   548: istore          57
        //   550: goto            456
        //   553: aload           50
        //   555: athrow         
        //   556: astore          12
        //   558: aload           12
        //   560: astore          9
        //   562: invokestatic    com/android/mail/a/a.oq:()Lcom/android/mail/a/d;
        //   565: ldc_w           "sync"
        //   568: ldc_w           "run_sync_loop_exception"
        //   571: aload           9
        //   573: invokevirtual   java/lang/Object.getClass:()Ljava/lang/Class;
        //   576: invokevirtual   java/lang/Class.getSimpleName:()Ljava/lang/String;
        //   579: lconst_0       
        //   580: invokeinterface com/android/mail/a/d.a:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
        //   585: aload           9
        //   587: athrow         
        //   588: aload_0        
        //   589: getfield        com/google/android/gm/provider/MailEngine.bit:Lcom/google/android/gm/provider/MailSync;
        //   592: invokevirtual   com/google/android/gm/provider/MailSync.Ht:()J
        //   595: lstore          30
        //   597: aload_0        
        //   598: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //   601: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //   604: astore          32
        //   606: invokestatic    android/content/ContentResolver.getMasterSyncAutomatically:()Z
        //   609: ifeq            619
        //   612: aload_0        
        //   613: invokevirtual   com/google/android/gm/provider/MailEngine.FQ:()Z
        //   616: ifne            923
        //   619: iconst_3       
        //   620: anewarray       Ljava/lang/String;
        //   623: astore          33
        //   625: aload           33
        //   627: iconst_0       
        //   628: ldc_w           "gmail-ls"
        //   631: aastore        
        //   632: aload           33
        //   634: iconst_1       
        //   635: aload_0        
        //   636: getfield        com/google/android/gm/provider/MailEngine.Tw:Landroid/accounts/Account;
        //   639: getfield        android/accounts/Account.name:Ljava/lang/String;
        //   642: aastore        
        //   643: aload           33
        //   645: iconst_2       
        //   646: aload_0        
        //   647: getfield        com/google/android/gm/provider/MailEngine.Tw:Landroid/accounts/Account;
        //   650: getfield        android/accounts/Account.type:Ljava/lang/String;
        //   653: aastore        
        //   654: aload           32
        //   656: getstatic       com/google/android/gsf/h.CONTENT_URI:Landroid/net/Uri;
        //   659: ldc_w           "authority=? AND _sync_account=? AND _sync_account_type=?"
        //   662: aload           33
        //   664: invokevirtual   android/content/ContentResolver.delete:(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
        //   667: pop            
        //   668: aload_0        
        //   669: invokespecial   com/google/android/gm/provider/MailEngine.Gf:()V
        //   672: aload_0        
        //   673: getfield        com/google/android/gm/provider/MailEngine.bit:Lcom/google/android/gm/provider/MailSync;
        //   676: invokevirtual   com/google/android/gm/provider/MailSync.HA:()V
        //   679: invokestatic    java/lang/System.currentTimeMillis:()J
        //   682: ldc2_w          10000
        //   685: lrem           
        //   686: lconst_0       
        //   687: lcmp           
        //   688: ifne            701
        //   691: aload_0        
        //   692: getfield        com/google/android/gm/provider/MailEngine.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //   695: ldc_w           "VACUUM"
        //   698: invokevirtual   android/database/sqlite/SQLiteDatabase.execSQL:(Ljava/lang/String;)V
        //   701: aload_0        
        //   702: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //   705: ldc_w           "power"
        //   708: invokevirtual   android/content/Context.getSystemService:(Ljava/lang/String;)Ljava/lang/Object;
        //   711: checkcast       Landroid/os/PowerManager;
        //   714: invokevirtual   android/os/PowerManager.isScreenOn:()Z
        //   717: ifeq            1189
        //   720: ldc_w           "screen_on"
        //   723: astore          36
        //   725: invokestatic    android/os/SystemClock.elapsedRealtime:()J
        //   728: lload           16
        //   730: lsub           
        //   731: lstore          37
        //   733: iload           24
        //   735: ifle            866
        //   738: invokestatic    com/google/android/gm/provider/MailEngine.Gn:()Z
        //   741: ifeq            866
        //   744: invokestatic    com/android/mail/a/a.oq:()Lcom/android/mail/a/d;
        //   747: astore          39
        //   749: aload           39
        //   751: ldc_w           "sync"
        //   754: ldc_w           "sample_sync_loop"
        //   757: aconst_null    
        //   758: lconst_1       
        //   759: invokeinterface com/android/mail/a/d.a:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
        //   764: aload           39
        //   766: ldc_w           "sync"
        //   769: lload           37
        //   771: ldc_w           "run_sync_loop_ms"
        //   774: aload           36
        //   776: invokeinterface com/android/mail/a/d.a:(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
        //   781: aload           39
        //   783: ldc_w           "sync"
        //   786: iload           24
        //   788: sipush          1000
        //   791: imul           
        //   792: i2l            
        //   793: ldc_w           "sync_num_requests"
        //   796: aload           36
        //   798: invokeinterface com/android/mail/a/d.a:(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
        //   803: aload           39
        //   805: ldc_w           "sync"
        //   808: iload           25
        //   810: sipush          1000
        //   813: imul           
        //   814: i2l            
        //   815: ldc_w           "sync_num_bytes"
        //   818: aload           36
        //   820: invokeinterface com/android/mail/a/d.a:(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
        //   825: aload           39
        //   827: ldc_w           "sync"
        //   830: lload           26
        //   832: ldc_w           "sync_http_duration_ms"
        //   835: aload           36
        //   837: invokeinterface com/android/mail/a/d.a:(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
        //   842: lload           5
        //   844: lconst_0       
        //   845: lcmp           
        //   846: ifle            866
        //   849: aload           39
        //   851: ldc_w           "sync"
        //   854: lload           5
        //   856: ldc_w           "time_since_last_sync_ms"
        //   859: aload           36
        //   861: invokeinterface com/android/mail/a/d.a:(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
        //   866: aload_1        
        //   867: ifnull          879
        //   870: iload           7
        //   872: aload_1        
        //   873: invokevirtual   com/google/android/gm/provider/aN.GY:()I
        //   876: invokestatic    android/net/TrafficStats.incrementOperationCount:(II)V
        //   879: invokestatic    android/net/TrafficStats.clearThreadStatsTag:()V
        //   882: aload_0        
        //   883: getfield        com/google/android/gm/provider/MailEngine.bit:Lcom/google/android/gm/provider/MailSync;
        //   886: invokevirtual   com/google/android/gm/provider/MailSync.Hy:()V
        //   889: invokestatic    com/google/android/gm/persistence/b.DD:()Lcom/google/android/gm/persistence/b;
        //   892: aload_0        
        //   893: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //   896: invokevirtual   com/google/android/gm/persistence/b.bR:(Landroid/content/Context;)V
        //   899: iload           28
        //   901: ireturn        
        //   902: astore          34
        //   904: getstatic       com/google/android/gm/provider/MailEngine.TAG:Ljava/lang/String;
        //   907: aload           34
        //   909: ldc_w           "NPE.  This shouldn't happen"
        //   912: iconst_0       
        //   913: anewarray       Ljava/lang/Object;
        //   916: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   919: pop            
        //   920: goto            668
        //   923: lload           30
        //   925: lconst_0       
        //   926: lcmp           
        //   927: ifeq            668
        //   930: new             Ljava/lang/StringBuilder;
        //   933: dup            
        //   934: invokespecial   java/lang/StringBuilder.<init>:()V
        //   937: aload_0        
        //   938: getfield        com/google/android/gm/provider/MailEngine.bcK:Lcom/google/android/gm/provider/bG;
        //   941: invokevirtual   com/google/android/gm/provider/bG.HT:()Ljava/lang/String;
        //   944: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   947: ldc_w           "?client="
        //   950: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   953: lload           30
        //   955: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
        //   958: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   961: astore          41
        //   963: iconst_4       
        //   964: anewarray       Ljava/lang/String;
        //   967: astore          42
        //   969: aload           42
        //   971: iconst_0       
        //   972: ldc_w           "gmail-ls"
        //   975: aastore        
        //   976: aload           42
        //   978: iconst_1       
        //   979: aload           41
        //   981: aastore        
        //   982: aload           42
        //   984: iconst_2       
        //   985: aload_0        
        //   986: getfield        com/google/android/gm/provider/MailEngine.Tw:Landroid/accounts/Account;
        //   989: getfield        android/accounts/Account.name:Ljava/lang/String;
        //   992: aastore        
        //   993: aload           42
        //   995: iconst_3       
        //   996: aload_0        
        //   997: getfield        com/google/android/gm/provider/MailEngine.Tw:Landroid/accounts/Account;
        //  1000: getfield        android/accounts/Account.type:Ljava/lang/String;
        //  1003: aastore        
        //  1004: aload           32
        //  1006: getstatic       com/google/android/gsf/h.CONTENT_URI:Landroid/net/Uri;
        //  1009: aconst_null    
        //  1010: ldc_w           "authority=? AND feed=? AND _sync_account=? AND _sync_account_type=?"
        //  1013: aload           42
        //  1015: aconst_null    
        //  1016: invokevirtual   android/content/ContentResolver.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //  1019: astore          43
        //  1021: aload           43
        //  1023: ifnonnull       1052
        //  1026: getstatic       com/google/android/gm/provider/MailEngine.TAG:Ljava/lang/String;
        //  1029: ldc_w           "Null cursor returned when querying for SubscribedFeeds"
        //  1032: iconst_0       
        //  1033: anewarray       Ljava/lang/Object;
        //  1036: invokestatic    com/google/android/gm/provider/ad.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1039: pop            
        //  1040: goto            668
        //  1043: astore          8
        //  1045: aload           8
        //  1047: astore          9
        //  1049: goto            562
        //  1052: aload           43
        //  1054: invokeinterface android/database/Cursor.getCount:()I
        //  1059: ifne            1160
        //  1062: aload_0        
        //  1063: getfield        com/google/android/gm/provider/MailEngine.Tw:Landroid/accounts/Account;
        //  1066: astore          47
        //  1068: new             Landroid/content/ContentValues;
        //  1071: dup            
        //  1072: invokespecial   android/content/ContentValues.<init>:()V
        //  1075: astore          48
        //  1077: aload           48
        //  1079: ldc_w           "feed"
        //  1082: aload           41
        //  1084: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //  1087: aload           48
        //  1089: ldc_w           "_sync_account"
        //  1092: aload           47
        //  1094: getfield        android/accounts/Account.name:Ljava/lang/String;
        //  1097: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //  1100: aload           48
        //  1102: ldc_w           "_sync_account_type"
        //  1105: aload           47
        //  1107: getfield        android/accounts/Account.type:Ljava/lang/String;
        //  1110: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //  1113: aload           48
        //  1115: ldc_w           "authority"
        //  1118: ldc_w           "gmail-ls"
        //  1121: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //  1124: aload           48
        //  1126: ldc_w           "service"
        //  1129: ldc_w           "mail"
        //  1132: invokevirtual   android/content/ContentValues.put:(Ljava/lang/String;Ljava/lang/String;)V
        //  1135: aload           32
        //  1137: getstatic       com/google/android/gsf/h.CONTENT_URI:Landroid/net/Uri;
        //  1140: aload           48
        //  1142: invokevirtual   android/content/ContentResolver.insert:(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
        //  1145: pop            
        //  1146: aload_0        
        //  1147: invokevirtual   com/google/android/gm/provider/MailEngine.FR:()V
        //  1150: aload           43
        //  1152: invokeinterface android/database/Cursor.close:()V
        //  1157: goto            668
        //  1160: aload           32
        //  1162: getstatic       com/google/android/gsf/h.CONTENT_URI:Landroid/net/Uri;
        //  1165: ldc_w           "authority=? AND feed!=? AND _sync_account=? AND _sync_account_type=?"
        //  1168: aload           42
        //  1170: invokevirtual   android/content/ContentResolver.delete:(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
        //  1173: pop            
        //  1174: goto            1150
        //  1177: astore          45
        //  1179: aload           43
        //  1181: invokeinterface android/database/Cursor.close:()V
        //  1186: aload           45
        //  1188: athrow         
        //  1189: ldc_w           "screen_off"
        //  1192: astore          36
        //  1194: goto            725
        //  1197: aload_0        
        //  1198: getfield        com/google/android/gm/provider/MailEngine.biw:Lcom/google/android/gm/provider/bB;
        //  1201: invokevirtual   com/google/android/gm/provider/bB.setTransactionSuccessful:()V
        //  1204: aload_0        
        //  1205: getfield        com/google/android/gm/provider/MailEngine.biw:Lcom/google/android/gm/provider/bB;
        //  1208: invokevirtual   com/google/android/gm/provider/bB.endTransaction:()V
        //  1211: invokestatic    com/android/mail/a/a.oq:()Lcom/android/mail/a/d;
        //  1214: ldc_w           "sync"
        //  1217: ldc_w           "run_sync_loop_exception"
        //  1220: aload           13
        //  1222: invokevirtual   java/lang/Object.getClass:()Ljava/lang/Class;
        //  1225: invokevirtual   java/lang/Class.getSimpleName:()Ljava/lang/String;
        //  1228: lconst_0       
        //  1229: invokeinterface com/android/mail/a/d.a:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
        //  1234: aload           13
        //  1236: athrow         
        //  1237: astore          50
        //  1239: lload           26
        //  1241: lstore          51
        //  1243: iload           24
        //  1245: istore          54
        //  1247: goto            501
        //  1250: astore          50
        //  1252: goto            501
        //  1255: astore          50
        //  1257: lload           26
        //  1259: lstore          51
        //  1261: iload           25
        //  1263: istore          53
        //  1265: iload           24
        //  1267: istore          54
        //  1269: goto            501
        //  1272: astore          11
        //  1274: aload           11
        //  1276: astore          9
        //  1278: goto            562
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                                                      
        //  -----  -----  -----  -----  --------------------------------------------------------------------------
        //  40     85     281    1237   Ljava/io/IOException;
        //  40     85     556    562    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  40     85     1272   1281   Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  40     85     1043   1052   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  40     85     353    391    Any
        //  93     123    281    1237   Ljava/io/IOException;
        //  93     123    556    562    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  93     123    1272   1281   Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  93     123    1043   1052   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  93     123    353    391    Any
        //  144    178    281    1237   Ljava/io/IOException;
        //  144    178    556    562    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  144    178    1272   1281   Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  144    178    1043   1052   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  144    178    353    391    Any
        //  178    259    281    1237   Ljava/io/IOException;
        //  178    259    556    562    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  178    259    1272   1281   Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  178    259    1043   1052   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  178    259    353    391    Any
        //  263    270    281    1237   Ljava/io/IOException;
        //  263    270    556    562    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  263    270    1272   1281   Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  263    270    1043   1052   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  263    270    353    391    Any
        //  270    281    281    1237   Ljava/io/IOException;
        //  270    281    556    562    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  270    281    1272   1281   Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  270    281    1043   1052   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  270    281    353    391    Any
        //  283    294    353    391    Any
        //  294    308    341    353    Any
        //  308    338    341    353    Any
        //  343    353    353    391    Any
        //  405    422    1255   1272   Ljava/net/SocketTimeoutException;
        //  405    422    281    1237   Ljava/io/IOException;
        //  405    422    556    562    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  405    422    1272   1281   Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  405    422    1043   1052   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  405    422    353    391    Any
        //  429    436    1237   1250   Ljava/net/SocketTimeoutException;
        //  429    436    281    1237   Ljava/io/IOException;
        //  429    436    556    562    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  429    436    1272   1281   Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  429    436    1043   1052   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  429    436    353    391    Any
        //  442    449    1250   1255   Ljava/net/SocketTimeoutException;
        //  442    449    281    1237   Ljava/io/IOException;
        //  442    449    556    562    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  442    449    1272   1281   Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  442    449    1043   1052   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  442    449    353    391    Any
        //  456    478    281    1237   Ljava/io/IOException;
        //  456    478    556    562    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  456    478    1272   1281   Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  456    478    1043   1052   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  456    478    353    391    Any
        //  501    550    281    1237   Ljava/io/IOException;
        //  501    550    556    562    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  501    550    1272   1281   Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  501    550    1043   1052   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  501    550    353    391    Any
        //  553    556    281    1237   Ljava/io/IOException;
        //  553    556    556    562    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  553    556    1272   1281   Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  553    556    1043   1052   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  553    556    353    391    Any
        //  562    588    353    391    Any
        //  588    619    281    1237   Ljava/io/IOException;
        //  588    619    556    562    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  588    619    1272   1281   Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  588    619    1043   1052   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  588    619    353    391    Any
        //  619    654    281    1237   Ljava/io/IOException;
        //  619    654    556    562    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  619    654    1272   1281   Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  619    654    1043   1052   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  619    654    353    391    Any
        //  654    668    902    923    Ljava/lang/NullPointerException;
        //  654    668    281    1237   Ljava/io/IOException;
        //  654    668    556    562    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  654    668    1272   1281   Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  654    668    1043   1052   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  654    668    353    391    Any
        //  668    701    281    1237   Ljava/io/IOException;
        //  668    701    556    562    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  668    701    1272   1281   Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  668    701    1043   1052   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  668    701    353    391    Any
        //  701    720    281    1237   Ljava/io/IOException;
        //  701    720    556    562    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  701    720    1272   1281   Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  701    720    1043   1052   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  701    720    353    391    Any
        //  725    733    281    1237   Ljava/io/IOException;
        //  725    733    556    562    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  725    733    1272   1281   Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  725    733    1043   1052   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  725    733    353    391    Any
        //  738    842    281    1237   Ljava/io/IOException;
        //  738    842    556    562    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  738    842    1272   1281   Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  738    842    1043   1052   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  738    842    353    391    Any
        //  849    866    281    1237   Ljava/io/IOException;
        //  849    866    556    562    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  849    866    1272   1281   Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  849    866    1043   1052   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  849    866    353    391    Any
        //  904    920    281    1237   Ljava/io/IOException;
        //  904    920    556    562    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  904    920    1272   1281   Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  904    920    1043   1052   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  904    920    353    391    Any
        //  930    1021   281    1237   Ljava/io/IOException;
        //  930    1021   556    562    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  930    1021   1272   1281   Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  930    1021   1043   1052   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  930    1021   353    391    Any
        //  1026   1040   281    1237   Ljava/io/IOException;
        //  1026   1040   556    562    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  1026   1040   1272   1281   Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  1026   1040   1043   1052   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  1026   1040   353    391    Any
        //  1052   1150   1177   1189   Any
        //  1150   1157   281    1237   Ljava/io/IOException;
        //  1150   1157   556    562    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  1150   1157   1272   1281   Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  1150   1157   1043   1052   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  1150   1157   353    391    Any
        //  1160   1174   1177   1189   Any
        //  1179   1189   281    1237   Ljava/io/IOException;
        //  1179   1189   556    562    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  1179   1189   1272   1281   Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  1179   1189   1043   1052   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  1179   1189   353    391    Any
        //  1197   1204   341    353    Any
        //  1204   1237   353    391    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0562:
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
    
    private boolean a(final aX ax, final aN an, final ArrayList<bj> list) {
        final HttpUriRequest a = this.bit.a(false, ax, new ArrayList<bj>());
        final boolean b = a != null && this.a(a, an, ax).bkC;
        final int size = list.size();
        E.d(MailEngine.TAG, "Fetching conversations one by one: %d", size);
        int i = 0;
        boolean b2 = b;
    Label_0208_Outer:
        while (i < size) {
            if (this.biK) {
                E.d(MailEngine.TAG, "Sync canceled. Aborting.", new Object[0]);
                break;
            }
            final bj bj = list.get(i);
            final long id = bj.id;
            E.d(MailEngine.TAG, "Fetching conversation %d", id);
            final HttpUriRequest a2 = this.bit.a(false, ax, Lists.n(bj));
            while (true) {
                Label_0264: {
                    if (a2 == null) {
                        break Label_0264;
                    }
                    try {
                        final boolean b3 = this.a(a2, an, ax).bkC | b2;
                        ++i;
                        b2 = b3;
                        continue Label_0208_Outer;
                    }
                    catch (SocketTimeoutException ex) {
                        E.d(MailEngine.TAG, ex, "Exception while fetching conversation %d", id);
                        this.biz.aL(id);
                    }
                }
                final boolean b3 = b2;
                continue;
            }
        }
        return b2;
    }
    
    private static boolean a(final Collection<String> collection, final String s) {
        final Iterator<String> iterator = collection.iterator();
        while (iterator.hasNext()) {
            if (s.equals(Gmail.ed(iterator.next()))) {
                return true;
            }
        }
        return false;
    }
    
    private String[] a(final String[] array, final String s, final String... array2) {
        return bw.a(this.mContext, array, s, array2);
    }
    
    private int aD(final long n) {
        if (!this.bcJ.inTransaction()) {
            throw new IllegalStateException("Must be in transaction");
        }
        while (true) {
            final Cursor query = this.bcJ.query("messages", new String[] { "messageId", "conversation", "joinedAttachmentInfos" }, "_id = ?", new String[] { Long.toString(n) }, (String)null, (String)null, (String)null);
            while (true) {
                Label_0241: {
                    try {
                        if (query.getCount() <= 0) {
                            break Label_0241;
                        }
                        query.moveToNext();
                        final long long1 = query.getLong(query.getColumnIndexOrThrow("messageId"));
                        final long long2 = query.getLong(query.getColumnIndexOrThrow("conversation"));
                        final String string = query.getString(query.getColumnIndexOrThrow("joinedAttachmentInfos"));
                        query.close();
                        if (long1 != -1L) {
                            this.bdv.G(Lists.n(long1));
                            this.a(long2, MailSync$SyncRationale.bmp);
                            this.bhA.b(long2, long1, "messageExpunged");
                            eT(string);
                            return 1;
                        }
                    }
                    finally {
                        query.close();
                    }
                    break;
                }
                final long long2 = -1L;
                final long long1 = -1L;
                final String string = null;
                continue;
            }
        }
        return 0;
    }
    
    private aP aE(final long n) {
        synchronized (this.bjw) {
            aP ap = this.bjv.get(n);
            if (ap == null) {
                ap = new aP(this, n);
                this.bjv.put(n, ap);
            }
            return ap;
        }
    }
    
    private aQ ay(final long n) {
        final Cursor query = this.bcJ.query("messages", MailEngine.bid, "_id = ?", new String[] { Long.toString(n) }, (String)null, (String)null, (String)null);
        try {
            if (query.getCount() == 0) {
                return null;
            }
            query.moveToNext();
            final aQ aq = new aQ(this);
            aq.bkt = query.getLong(query.getColumnIndexOrThrow("messageId"));
            aq.bku = query.getLong(query.getColumnIndexOrThrow("conversation"));
            return aq;
        }
        finally {
            query.close();
        }
    }
    
    private boolean az(final long n) {
        final Cursor query = this.bcJ.query("messages", MailEngine.bif, "_id = ?", new String[] { Long.toString(n) }, (String)null, (String)null, (String)null);
        try {
            if (query.getCount() == 0) {
                return false;
            }
            query.moveToNext();
            return query.getInt(query.getColumnIndexOrThrow("synced")) == 1;
        }
        finally {
            query.close();
        }
    }
    
    private Long b(final String s, final Long n) {
        final Cursor es = this.eS(s);
        try {
            if (!es.moveToNext()) {
                return n;
            }
            return es.getLong(es.getColumnIndexOrThrow("value"));
        }
        finally {
            es.close();
        }
    }
    
    private static String b(final Cursor cursor, final String s) {
        final String string = cursor.getString(cursor.getColumnIndexOrThrow(s));
        if (string != null) {
            return string;
        }
        return "";
    }
    
    static List<MailEngine> b(final Context context, final Account[] array) {
        final ImmutableSet<Object> l;
        final z<String> zx;
        synchronized (MailEngine.bje) {
            l = ImmutableSet.L((Collection<?>)MailEngine.bje.values());
            // monitorexit(MailEngine.bje)
            zx = ImmutableSet.Zx();
            if (array != null) {
                for (final Account account : array) {
                    if (account != null && !TextUtils.isEmpty((CharSequence)account.name)) {
                        E.c(ad.TAG, "getMailEngines from valid account: %s", account.name);
                        zx.aH(account.name);
                    }
                }
            }
        }
        final ImmutableSet<String> zy = zx.Zy();
        final ArrayList<Object> list = new ArrayList<Object>();
        for (final aK ak : l) {
            synchronized (ak.bko) {
                final MailEngine bdz = ak.bdz;
                if (bdz == null) {
                    continue;
                }
                final String name = bdz.Tw.name;
                final String dt = i.aT(context).dt(name);
                E.c(ad.TAG, "getMailEngines check engine name: %s %s", name, dt);
                if (!name.equals(dt)) {
                    bdz.be(dt);
                }
                if (!zy.contains(dt)) {
                    continue;
                }
                list.add(bdz);
                continue;
            }
            break;
        }
        final String[] array2 = new String[array.length];
        for (int j = 0; j < array.length; ++j) {
            array2[j] = array[j].name;
        }
        Collections.sort(list, new Y<Object, Object>(array2, (C<Object, Object>)new aw()));
        return (List<MailEngine>)list;
    }
    
    private HttpResponse b(final HttpUriRequest httpUriRequest) {
        try {
            if (c.a(this.mContext.getContentResolver(), "gmail_enable_conscrypt_provider", true)) {
                com.google.android.gms.g.a.ai(this.mContext);
            }
            AndroidHttpClient.modifyRequestToAcceptGzipResponse((HttpRequest)httpUriRequest);
            final MailEngine mailEngine = this;
            final HttpUriRequest httpUriRequest2 = httpUriRequest;
            final HttpResponse c = mailEngine.c(httpUriRequest2);
            return c;
        }
        catch (GooglePlayServicesRepairableException ex) {
            E.e(MailEngine.TAG, ex, "Repairable error from installIfNeeded, in runHttpRequest", new Object[0]);
            f.a(ex.JR(), this.mContext);
            throw new MailEngine$ConscryptInstallationException("Error from runHttpRequest", ex);
        }
        catch (GooglePlayServicesNotAvailableException ex2) {
            E.e(MailEngine.TAG, ex2, "Unrecoverable error from installIfNeeded, in runHttpRequest", new Object[0]);
            throw new MailEngine$ConscryptInstallationException("Error from runHttpRequest", ex2);
        }
        try {
            final MailEngine mailEngine = this;
            final HttpUriRequest httpUriRequest2 = httpUriRequest;
            final HttpResponse c2;
            final HttpResponse c = c2 = mailEngine.c(httpUriRequest2);
            return c2;
        }
        catch (MailEngine$AuthenticationException ex3) {
            E.c(MailEngine.TAG, "Authentication error, token invalidated, retrying", new Object[0]);
            return this.c(httpUriRequest);
        }
    }
    
    private static void b(final Handler handler, final aL al) {
        handler.post((Runnable)new aD(al));
    }
    
    private static void b(final HttpResponse httpResponse) {
        final HttpEntity entity = httpResponse.getEntity();
        if (entity != null) {
            entity.consumeContent();
        }
    }
    
    private void bX(final boolean b) {
        if (this.bcJ != null && this.bcJ.inTransaction()) {
            this.biF.bR(b);
            return;
        }
        this.bY(b);
    }
    
    private HttpResponse c(final HttpUriRequest httpUriRequest) {
        final String cm = this.Cm();
        final HttpContext a = this.bcK.a(cm, this.biE);
        final long elapsedRealtime = SystemClock.elapsedRealtime();
        final HttpResponse a2 = this.biA.a((HttpClient)this.FY(), httpUriRequest, a);
        final long elapsedRealtime2 = SystemClock.elapsedRealtime();
        if (this.bjo) {
            b(a2);
            this.bjo = false;
            throw new IOException("Fake io exception");
        }
        if (MailSync.e(a2)) {
            b(a2);
            AccountManager.get(this.mContext).invalidateAuthToken("com.google", cm);
            this.biE.clear();
            throw new MailEngine$AuthenticationException("authtoken is invalid");
        }
        synchronized (MailEngine.bjb) {
            if ((SystemClock.elapsedRealtime() - MailEngine.bja) / 1000L >= this.biZ) {
                final int n = (int)(1000L * (elapsedRealtime2 - elapsedRealtime));
                MailEngine.bja = SystemClock.elapsedRealtime();
                com.google.android.gms.d.a.a(this.mContext, n, null, null);
            }
            return a2;
        }
    }
    
    public static final boolean c(final Context context, final Account[] array) {
        final HashSet<String> set = new HashSet<String>();
        for (int length = array.length, i = 0; i < length; ++i) {
            final String dr = i.aT(context).dr(array[i].name);
            set.add(eQ(dr));
            set.add(eR(dr));
        }
        final String[] databaseList = context.databaseList();
        final int length2 = databaseList.length;
        int j = 0;
        boolean b = false;
        while (j < length2) {
            final String s = databaseList[j];
            if (!set.contains(s) && s.endsWith(".db")) {
                final boolean startsWith = s.startsWith("mailstore");
                if (startsWith || s.startsWith("internal")) {
                    if (context.deleteDatabase(s)) {
                        E.d(MailEngine.TAG, "Database deleted: No account for db [%s]", s);
                    }
                    else {
                        E.f(MailEngine.TAG, "No account for db [%s]: deleting. Delete FAILED", s);
                    }
                    if (!b && startsWith) {
                        b = (eO(s.substring(10, s.lastIndexOf(".db"))) != null);
                    }
                }
            }
            ++j;
        }
        return b;
    }
    
    private Cursor d(final String s, final String[] array) {
        final SQLiteQueryBuilder sqLiteQueryBuilder = new SQLiteQueryBuilder();
        sqLiteQueryBuilder.setTables("server_preferences");
        return sqLiteQueryBuilder.query(this.bcJ, (String[])null, s, array, (String)null, (String)null, (String)null);
    }
    
    private af d(final af af) {
        return this.bdv.eE(this.e(af));
    }
    
    private String d(final Advertisement advertisement) {
        if (TextUtils.isEmpty((CharSequence)advertisement.bcv)) {
            return null;
        }
        try {
            final HttpResponse execute = this.FY().execute((HttpUriRequest)new HttpGet(new URI(advertisement.bcv)));
            if (execute == null) {
                goto Label_0136;
            }
            final String c = org.apache.a.a.a.c(execute.getEntity().getContent(), "UTF-8");
            if (!TextUtils.isEmpty((CharSequence)c)) {
                return new JSONObject(c.substring(c.indexOf(10))).getString("ci");
            }
            E.f(MailEngine.TAG, "Got a bad response from click server", new Object[0]);
            return null;
        }
        catch (IOException ex) {
            E.e(MailEngine.TAG, ex, "Failed to fetch click id", new Object[0]);
            return null;
        }
        catch (URISyntaxException ex2) {
            E.e(MailEngine.TAG, ex2, "Failed to fetch click id due to malformed uri", new Object[0]);
            return null;
        }
        catch (JSONException ex3) {
            E.e(MailEngine.TAG, (Throwable)ex3, "Failed to parse json response from the click server", new Object[0]);
            return null;
        }
    }
    
    public static void d(final Context context, final Account[] array) {
        int i = 0;
        E.c(MailEngine.TAG, "validateMailEngineAccounts", new Object[0]);
        final HashSet<String> set = new HashSet<String>();
        while (i < array.length) {
            final Account account = array[i];
            if (account.type.equals("com.google")) {
                set.add(account.name);
            }
            ++i;
        }
        AccountManager.get(context).getAccountsByTypeAndFeatures("com.google", com.google.android.gm.a.aWC, (AccountManagerCallback)new aA(context, set), (Handler)null);
    }
    
    private void dQ(final int n) {
        while (true) {
            Label_0223: {
                Label_0215: {
                    Label_0207: {
                        Label_0199: {
                            Label_0191: {
                                Label_0183: {
                                    Label_0125: {
                                        if (!this.Gk()) {
                                            break Label_0125;
                                        }
                                        int n2 = 1;
                                        int p;
                                        d oq = null;
                                        String s;
                                        Block_6_Outer:Block_7_Outer:
                                        while (true) {
                                            Label_0161: {
                                                synchronized (this.bix) {
                                                    p = com.android.mail.providers.E.P(n2, n);
                                                    if (p != this.aAC) {
                                                        this.aAC = p;
                                                        this.Gh();
                                                    }
                                                    // monitorexit(this.bix)
                                                    if (!Gn()) {
                                                        break;
                                                    }
                                                    oq = a.oq();
                                                    switch (n) {
                                                        default: {
                                                            throw new IllegalArgumentException("Invalid LastSyncResult: " + n);
                                                        }
                                                        case 0: {
                                                            break Label_0161;
                                                        }
                                                        case 1: {
                                                            break Label_0183;
                                                        }
                                                        case 2: {
                                                            break Label_0191;
                                                        }
                                                        case 3: {
                                                            break Label_0199;
                                                        }
                                                        case 4: {
                                                            break Label_0207;
                                                        }
                                                        case 5: {
                                                            break Label_0215;
                                                        }
                                                        case 6: {
                                                            break Label_0223;
                                                        }
                                                    }
                                                    // iftrue(Label_0137:, !this.Gj())
                                                    while (true) {
                                                        n2 = 2;
                                                        continue Block_6_Outer;
                                                        continue Block_7_Outer;
                                                    }
                                                    Label_0149: {
                                                        n2 = 0;
                                                    }
                                                    continue Block_6_Outer;
                                                    while (true) {
                                                        n2 = 4;
                                                        continue Block_6_Outer;
                                                        Label_0137:
                                                        continue;
                                                    }
                                                }
                                                // iftrue(Label_0149:, !this.Gi())
                                            }
                                            s = "success";
                                            oq.a("sync", "last_sync_result", s, 0L);
                                            break;
                                        }
                                    }
                                    return;
                                }
                                String s = "connection_error";
                                continue;
                            }
                            String s = "auth_error";
                            continue;
                        }
                        String s = "security_error";
                        continue;
                    }
                    String s = "storage_error";
                    continue;
                }
                String s = "internal_error";
                continue;
            }
            String s = "server_error";
            continue;
        }
    }
    
    private String e(final af af) {
        final ae bdv = this.bdv;
        return Gmail.ei(ae.a(af));
    }
    
    public static MailEngine eO(final String s) {
        synchronized (MailEngine.bje) {
            final aK ak = MailEngine.bje.get(s);
            MailEngine bdz;
            if (ak == null) {
                bdz = null;
            }
            else {
                bdz = ak.bdz;
            }
            return bdz;
        }
    }
    
    private void eP(final String s) {
        synchronized (this) {
            this.bcJ.setVersion(0);
            this.biu.setVersion(0);
            synchronized (this.aBL) {
                this.bcJ.close();
                this.biu.close();
                this.bcJ = null;
                this.biu = null;
                // monitorexit(this.aBL)
                final Bundle bundle = new Bundle();
                bundle.putBoolean("force", true);
                ContentResolver.requestSync(this.Tw, "gmail-ls", bundle);
                E.e(MailEngine.TAG, new RuntimeException(s), "Wiping mail db: ", new Object[0]);
                System.exit(-1);
            }
        }
    }
    
    private static String eQ(final String s) {
        return "mailstore." + s + ".db";
    }
    
    private static String eR(final String s) {
        return "internal." + s + ".db";
    }
    
    private Cursor eS(final String s) {
        return this.bcJ.query("engine_settings", MailEngine.bie, "name = ?", new String[] { s }, (String)null, (String)null, (String)null);
    }
    
    private static void eT(final String s) {
        for (final GmailAttachment gmailAttachment : GmailAttachment.fp(s)) {
            if (!K.gK(gmailAttachment.bor)) {
                E.c(MailEngine.TAG, "Cleaning up cached attachment: %s", gmailAttachment.bor);
                new File(gmailAttachment.bor).delete();
            }
        }
    }
    
    private boolean eU(final String s) {
        final boolean empty = TextUtils.isEmpty((CharSequence)s);
        boolean contains = false;
        if (empty) {
            return contains;
        }
        final Cursor c = this.C(Gmail.bdX);
        try {
            final Gmail$Settings c2 = Gmail.c(this.mContext, c);
            if (c != null) {
                c.close();
            }
            contains = false;
            if (c2 != null) {
                final HashSet set = new HashSet();
                set.addAll(c2.EA());
                set.addAll(c2.EB());
                contains = set.contains(s);
            }
            return contains;
        }
        finally {
            if (c != null) {
                c.close();
            }
        }
    }
    
    private void nD() {
        com.google.android.gm.b.a.tg();
        final am am = new am(this);
        this.bhA = new Operations(this.mContext, this.bcJ);
        this.bdv = new ae(this.mContext, this.Tw, this.bcJ, this.bhA, am);
        (this.bdw = this.bdv.Fn()).addObserver(this.biS);
        this.biz = new aV(this);
        final HashMap<String, String> hashMap = new HashMap<String, String>();
        final Cursor query = this.bcJ.query("sync_settings", new String[] { "name", "value" }, (String)null, (String[])null, (String)null, (String)null, (String)null);
        try {
            while (query.moveToNext()) {
                hashMap.put(query.getString(0), query.getString(1));
            }
        }
        finally {
            query.close();
        }
        query.close();
        this.biu.beginTransactionNonExclusive();
        while (true) {
            try {
                final Cursor query2 = this.biu.query("internal_sync_settings", new String[] { "name", "value" }, (String)null, (String[])null, (String)null, (String)null, (String)null);
                Label_0280: {
                    try {
                        while (query2.moveToNext()) {
                            hashMap.put(query2.getString(0), query2.getString(1));
                        }
                        break Label_0280;
                    }
                    finally {}
                    query2.close();
                    this.biu.endTransaction();
                    throw;
                }
                this.biu.setTransactionSuccessful();
                query2.close();
                this.biu.endTransaction();
                this.bit = new MailSync(this.biz, this.bcK, hashMap, this.mContext, this.bis);
                this.bdv.an(this.bit.Hu());
                this.FU();
                this.bit.HA();
                com.google.android.gm.b.a.th();
            }
            finally {
                final Cursor query2 = query;
                continue;
            }
            break;
        }
    }
    
    private List<GmailAttachment> o(final String s, final long n) {
        final List<GmailAttachment> fp = GmailAttachment.fp(s);
        final HashMap<Object, Object> aan = Maps.aan();
        final HashSet<String> set = new HashSet<String>();
        if (n != 0L) {
            final Cursor query = this.bcJ.query("messages", new String[] { "joinedAttachmentInfos" }, "_id = ?", new String[] { String.valueOf(n) }, (String)null, (String)null, (String)null);
            try {
                String string;
                if (query.moveToFirst()) {
                    string = query.getString(0);
                }
                else {
                    E.e(MailEngine.TAG, "No row found for message _id %d though one was expected", n);
                    string = null;
                }
                query.close();
                for (final GmailAttachment gmailAttachment : GmailAttachment.fp(string)) {
                    E.b(MailEngine.TAG, "Found attachment %s", gmailAttachment);
                    if (gmailAttachment.bor != null) {
                        set.add(gmailAttachment.bor);
                        if (gmailAttachment.bom != 1) {
                            continue;
                        }
                        aan.put(gmailAttachment.ayP, gmailAttachment.bor);
                    }
                }
            }
            finally {
                query.close();
            }
        }
        final HashSet<String> set2 = new HashSet<String>();
        for (final GmailAttachment gmailAttachment2 : fp) {
            final String bor = aan.get(gmailAttachment2.ayP);
            if (bor != null) {
                E.c(MailEngine.TAG, "Attachment Content %s is already cached as %s", gmailAttachment2.ayP, bor);
                set2.add(gmailAttachment2.bor = bor);
            }
            else {
                if (TextUtils.isEmpty((CharSequence)gmailAttachment2.bor) || !set.contains(gmailAttachment2.bor)) {
                    continue;
                }
                set2.add(gmailAttachment2.bor);
            }
        }
        final Iterator<Object> iterator3 = set.iterator();
        while (iterator3.hasNext()) {
            final String s2 = iterator3.next();
            if (set2.contains(s2)) {
                E.c(MailEngine.TAG, "Cached file %s is safe from cleaning", s2);
                iterator3.remove();
            }
            else {
                E.c(MailEngine.TAG, "Cached file %s will be cleaned", s2);
            }
        }
        for (final String s3 : set) {
            E.c(MailEngine.TAG, "Cleaning up unused cached file %s", s3);
            new File(s3).delete();
        }
        return fp;
    }
    
    private void o(final Set<Long> set) {
        if (this.bcJ != null && this.bcJ.inTransaction()) {
            this.biF.k(set);
            return;
        }
        this.p(set);
    }
    
    private void p(final int n, final boolean b) {
        synchronized (this.bix) {
            if (this.biy.get(n) != b) {
                this.biy.set(n, b);
                this.Gh();
            }
        }
    }
    
    public final af[] A(final String[] array) {
        final af[] array2 = new af[array.length];
        int i = 0;
    Label_0027_Outer:
        while (i < array.length) {
            while (true) {
                try {
                    array2[i] = this.bdv.eF(array[i]);
                    ++i;
                    continue Label_0027_Outer;
                }
                catch (IllegalArgumentException ex) {
                    E.f(MailEngine.TAG, "Couldn't find label: %s", ex.getMessage());
                    continue;
                }
                break;
            }
            break;
        }
        return array2;
    }
    
    public final com.google.android.gm.provider.aa B(final String[] array) {
        return new com.google.android.gm.provider.aa(this.mContext, this.bcJ, array);
    }
    
    public final Cursor C(final String[] array) {
        final StringBuilder sb = new StringBuilder();
        sb.append("select ");
        for (int i = 0; i < array.length; ++i) {
            final String s = array[i];
            if (i != 0) {
                sb.append(", ");
            }
            sb.append("(select value from internal_sync_settings where name ='");
            sb.append(s);
            sb.append("') as ");
            sb.append(s);
        }
        return this.biu.rawQuery(sb.toString(), (String[])null);
    }
    
    @Override
    public final String Cm() {
        String blockingGetAuthToken;
        try {
            blockingGetAuthToken = AccountManager.get(this.mContext).blockingGetAuthToken(this.Tw, "mail", true);
            if (blockingGetAuthToken == null) {
                throw new MailEngine$AuthenticationException("Unable to get auth token");
            }
        }
        catch (AuthenticatorException ex) {
            throw new MailEngine$AuthenticationException(ex.getMessage());
        }
        catch (OperationCanceledException ex2) {
            throw new MailEngine$AuthenticationException(ex2.getMessage());
        }
        return blockingGetAuthToken;
    }
    
    @Override
    public final int DR() {
        return this.bit.DR();
    }
    
    @Override
    public final void DS() {
        this.g(new aC(this));
    }
    
    public final boolean Ee() {
        return this.bdw.Ee();
    }
    
    final boolean Ef() {
        return this.bdw.Ef();
    }
    
    public final String FP() {
        return this.Tw.name;
    }
    
    final boolean FQ() {
        E.b(ad.TAG, "isSyncable=%d, isSyncActive=%b, isSyncPending=%b, getSyncAutomatically=%b", ContentResolver.getIsSyncable(this.Tw, "gmail-ls"), ContentResolver.isSyncActive(this.Tw, "gmail-ls"), ContentResolver.isSyncPending(this.Tw, "gmail-ls"), ContentResolver.getSyncAutomatically(this.Tw, "gmail-ls"));
        return ContentResolver.getSyncAutomatically(this.Tw, "gmail-ls");
    }
    
    public final void FR() {
        this.t(new Bundle(0));
    }
    
    final boolean FT() {
        return this.biq;
    }
    
    public final g FX() {
        return this.bdb;
    }
    
    public final ae FZ() {
        return this.bdv;
    }
    
    public final D Fn() {
        return this.bdw;
    }
    
    public final String Fr() {
        return this.bdv.Fr();
    }
    
    public final void Fs() {
        this.bdv.Fs();
    }
    
    public final Map<String, ai> Fu() {
        return this.bdv.Fu();
    }
    
    public final boolean Fv() {
        return this.bdv.Fv();
    }
    
    public final boolean Fw() {
        return this.bdv.Fw();
    }
    
    public final boolean Fx() {
        return this.bdv.Fx();
    }
    
    public final boolean Fy() {
        return this.bdv.Fy();
    }
    
    public final void Fz() {
        this.bdv.Fz();
    }
    
    public final void GA() {
        this.biz.GA();
    }
    
    public final bH GB() {
        this.biv.HU();
        return this.biv;
    }
    
    final void Ga() {
        this.bis = true;
    }
    
    public final MailSync Gc() {
        return this.bit;
    }
    
    public final boolean Gd() {
        return com.google.android.gm.provider.f.bW(this.mContext);
    }
    
    final boolean Ge() {
        return !com.google.android.gm.provider.f.bW(this.mContext);
    }
    
    final void Gg() {
        final AlarmManager alarmManager = (AlarmManager)this.mContext.getSystemService("alarm");
        if (alarmManager == null || this.bjm == null) {
            return;
        }
        alarmManager.cancel(this.bjm);
    }
    
    public final boolean Gi() {
        synchronized (this.bix) {
            return this.biy.get(1);
        }
    }
    
    public final boolean Gj() {
        synchronized (this.bix) {
            return this.biy.get(2);
        }
    }
    
    public final boolean Gk() {
        synchronized (this.bix) {
            return this.biy.get(4);
        }
    }
    
    public final int Gl() {
        synchronized (this.bix) {
            return this.aAC;
        }
    }
    
    final Cursor Gq() {
        int n = 1;
        synchronized (this.bix) {
            if (this.Gj()) {
                n = 2;
            }
            else if (!this.Gi()) {
                n = 0;
            }
            if (this.bdw.Ee()) {
                n |= 0x10;
            }
            if (this.bdw.Ef()) {
                n |= 0x20;
            }
            final Integer value = n;
            final G g = new G(Gmail.bdY, 1);
            final MatrixCursor$RowBuilder row = g.newRow();
            row.add((Object)value);
            row.add((Object)this.Tw.name);
            return (Cursor)g;
        }
    }
    
    final boolean Gr() {
        if (this.bcJ.inTransaction()) {
            throw new IllegalStateException("Must not be in transaction");
        }
        while (true) {
            Label_0101: {
                if (this.biK) {
                    break Label_0101;
                }
                this.biw.a(this.biF);
                boolean b = false;
                try {
                    while (this.Gs()) {
                        this.bcJ.yieldIfContendedSafely();
                        b = true;
                    }
                    this.biw.setTransactionSuccessful();
                    this.biw.endTransaction();
                    if (b) {
                        this.bX(false);
                        this.biP = true;
                    }
                    return b;
                }
                finally {
                    this.biw.endTransaction();
                }
            }
            boolean b = false;
            continue;
        }
    }
    
    public final boolean Gt() {
        return this.bdv.FA();
    }
    
    public final boolean Gu() {
        return this.bdv.FF();
    }
    
    final void Gv() {
        final Intent intent = new Intent("com.google.android.gm.intent.ACTION_UPGRADE_SYNC_WINDOW");
        intent.putExtra("account", this.Tw.name);
        this.mContext.sendBroadcast(intent);
    }
    
    public final Set<String> Gx() {
        final HashSet<Object> set = (HashSet<Object>)new HashSet<String>();
        final Cursor c = this.C(Gmail.bdX);
        try {
            final Gmail$Settings c2 = Gmail.c(this.mContext, c);
            if (c != null) {
                c.close();
            }
            if (c2 != null) {
                set.addAll(c2.EA());
                set.addAll(c2.EB());
            }
            return (Set<String>)set;
        }
        finally {
            if (c != null) {
                c.close();
            }
        }
    }
    
    final void Gz() {
        this.biw.a(this.biF);
        try {
            this.biw.HQ();
        }
        catch (Exception ex) {
            E.e(MailEngine.TAG, ex, "Exception while attempting to suppress notifications", new Object[0]);
            this.biw.endTransaction();
            throw new IllegalStateException("Exception while attempting to suppress notifications", ex);
        }
    }
    
    public final int H(final List<Long> list) {
        while (true) {
            int n = 0;
            this.biw.a(this.biF);
            while (true) {
                int n2 = 0;
                Label_0110: {
                    try {
                        final Iterator<Long> iterator = list.iterator();
                        n2 = 0;
                        while (true) {
                            final boolean hasNext = iterator.hasNext();
                            n = 0;
                            if (!hasNext) {
                                break Label_0110;
                            }
                            n2 += this.aD(iterator.next());
                        }
                        this.biw.setTransactionSuccessful();
                        return n2;
                    }
                    finally {
                        this.biw.endTransaction();
                        if (n != 0) {
                            this.bX(true);
                        }
                    }
                }
                n = 0;
                if (n2 > 0) {
                    n = 1;
                    continue;
                }
                continue;
            }
        }
    }
    
    public final int W(final String s, final String s2) {
        return this.bdv.W(s, s2);
    }
    
    public final Map<String, T> X(final Context p0, final String p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_2        
        //     1: invokestatic    java/lang/Long.parseLong:(Ljava/lang/String;)J
        //     4: lstore_3       
        //     5: iconst_1       
        //     6: anewarray       Ljava/lang/String;
        //     9: astore          5
        //    11: aload           5
        //    13: iconst_0       
        //    14: lload_3        
        //    15: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //    18: aastore        
        //    19: aload_1        
        //    20: aload           5
        //    22: invokestatic    com/google/android/gm/provider/bw.a:(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;
        //    25: astore          6
        //    27: aload_0        
        //    28: getfield        com/google/android/gm/provider/MailEngine.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //    31: ldc_w           "SELECT conversation_labels.*, conversations.*, conversations.queryId = 0 AS synced, (SELECT group_concat((labels._id || '^*^' || labels.canonicalName || '^*^' || \n(CASE labels.canonicalName    WHEN '^f' THEN ?    WHEN '^^out' THEN ?    WHEN '^i' THEN ?    WHEN '^r' THEN ?    WHEN '^b' THEN ?    WHEN '^all' THEN ?    WHEN '^u' THEN ?    WHEN '^k' THEN ?    WHEN '^s' THEN ?    WHEN '^t' THEN ?    WHEN '^g' THEN ?    WHEN '^io_im' THEN ?    WHEN '^iim' THEN ?    WHEN '^sq_ig_i_personal' THEN ?    WHEN '^sq_ig_i_social' THEN ?    WHEN '^sq_ig_i_promo' THEN ?    WHEN '^sq_ig_i_notification' THEN ?    WHEN '^sq_ig_i_group' THEN ?    ELSE labels.name END)  || '^*^' || labels.color || '^*^' || labels.hidden),    '^**^') FROM labels JOIN conversation_labels  ON conversation_labels.labels_id = labels._id  AND conversation_labels.conversation_id = conversations._id AND conversation_labels.isZombie = 0) AS conversationLabels   FROM conversation_labels\n  LEFT OUTER JOIN conversations\n  ON conversation_labels.conversation_id = conversations._id\n  AND conversation_labels.queryId = conversations.queryId\nWHERE\n  ( conversations._id = ?)\n  AND isZombie = 0\nGROUP BY conversations._id"
        //    34: aload           6
        //    36: invokevirtual   android/database/sqlite/SQLiteDatabase.rawQuery:(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
        //    39: astore          7
        //    41: aload           7
        //    43: ifnull          97
        //    46: new             Lcom/google/android/gm/provider/C;
        //    49: dup            
        //    50: aload_0        
        //    51: getfield        com/google/android/gm/provider/MailEngine.Tw:Landroid/accounts/Account;
        //    54: getfield        android/accounts/Account.name:Ljava/lang/String;
        //    57: aload           7
        //    59: invokespecial   com/google/android/gm/provider/C.<init>:(Ljava/lang/String;Landroid/database/Cursor;)V
        //    62: astore          8
        //    64: aload           8
        //    66: invokevirtual   com/google/android/gm/provider/C.Ew:()Z
        //    69: ifeq            92
        //    72: aload           8
        //    74: invokevirtual   com/google/android/gm/provider/C.Ed:()Ljava/util/Map;
        //    77: astore          10
        //    79: aload           10
        //    81: ifnull          92
        //    84: aload           8
        //    86: invokevirtual   com/google/android/gm/provider/C.close:()V
        //    89: aload           10
        //    91: areturn        
        //    92: aload           8
        //    94: invokevirtual   com/google/android/gm/provider/C.close:()V
        //    97: invokestatic    com/google/common/collect/Maps.aan:()Ljava/util/HashMap;
        //   100: areturn        
        //   101: astore          9
        //   103: aconst_null    
        //   104: astore          8
        //   106: aload           8
        //   108: ifnull          116
        //   111: aload           8
        //   113: invokevirtual   com/google/android/gm/provider/C.close:()V
        //   116: aload           9
        //   118: athrow         
        //   119: astore          9
        //   121: goto            106
        //    Signature:
        //  (Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map<Ljava/lang/String;Lcom/google/android/gm/provider/T;>;
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  46     64     101    106    Any
        //  64     79     119    124    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0092:
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
    
    final void Y(final String s, final String s2) {
        final ContentValues contentValues = new ContentValues();
        contentValues.put("name", s);
        contentValues.put("value", s2);
        this.biu.replace("internal_sync_settings", (String)null, contentValues);
    }
    
    public final int a(final af af, final af af2) {
        final String[] array = { Long.toString(af2.id) };
        this.bcJ.delete("message_labels", "labels_id = ?", array);
        final int delete = this.bcJ.delete("conversation_labels", "labels_id = ?", array);
        this.bdv.a(af2, 0, 0, 0, Integer.MAX_VALUE, "SHOW");
        this.bW(false);
        if (com.google.android.gm.persistence.b.DD().b(this.mContext, null, "notification-requires-us", false)) {
            this.a(this.bit.GT(), "label:" + af.bhU, af.bhU, Long.valueOf(af.id), false);
            final Bundle bundle = new Bundle(1);
            bundle.putBoolean("expedited", true);
            this.t(bundle);
        }
        return delete;
    }
    
    public final long a(long insert, final boolean b, final long n, final ContentValues contentValues, final Bundle bundle) {
        final TimingLogger timingLogger = new TimingLogger(MailEngine.TAG, "sendOrSaveDraft");
        final List<GmailAttachment> o = this.o((String)contentValues.get("joinedAttachmentInfos"), insert);
        for (final GmailAttachment gmailAttachment : o) {
            if (gmailAttachment.bom == 1 && K.gK(gmailAttachment.bor)) {
                final String a = com.android.mail.utils.b.a(this.mContext, gmailAttachment, bundle);
                if (a != null) {
                    gmailAttachment.bor = a;
                }
                int n2;
                if (a != null) {
                    n2 = 1;
                }
                else {
                    n2 = 0;
                }
                if (n2 != 0) {
                    continue;
                }
                com.android.mail.a.a.oq().a("errors", "cache_attachment", "failed", 0L);
            }
        }
        final String k = GmailAttachment.K(o);
        timingLogger.addSplit("caching");
        timingLogger.addSplit("beginTransactionNonExclusive");
        this.biw.a(this.biF);
        boolean b2;
        if (insert == 0L || insert == -1L) {
            b2 = true;
        }
        else {
            b2 = false;
        }
        aQ ay = null;
        ContentValues contentValues2;
        String s;
        String cg;
        long n3;
        long currentTimeMillis;
        long bkt = 0L;
        long n4;
        int length;
        int n5 = 0;
        long bku;
        bm ax;
        long bku2;
        long bkt2;
        long bku3;
        Bundle bundle2;
        int n6;
        int n7;
        int n8;
        bm c;
        String s2;
        int n9;
        int n10;
        ContentResolver contentResolver;
        boolean b3;
        int n11;
        Label_0220_Outer:Label_0440_Outer:
        while (true) {
        Label_0291_Outer:
            while (true) {
            Label_0291:
                while (true) {
                Label_1139_Outer:
                    while (true) {
                        Label_1354: {
                            Label_0724: {
                                Label_0714: {
                                    try {
                                        ay = this.ay(insert);
                                        if (b2) {
                                            break Label_1354;
                                        }
                                        if (ay == null) {
                                            break Label_1354;
                                        }
                                        break Label_0714;
                                        while (true) {
                                            contentValues2.putNull("bodyCompressed");
                                            cg = ag.cG(s);
                                            while (true) {
                                                Block_33: {
                                                    break Block_33;
                                                    Label_0499:Label_0254_Outer:
                                                    while (true) {
                                                        contentValues2.put("refMessageId", n3);
                                                        break Label_0499;
                                                        while (true) {
                                                            bkt = currentTimeMillis << 20;
                                                            contentValues2.put("messageId", bkt);
                                                            break Label_0724;
                                                            currentTimeMillis = System.currentTimeMillis();
                                                            contentValues2 = new ContentValues(contentValues);
                                                            timingLogger.addSplit("value fiddling");
                                                            continue Label_0220_Outer;
                                                        }
                                                        contentValues2.put("error", "");
                                                        contentValues2.put("clientCreated", 1);
                                                        continue Label_0254_Outer;
                                                    }
                                                    timingLogger.addSplit("more values");
                                                    E.c(MailEngine.TAG, "MailEngine.sendOrSaveMessage messageId=%d refMessageId=%d, conversationId=%d", bkt, n3, n4);
                                                    this.bcJ.delete("message_labels", "message_messageId = ?", new String[] { Long.toString(bkt) });
                                                    timingLogger.addSplit("delete old labels");
                                                    contentValues2.put("joinedAttachmentInfos", k);
                                                    insert = this.bcJ.insert("messages", (String)null, contentValues2);
                                                    throw new IllegalStateException("Error while inserting message with values: " + contentValues2);
                                                }
                                                length = cg.length();
                                                contentValues2.put("snippet", cg.substring(0, length));
                                                continue Label_0440_Outer;
                                            }
                                            timingLogger.addSplit("fetch ref message");
                                            contentValues2.put("conversation", n4);
                                            contentValues2.put("queryId", 0);
                                            contentValues2.put("synced", 1);
                                            contentValues2.put("dateSentMs", currentTimeMillis);
                                            contentValues2.put("dateReceivedMs", currentTimeMillis);
                                            contentValues2.put("spamDisplayedReasonType", -1);
                                            s = (String)contentValues2.get("body");
                                            continue Label_0220_Outer;
                                        }
                                    }
                                    // iftrue(Label_0456:, !TextUtils.isEmpty((CharSequence)(String)contentValues2.get("snippet")))
                                    // iftrue(Label_1370:, cg.length() >= 200)
                                    // iftrue(Label_1360:, n == 0L || insert == -1L)
                                    // iftrue(Label_0772:, b2 == false && ay != null)
                                    // iftrue(Label_0499:, n3 == 0L)
                                    // iftrue(Label_0796:, b2 == false)
                                    // iftrue(Label_0832:, insert != -1L)
                                    // iftrue(Label_0456:, s == null)
                                    finally {
                                        n5 = 0;
                                    }
                                    break;
                                }
                                bku = ay.bku;
                                continue Label_0440_Outer;
                            }
                            ax = this.ax(n);
                            if (ax == null) {
                                n3 = 0L;
                                n4 = bkt;
                                continue Label_0291;
                            }
                            bku2 = ax.bku;
                            bkt2 = ax.bkt;
                            n4 = bku2;
                            n3 = bkt2;
                            continue Label_0291;
                            Label_0772: {
                                bku3 = ay.bku;
                            }
                            bkt = ay.bkt;
                            n4 = bku3;
                            n3 = 0L;
                            continue Label_0291;
                            Label_0796:
                            this.bcJ.update("messages", contentValues2, "_id = ?", new String[] { Long.toString(insert) });
                            Label_0832:
                            timingLogger.addSplit("insert or update");
                            while (true) {
                            Label_1332_Outer:
                                while (true) {
                                    Label_0989: {
                                        while (true) {
                                            Label_0867: {
                                                if (b) {
                                                    this.bdv.a(bkt, this.bdv.eF("^r"), true, Operations$RecordHistory.bmN);
                                                    break Label_0867;
                                                }
                                                Label_1189: {
                                                    break Label_1189;
                                                Label_1279_Outer:
                                                    while (true) {
                                                    Label_1279:
                                                        while (true) {
                                                            Label_1427:Label_1227_Outer:
                                                            while (true) {
                                                                Label_1421: {
                                                                Label_1227:
                                                                    while (true) {
                                                                        try {
                                                                            bundle2 = new Bundle();
                                                                            bundle2.putBoolean("expedited", true);
                                                                            if (n6 != 0 && n7 == 0) {
                                                                                bundle2.putBoolean("force", true);
                                                                                bundle2.putBoolean("sendwithoutsync", true);
                                                                                bundle2.putLong("sendwithoutsyncMessageId", bkt);
                                                                                bundle2.putLong("sendwithoutsyncConversationId", n4);
                                                                            }
                                                                            ContentResolver.requestSync(this.Tw, "gmail-ls", bundle2);
                                                                            timingLogger.addSplit("notifyDatasetChanged");
                                                                            this.biw.setTransactionSuccessful();
                                                                            this.biw.endTransaction();
                                                                            timingLogger.addSplit("finish");
                                                                            this.bX(true);
                                                                            timingLogger.addSplit("onConversationChanged (new)");
                                                                            timingLogger.dumpToLog();
                                                                            return insert;
                                                                            // iftrue(Label_1409:, n8 != 0 || a((Collection<String>)c.blP, this.Tw.name))
                                                                            break Label_1427;
                                                                            // iftrue(Label_1415:, !a((Collection<String>)c.blN, this.Tw.name))
                                                                            // iftrue(Label_1279:, c == null)
                                                                            // iftrue(Label_1307:, n10 == 0)
                                                                        Label_1307:
                                                                            while (true) {
                                                                                this.bdv.a(bkt, this.bdv.eF("^i"), true, Operations$RecordHistory.bmN);
                                                                                break Label_1307;
                                                                                this.bhA.b(n4, bkt, s2);
                                                                                break Label_0989;
                                                                                while (true) {
                                                                                    while (true) {
                                                                                        n9 = 1;
                                                                                        break Label_1227;
                                                                                        continue Label_1227_Outer;
                                                                                    }
                                                                                    c = this.c(bkt, false);
                                                                                    n10 = 0;
                                                                                    continue Label_1279_Outer;
                                                                                }
                                                                                continue Label_1332_Outer;
                                                                            }
                                                                            this.bdv.a(bkt, this.bdv.eF("^^out"), true, Operations$RecordHistory.bmN);
                                                                            break;
                                                                            // iftrue(Label_1403:, n9 != 0 || a((Collection<String>)c.blO, this.Tw.name))
                                                                            break Label_1421;
                                                                        }
                                                                        finally {
                                                                            break Label_0220_Outer;
                                                                        }
                                                                        break Label_1354;
                                                                        Label_1403:
                                                                        n8 = 1;
                                                                        continue Label_1332_Outer;
                                                                        Label_1409:
                                                                        n10 = 1;
                                                                        continue Label_1279;
                                                                        Label_1415:
                                                                        n9 = 0;
                                                                        continue Label_1227;
                                                                    }
                                                                }
                                                                n8 = 0;
                                                                continue Label_1332_Outer;
                                                            }
                                                            n10 = 0;
                                                            continue Label_1279;
                                                        }
                                                    }
                                                }
                                            }
                                            timingLogger.addSplit("set new labels");
                                            if (b) {
                                                s2 = "messageSaved";
                                            }
                                            else {
                                                s2 = "messageSent";
                                            }
                                            this.bhA.aQ(bkt);
                                            timingLogger.addSplit("update operations");
                                            contentResolver = this.mContext.getContentResolver();
                                            if (com.google.android.gsf.c.getInt(contentResolver, "gmail_send_immediately", 1) != 0) {
                                                b3 = true;
                                            }
                                            else {
                                                b3 = false;
                                            }
                                            if (com.google.android.gsf.c.getInt(contentResolver, "gmail_send_without_sync", 1) != 0) {
                                                n6 = 1;
                                            }
                                            else {
                                                n6 = 0;
                                            }
                                            if (ContentResolver.getMasterSyncAutomatically() && this.FQ()) {
                                                n7 = 1;
                                            }
                                            else {
                                                n7 = 0;
                                            }
                                            if (!b && b3 && n6 != 0 && n7 == 0) {
                                                n11 = 1;
                                            }
                                            else {
                                                n11 = 0;
                                            }
                                            if (n11 == 0) {
                                                continue;
                                            }
                                            break;
                                        }
                                        this.bhA.b(new bt(s2, bkt, n4));
                                    }
                                    timingLogger.addSplit("update operations");
                                    if (n4 != bku && bku != 0L) {
                                        this.a(bku, MailSync$SyncRationale.bmp);
                                    }
                                    timingLogger.addSplit("onConversationChanged (old)");
                                    this.a(n4, MailSync$SyncRationale.bmp, true, false, false);
                                    n5 = 1;
                                    if (!b && b3) {
                                        continue Label_1139_Outer;
                                    }
                                    break;
                                }
                                continue;
                            }
                        }
                        bku = 0L;
                        continue Label_0440_Outer;
                    }
                    Label_1360: {
                        n3 = 0L;
                    }
                    n4 = bkt;
                    continue Label_0291;
                }
                Label_1370: {
                    length = 200;
                }
                continue Label_0291_Outer;
            }
        }
        this.biw.endTransaction();
        timingLogger.addSplit("finish");
        if (n5 != 0) {
            this.bX(true);
            timingLogger.addSplit("onConversationChanged (new)");
        }
        timingLogger.dumpToLog();
        throw;
    }
    
    public final long a(final bi bi, final long n, final af af) {
    Label_0089_Outer:
        while (true) {
            final ContentValues contentValues = new ContentValues();
            this.biw.a(this.biF);
            long bku = 0L;
            String value = null;
            Label_0486: {
                long n2 = 0L;
                Map<Long, com.google.android.gm.provider.ab> f = null;
                HashMap<Long, com.google.android.gm.provider.ab> aan = null;
            Label_0418:
                while (true) {
                Label_0710:
                    while (true) {
                        try {
                            bku = bi.bku;
                            value = String.valueOf(bku);
                            if (n == 0L) {
                                n2 = DatabaseUtils.longForQuery(this.bcJ, "SELECT COALESCE(MAX(messageId), 0) FROM messages where conversation = ? AND queryId = 0", new String[] { value });
                                if (n != 0L) {
                                    break Label_0710;
                                }
                                f = new w(this.bcJ, this.bdv).f(bku, n);
                                contentValues.put("_id", bku);
                                contentValues.put("queryId", n);
                                contentValues.put("subject", bi.ayV);
                                contentValues.put("snippet", bi.abh);
                                contentValues.put("fromCompact", bi.blD);
                                contentValues.put("personalLevel", bi.blF.Ex());
                                contentValues.put("forceAllUnread", 0);
                                bi.blG.add(this.bdw.Eq());
                                if (af != null) {
                                    bi.blG.add(af.id);
                                }
                                contentValues.put("labelIds", Gmail.j(bi.blG));
                                contentValues.put("numMessages", bi.blB);
                                contentValues.put("maxMessageId", n2);
                                contentValues.put("hasAttachments", bi.ayX);
                                final long replace = this.bcJ.replace("conversations", (String)null, contentValues);
                                if (n == 0L) {
                                    this.biP = true;
                                }
                                if (replace == -1L) {
                                    E.e(MailEngine.TAG, "Failed to insert conversation", new Object[0]);
                                }
                                if (n == 0L) {
                                    aan = Maps.aan();
                                    final Iterator<Long> iterator = bi.blG.iterator();
                                    while (iterator.hasNext()) {
                                        aan.put(iterator.next(), new com.google.android.gm.provider.ab(bi.bhx, bi.blE, false));
                                    }
                                    break Label_0418;
                                }
                                break Label_0486;
                            }
                        }
                        finally {
                            this.biw.endTransaction();
                        }
                        n2 = bi.blA;
                        continue Label_0089_Outer;
                    }
                    f = null;
                    continue;
                }
                final bA ba = new bA(this.bcJ, this.bdv);
                ba.a(bku, MailSync$SyncRationale.bmm, f, aan, n2, null, null);
                ba.a(bku, 0L, aan);
                break;
            }
            contentValues.clear();
            if (af != null) {
                contentValues.put("labels_id", af.id);
            }
            else {
                contentValues.put("labels_id", 0);
            }
            contentValues.put("queryId", n);
            contentValues.put("isZombie", 0);
            contentValues.put("sortMessageId", bi.bhx);
            contentValues.put("date", bi.blE);
            contentValues.put("conversation_id", bku);
            this.bcJ.delete("conversation_labels", "queryId = ? AND conversation_id = ?", new String[] { String.valueOf(n), value });
            final Iterator<Long> iterator2 = bi.blG.iterator();
            while (iterator2.hasNext()) {
                contentValues.put("labels_id", (Long)iterator2.next());
                if (this.bcJ.insert("conversation_labels", (String)null, contentValues) == -1L) {
                    E.e(MailEngine.TAG, "Failed to insert conversation label", new Object[0]);
                }
            }
            break;
        }
        this.biw.setTransactionSuccessful();
        final long bhx = bi.bhx;
        this.biw.endTransaction();
        return bhx;
    }
    
    public final Cursor a(final String s, final String[] array, final Integer n, final boolean b) {
        return this.a(s, array, n, b, null);
    }
    
    public final Cursor a(final String s, final String[] array, final Integer n, final boolean b, final String s2) {
        if (this.bcJ == null) {
            return null;
        }
        com.google.android.gm.b.a.tg();
        final Object bjp = this.bjp;
        // monitorenter(bjp)
        boolean b2 = false;
        Label_0110: {
            if (array != null) {
                try {
                    final int length = array.length;
                    int i = 0;
                    b2 = true;
                    while (i < length) {
                        final String s3 = array[i];
                        if (!"SELECTION_ARGUMENT_DO_NOT_BECOME_ACTIVE_NETWORK_CURSOR".equals(s3)) {
                            throw new IllegalArgumentException("Selection Argument '" + s3 + "' unknown.Please see Gmail.SelectionArguments for possible values.");
                        }
                        ++i;
                        b2 = false;
                    }
                    break Label_0110;
                }
                finally {
                }
                // monitorexit(bjp)
            }
            b2 = true;
        }
        boolean b3;
        if (TextUtils.equals((CharSequence)s, (CharSequence)this.bjq) && TextUtils.equals((CharSequence)s2, (CharSequence)this.bjr)) {
            b3 = false;
        }
        else {
            b3 = true;
        }
        final boolean b4 = !b3 && b2;
        aG ag;
        if (!b4) {
            ag = new aG(this, s, s2, b2, n, MailProvider.Hh(), b);
        }
        else {
            final aG bjs = this.bjs;
            bjs.b(n);
            bjs.GI();
            ag = bjs;
        }
        E.c("CursorLogic", "IN query: label=%s logic=%s reuse=%s becomeNetwork=%s, query=%s lastQuery=%s", ag.bjY, ag, b4, b2, s, this.bjq);
        final aF af = (aF)this.bcJ.rawQueryWithFactory((SQLiteDatabase$CursorFactory)new ao(this, ag), ag.GK(), ag.getSelectionArgs(), (String)null);
        ag.aF(this.bit.GT());
        if (!b4) {
            ag.a(af);
            ag.GJ();
        }
        else {
            af.GG();
        }
        af.dS(8);
        com.google.android.gm.b.a.th();
        // monitorexit(bjp)
        return ag.o((Cursor)af);
    }
    
    public final Cursor a(final String[] array, final long n) {
        com.google.android.gm.b.a.tg();
        final SQLiteQueryBuilder sqLiteQueryBuilder = new SQLiteQueryBuilder();
        sqLiteQueryBuilder.setTables("messages LEFT OUTER JOIN message_labels \nON messages.messageId = message_labels.message_messageId \nLEFT OUTER JOIN labels \nON message_labels.labels_id = labels._id ");
        sqLiteQueryBuilder.appendWhere((CharSequence)"messages.conversation = ?");
        sqLiteQueryBuilder.setProjectionMap((Map)MailEngine.bjj);
        final Cursor query = sqLiteQueryBuilder.query(this.bcJ, array, (String)null, this.a(array, "messageLabels", new String[] { Long.toString(n) }), "messages.messageId", (String)null, "messages.messageId");
        com.google.android.gm.b.a.th();
        return (Cursor)new CompressedMessageCursor(query, "body");
    }
    
    public final Cursor a(final String[] array, final long n, final boolean b, final boolean b2) {
        com.google.android.gm.b.a.tg();
        final aP ae = this.aE(n);
        final SQLiteQueryBuilder sqLiteQueryBuilder = new SQLiteQueryBuilder();
        sqLiteQueryBuilder.setTables("messages LEFT OUTER JOIN message_labels \nON messages.messageId = message_labels.message_messageId \nLEFT OUTER JOIN labels \nON message_labels.labels_id = labels._id ");
        sqLiteQueryBuilder.appendWhere((CharSequence)"messages.conversation = ? AND (queryId = 0 OR queryId = ?)");
        sqLiteQueryBuilder.setProjectionMap((Map)MailEngine.bjj);
        sqLiteQueryBuilder.setCursorFactory((SQLiteDatabase$CursorFactory)new ap(this, ae));
        final aE ae2 = (aE)sqLiteQueryBuilder.query(this.bcJ, array, (String)null, this.a(array, "messageLabels", Long.toString(n), Long.toString(ae.bkB)), "messages.messageId", (String)null, "messages.messageId");
        int a;
        if (!ae.bks || !b) {
            a = ae.a(n, ae2, b);
        }
        else {
            a = 0;
        }
        Object o;
        if (b2) {
            o = ae2.clone();
            ae2.close();
        }
        else {
            o = ae2;
        }
        ((aR)o).dS(a);
        com.google.android.gm.b.a.th();
        return (Cursor)new CompressedMessageCursor((Cursor)o, "body");
    }
    
    public final ConversationInfo a(final String[] p0, final String p1, final String p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: new             Landroid/database/sqlite/SQLiteQueryBuilder;
        //     3: dup            
        //     4: invokespecial   android/database/sqlite/SQLiteQueryBuilder.<init>:()V
        //     7: astore          4
        //     9: aload           4
        //    11: ldc_w           "conversations"
        //    14: invokevirtual   android/database/sqlite/SQLiteQueryBuilder.setTables:(Ljava/lang/String;)V
        //    17: aload           4
        //    19: ldc_w           "conversations._id = ?"
        //    22: invokevirtual   android/database/sqlite/SQLiteQueryBuilder.appendWhere:(Ljava/lang/CharSequence;)V
        //    25: aload           4
        //    27: aload_0        
        //    28: getfield        com/google/android/gm/provider/MailEngine.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //    31: aload_1        
        //    32: aconst_null    
        //    33: iconst_1       
        //    34: anewarray       Ljava/lang/String;
        //    37: dup            
        //    38: iconst_0       
        //    39: aload_2        
        //    40: aastore        
        //    41: aconst_null    
        //    42: aconst_null    
        //    43: aconst_null    
        //    44: invokevirtual   android/database/sqlite/SQLiteQueryBuilder.query:(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    47: astore          5
        //    49: aconst_null    
        //    50: astore          6
        //    52: aload           5
        //    54: ifnull          95
        //    57: new             Lcom/google/android/gm/provider/C;
        //    60: dup            
        //    61: aload_3        
        //    62: aload           5
        //    64: invokespecial   com/google/android/gm/provider/C.<init>:(Ljava/lang/String;Landroid/database/Cursor;)V
        //    67: astore          7
        //    69: aload           7
        //    71: invokevirtual   com/google/android/gm/provider/C.Ew:()Z
        //    74: pop            
        //    75: aload           7
        //    77: aload_0        
        //    78: getfield        com/google/android/gm/provider/MailEngine.bdw:Lcom/google/android/gm/provider/D;
        //    81: invokestatic    com/google/android/gm/ConversationInfo.a:(Lcom/google/android/gm/provider/B;Lcom/google/android/gm/provider/D;)Lcom/google/android/gm/ConversationInfo;
        //    84: astore          10
        //    86: aload           10
        //    88: astore          6
        //    90: aload           7
        //    92: invokevirtual   com/google/android/gm/provider/C.close:()V
        //    95: aload           6
        //    97: areturn        
        //    98: astore          8
        //   100: aload           6
        //   102: ifnull          110
        //   105: aload           6
        //   107: invokevirtual   com/google/android/gm/provider/C.close:()V
        //   110: aload           8
        //   112: athrow         
        //   113: astore          8
        //   115: aload           7
        //   117: astore          6
        //   119: goto            100
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  57     69     98     100    Any
        //  69     86     113    122    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0095:
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
    
    public final void a(final long n, final long n2, final String s, final boolean b) {
        this.a(n, n2, s, b, Operations$RecordHistory.bmO);
    }
    
    public final void a(final long n, final long n2, final String s, final boolean b, final Operations$RecordHistory operations$RecordHistory) {
        final HashSet<Long> set = new HashSet<Long>();
        this.biw.a(this.biF);
        try {
            final af ee = this.bdv.eE(s);
            boolean b2 = false;
            if (ee != null) {
                set.add(ee.id);
                this.bdv.a(n, n2, ee, b, operations$RecordHistory);
                this.a(n, MailSync$SyncRationale.bmp);
                this.biw.setTransactionSuccessful();
                b2 = true;
            }
            this.biw.endTransaction();
            if (b2) {
                this.bX(true);
                this.o(set);
            }
            if (!b && "^u".equals(s)) {
                this.bW(false);
            }
        }
        finally {
            this.biw.endTransaction();
        }
    }
    
    public final void a(final long n, final String s, final boolean b) {
        final aQ ay = this.ay(n);
        if (ay == null) {
            E.e(MailEngine.TAG, "setLabelOnLocalMessage returning because message pair does not exist: %d", n);
            return;
        }
        final long bkt = ay.bkt;
        final long bku = ay.bku;
        final af ee = this.bdv.eE(s);
        if (ee == null) {
            E.e(MailEngine.TAG, "setLabelOnLocalMessage returning because label does not exist: %s", s);
            return;
        }
        this.biw.a(this.biF);
        try {
            this.bdv.a(bkt, ee, b, Operations$RecordHistory.bmO);
            this.a(bku, MailSync$SyncRationale.bmp, this.az(n), true, false);
            this.biw.setTransactionSuccessful();
        }
        finally {
            this.biw.endTransaction();
            this.bX(true);
        }
    }
    
    public final void a(final SyncResult p0, final Bundle p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/google/android/gm/provider/MailEngine.bip:Ljava/lang/Object;
        //     4: astore_3       
        //     5: aload_3        
        //     6: monitorenter   
        //     7: aload_0        
        //     8: getfield        com/google/android/gm/provider/MailEngine.biq:Z
        //    11: ifeq            31
        //    14: getstatic       com/google/android/gm/provider/MailEngine.TAG:Ljava/lang/String;
        //    17: ldc_w           "Sync disabled for testing, don't perform sync."
        //    20: iconst_0       
        //    21: anewarray       Ljava/lang/Object;
        //    24: invokestatic    com/google/android/gm/provider/ad.d:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //    27: pop            
        //    28: aload_3        
        //    29: monitorexit    
        //    30: return         
        //    31: aload_0        
        //    32: invokestatic    java/lang/Thread.currentThread:()Ljava/lang/Thread;
        //    35: putfield        com/google/android/gm/provider/MailEngine.bir:Ljava/lang/Thread;
        //    38: aload_3        
        //    39: monitorexit    
        //    40: new             Landroid/util/TimingLogger;
        //    43: dup            
        //    44: new             Ljava/lang/StringBuilder;
        //    47: dup            
        //    48: invokespecial   java/lang/StringBuilder.<init>:()V
        //    51: getstatic       com/google/android/gm/provider/MailEngine.TAG:Ljava/lang/String;
        //    54: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    57: ldc_w           "-profiling"
        //    60: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    63: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    66: ldc_w           "sync"
        //    69: invokespecial   android/util/TimingLogger.<init>:(Ljava/lang/String;Ljava/lang/String;)V
        //    72: astore          5
        //    74: aload           5
        //    76: ldc_w           "start"
        //    79: invokevirtual   android/util/TimingLogger.addSplit:(Ljava/lang/String;)V
        //    82: new             Lcom/google/android/gm/provider/aN;
        //    85: dup            
        //    86: invokespecial   com/google/android/gm/provider/aN.<init>:()V
        //    89: astore          9
        //    91: iconst_0       
        //    92: istore          10
        //    94: aload_0        
        //    95: getfield        com/google/android/gm/provider/MailEngine.bit:Lcom/google/android/gm/provider/MailSync;
        //    98: invokevirtual   com/google/android/gm/provider/MailSync.Hr:()V
        //   101: aload_0        
        //   102: getfield        com/google/android/gm/provider/MailEngine.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //   105: ifnull          246
        //   108: aload_0        
        //   109: iconst_0       
        //   110: putfield        com/google/android/gm/provider/MailEngine.biK:Z
        //   113: aload_0        
        //   114: iconst_1       
        //   115: iconst_1       
        //   116: invokespecial   com/google/android/gm/provider/MailEngine.p:(IZ)V
        //   119: aload_0        
        //   120: iconst_1       
        //   121: putfield        com/google/android/gm/provider/MailEngine.biG:Z
        //   124: aload_0        
        //   125: getfield        com/google/android/gm/provider/MailEngine.Tw:Landroid/accounts/Account;
        //   128: ldc_w           "gmail-ls"
        //   131: invokestatic    android/content/ContentResolver.getIsSyncable:(Landroid/accounts/Account;Ljava/lang/String;)I
        //   134: istore          35
        //   136: iconst_0       
        //   137: istore          10
        //   139: iload           35
        //   141: ifge            166
        //   144: aload_0        
        //   145: invokespecial   com/google/android/gm/provider/MailEngine.Gm:()Z
        //   148: ifeq            279
        //   151: iconst_1       
        //   152: istore          35
        //   154: aload_0        
        //   155: getfield        com/google/android/gm/provider/MailEngine.Tw:Landroid/accounts/Account;
        //   158: ldc_w           "gmail-ls"
        //   161: iload           35
        //   163: invokestatic    android/content/ContentResolver.setIsSyncable:(Landroid/accounts/Account;Ljava/lang/String;I)V
        //   166: aload_2        
        //   167: ldc_w           "initialize"
        //   170: iconst_0       
        //   171: invokevirtual   android/os/Bundle.getBoolean:(Ljava/lang/String;Z)Z
        //   174: istore          36
        //   176: iload           36
        //   178: ifeq            285
        //   181: aload_0        
        //   182: iconst_0       
        //   183: invokevirtual   com/google/android/gm/provider/MailEngine.bW:(Z)V
        //   186: aload_0        
        //   187: invokevirtual   com/google/android/gm/provider/MailEngine.DS:()V
        //   190: aload_0        
        //   191: iconst_1       
        //   192: putfield        com/google/android/gm/provider/MailEngine.bjx:Z
        //   195: aload_0        
        //   196: iconst_0       
        //   197: putfield        com/google/android/gm/provider/MailEngine.biG:Z
        //   200: aload           9
        //   202: invokevirtual   com/google/android/gm/provider/aN.GX:()Z
        //   205: ifeq            227
        //   208: aload_0        
        //   209: iconst_0       
        //   210: invokespecial   com/google/android/gm/provider/MailEngine.bX:(Z)V
        //   213: aload_0        
        //   214: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //   217: aload_0        
        //   218: getfield        com/google/android/gm/provider/MailEngine.Tw:Landroid/accounts/Account;
        //   221: getfield        android/accounts/Account.name:Ljava/lang/String;
        //   224: invokestatic    com/google/android/gm/provider/GmailProvider.S:(Landroid/content/Context;Ljava/lang/String;)V
        //   227: aload           5
        //   229: ldc_w           "stop"
        //   232: invokevirtual   android/util/TimingLogger.addSplit:(Ljava/lang/String;)V
        //   235: aload           5
        //   237: invokevirtual   android/util/TimingLogger.dumpToLog:()V
        //   240: aload_0        
        //   241: iconst_1       
        //   242: iconst_0       
        //   243: invokespecial   com/google/android/gm/provider/MailEngine.p:(IZ)V
        //   246: aload_0        
        //   247: getfield        com/google/android/gm/provider/MailEngine.bip:Ljava/lang/Object;
        //   250: astore          11
        //   252: aload           11
        //   254: monitorenter   
        //   255: aload_0        
        //   256: aconst_null    
        //   257: putfield        com/google/android/gm/provider/MailEngine.bir:Ljava/lang/Thread;
        //   260: aload           11
        //   262: monitorexit    
        //   263: return         
        //   264: astore          12
        //   266: aload           11
        //   268: monitorexit    
        //   269: aload           12
        //   271: athrow         
        //   272: astore          4
        //   274: aload_3        
        //   275: monitorexit    
        //   276: aload           4
        //   278: athrow         
        //   279: iconst_0       
        //   280: istore          35
        //   282: goto            154
        //   285: iload           35
        //   287: ifgt            380
        //   290: aload_0        
        //   291: iconst_0       
        //   292: invokevirtual   com/google/android/gm/provider/MailEngine.bW:(Z)V
        //   295: aload_0        
        //   296: invokevirtual   com/google/android/gm/provider/MailEngine.DS:()V
        //   299: aload_0        
        //   300: iconst_1       
        //   301: putfield        com/google/android/gm/provider/MailEngine.bjx:Z
        //   304: aload_0        
        //   305: iconst_0       
        //   306: putfield        com/google/android/gm/provider/MailEngine.biG:Z
        //   309: aload           9
        //   311: invokevirtual   com/google/android/gm/provider/aN.GX:()Z
        //   314: ifeq            336
        //   317: aload_0        
        //   318: iconst_0       
        //   319: invokespecial   com/google/android/gm/provider/MailEngine.bX:(Z)V
        //   322: aload_0        
        //   323: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //   326: aload_0        
        //   327: getfield        com/google/android/gm/provider/MailEngine.Tw:Landroid/accounts/Account;
        //   330: getfield        android/accounts/Account.name:Ljava/lang/String;
        //   333: invokestatic    com/google/android/gm/provider/GmailProvider.S:(Landroid/content/Context;Ljava/lang/String;)V
        //   336: aload           5
        //   338: ldc_w           "stop"
        //   341: invokevirtual   android/util/TimingLogger.addSplit:(Ljava/lang/String;)V
        //   344: aload           5
        //   346: invokevirtual   android/util/TimingLogger.dumpToLog:()V
        //   349: aload_0        
        //   350: iconst_1       
        //   351: iconst_0       
        //   352: invokespecial   com/google/android/gm/provider/MailEngine.p:(IZ)V
        //   355: goto            246
        //   358: astore          6
        //   360: aload_0        
        //   361: getfield        com/google/android/gm/provider/MailEngine.bip:Ljava/lang/Object;
        //   364: astore          7
        //   366: aload           7
        //   368: monitorenter   
        //   369: aload_0        
        //   370: aconst_null    
        //   371: putfield        com/google/android/gm/provider/MailEngine.bir:Ljava/lang/Thread;
        //   374: aload           7
        //   376: monitorexit    
        //   377: aload           6
        //   379: athrow         
        //   380: new             Lcom/google/android/gm/provider/aX;
        //   383: dup            
        //   384: invokespecial   com/google/android/gm/provider/aX.<init>:()V
        //   387: astore          37
        //   389: aload_2        
        //   390: ldc_w           "sendwithoutsync"
        //   393: iconst_0       
        //   394: invokevirtual   android/os/Bundle.getBoolean:(Ljava/lang/String;Z)Z
        //   397: ifeq            476
        //   400: aload           37
        //   402: iconst_0       
        //   403: putfield        com/google/android/gm/provider/aX.bkF:Z
        //   406: aload           37
        //   408: aload_2        
        //   409: ldc_w           "sendwithoutsyncMessageId"
        //   412: invokevirtual   android/os/Bundle.getLong:(Ljava/lang/String;)J
        //   415: putfield        com/google/android/gm/provider/aX.bkt:J
        //   418: aload           37
        //   420: aload_2        
        //   421: ldc_w           "sendwithoutsyncConversationId"
        //   424: invokevirtual   android/os/Bundle.getLong:(Ljava/lang/String;)J
        //   427: putfield        com/google/android/gm/provider/aX.bku:J
        //   430: getstatic       com/google/android/gm/provider/MailEngine.TAG:Ljava/lang/String;
        //   433: astore          44
        //   435: iconst_2       
        //   436: anewarray       Ljava/lang/Object;
        //   439: astore          45
        //   441: aload           45
        //   443: iconst_0       
        //   444: aload           37
        //   446: getfield        com/google/android/gm/provider/aX.bkt:J
        //   449: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   452: aastore        
        //   453: aload           45
        //   455: iconst_1       
        //   456: aload           37
        //   458: getfield        com/google/android/gm/provider/aX.bku:J
        //   461: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   464: aastore        
        //   465: aload           44
        //   467: ldc_w           "Reading send without sync message id, conversation id, %d %d"
        //   470: aload           45
        //   472: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   475: pop            
        //   476: aload_2        
        //   477: ldc_w           "force"
        //   480: invokevirtual   android/os/Bundle.containsKey:(Ljava/lang/String;)Z
        //   483: ifeq            492
        //   486: aload           37
        //   488: iconst_1       
        //   489: putfield        com/google/android/gm/provider/aX.bkH:Z
        //   492: aload_2        
        //   493: ldc_w           "activeLabel"
        //   496: invokevirtual   android/os/Bundle.containsKey:(Ljava/lang/String;)Z
        //   499: ifeq            547
        //   502: aload_2        
        //   503: ldc_w           "activeLabel"
        //   506: invokevirtual   android/os/Bundle.getString:(Ljava/lang/String;)Ljava/lang/String;
        //   509: astore          42
        //   511: aload_0        
        //   512: getfield        com/google/android/gm/provider/MailEngine.bdw:Lcom/google/android/gm/provider/D;
        //   515: aload           42
        //   517: invokevirtual   com/google/android/gm/provider/D.ek:(Ljava/lang/String;)Z
        //   520: istore          43
        //   522: iconst_0       
        //   523: istore          10
        //   525: iload           43
        //   527: ifeq            547
        //   530: aload           37
        //   532: aload_0        
        //   533: getfield        com/google/android/gm/provider/MailEngine.bdw:Lcom/google/android/gm/provider/D;
        //   536: aload           42
        //   538: invokevirtual   com/google/android/gm/provider/D.ej:(Ljava/lang/String;)J
        //   541: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   544: putfield        com/google/android/gm/provider/aX.bkI:Ljava/lang/Long;
        //   547: aload_2        
        //   548: ldc_w           "upload"
        //   551: invokevirtual   android/os/Bundle.containsKey:(Ljava/lang/String;)Z
        //   554: istore          38
        //   556: aload_0        
        //   557: getfield        com/google/android/gm/provider/MailEngine.biN:Ljava/lang/Object;
        //   560: astore          39
        //   562: aload           39
        //   564: monitorenter   
        //   565: aload_0        
        //   566: aload           9
        //   568: aload           37
        //   570: aload_1        
        //   571: iload           38
        //   573: invokespecial   com/google/android/gm/provider/MailEngine.a:(Lcom/google/android/gm/provider/aN;Lcom/google/android/gm/provider/aX;Landroid/content/SyncResult;Z)Z
        //   576: istore          41
        //   578: iconst_0       
        //   579: istore          10
        //   581: iload           41
        //   583: ifeq            589
        //   586: iconst_1       
        //   587: istore          10
        //   589: aload_0        
        //   590: getfield        com/google/android/gm/provider/MailEngine.bit:Lcom/google/android/gm/provider/MailSync;
        //   593: getfield        com/google/android/gm/provider/MailSync.blm:Z
        //   596: ifeq            616
        //   599: aload_0        
        //   600: getfield        com/google/android/gm/provider/MailEngine.biz:Lcom/google/android/gm/provider/ba;
        //   603: invokeinterface com/google/android/gm/provider/ba.Hb:()V
        //   608: aload_0        
        //   609: getfield        com/google/android/gm/provider/MailEngine.bit:Lcom/google/android/gm/provider/MailSync;
        //   612: iconst_0       
        //   613: putfield        com/google/android/gm/provider/MailSync.blm:Z
        //   616: aload           39
        //   618: monitorexit    
        //   619: aload_0        
        //   620: iconst_0       
        //   621: invokespecial   com/google/android/gm/provider/MailEngine.dQ:(I)V
        //   624: aload_0        
        //   625: iconst_0       
        //   626: invokevirtual   com/google/android/gm/provider/MailEngine.bW:(Z)V
        //   629: aload_0        
        //   630: invokevirtual   com/google/android/gm/provider/MailEngine.DS:()V
        //   633: aload_0        
        //   634: iconst_1       
        //   635: putfield        com/google/android/gm/provider/MailEngine.bjx:Z
        //   638: aload_0        
        //   639: iconst_0       
        //   640: putfield        com/google/android/gm/provider/MailEngine.biG:Z
        //   643: aload           9
        //   645: invokevirtual   com/google/android/gm/provider/aN.GX:()Z
        //   648: ifne            656
        //   651: iload           10
        //   653: ifeq            675
        //   656: aload_0        
        //   657: iconst_0       
        //   658: invokespecial   com/google/android/gm/provider/MailEngine.bX:(Z)V
        //   661: aload_0        
        //   662: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //   665: aload_0        
        //   666: getfield        com/google/android/gm/provider/MailEngine.Tw:Landroid/accounts/Account;
        //   669: getfield        android/accounts/Account.name:Ljava/lang/String;
        //   672: invokestatic    com/google/android/gm/provider/GmailProvider.S:(Landroid/content/Context;Ljava/lang/String;)V
        //   675: aload           5
        //   677: ldc_w           "stop"
        //   680: invokevirtual   android/util/TimingLogger.addSplit:(Ljava/lang/String;)V
        //   683: aload           5
        //   685: invokevirtual   android/util/TimingLogger.dumpToLog:()V
        //   688: aload_0        
        //   689: iconst_1       
        //   690: iconst_0       
        //   691: invokespecial   com/google/android/gm/provider/MailEngine.p:(IZ)V
        //   694: goto            246
        //   697: astore          40
        //   699: aload           39
        //   701: monitorexit    
        //   702: aload           40
        //   704: athrow         
        //   705: astore          32
        //   707: getstatic       com/google/android/gm/provider/MailEngine.TAG:Ljava/lang/String;
        //   710: aload           32
        //   712: ldc_w           "Auth exception"
        //   715: iconst_0       
        //   716: anewarray       Ljava/lang/Object;
        //   719: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   722: pop            
        //   723: aload_1        
        //   724: getfield        android/content/SyncResult.stats:Landroid/content/SyncStats;
        //   727: astore          34
        //   729: aload           34
        //   731: lconst_1       
        //   732: aload           34
        //   734: getfield        android/content/SyncStats.numAuthExceptions:J
        //   737: ladd           
        //   738: putfield        android/content/SyncStats.numAuthExceptions:J
        //   741: aload_0        
        //   742: iconst_2       
        //   743: invokespecial   com/google/android/gm/provider/MailEngine.dQ:(I)V
        //   746: aload_0        
        //   747: iconst_0       
        //   748: invokevirtual   com/google/android/gm/provider/MailEngine.bW:(Z)V
        //   751: aload_0        
        //   752: invokevirtual   com/google/android/gm/provider/MailEngine.DS:()V
        //   755: aload_0        
        //   756: iconst_1       
        //   757: putfield        com/google/android/gm/provider/MailEngine.bjx:Z
        //   760: aload_0        
        //   761: iconst_0       
        //   762: putfield        com/google/android/gm/provider/MailEngine.biG:Z
        //   765: aload           9
        //   767: invokevirtual   com/google/android/gm/provider/aN.GX:()Z
        //   770: ifne            778
        //   773: iload           10
        //   775: ifeq            797
        //   778: aload_0        
        //   779: iconst_0       
        //   780: invokespecial   com/google/android/gm/provider/MailEngine.bX:(Z)V
        //   783: aload_0        
        //   784: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //   787: aload_0        
        //   788: getfield        com/google/android/gm/provider/MailEngine.Tw:Landroid/accounts/Account;
        //   791: getfield        android/accounts/Account.name:Ljava/lang/String;
        //   794: invokestatic    com/google/android/gm/provider/GmailProvider.S:(Landroid/content/Context;Ljava/lang/String;)V
        //   797: aload           5
        //   799: ldc_w           "stop"
        //   802: invokevirtual   android/util/TimingLogger.addSplit:(Ljava/lang/String;)V
        //   805: aload           5
        //   807: invokevirtual   android/util/TimingLogger.dumpToLog:()V
        //   810: aload_0        
        //   811: iconst_1       
        //   812: iconst_0       
        //   813: invokespecial   com/google/android/gm/provider/MailEngine.p:(IZ)V
        //   816: goto            246
        //   819: astore          27
        //   821: getstatic       com/google/android/gm/provider/MailEngine.TAG:Ljava/lang/String;
        //   824: astore          28
        //   826: iconst_1       
        //   827: anewarray       Ljava/lang/Object;
        //   830: astore          29
        //   832: aload           29
        //   834: iconst_0       
        //   835: aload           27
        //   837: invokevirtual   com/google/android/gm/provider/MailSync$ResponseParseException.getMessage:()Ljava/lang/String;
        //   840: aastore        
        //   841: aload           28
        //   843: ldc_w           "Parse exception: %s"
        //   846: aload           29
        //   848: invokestatic    com/google/android/gm/provider/ad.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   851: pop            
        //   852: aload_1        
        //   853: getfield        android/content/SyncResult.stats:Landroid/content/SyncStats;
        //   856: astore          31
        //   858: aload           31
        //   860: lconst_1       
        //   861: aload           31
        //   863: getfield        android/content/SyncStats.numParseExceptions:J
        //   866: ladd           
        //   867: putfield        android/content/SyncStats.numParseExceptions:J
        //   870: aload_0        
        //   871: iconst_5       
        //   872: invokespecial   com/google/android/gm/provider/MailEngine.dQ:(I)V
        //   875: aload_0        
        //   876: iconst_0       
        //   877: invokevirtual   com/google/android/gm/provider/MailEngine.bW:(Z)V
        //   880: aload_0        
        //   881: invokevirtual   com/google/android/gm/provider/MailEngine.DS:()V
        //   884: aload_0        
        //   885: iconst_1       
        //   886: putfield        com/google/android/gm/provider/MailEngine.bjx:Z
        //   889: aload_0        
        //   890: iconst_0       
        //   891: putfield        com/google/android/gm/provider/MailEngine.biG:Z
        //   894: aload           9
        //   896: invokevirtual   com/google/android/gm/provider/aN.GX:()Z
        //   899: ifne            907
        //   902: iload           10
        //   904: ifeq            926
        //   907: aload_0        
        //   908: iconst_0       
        //   909: invokespecial   com/google/android/gm/provider/MailEngine.bX:(Z)V
        //   912: aload_0        
        //   913: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //   916: aload_0        
        //   917: getfield        com/google/android/gm/provider/MailEngine.Tw:Landroid/accounts/Account;
        //   920: getfield        android/accounts/Account.name:Ljava/lang/String;
        //   923: invokestatic    com/google/android/gm/provider/GmailProvider.S:(Landroid/content/Context;Ljava/lang/String;)V
        //   926: aload           5
        //   928: ldc_w           "stop"
        //   931: invokevirtual   android/util/TimingLogger.addSplit:(Ljava/lang/String;)V
        //   934: aload           5
        //   936: invokevirtual   android/util/TimingLogger.dumpToLog:()V
        //   939: aload_0        
        //   940: iconst_1       
        //   941: iconst_0       
        //   942: invokespecial   com/google/android/gm/provider/MailEngine.p:(IZ)V
        //   945: goto            246
        //   948: astore          23
        //   950: getstatic       com/google/android/gm/provider/MailEngine.TAG:Ljava/lang/String;
        //   953: astore          24
        //   955: iconst_1       
        //   956: anewarray       Ljava/lang/Object;
        //   959: astore          25
        //   961: aload           25
        //   963: iconst_0       
        //   964: aload           23
        //   966: invokevirtual   android/accounts/OperationCanceledException.getMessage:()Ljava/lang/String;
        //   969: aastore        
        //   970: aload           24
        //   972: ldc_w           "Canceled: %s"
        //   975: aload           25
        //   977: invokestatic    com/google/android/gm/provider/ad.d:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   980: pop            
        //   981: aload_0        
        //   982: iconst_5       
        //   983: invokespecial   com/google/android/gm/provider/MailEngine.dQ:(I)V
        //   986: aload_0        
        //   987: iconst_0       
        //   988: invokevirtual   com/google/android/gm/provider/MailEngine.bW:(Z)V
        //   991: aload_0        
        //   992: invokevirtual   com/google/android/gm/provider/MailEngine.DS:()V
        //   995: aload_0        
        //   996: iconst_1       
        //   997: putfield        com/google/android/gm/provider/MailEngine.bjx:Z
        //  1000: aload_0        
        //  1001: iconst_0       
        //  1002: putfield        com/google/android/gm/provider/MailEngine.biG:Z
        //  1005: aload           9
        //  1007: invokevirtual   com/google/android/gm/provider/aN.GX:()Z
        //  1010: ifne            1018
        //  1013: iload           10
        //  1015: ifeq            1037
        //  1018: aload_0        
        //  1019: iconst_0       
        //  1020: invokespecial   com/google/android/gm/provider/MailEngine.bX:(Z)V
        //  1023: aload_0        
        //  1024: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //  1027: aload_0        
        //  1028: getfield        com/google/android/gm/provider/MailEngine.Tw:Landroid/accounts/Account;
        //  1031: getfield        android/accounts/Account.name:Ljava/lang/String;
        //  1034: invokestatic    com/google/android/gm/provider/GmailProvider.S:(Landroid/content/Context;Ljava/lang/String;)V
        //  1037: aload           5
        //  1039: ldc_w           "stop"
        //  1042: invokevirtual   android/util/TimingLogger.addSplit:(Ljava/lang/String;)V
        //  1045: aload           5
        //  1047: invokevirtual   android/util/TimingLogger.dumpToLog:()V
        //  1050: aload_0        
        //  1051: iconst_1       
        //  1052: iconst_0       
        //  1053: invokespecial   com/google/android/gm/provider/MailEngine.p:(IZ)V
        //  1056: goto            246
        //  1059: astore          17
        //  1061: getstatic       com/google/android/gm/provider/MailEngine.TAG:Ljava/lang/String;
        //  1064: astore          18
        //  1066: iconst_1       
        //  1067: anewarray       Ljava/lang/Object;
        //  1070: astore          19
        //  1072: aload           19
        //  1074: iconst_0       
        //  1075: aload           17
        //  1077: invokevirtual   java/io/IOException.getMessage:()Ljava/lang/String;
        //  1080: aastore        
        //  1081: aload           18
        //  1083: ldc_w           "IOException: %s"
        //  1086: aload           19
        //  1088: invokestatic    com/google/android/gm/provider/ad.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1091: pop            
        //  1092: getstatic       com/google/android/gm/provider/MailEngine.TAG:Ljava/lang/String;
        //  1095: aload           17
        //  1097: ldc_w           "Detail: "
        //  1100: iconst_0       
        //  1101: anewarray       Ljava/lang/Object;
        //  1104: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1107: pop            
        //  1108: aload_1        
        //  1109: getfield        android/content/SyncResult.stats:Landroid/content/SyncStats;
        //  1112: astore          22
        //  1114: aload           22
        //  1116: lconst_1       
        //  1117: aload           22
        //  1119: getfield        android/content/SyncStats.numIoExceptions:J
        //  1122: ladd           
        //  1123: putfield        android/content/SyncStats.numIoExceptions:J
        //  1126: aload_0        
        //  1127: iconst_1       
        //  1128: invokespecial   com/google/android/gm/provider/MailEngine.dQ:(I)V
        //  1131: aload_0        
        //  1132: iconst_0       
        //  1133: invokevirtual   com/google/android/gm/provider/MailEngine.bW:(Z)V
        //  1136: aload_0        
        //  1137: invokevirtual   com/google/android/gm/provider/MailEngine.DS:()V
        //  1140: aload_0        
        //  1141: iconst_1       
        //  1142: putfield        com/google/android/gm/provider/MailEngine.bjx:Z
        //  1145: aload_0        
        //  1146: iconst_0       
        //  1147: putfield        com/google/android/gm/provider/MailEngine.biG:Z
        //  1150: aload           9
        //  1152: invokevirtual   com/google/android/gm/provider/aN.GX:()Z
        //  1155: ifne            1163
        //  1158: iload           10
        //  1160: ifeq            1182
        //  1163: aload_0        
        //  1164: iconst_0       
        //  1165: invokespecial   com/google/android/gm/provider/MailEngine.bX:(Z)V
        //  1168: aload_0        
        //  1169: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //  1172: aload_0        
        //  1173: getfield        com/google/android/gm/provider/MailEngine.Tw:Landroid/accounts/Account;
        //  1176: getfield        android/accounts/Account.name:Ljava/lang/String;
        //  1179: invokestatic    com/google/android/gm/provider/GmailProvider.S:(Landroid/content/Context;Ljava/lang/String;)V
        //  1182: aload           5
        //  1184: ldc_w           "stop"
        //  1187: invokevirtual   android/util/TimingLogger.addSplit:(Ljava/lang/String;)V
        //  1190: aload           5
        //  1192: invokevirtual   android/util/TimingLogger.dumpToLog:()V
        //  1195: aload_0        
        //  1196: iconst_1       
        //  1197: iconst_0       
        //  1198: invokespecial   com/google/android/gm/provider/MailEngine.p:(IZ)V
        //  1201: goto            246
        //  1204: astore          14
        //  1206: getstatic       com/google/android/gm/provider/MailEngine.TAG:Ljava/lang/String;
        //  1209: aload           14
        //  1211: ldc_w           "Conscrypt error during sync"
        //  1214: iconst_0       
        //  1215: anewarray       Ljava/lang/Object;
        //  1218: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1221: pop            
        //  1222: aload_0        
        //  1223: iconst_3       
        //  1224: invokespecial   com/google/android/gm/provider/MailEngine.dQ:(I)V
        //  1227: aload_1        
        //  1228: getfield        android/content/SyncResult.stats:Landroid/content/SyncStats;
        //  1231: astore          16
        //  1233: aload           16
        //  1235: lconst_1       
        //  1236: aload           16
        //  1238: getfield        android/content/SyncStats.numParseExceptions:J
        //  1241: ladd           
        //  1242: putfield        android/content/SyncStats.numParseExceptions:J
        //  1245: aload_0        
        //  1246: iconst_0       
        //  1247: invokevirtual   com/google/android/gm/provider/MailEngine.bW:(Z)V
        //  1250: aload_0        
        //  1251: invokevirtual   com/google/android/gm/provider/MailEngine.DS:()V
        //  1254: aload_0        
        //  1255: iconst_1       
        //  1256: putfield        com/google/android/gm/provider/MailEngine.bjx:Z
        //  1259: aload_0        
        //  1260: iconst_0       
        //  1261: putfield        com/google/android/gm/provider/MailEngine.biG:Z
        //  1264: aload           9
        //  1266: invokevirtual   com/google/android/gm/provider/aN.GX:()Z
        //  1269: ifne            1277
        //  1272: iload           10
        //  1274: ifeq            1296
        //  1277: aload_0        
        //  1278: iconst_0       
        //  1279: invokespecial   com/google/android/gm/provider/MailEngine.bX:(Z)V
        //  1282: aload_0        
        //  1283: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //  1286: aload_0        
        //  1287: getfield        com/google/android/gm/provider/MailEngine.Tw:Landroid/accounts/Account;
        //  1290: getfield        android/accounts/Account.name:Ljava/lang/String;
        //  1293: invokestatic    com/google/android/gm/provider/GmailProvider.S:(Landroid/content/Context;Ljava/lang/String;)V
        //  1296: aload           5
        //  1298: ldc_w           "stop"
        //  1301: invokevirtual   android/util/TimingLogger.addSplit:(Ljava/lang/String;)V
        //  1304: aload           5
        //  1306: invokevirtual   android/util/TimingLogger.dumpToLog:()V
        //  1309: aload_0        
        //  1310: iconst_1       
        //  1311: iconst_0       
        //  1312: invokespecial   com/google/android/gm/provider/MailEngine.p:(IZ)V
        //  1315: goto            246
        //  1318: astore          13
        //  1320: aload_0        
        //  1321: iconst_0       
        //  1322: invokevirtual   com/google/android/gm/provider/MailEngine.bW:(Z)V
        //  1325: aload_0        
        //  1326: invokevirtual   com/google/android/gm/provider/MailEngine.DS:()V
        //  1329: aload_0        
        //  1330: iconst_1       
        //  1331: putfield        com/google/android/gm/provider/MailEngine.bjx:Z
        //  1334: aload_0        
        //  1335: iconst_0       
        //  1336: putfield        com/google/android/gm/provider/MailEngine.biG:Z
        //  1339: aload           9
        //  1341: invokevirtual   com/google/android/gm/provider/aN.GX:()Z
        //  1344: ifne            1352
        //  1347: iload           10
        //  1349: ifeq            1371
        //  1352: aload_0        
        //  1353: iconst_0       
        //  1354: invokespecial   com/google/android/gm/provider/MailEngine.bX:(Z)V
        //  1357: aload_0        
        //  1358: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //  1361: aload_0        
        //  1362: getfield        com/google/android/gm/provider/MailEngine.Tw:Landroid/accounts/Account;
        //  1365: getfield        android/accounts/Account.name:Ljava/lang/String;
        //  1368: invokestatic    com/google/android/gm/provider/GmailProvider.S:(Landroid/content/Context;Ljava/lang/String;)V
        //  1371: aload           5
        //  1373: ldc_w           "stop"
        //  1376: invokevirtual   android/util/TimingLogger.addSplit:(Ljava/lang/String;)V
        //  1379: aload           5
        //  1381: invokevirtual   android/util/TimingLogger.dumpToLog:()V
        //  1384: aload_0        
        //  1385: iconst_1       
        //  1386: iconst_0       
        //  1387: invokespecial   com/google/android/gm/provider/MailEngine.p:(IZ)V
        //  1390: aload           13
        //  1392: athrow         
        //  1393: astore          8
        //  1395: aload           7
        //  1397: monitorexit    
        //  1398: aload           8
        //  1400: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                                                      
        //  -----  -----  -----  -----  --------------------------------------------------------------------------
        //  7      30     272    279    Any
        //  31     40     272    279    Any
        //  40     91     358    380    Any
        //  94     113    358    380    Any
        //  113    136    705    819    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  113    136    819    948    Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  113    136    948    1059   Landroid/accounts/OperationCanceledException;
        //  113    136    1059   1204   Ljava/io/IOException;
        //  113    136    1204   1318   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  113    136    1318   1393   Any
        //  144    151    705    819    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  144    151    819    948    Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  144    151    948    1059   Landroid/accounts/OperationCanceledException;
        //  144    151    1059   1204   Ljava/io/IOException;
        //  144    151    1204   1318   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  144    151    1318   1393   Any
        //  154    166    705    819    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  154    166    819    948    Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  154    166    948    1059   Landroid/accounts/OperationCanceledException;
        //  154    166    1059   1204   Ljava/io/IOException;
        //  154    166    1204   1318   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  154    166    1318   1393   Any
        //  166    176    705    819    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  166    176    819    948    Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  166    176    948    1059   Landroid/accounts/OperationCanceledException;
        //  166    176    1059   1204   Ljava/io/IOException;
        //  166    176    1204   1318   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  166    176    1318   1393   Any
        //  181    227    358    380    Any
        //  227    246    358    380    Any
        //  255    263    264    272    Any
        //  290    336    358    380    Any
        //  336    355    358    380    Any
        //  369    377    1393   1401   Any
        //  380    476    705    819    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  380    476    819    948    Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  380    476    948    1059   Landroid/accounts/OperationCanceledException;
        //  380    476    1059   1204   Ljava/io/IOException;
        //  380    476    1204   1318   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  380    476    1318   1393   Any
        //  476    492    705    819    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  476    492    819    948    Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  476    492    948    1059   Landroid/accounts/OperationCanceledException;
        //  476    492    1059   1204   Ljava/io/IOException;
        //  476    492    1204   1318   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  476    492    1318   1393   Any
        //  492    522    705    819    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  492    522    819    948    Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  492    522    948    1059   Landroid/accounts/OperationCanceledException;
        //  492    522    1059   1204   Ljava/io/IOException;
        //  492    522    1204   1318   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  492    522    1318   1393   Any
        //  530    547    705    819    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  530    547    819    948    Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  530    547    948    1059   Landroid/accounts/OperationCanceledException;
        //  530    547    1059   1204   Ljava/io/IOException;
        //  530    547    1204   1318   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  530    547    1318   1393   Any
        //  547    565    705    819    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  547    565    819    948    Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  547    565    948    1059   Landroid/accounts/OperationCanceledException;
        //  547    565    1059   1204   Ljava/io/IOException;
        //  547    565    1204   1318   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  547    565    1318   1393   Any
        //  565    578    697    705    Any
        //  589    616    697    705    Any
        //  616    619    697    705    Any
        //  619    624    705    819    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  619    624    819    948    Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  619    624    948    1059   Landroid/accounts/OperationCanceledException;
        //  619    624    1059   1204   Ljava/io/IOException;
        //  619    624    1204   1318   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  619    624    1318   1393   Any
        //  624    651    358    380    Any
        //  656    675    358    380    Any
        //  675    694    358    380    Any
        //  699    705    705    819    Lcom/google/android/gm/provider/MailEngine$AuthenticationException;
        //  699    705    819    948    Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  699    705    948    1059   Landroid/accounts/OperationCanceledException;
        //  699    705    1059   1204   Ljava/io/IOException;
        //  699    705    1204   1318   Lcom/google/android/gm/provider/MailEngine$ConscryptInstallationException;
        //  699    705    1318   1393   Any
        //  707    746    1318   1393   Any
        //  746    773    358    380    Any
        //  778    797    358    380    Any
        //  797    816    358    380    Any
        //  821    875    1318   1393   Any
        //  875    902    358    380    Any
        //  907    926    358    380    Any
        //  926    945    358    380    Any
        //  950    986    1318   1393   Any
        //  986    1013   358    380    Any
        //  1018   1037   358    380    Any
        //  1037   1056   358    380    Any
        //  1061   1131   1318   1393   Any
        //  1131   1158   358    380    Any
        //  1163   1182   358    380    Any
        //  1182   1201   358    380    Any
        //  1206   1245   1318   1393   Any
        //  1245   1272   358    380    Any
        //  1277   1296   358    380    Any
        //  1296   1315   358    380    Any
        //  1320   1347   358    380    Any
        //  1352   1371   358    380    Any
        //  1371   1393   358    380    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 682, Size: 682
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
    
    public final void a(final Handler handler, final aL al) {
        synchronized (this.biJ) {
            if (this.biH) {
                b(handler, al);
            }
            else {
                if (this.biI == null) {
                    this.biI = new ArrayList<Pair<Handler, aL>>();
                }
                this.biI.add((Pair<Handler, aL>)new Pair((Object)handler, (Object)al));
            }
        }
    }
    
    public final void a(final Advertisement advertisement, final int n) {
        this.a(advertisement, n, null, true);
    }
    
    public final void a(final Advertisement advertisement, final String s) {
        this.a(advertisement, 6, s);
    }
    
    public final void a(final Advertisement advertisement, final boolean b) {
        int n;
        if (b) {
            n = 4;
        }
        else {
            n = 9;
        }
        this.a(advertisement, n, null, false);
        final Bundle bundle = new Bundle(1);
        bundle.putBoolean("expedited", true);
        this.t(bundle);
        final String bcd = advertisement.bcd;
        final ContentValues contentValues = new ContentValues(1);
        String s;
        if (b) {
            s = "1";
        }
        else {
            s = "0";
        }
        contentValues.put("starred", s);
        this.bcJ.update("ads", contentValues, "event_id = ?", new String[] { bcd });
        this.B(Collections.singleton(bcd));
    }
    
    public final void a(final Set<Integer> set, final Set<String> set2, final boolean b) {
        String string;
        if (E.isLoggable(MailEngine.TAG, 3)) {
            string = " for " + this.Tw.name;
        }
        else {
            string = "";
        }
        E.d(MailEngine.TAG, "Configuring sectioned inbox with sections: %s and show starred: %b%s", TextUtils.join((CharSequence)",", (Iterable)set), b, string);
        this.bdv.a(set2, b);
        this.bhA.b(set, b);
        this.mContext.getContentResolver().notifyChange(Gmail.dU(this.Tw.name), (ContentObserver)null, true);
        this.mContext.getContentResolver().notifyChange(GmailProvider.ep(this.Tw.name), (ContentObserver)null, true);
    }
    
    public final void a(final ContentValues[] array, final boolean b) {
        final HashMap<Object, Object> aan = Maps.aan();
        for (final ContentValues contentValues : array) {
            if (!contentValues.containsKey("conversation")) {
                throw new IllegalArgumentException("values must have 'conversation'");
            }
            final long longValue = contentValues.getAsLong("conversation");
            List<ContentValues> list = aan.get(longValue);
            if (list == null) {
                list = new ArrayList<ContentValues>();
                aan.put(longValue, list);
            }
            list.add(contentValues);
        }
        final HashSet<Long> set = new HashSet<Long>();
        this.biw.a(this.biF);
        Label_0148: {
            if (!b) {
                break Label_0148;
            }
            while (true) {
                Iterator<Long> iterator;
                Long n = null;
                List<ContentValues> list2;
                int n2 = 0;
                boolean b2 = false;
                Iterator<ContentValues> iterator2;
                ContentValues contentValues2;
                String asString;
                long longValue2;
                long longValue3;
                aQ ay;
                int n3;
                boolean booleanValue;
                af ee;
                boolean az;
                Label_0629:Label_0211_Outer:
                while (true) {
                Label_0605:
                    while (true) {
                        try {
                            this.biw.HQ();
                            iterator = aan.keySet().iterator();
                            if (!iterator.hasNext()) {
                                break Label_0629;
                            }
                            n = iterator.next();
                            list2 = aan.get(n);
                            n2 = 0;
                            b2 = false;
                            iterator2 = list2.iterator();
                            if (!iterator2.hasNext()) {
                                break Label_0605;
                            }
                            contentValues2 = iterator2.next();
                            if (!contentValues2.containsKey("canonicalName")) {
                                throw new IllegalArgumentException("values must have 'canonicalName'");
                            }
                        }
                        finally {
                            this.biw.endTransaction();
                            this.bX(true);
                            this.o(set);
                        }
                        asString = contentValues2.getAsString("canonicalName");
                        if (!contentValues2.containsKey("_id")) {
                            throw new IllegalArgumentException("values must have '_id'");
                        }
                        longValue2 = contentValues2.getAsLong("_id");
                        if (!contentValues2.containsKey("messageId")) {
                            throw new IllegalArgumentException("values must have 'messageId'");
                        }
                        longValue3 = contentValues2.getAsLong("messageId");
                        ay = this.ay(longValue2);
                        if (ay != null && ay.bku == n && ay.bkt == longValue3) {
                            n3 = 1;
                        }
                        else {
                            n3 = 0;
                        }
                        if (!contentValues2.containsKey("add_label_action")) {
                            throw new IllegalArgumentException("values must have 'add_label_action'");
                        }
                        booleanValue = contentValues2.getAsBoolean("add_label_action");
                        E.c(MailEngine.TAG, "MailProvider.insert(): adding or removing label %s to local message %d operation (is add) = %b", asString, longValue2, booleanValue);
                        if (!Gmail.ef(asString)) {
                            throw new IllegalArgumentException("label is not user-settable: " + asString);
                        }
                        ee = this.bdv.eE(asString);
                        if (ee != null) {
                            set.add(ee.id);
                            this.bdv.a(longValue3, ee, booleanValue, Operations$RecordHistory.bmO);
                            if (n3 == 0) {
                                this.bdv.a(n, longValue3, ee, booleanValue, Operations$RecordHistory.bmN);
                            }
                            if (!b2) {
                                az = this.az(longValue2);
                                n2 = 1;
                            }
                            else {
                                az = b2;
                                n2 = 1;
                            }
                        }
                        else {
                            az = b2;
                        }
                        b2 = az;
                        continue;
                    }
                    if (n2 != 0) {
                        this.a(n, MailSync$SyncRationale.bmp, b2, true, false);
                        continue Label_0211_Outer;
                    }
                    continue Label_0211_Outer;
                }
                this.biw.setTransactionSuccessful();
                this.biw.endTransaction();
                this.bX(true);
                this.o(set);
            }
        }
    }
    
    public final int aA(final long n) {
        boolean b = false;
        this.biw.a(this.biF);
        try {
            final int ad = this.aD(n);
            b = false;
            if (ad > 0) {
                b = true;
            }
            this.biw.setTransactionSuccessful();
            return ad;
        }
        finally {
            this.biw.endTransaction();
            if (b) {
                this.bX(true);
            }
        }
    }
    
    final int aB(final long n) {
        final Cursor query = this.bcJ.query("messages", new String[] { "_id" }, "messageId IN (SELECT message_messageId FROM message_labels where   message_conversation = ? AND labels_id = ?)", new String[] { Long.toString(n), Long.toString(this.bdw.Ek()) }, (String)null, (String)null, (String)null);
        final ArrayList<Long> list = new ArrayList<Long>();
        try {
            while (query.moveToNext()) {
                list.add(query.getLong(0));
            }
        }
        finally {
            query.close();
        }
        query.close();
        return this.H(list);
    }
    
    final int aC(final long n) {
        final String string = Long.toString(this.bdw.Er());
        final String string2 = Long.toString(this.bdw.Et());
        final String string3 = Long.toString(this.bdw.Eu());
        final ArrayList<Long> list = new ArrayList<Long>();
        final Cursor query = this.bcJ.query("messages", new String[] { "_id" }, "messageId IN (SELECT message_messageId FROM message_labels where   message_conversation = ? AND labels_id IN (?, ?, ?))", new String[] { Long.toString(n), string, string2, string3 }, (String)null, (String)null, (String)null);
        try {
            while (query.moveToNext()) {
                list.add(query.getLong(0));
            }
        }
        finally {
            query.close();
        }
        query.close();
        this.bcJ.beginTransactionNonExclusive();
        try {
            for (final Long n2 : list) {
                this.a(n2, "^^out", false);
                this.a(n2, "^^retry", false);
                this.a(n2, "^^failed", false);
                this.a(n2, "^r", true);
                this.biz.aJ(n2);
            }
        }
        finally {
            this.bcJ.endTransaction();
        }
        this.bcJ.setTransactionSuccessful();
        this.bcJ.endTransaction();
        if (list.size() > 0) {
            this.bX(false);
        }
        return list.size();
    }
    
    final af aw(final long n) {
        return this.d(this.bdv.as(n));
    }
    
    public final bm ax(final long n) {
        final Cursor b = this.b(null, n);
        try {
            b.moveToNext();
            return this.a(b, false);
        }
        finally {
            b.close();
        }
    }
    
    public final Cursor b(final String[] array, final long n) {
        com.google.android.gm.b.a.tg();
        final SQLiteQueryBuilder sqLiteQueryBuilder = new SQLiteQueryBuilder();
        sqLiteQueryBuilder.setTables("messages LEFT OUTER JOIN message_labels \nON messages.messageId = message_labels.message_messageId \nLEFT OUTER JOIN labels \nON message_labels.labels_id = labels._id ");
        sqLiteQueryBuilder.appendWhere((CharSequence)"messages._id = ?");
        sqLiteQueryBuilder.setProjectionMap((Map)MailEngine.bjj);
        final Cursor query = sqLiteQueryBuilder.query(this.bcJ, array, (String)null, this.a(array, "messageLabels", new String[] { Long.toString(n) }), "messages.messageId", (String)null, (String)null);
        com.google.android.gm.b.a.th();
        return (Cursor)new CompressedMessageCursor(query, "body");
    }
    
    public final void b(final Advertisement advertisement, final String s) {
        this.a(advertisement, 7, s);
    }
    
    public final void b(final Advertisement advertisement, final boolean b) {
        int n;
        if (b) {
            n = 8;
        }
        else {
            n = 3;
        }
        this.a(advertisement, n);
        final String bcd = advertisement.bcd;
        this.bcJ.delete("ads", "event_id = ?", new String[] { bcd });
        this.B(Collections.singleton(bcd));
    }
    
    public final void b(final ContentValues[] array, final boolean b) {
        final HashMap<Object, Object> aan = Maps.aan();
        for (final ContentValues contentValues : array) {
            if (!contentValues.containsKey("_id")) {
                throw new IllegalArgumentException("values must have '_id'");
            }
            final long longValue = contentValues.getAsLong("_id");
            List<ContentValues> list = aan.get(longValue);
            if (list == null) {
                list = new ArrayList<ContentValues>();
                aan.put(longValue, list);
            }
            list.add(contentValues);
        }
        int n = 0;
        final HashSet<Long> set = new HashSet<Long>();
        this.biw.a(this.biF);
        Label_0153: {
            if (!b) {
                break Label_0153;
            }
            while (true) {
                Iterator<Long> iterator;
                Long n2 = null;
                List<ContentValues> list2;
                int n3 = 0;
                Iterator<ContentValues> iterator2;
                int n4 = 0;
                ContentValues contentValues2;
                String asString;
                long longValue2;
                boolean booleanValue;
                af ee;
                int n5;
                Label_0574:Label_0217_Outer:
                while (true) {
                Label_0554:
                    while (true) {
                        try {
                            this.biw.HQ();
                            iterator = aan.keySet().iterator();
                            if (!iterator.hasNext()) {
                                break Label_0574;
                            }
                            n2 = iterator.next();
                            list2 = aan.get(n2);
                            n3 = 0;
                            iterator2 = list2.iterator();
                            n4 = n;
                            if (!iterator2.hasNext()) {
                                break Label_0554;
                            }
                            contentValues2 = iterator2.next();
                            if (!contentValues2.containsKey("canonicalName")) {
                                throw new IllegalArgumentException("values must have 'canonicalName'");
                            }
                        }
                        finally {
                            this.biw.endTransaction();
                            this.bX(true);
                            this.o(set);
                        }
                        asString = contentValues2.getAsString("canonicalName");
                        if (!contentValues2.containsKey("maxMessageId")) {
                            throw new IllegalArgumentException("values must have 'maxMessageId'");
                        }
                        longValue2 = contentValues2.getAsLong("maxMessageId");
                        if (!contentValues2.containsKey("add_label_action")) {
                            throw new IllegalArgumentException("values must have 'add_label_action'");
                        }
                        booleanValue = contentValues2.getAsBoolean("add_label_action");
                        E.c(MailEngine.TAG, "MailProvider.insert(): adding or removing label %s to conversation %d, maxMessageId %d operation (is add) = %b", asString, n2, longValue2, booleanValue);
                        if (!Gmail.eh(asString)) {
                            throw new IllegalArgumentException("label is not provider-settable: " + asString);
                        }
                        ee = this.bdv.eE(asString);
                        if (ee != null) {
                            set.add(ee.id);
                            this.bdv.a(n2, longValue2, ee, booleanValue, Operations$RecordHistory.bmO);
                            if (!booleanValue && "^u".equals(asString)) {
                                n3 = 1;
                                n4 = 1;
                                continue;
                            }
                            n5 = 1;
                        }
                        else {
                            E.f(MailEngine.TAG, "Missing label in setLabelOnConversationsBulk: %s", asString);
                            n5 = n3;
                        }
                        n3 = n5;
                        continue;
                    }
                    if (n3 != 0) {
                        this.a(n2, MailSync$SyncRationale.bmp);
                    }
                    n = n4;
                    continue Label_0217_Outer;
                }
                this.biw.setTransactionSuccessful();
                this.biw.endTransaction();
                this.bX(true);
                this.o(set);
                if (n != 0) {
                    this.bW(false);
                }
            }
        }
    }
    
    public final void bW(final boolean p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/google/android/gm/provider/MailEngine.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //     4: ifnull          26
        //     7: aload_0        
        //     8: getfield        com/google/android/gm/provider/MailEngine.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //    11: invokevirtual   android/database/sqlite/SQLiteDatabase.inTransaction:()Z
        //    14: ifeq            26
        //    17: aload_0        
        //    18: getfield        com/google/android/gm/provider/MailEngine.biF:Lcom/google/android/gm/provider/P;
        //    21: iload_1        
        //    22: invokevirtual   com/google/android/gm/provider/P.bS:(Z)V
        //    25: return         
        //    26: aload_0        
        //    27: getfield        com/google/android/gm/provider/MailEngine.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //    30: ifnull          25
        //    33: aload_0        
        //    34: getfield        com/google/android/gm/provider/MailEngine.biw:Lcom/google/android/gm/provider/bB;
        //    37: invokevirtual   com/google/android/gm/provider/bB.beginTransactionNonExclusive:()V
        //    40: aload_0        
        //    41: getfield        com/google/android/gm/provider/MailEngine.bdw:Lcom/google/android/gm/provider/D;
        //    44: invokevirtual   com/google/android/gm/provider/D.requery:()V
        //    47: aload_0        
        //    48: getfield        com/google/android/gm/provider/MailEngine.biw:Lcom/google/android/gm/provider/bB;
        //    51: invokevirtual   com/google/android/gm/provider/bB.setTransactionSuccessful:()V
        //    54: aload_0        
        //    55: getfield        com/google/android/gm/provider/MailEngine.biw:Lcom/google/android/gm/provider/bB;
        //    58: invokevirtual   com/google/android/gm/provider/bB.endTransaction:()V
        //    61: aload_0        
        //    62: getfield        com/google/android/gm/provider/MailEngine.biC:Ljava/util/Map;
        //    65: invokeinterface java/util/Map.keySet:()Ljava/util/Set;
        //    70: invokestatic    com/google/common/collect/Sets.g:(Ljava/lang/Iterable;)Ljava/util/HashSet;
        //    73: invokeinterface java/util/Set.iterator:()Ljava/util/Iterator;
        //    78: astore_3       
        //    79: aload_3        
        //    80: invokeinterface java/util/Iterator.hasNext:()Z
        //    85: ifeq            25
        //    88: aload_3        
        //    89: invokeinterface java/util/Iterator.next:()Ljava/lang/Object;
        //    94: checkcast       Ljava/lang/Long;
        //    97: invokevirtual   java/lang/Long.longValue:()J
        //   100: lstore          4
        //   102: aload_0        
        //   103: lload           4
        //   105: invokevirtual   com/google/android/gm/provider/MailEngine.aw:(J)Lcom/google/android/gm/provider/af;
        //   108: astore          6
        //   110: aload           6
        //   112: ifnull          79
        //   115: new             Ljava/lang/StringBuilder;
        //   118: dup            
        //   119: ldc_w           "notificationLabelCount-"
        //   122: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   125: lload           4
        //   127: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
        //   130: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   133: astore          7
        //   135: new             Ljava/lang/StringBuilder;
        //   138: dup            
        //   139: ldc_w           "notificationLabelMaxMessageId-"
        //   142: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   145: lload           4
        //   147: invokevirtual   java/lang/StringBuilder.append:(J)Ljava/lang/StringBuilder;
        //   150: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   153: astore          8
        //   155: aload_0        
        //   156: aload           7
        //   158: iconst_0       
        //   159: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   162: invokespecial   com/google/android/gm/provider/MailEngine.a:(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
        //   165: invokevirtual   java/lang/Integer.intValue:()I
        //   168: istore          9
        //   170: aload_0        
        //   171: aload           8
        //   173: lconst_0       
        //   174: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   177: invokespecial   com/google/android/gm/provider/MailEngine.b:(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
        //   180: invokevirtual   java/lang/Long.longValue:()J
        //   183: lstore          10
        //   185: aload_0        
        //   186: getfield        com/google/android/gm/provider/MailEngine.bdw:Lcom/google/android/gm/provider/D;
        //   189: aload           6
        //   191: getfield        com/google/android/gm/provider/af.id:J
        //   194: invokevirtual   com/google/android/gm/provider/D.ae:(J)I
        //   197: istore          12
        //   199: aload_0        
        //   200: getfield        com/google/android/gm/provider/MailEngine.bdw:Lcom/google/android/gm/provider/D;
        //   203: lload           4
        //   205: invokevirtual   com/google/android/gm/provider/D.ae:(J)I
        //   208: istore          13
        //   210: aload_0        
        //   211: getfield        com/google/android/gm/provider/MailEngine.biC:Ljava/util/Map;
        //   214: lload           4
        //   216: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   219: invokeinterface java/util/Map.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   224: checkcast       Ljava/lang/Boolean;
        //   227: invokevirtual   java/lang/Boolean.booleanValue:()Z
        //   230: istore          14
        //   232: getstatic       com/google/android/gm/provider/MailEngine.TAG:Ljava/lang/String;
        //   235: astore          15
        //   237: iconst_5       
        //   238: anewarray       Ljava/lang/Object;
        //   241: astore          16
        //   243: aload           16
        //   245: iconst_0       
        //   246: lload           4
        //   248: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   251: aastore        
        //   252: aload           16
        //   254: iconst_1       
        //   255: iload           9
        //   257: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   260: aastore        
        //   261: aload           16
        //   263: iconst_2       
        //   264: iload           13
        //   266: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   269: aastore        
        //   270: aload           16
        //   272: iconst_3       
        //   273: iload           12
        //   275: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   278: aastore        
        //   279: aload           16
        //   281: iconst_4       
        //   282: iload           14
        //   284: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //   287: aastore        
        //   288: aload           15
        //   290: ldc_w           "considering sending notification. label=%d, oldUnreadCount=%d, newUnreadCount=%d, unseenCount=%d, getAttention=%b"
        //   293: aload           16
        //   295: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   298: pop            
        //   299: iload           12
        //   301: ifeq            309
        //   304: iload           13
        //   306: ifne            951
        //   309: iconst_0       
        //   310: istore          18
        //   312: iconst_0       
        //   313: istore          19
        //   315: lconst_0       
        //   316: lstore          20
        //   318: iload           19
        //   320: ifle            406
        //   323: aconst_null    
        //   324: astore          50
        //   326: aload_0        
        //   327: new             Ljava/lang/StringBuilder;
        //   330: dup            
        //   331: ldc_w           "label:"
        //   334: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   337: aload           6
        //   339: getfield        com/google/android/gm/provider/af.bhU:Ljava/lang/String;
        //   342: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   345: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   348: getstatic       com/google/android/gm/provider/MailEngine.bih:[Ljava/lang/String;
        //   351: iconst_1       
        //   352: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   355: iconst_0       
        //   356: invokevirtual   com/google/android/gm/provider/MailEngine.a:(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Integer;Z)Landroid/database/Cursor;
        //   359: astore          50
        //   361: aload           50
        //   363: invokeinterface android/database/Cursor.moveToFirst:()Z
        //   368: ifeq            394
        //   371: aload           50
        //   373: aload           50
        //   375: ldc_w           "maxMessageId"
        //   378: invokeinterface android/database/Cursor.getColumnIndex:(Ljava/lang/String;)I
        //   383: invokeinterface android/database/Cursor.getLong:(I)J
        //   388: lstore          52
        //   390: lload           52
        //   392: lstore          20
        //   394: aload           50
        //   396: ifnull          406
        //   399: aload           50
        //   401: invokeinterface android/database/Cursor.close:()V
        //   406: lload           20
        //   408: lconst_0       
        //   409: lcmp           
        //   410: ifeq            939
        //   413: lload           20
        //   415: lload           10
        //   417: lcmp           
        //   418: ifle            939
        //   421: iconst_1       
        //   422: istore          22
        //   424: iload           9
        //   426: iload           19
        //   428: if_icmpne       445
        //   431: iload           22
        //   433: ifne            445
        //   436: iload           18
        //   438: ifne            445
        //   441: iload_1        
        //   442: ifeq            846
        //   445: iload_1        
        //   446: ifne            459
        //   449: iload           19
        //   451: ifle            945
        //   454: iload           22
        //   456: ifeq            945
        //   459: iconst_1       
        //   460: istore          23
        //   462: getstatic       com/google/android/gm/provider/MailEngine.TAG:Ljava/lang/String;
        //   465: astore          24
        //   467: iconst_5       
        //   468: anewarray       Ljava/lang/Object;
        //   471: astore          25
        //   473: aload           25
        //   475: iconst_0       
        //   476: lload           4
        //   478: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   481: aastore        
        //   482: aload           25
        //   484: iconst_1       
        //   485: iload           9
        //   487: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   490: aastore        
        //   491: aload           25
        //   493: iconst_2       
        //   494: iload           19
        //   496: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   499: aastore        
        //   500: aload           25
        //   502: iconst_3       
        //   503: iload           12
        //   505: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   508: aastore        
        //   509: aload           25
        //   511: iconst_4       
        //   512: iload           23
        //   514: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //   517: aastore        
        //   518: aload           24
        //   520: ldc_w           "sending notification. Adjusted values are label=%d, oldCount=%d, newCount=%d, unseenCount=%d, getAttention=%b"
        //   523: aload           25
        //   525: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   528: pop            
        //   529: aload_0        
        //   530: getfield        com/google/android/gm/provider/MailEngine.bdv:Lcom/google/android/gm/provider/ae;
        //   533: lload           4
        //   535: invokevirtual   com/google/android/gm/provider/ae.as:(J)Lcom/google/android/gm/provider/af;
        //   538: astore          27
        //   540: aload_0        
        //   541: getfield        com/google/android/gm/provider/MailEngine.bdv:Lcom/google/android/gm/provider/ae;
        //   544: pop            
        //   545: aload           27
        //   547: invokestatic    com/google/android/gm/provider/ae.a:(Lcom/google/android/gm/provider/af;)Ljava/lang/String;
        //   550: astore          29
        //   552: aload_0        
        //   553: getfield        com/google/android/gm/provider/MailEngine.bdv:Lcom/google/android/gm/provider/ae;
        //   556: pop            
        //   557: aload           6
        //   559: invokestatic    com/google/android/gm/provider/ae.a:(Lcom/google/android/gm/provider/af;)Ljava/lang/String;
        //   562: astore          31
        //   564: new             Landroid/content/Intent;
        //   567: dup            
        //   568: ldc_w           "com.android.mail.action.update_notification"
        //   571: invokespecial   android/content/Intent.<init>:(Ljava/lang/String;)V
        //   574: astore          32
        //   576: aload           32
        //   578: ldc_w           "application/gmail-ls"
        //   581: invokevirtual   android/content/Intent.setType:(Ljava/lang/String;)Landroid/content/Intent;
        //   584: pop            
        //   585: aload           32
        //   587: ldc_w           "notification_extra_folder"
        //   590: aload_0        
        //   591: getfield        com/google/android/gm/provider/MailEngine.Tw:Landroid/accounts/Account;
        //   594: getfield        android/accounts/Account.name:Ljava/lang/String;
        //   597: aload           29
        //   599: invokestatic    com/google/android/gm/provider/GmailProvider.O:(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
        //   602: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
        //   605: pop            
        //   606: aload           32
        //   608: ldc_w           "notification_extra_account"
        //   611: aload_0        
        //   612: getfield        com/google/android/gm/provider/MailEngine.Tw:Landroid/accounts/Account;
        //   615: getfield        android/accounts/Account.name:Ljava/lang/String;
        //   618: invokestatic    com/google/android/gm/provider/GmailProvider.en:(Ljava/lang/String;)Landroid/net/Uri;
        //   621: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
        //   624: pop            
        //   625: aload           32
        //   627: ldc_w           "notification_updated_unread_count"
        //   630: iload           19
        //   632: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;I)Landroid/content/Intent;
        //   635: pop            
        //   636: aload           32
        //   638: ldc_w           "account"
        //   641: aload_0        
        //   642: getfield        com/google/android/gm/provider/MailEngine.Tw:Landroid/accounts/Account;
        //   645: getfield        android/accounts/Account.name:Ljava/lang/String;
        //   648: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
        //   651: pop            
        //   652: aload           32
        //   654: ldc_w           "count"
        //   657: iload           19
        //   659: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;I)Landroid/content/Intent;
        //   662: pop            
        //   663: aload           32
        //   665: ldc_w           "unseenCount"
        //   668: iload           12
        //   670: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;I)Landroid/content/Intent;
        //   673: pop            
        //   674: aload           32
        //   676: ldc_w           "getAttention"
        //   679: iload           23
        //   681: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;Z)Landroid/content/Intent;
        //   684: pop            
        //   685: aload           32
        //   687: ldc_w           "tagLabel"
        //   690: aload           31
        //   692: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
        //   695: pop            
        //   696: aload           32
        //   698: ldc_w           "notificationLabel"
        //   701: aload           29
        //   703: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
        //   706: pop            
        //   707: getstatic       com/google/android/gm/provider/MailEngine.TAG:Ljava/lang/String;
        //   710: astore          43
        //   712: iconst_2       
        //   713: anewarray       Ljava/lang/Object;
        //   716: astore          44
        //   718: aload           44
        //   720: iconst_0       
        //   721: aload           32
        //   723: aastore        
        //   724: aload           44
        //   726: iconst_1       
        //   727: aload           32
        //   729: invokevirtual   android/content/Intent.getExtras:()Landroid/os/Bundle;
        //   732: aastore        
        //   733: aload           43
        //   735: ldc_w           "Sending notification intent: %s / %s"
        //   738: aload           44
        //   740: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   743: pop            
        //   744: aload_0        
        //   745: getfield        com/google/android/gm/provider/MailEngine.bjf:Landroid/os/PowerManager$WakeLock;
        //   748: ifnull          761
        //   751: aload_0        
        //   752: getfield        com/google/android/gm/provider/MailEngine.bjf:Landroid/os/PowerManager$WakeLock;
        //   755: ldc2_w          2000
        //   758: invokevirtual   android/os/PowerManager$WakeLock.acquire:(J)V
        //   761: aload_0        
        //   762: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //   765: aload           32
        //   767: aconst_null    
        //   768: invokevirtual   android/content/Context.sendOrderedBroadcast:(Landroid/content/Intent;Ljava/lang/String;)V
        //   771: new             Landroid/content/Intent;
        //   774: dup            
        //   775: ldc_w           "android.intent.action.PROVIDER_CHANGED"
        //   778: new             Ljava/lang/StringBuilder;
        //   781: dup            
        //   782: ldc_w           "content://gmail-ls/unread/"
        //   785: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   788: aload           29
        //   790: invokestatic    com/google/android/gm/provider/ad.eD:(Ljava/lang/String;)Ljava/lang/String;
        //   793: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   796: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   799: invokestatic    android/net/Uri.parse:(Ljava/lang/String;)Landroid/net/Uri;
        //   802: invokespecial   android/content/Intent.<init>:(Ljava/lang/String;Landroid/net/Uri;)V
        //   805: astore          46
        //   807: aload           46
        //   809: ldc_w           "count"
        //   812: iload           19
        //   814: invokevirtual   android/content/Intent.putExtra:(Ljava/lang/String;I)Landroid/content/Intent;
        //   817: pop            
        //   818: getstatic       com/google/android/gm/provider/MailEngine.TAG:Ljava/lang/String;
        //   821: ldc_w           "Sending provider changed intent: %s"
        //   824: iconst_1       
        //   825: anewarray       Ljava/lang/Object;
        //   828: dup            
        //   829: iconst_0       
        //   830: aload           46
        //   832: aastore        
        //   833: invokestatic    com/google/android/gm/provider/ad.d:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   836: pop            
        //   837: aload_0        
        //   838: getfield        com/google/android/gm/provider/MailEngine.mContext:Landroid/content/Context;
        //   841: aload           46
        //   843: invokevirtual   android/content/Context.sendBroadcast:(Landroid/content/Intent;)V
        //   846: aload_0        
        //   847: getfield        com/google/android/gm/provider/MailEngine.biC:Ljava/util/Map;
        //   850: lload           4
        //   852: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   855: iconst_0       
        //   856: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //   859: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //   864: pop            
        //   865: iload           9
        //   867: iload           19
        //   869: if_icmpeq       883
        //   872: aload_0        
        //   873: aload           7
        //   875: iload           19
        //   877: invokestatic    java/lang/Integer.toString:(I)Ljava/lang/String;
        //   880: invokespecial   com/google/android/gm/provider/MailEngine.X:(Ljava/lang/String;Ljava/lang/String;)V
        //   883: lload           20
        //   885: lconst_0       
        //   886: lcmp           
        //   887: ifeq            79
        //   890: lload           20
        //   892: lload           10
        //   894: lcmp           
        //   895: ifle            79
        //   898: aload_0        
        //   899: aload           8
        //   901: lload           20
        //   903: invokestatic    java/lang/Long.toString:(J)Ljava/lang/String;
        //   906: invokespecial   com/google/android/gm/provider/MailEngine.X:(Ljava/lang/String;Ljava/lang/String;)V
        //   909: goto            79
        //   912: astore_2       
        //   913: aload_0        
        //   914: getfield        com/google/android/gm/provider/MailEngine.biw:Lcom/google/android/gm/provider/bB;
        //   917: invokevirtual   com/google/android/gm/provider/bB.endTransaction:()V
        //   920: aload_2        
        //   921: athrow         
        //   922: astore          51
        //   924: aload           50
        //   926: ifnull          936
        //   929: aload           50
        //   931: invokeinterface android/database/Cursor.close:()V
        //   936: aload           51
        //   938: athrow         
        //   939: iconst_0       
        //   940: istore          22
        //   942: goto            424
        //   945: iconst_0       
        //   946: istore          23
        //   948: goto            462
        //   951: iload           14
        //   953: istore          18
        //   955: iload           13
        //   957: istore          19
        //   959: goto            315
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  40     54     912    922    Any
        //  326    390    922    939    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0394:
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
    
    final void bY(final boolean b) {
        this.mContext.getContentResolver().notifyChange(Gmail.dU(this.Tw.name), (ContentObserver)null, b);
        this.biU.AP();
    }
    
    public final void be(final String s) {
        E.c(MailEngine.TAG, "setAccount to %s", s);
        this.Tw = new Account(s, "com.google");
    }
    
    public final Cursor c(final String[] array, final long n) {
        com.google.android.gm.b.a.tg();
        final SQLiteQueryBuilder sqLiteQueryBuilder = new SQLiteQueryBuilder();
        sqLiteQueryBuilder.setTables("messages LEFT OUTER JOIN message_labels \nON messages.messageId = message_labels.message_messageId \nLEFT OUTER JOIN labels \nON message_labels.labels_id = labels._id ");
        sqLiteQueryBuilder.appendWhere((CharSequence)"messages.messageId = ?");
        sqLiteQueryBuilder.setProjectionMap((Map)MailEngine.bjj);
        final Cursor query = sqLiteQueryBuilder.query(this.bcJ, array, (String)null, this.a(array, "messageLabels", new String[] { Long.toString(n) }), "messages.messageId", (String)null, (String)null);
        com.google.android.gm.b.a.th();
        if (query == null) {
            E.f(MailEngine.TAG, "null message cursor returned", new Object[0]);
            return null;
        }
        return (Cursor)new CompressedMessageCursor(query, "body");
    }
    
    public final Conversation c(final Context p0, final com.android.mail.providers.Account p1, final String p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_1       
        //     1: istore          4
        //     3: getstatic       java/util/Locale.US:Ljava/util/Locale;
        //     6: astore          5
        //     8: aload_1        
        //     9: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //    12: ldc_w           "gmail_permalink_pattern"
        //    15: ldc_w           "%%plid=%s%%"
        //    18: invokestatic    com/google/android/gsf/c.a:(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //    21: astore          6
        //    23: iload           4
        //    25: anewarray       Ljava/lang/Object;
        //    28: astore          7
        //    30: aload           7
        //    32: iconst_0       
        //    33: aload_3        
        //    34: aastore        
        //    35: aload           5
        //    37: aload           6
        //    39: aload           7
        //    41: invokestatic    java/lang/String.format:(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //    44: astore          8
        //    46: iload           4
        //    48: anewarray       Ljava/lang/String;
        //    51: astore          9
        //    53: aload           9
        //    55: iconst_0       
        //    56: aload           8
        //    58: aastore        
        //    59: aload_1        
        //    60: aload           9
        //    62: invokestatic    com/google/android/gm/provider/bw.a:(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;
        //    65: astore          10
        //    67: aload_0        
        //    68: getfield        com/google/android/gm/provider/MailEngine.bcJ:Landroid/database/sqlite/SQLiteDatabase;
        //    71: ldc_w           "SELECT conversation_labels.*, conversations.*, conversations.queryId = 0 AS synced, (SELECT group_concat((labels._id || '^*^' || labels.canonicalName || '^*^' || \n(CASE labels.canonicalName    WHEN '^f' THEN ?    WHEN '^^out' THEN ?    WHEN '^i' THEN ?    WHEN '^r' THEN ?    WHEN '^b' THEN ?    WHEN '^all' THEN ?    WHEN '^u' THEN ?    WHEN '^k' THEN ?    WHEN '^s' THEN ?    WHEN '^t' THEN ?    WHEN '^g' THEN ?    WHEN '^io_im' THEN ?    WHEN '^iim' THEN ?    WHEN '^sq_ig_i_personal' THEN ?    WHEN '^sq_ig_i_social' THEN ?    WHEN '^sq_ig_i_promo' THEN ?    WHEN '^sq_ig_i_notification' THEN ?    WHEN '^sq_ig_i_group' THEN ?    ELSE labels.name END)  || '^*^' || labels.color || '^*^' || labels.hidden),    '^**^') FROM labels JOIN conversation_labels  ON conversation_labels.labels_id = labels._id  AND conversation_labels.conversation_id = conversations._id AND conversation_labels.isZombie = 0) AS conversationLabels   FROM conversation_labels\n  LEFT OUTER JOIN conversations\n  ON conversation_labels.conversation_id = conversations._id\n  AND conversation_labels.queryId = conversations.queryId\nWHERE\n  ( conversations.permalink LIKE ? )\n  AND isZombie = 0 AND conversations.queryId = 0\nGROUP BY conversations._id"
        //    74: aload           10
        //    76: invokevirtual   android/database/sqlite/SQLiteDatabase.rawQuery:(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
        //    79: astore          11
        //    81: aconst_null    
        //    82: astore          12
        //    84: aload           11
        //    86: ifnull          125
        //    89: aload           11
        //    91: invokeinterface android/database/Cursor.getCount:()I
        //    96: istore          13
        //    98: aconst_null    
        //    99: astore          12
        //   101: iload           13
        //   103: iload           4
        //   105: if_icmpne       125
        //   108: aload           11
        //   110: invokeinterface android/database/Cursor.moveToFirst:()Z
        //   115: istore          14
        //   117: aconst_null    
        //   118: astore          12
        //   120: iload           14
        //   122: ifne            128
        //   125: aload           12
        //   127: areturn        
        //   128: new             Lcom/google/android/gm/provider/uiprovider/g;
        //   131: dup            
        //   132: aload           11
        //   134: aload_2        
        //   135: invokevirtual   com/android/mail/providers/Account.lw:()Ljava/lang/String;
        //   138: aload_2        
        //   139: getfield        com/android/mail/providers/Account.uri:Landroid/net/Uri;
        //   142: invokevirtual   android/net/Uri.toString:()Ljava/lang/String;
        //   145: getstatic       com/android/mail/providers/E.aCx:[Ljava/lang/String;
        //   148: invokespecial   com/google/android/gm/provider/uiprovider/g.<init>:(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
        //   151: astore          15
        //   153: new             Lcom/android/mail/providers/Conversation;
        //   156: dup            
        //   157: aload           15
        //   159: invokespecial   com/android/mail/providers/Conversation.<init>:(Landroid/database/Cursor;)V
        //   162: astore          12
        //   164: aload           15
        //   166: invokeinterface android/database/Cursor.isClosed:()Z
        //   171: ifne            191
        //   174: iload           4
        //   176: iconst_1       
        //   177: iand           
        //   178: ifeq            125
        //   181: aload           15
        //   183: invokeinterface android/database/Cursor.close:()V
        //   188: aload           12
        //   190: areturn        
        //   191: iconst_0       
        //   192: istore          4
        //   194: goto            174
        //   197: astore          18
        //   199: aconst_null    
        //   200: astore          17
        //   202: aload           17
        //   204: ifnull          239
        //   207: iload           4
        //   209: istore          19
        //   211: aload           17
        //   213: invokeinterface android/database/Cursor.isClosed:()Z
        //   218: ifne            245
        //   221: iload           19
        //   223: iload           4
        //   225: iand           
        //   226: ifeq            236
        //   229: aload           17
        //   231: invokeinterface android/database/Cursor.close:()V
        //   236: aload           18
        //   238: athrow         
        //   239: iconst_0       
        //   240: istore          19
        //   242: goto            211
        //   245: iconst_0       
        //   246: istore          4
        //   248: goto            221
        //   251: astore          16
        //   253: aload           15
        //   255: astore          17
        //   257: aload           16
        //   259: astore          18
        //   261: goto            202
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  128    153    197    202    Any
        //  153    164    251    264    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0174:
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
    
    public final bm c(final long n, final boolean b) {
        final Cursor c = this.c(null, n);
        try {
            c.moveToNext();
            return this.a(c, b);
        }
        finally {
            c.close();
        }
    }
    
    public final void c(final Advertisement advertisement) {
        this.a(advertisement, 5);
    }
    
    public final Cursor d(final String[] array, final String s) {
        final String value = String.valueOf(Gmail.b(this.mContext.getContentResolver()));
        String s2;
        String[] array2;
        String s3;
        if (s == null) {
            s2 = "expiration > ?";
            array2 = new String[] { Long.toString(System.currentTimeMillis()) };
            s3 = "_id DESC";
        }
        else {
            s2 = "event_id = ?";
            array2 = new String[] { s };
            s3 = null;
        }
        return this.bcJ.query("ads", array, s2, array2, (String)null, (String)null, s3, value);
    }
    
    public final int e(final ContentValues contentValues) {
        return this.bdv.e(contentValues);
    }
    
    public final Cursor e(final String s, final String[] array) {
        if (!this.Go()) {
            return null;
        }
        final SearchQuery searchQuery = new SearchQuery(s, array);
        Label_0121: {
            if (!searchQuery.HK()) {
                break Label_0121;
            }
            final Object abl = this.aBL;
            long long1 = 0L;
            try {
                final Cursor rawQuery = this.bcJ.rawQuery("SELECT min(_id) FROM search_sequence", (String[])null);
                try {
                    if (rawQuery.moveToNext()) {
                        long1 = rawQuery.getLong(0);
                    }
                    rawQuery.close();
                    if (long1 != 1L) {
                        E.d(MailEngine.TAG, "Backfilling search sequence table", new Object[0]);
                        new bf(this, this.bcJ).Hk();
                    }
                    // monitorexit(abl)
                    return this.bcJ.rawQueryWithFactory(searchQuery.HL(), searchQuery.getRawQuery(), searchQuery.getSelectionArgs(), (String)null);
                }
                finally {
                    rawQuery.close();
                }
            }
            finally {
            }
            // monitorexit(abl)
        }
    }
    // monitorenter(abl)
    
    public final void e(final Advertisement advertisement) {
        int n = 0;
        switch (advertisement.bco) {
            default: {
                E.g(MailEngine.TAG, "Should not be updating viewStatus to NEW", new Object[0]);
                return;
            }
            case 1: {
                n = 1;
                break;
            }
            case 2: {
                n = 2;
                break;
            }
        }
        this.a(advertisement, n);
        final String bcd = advertisement.bcd;
        final ContentValues contentValues = new ContentValues(1);
        contentValues.put("view_status", advertisement.bco);
        this.bcJ.update("ads", contentValues, "event_id = ?", new String[] { bcd });
        this.B(Collections.singleton(bcd));
    }
    
    public final boolean el(final String s) {
        return this.bdv.bdw.el(s);
    }
    
    final void endTransaction() {
        this.biw.endTransaction();
    }
    
    public final void f(final Advertisement advertisement) {
        String s;
        String[] array;
        if (advertisement == null) {
            s = "expiration < ? OR _id <> (SELECT MAX(_id) FROM ads)";
            array = new String[] { Long.toString(System.currentTimeMillis()) };
        }
        else {
            s = "(expiration < ? OR _id <> (SELECT MAX(_id) FROM ads)) AND event_id <> ?";
            array = new String[] { Long.toString(System.currentTimeMillis()), advertisement.bcd };
        }
        if (this.bcJ.delete("ads", s, array) > 0) {
            this.Gp();
        }
    }
    
    final void f(final af af) {
        final af d = this.d(af);
        if (d != null) {
            final int ae = this.bdw.ae(d.id);
            E.c(MailEngine.TAG, "MailEngine.clearNewUnreadMailForNotificationLabelIfNeeded() Count: %d, label: %s", ae, d);
            if (ae > 0) {
                this.a(af, d);
            }
        }
    }
    
    public final boolean f(final ContentValues contentValues) {
        final MailSync bit = this.bit;
        String asString;
        if (contentValues.containsKey("labelsIncluded")) {
            asString = contentValues.getAsString("labelsIncluded");
        }
        else {
            asString = null;
        }
        String asString2;
        if (contentValues.containsKey("labelsPartial")) {
            asString2 = contentValues.getAsString("labelsPartial");
        }
        else {
            asString2 = null;
        }
        Long asLong;
        if (contentValues.containsKey("conversationAgeDays")) {
            asLong = contentValues.getAsLong("conversationAgeDays");
        }
        else {
            asLong = null;
        }
        final boolean containsKey = contentValues.containsKey("maxAttachmentSize");
        Long asLong2 = null;
        if (containsKey) {
            asLong2 = contentValues.getAsLong("maxAttachmentSize");
        }
        return bit.a(asString, asString2, asLong, asLong2);
    }
    
    public final void g(final Advertisement advertisement) {
        final String bcd = advertisement.bcd;
        final ContentValues contentValues = new ContentValues(1);
        contentValues.put("delete_status", advertisement.bcs);
        if (this.bcJ.update("ads", contentValues, "event_id = ?", new String[] { bcd }) > 0) {
            this.B(Collections.singleton(bcd));
        }
    }
    
    @Override
    public final void g(final Runnable runnable) {
        if (!this.bjc) {
            this.bjl.post(runnable);
        }
    }
    
    final Context getContext() {
        return this.mContext;
    }
    
    public final void onSyncCanceled() {
        this.biK = true;
        this.bit.onSyncCanceled();
    }
    
    public final Uri p(final String s, final long n) {
        final Cursor a = GmailProvider.a(this, s, com.android.mail.providers.E.aCv, this.B(Gmail.bai).bU(false).am(n).Fl(), null);
        Uri aPj = null;
        if (a != null) {
            final boolean moveToFirst = a.moveToFirst();
            aPj = null;
            if (moveToFirst) {
                final Gmail$Settings p2 = Gmail.P(this.mContext, s);
                final List<String> ea = p2.EA();
                final List<String> eb = p2.EB();
                Uri uri = null;
                while (true) {
                    Uri uri2 = null;
                Label_0302:
                    while (true) {
                        Label_0287: {
                            try {
                                final Folder folder = new Folder(a);
                                final String u = GmailProvider.u(folder);
                                if (folder.uX()) {
                                    final Uri aPj2 = folder.azZ.aPj;
                                    aPj = uri;
                                    uri2 = aPj2;
                                }
                                else if (folder.uV()) {
                                    final Uri aPj3 = folder.azZ.aPj;
                                    final Uri uri3 = aPj;
                                    aPj = aPj3;
                                    uri2 = uri3;
                                }
                                else {
                                    if (ea.contains(u) || eb.contains(u)) {
                                        aPj = folder.azZ.aPj;
                                        return aPj;
                                    }
                                    break Label_0287;
                                }
                                if (!a.moveToNext()) {
                                    if (aPj == null) {
                                        aPj = uri2;
                                    }
                                    return aPj;
                                }
                                break Label_0302;
                            }
                            finally {
                                if (!a.isClosed()) {
                                    a.close();
                                }
                            }
                        }
                        final Uri uri4 = aPj;
                        aPj = uri;
                        uri2 = uri4;
                        continue;
                    }
                    final Uri uri5 = uri2;
                    uri = aPj;
                    aPj = uri5;
                }
            }
        }
        return aPj;
    }
    
    final void p(final Cursor cursor) {
        this.p(4, true);
        this.aAC = 0;
        this.bjl.removeCallbacks(this.biW);
        this.bjx = false;
        this.biV = 0;
        this.bjl.postDelayed(this.biW, (long)this.biX);
        String string = null;
        boolean b = false;
        Label_0170: {
            if (cursor != null) {
                final Bundle extras = cursor.getExtras();
                string = extras.getString("label_canonical_name");
                final boolean boolean1 = extras.getBoolean("active_network_query", false);
                b = false;
                if (boolean1) {
                    final boolean equals = TextUtils.equals((CharSequence)extras.getString("status"), (CharSequence)Gmail$CursorStatus.beC.toString());
                    if (this.eU(string)) {
                        b = false;
                        if (!equals) {
                            break Label_0170;
                        }
                    }
                    final Bundle bundle = new Bundle();
                    bundle.putString("command", "retry");
                    bundle.putBoolean("force_refresh", true);
                    cursor.respond(bundle);
                    b = true;
                }
            }
        }
        if (!b) {
            final Bundle bundle2 = new Bundle();
            bundle2.putBoolean("force", true);
            bundle2.putBoolean("do_not_retry", true);
            bundle2.putBoolean("expedited", true);
            if (string != null) {
                bundle2.putString("activeLabel", string);
            }
            ContentResolver.requestSync(this.Tw, "gmail-ls", bundle2);
        }
    }
    
    final void p(final Set<Long> set) {
        E.c(MailEngine.TAG, "Broadcasting notifications for labels: %s", set);
        if (set == null || set.size() == 0) {
            return;
        }
        for (final Long n : set) {
            if (n != null) {
                this.mContext.getContentResolver().notifyChange(T.a(this.Tw.name, n), (ContentObserver)null, false);
            }
        }
        PublicContentProvider.b(this.mContext, this.Tw.name, set);
        GmailProvider.a(this.mContext, this.bdw, this.Tw.name, set);
    }
    
    final void setTransactionSuccessful() {
        this.biw.setTransactionSuccessful();
    }
    
    public final void t(final Bundle bundle) {
        ContentResolver.requestSync(this.Tw, "gmail-ls", bundle);
    }
}
