package com.google.android.gm.provider;

import java.util.regex.*;
import com.android.mail.utils.*;
import com.google.android.gm.persistence.*;
import com.google.android.gm.*;
import com.google.android.gsf.*;
import java.util.zip.*;
import com.google.android.gm.provider.uiprovider.*;
import android.database.*;
import android.util.*;
import android.text.*;
import android.net.http.*;
import org.apache.http.util.*;
import android.os.*;
import org.apache.http.*;
import android.content.*;
import java.util.*;
import com.google.android.common.http.*;
import java.io.*;
import org.apache.http.entity.*;
import org.apache.http.client.methods.*;
import com.google.common.collect.*;

public final class MailSync
{
    static final String NAMESPACE;
    private static final String TAG;
    private static final Pattern bhh;
    public static final MailSync$SyncRationale blj;
    static final Set<String> blk;
    static final Set<String> bll;
    private static Object blq;
    private static final String[] blu;
    private final ContentResolver Hb;
    bG bcK;
    public boolean blm;
    private volatile boolean bln;
    private long blo;
    private final Set<Long> blp;
    private final ba blr;
    private final Map<String, String> bls;
    private Map<String, String> blt;
    private long[] blv;
    private boolean blw;
    private final Context mContext;
    
    static {
        vb = !MailSync.class.desiredAssertionStatus();
        blj = null;
        blk = Sets.p("^r");
        bll = Sets.p("^i", "^f", "^iim");
        NAMESPACE = null;
        bhh = Pattern.compile(" ");
        MailSync.blq = new Object();
        TAG = D.AU();
        blu = new String[] { "M", "L", "C", "A", "U", "u", "S", "Z", "z" };
    }
    
    public MailSync(final ba blr, final bG bcK, final Map<String, String> bls, final Context mContext, final boolean b) {
        this.blm = false;
        this.blo = 0L;
        this.blp = new HashSet<Long>();
        this.blw = false;
        this.blr = blr;
        this.bcK = bcK;
        this.mContext = mContext;
        this.Hb = mContext.getContentResolver();
        this.bls = bls;
        this.blt = (Map<String, String>)Maps.aan();
        this.Hr();
        if (!this.bls.containsKey("startSyncNeeded")) {
            this.p("startSyncNeeded", false);
        }
        if (!this.bls.containsKey("needConfigSuggestion")) {
            this.p("needConfigSuggestion", false);
        }
        if (!this.bls.containsKey("unackedSentOperations")) {
            this.p("unackedSentOperations", false);
        }
        if (!this.bls.containsKey("nextUnackedSentOp")) {
            this.q("nextUnackedSentOp", 0L);
        }
        if (!this.bls.containsKey("errorCountNextUnackedSentOp")) {
            this.q("errorCountNextUnackedSentOp", 0L);
        }
        if (!this.bls.containsKey("nextUnackedOpWriteTime")) {
            this.q("nextUnackedOpWriteTime", 0L);
        }
        if (!this.bls.containsKey("serverVersion")) {
            this.q("serverVersion", 0L);
        }
        if (!this.bls.containsKey("clientOpToAck")) {
            this.q("clientOpToAck", 0L);
        }
        if (!this.bls.containsKey("clientId")) {
            this.q("clientId", 0L);
        }
        if (!this.bls.containsKey("configDirty")) {
            this.p("configDirty", true);
        }
        if (!this.bls.containsKey("conversationAgeDays")) {
            this.q("conversationAgeDays", Gmail.bY(this.mContext));
        }
        if (!this.bls.containsKey("maxAttachmentSize")) {
            this.q("maxAttachmentSize", 0L);
        }
        if (!this.bls.containsKey("highestProcessedServerOperationId")) {
            this.q("highestProcessedServerOperationId", 0L);
        }
        if (!this.bls.containsKey("lowestBackwardConversationId")) {
            this.q("lowestBackwardConversationId", 0L);
        }
        if (!this.bls.containsKey("highestBackwardConversationId")) {
            this.q("highestBackwardConversationId", 0L);
        }
        if (!this.bls.containsKey("moreForwardSyncNeeded")) {
            this.p("moreForwardSyncNeeded", false);
        }
        if (!this.bls.containsKey("labelsIncluded")) {
            this.a("labelsIncluded", MailSync.blk);
        }
        if (!this.bls.containsKey("labelsPartial")) {
            this.a("labelsPartial", MailSync.bll);
        }
        if (!this.bls.containsKey("labelsAll")) {
            this.aa("labelsAll", "");
        }
        if (!this.bls.containsKey("messageSequenceNumber")) {
            this.q("messageSequenceNumber", 0L);
        }
        if (b) {
            this.p("configDirty", true);
            this.a(null, null, (Set<String>)null);
            this.HA();
        }
    }
    
    private ArrayList<Long> He() {
        final ArrayList<Long> he = this.blr.He();
        he.addAll(this.blp);
        return he;
    }
    
    private void Hs() {
        final String ew = this.blr.eW("ix_awtsv");
        while (true) {
            while (true) {
                int int1 = 0;
                Label_0018: {
                    if (ew == null) {
                        int1 = -1;
                        break Label_0018;
                    }
                    Label_0227: {
                        break Label_0227;
                    Label_0157_Outer:
                        while (true) {
                            final Object[] array;
                            String s = null;
                            array[1] = s;
                            E.b("WelcomeTour", "Checking welcome tour status after sync for %s - account pref was %s ", array);
                            final b dd = b.DD();
                            while (true) {
                                Label_0249: {
                                    synchronized (MailSync.blq) {
                                        final Iterator<String> iterator = new a(this.mContext).w("mail", "gmailrenameeligible").iterator();
                                        Block_6: {
                                            while (iterator.hasNext()) {
                                                if (iterator.next().equals(this.blr.Dc())) {
                                                    break Block_6;
                                                }
                                            }
                                            break Label_0249;
                                        }
                                        final int n = 1;
                                        final Integer value;
                                        if (n != 0 && value <= 0) {
                                            dd.c(this.mContext, true);
                                            E.e("WelcomeTour", "Forcing display of welcome tour for rename eligible account %s ", this.blr.Dc());
                                        }
                                        dd.o(this.mContext, value);
                                        return;
                                        s = (String)value;
                                        continue Label_0157_Outer;
                                        int1 = Integer.parseInt(ew);
                                        break;
                                    }
                                }
                                final int n = 0;
                                continue;
                            }
                        }
                    }
                }
                final Integer value = int1;
                final Object[] array = { this.blr.Dc(), null };
                if (ew == null) {
                    final String s = "not set";
                    continue;
                }
                break;
            }
            continue;
        }
    }
    
    private int Hz() {
        final String string = c.getString(this.Hb, "gmail_config_info_min_server_version");
        if (string == null) {
            return 0;
        }
        try {
            return Integer.valueOf(string);
        }
        catch (NumberFormatException ex) {
            return 0;
        }
    }
    
    private int a(final HttpResponse httpResponse, final br br, final long n, final aX ax) {
        if (httpResponse == null) {
            throw new IOException("null HttpResponse in MailSync.handleResponse");
        }
        final Header firstHeader = httpResponse.getFirstHeader("Content-Type");
        if (firstHeader == null) {
            throw new IOException("Missing Content-Type header");
        }
        final String value = firstHeader.getValue();
        if (value.startsWith("application/vnd.google-x-gms-proto")) {
            return this.b(httpResponse, br, n, ax);
        }
        if (value.startsWith("text/html")) {
            final int statusCode = httpResponse.getStatusLine().getStatusCode();
            com.android.mail.a.a.oq().a("errors", "sync_http_response_code", Integer.toString(statusCode), 0L);
            if (E.isLoggable(MailSync.TAG, 2)) {
                d(httpResponse);
            }
            throw new IOException("Server returned unhandled response content type (text/html status: " + statusCode + ")");
        }
        throw new IOException("Unknown response content type: " + value);
    }
    
    private static long a(final com.google.common.a.a.a a, final bk bk) {
        com.google.android.gm.b.a.tg();
        bk.GO();
        try {
            if (a.bJ(4)) {
                bk.aF(a.getLong(4));
            }
            final ArrayList<com.google.common.a.a.a> list = new ArrayList<com.google.common.a.a.a>();
            bv.b(a, 3, list);
            for (final com.google.common.a.a.a a2 : list) {
                final bi bi = new bi();
                bi.bku = a2.getLong(1);
                bi.bhx = a2.getLong(2);
                bi.blF = Gmail$PersonalLevel.dN(a2.getInt(6));
                bi.blA = a2.getLong(7);
                bi.blB = a2.getInt(8);
                bi.ayX = a2.fx(9);
                bi.blE = a2.getLong(3);
                bi.ayV = a2.getString(4);
                bi.abh = a2.getString(5);
                bv.a(a2, 11, bi.blG = new HashSet<Long>());
                bi.blD = s.b(a2.fy(10));
                if (E.isLoggable(MailSync.TAG, 2)) {
                    E.c(MailSync.TAG, "%s", bi.toString());
                }
                bk.a(bi);
            }
        }
        finally {
            bk.GP();
        }
        bk.GP();
        com.google.android.gm.b.a.Dx();
        return a.getLong(2);
    }
    
    private bl a(final com.google.common.a.a.a a, final long n) {
        this.dT(7);
        final byte[] bytes = a.getBytes(1);
        final long long1 = a.getLong(2);
        final long long2 = a.getLong(3);
        final y y = new y();
        try {
            this.a(y, long1, n, true);
            final long dv = y.DV();
            if (long2 != dv) {
                E.f(MailSync.TAG, "Dictionary checksum mismatch for conversation %d. Expected %x but was %x", n, long2, dv);
                this.dT(8);
                return null;
            }
        }
        catch (OutOfMemoryError outOfMemoryError) {
            E.e(MailSync.TAG, outOfMemoryError, "Out of memory while creating dictionary for conversation %d", n);
            return null;
        }
        return new bl(new bL(new ByteArrayInputStream(bytes), new bK(y.getBytes())));
    }
    
    private bm a(final com.google.common.a.a.a a, final long bku, final y y) {
        final bm bm = new bm();
        bm.blK = this.blr.Dc();
        bm.bkt = a.getLong(1);
        bm.bku = bku;
        bm.blC = f(a.fy(2));
        bm.blR = a.getLong(3);
        bm.aBf = a.getLong(4);
        bm.ayV = a.getString(5);
        bm.abh = a.getString(6);
        bm.blS = "";
        bm.blF = Gmail$PersonalLevel.dN(a.getInt(7));
        bm.blU = a.fx(8);
        long long1;
        if (a.bJ(19)) {
            long1 = Long.parseLong(a.getString(19), 16);
        }
        else {
            long1 = 0L;
        }
        bm.blZ = long1;
        bv.a(a, 14, bm.blG);
        final Iterator<Long> iterator = bm.blG.iterator();
        while (iterator.hasNext()) {
            this.blr.ar(iterator.next());
        }
        a(a, 9, bm.blN = new ArrayList<String>());
        a(a, 10, bm.blO = new ArrayList<String>());
        a(a, 11, bm.blP = new ArrayList<String>());
        a(a, 12, bm.blQ = new ArrayList<String>());
        if (a.bJ(16)) {
            bm.bck = this.a(a.getBytes(16), a.getLong(17), bm.bkt, bm.bku, y);
        }
        else {
            bm.bck = a.getString(13);
        }
        this.dT(0);
        final ArrayList<com.google.common.a.a.a> list = new ArrayList<com.google.common.a.a.a>();
        bv.b(a, 15, list);
        for (final com.google.common.a.a.a a2 : list) {
            final GmailAttachment gmailAttachment = new GmailAttachment();
            gmailAttachment.bom = 0;
            gmailAttachment.bku = bm.bku;
            gmailAttachment.bol = bm.bkt;
            gmailAttachment.partId = a2.getString(1);
            gmailAttachment.setName(a2.getString(2));
            gmailAttachment.setContentType(a2.getString(3));
            gmailAttachment.size = a2.getInt(5);
            gmailAttachment.fn(a2.getString(4));
            boolean b;
            if (c.getInt(this.Hb, "gmail-attachment-respect-visibility-type", 1) != 0) {
                b = true;
            }
            else {
                b = false;
            }
            if (b && a2.bJ(6)) {
                gmailAttachment.dZ(a2.getInt(6));
            }
            else {
                gmailAttachment.dZ(0);
            }
            if (E.isLoggable(MailSync.TAG, 2)) {
                E.c(MailSync.TAG, "readMessageFromProto: attachment = %s", gmailAttachment.uC());
            }
            bm.blT.add(gmailAttachment);
            this.dT(3);
        }
        if (a.bJ(20)) {
            bm.bmb = a.getInt(20);
        }
        else {
            bm.bmb = -1;
        }
        if (a.bJ(23)) {
            int bmd;
            if (a.fx(23)) {
                bmd = 1;
            }
            else {
                bmd = 0;
            }
            bm.bmd = bmd;
        }
        else {
            bm.bmd = -1;
        }
        if (a.bJ(24)) {
            bm.aBw = a.getString(24);
        }
        if (a.bJ(25)) {
            int bmc;
            if (a.fx(25)) {
                bmc = 1;
            }
            else {
                bmc = 0;
            }
            bm.bmc = bmc;
        }
        else {
            bm.bmc = -1;
        }
        if (a.bJ(21)) {
            bm.bme = a.getInt(21);
        }
        if (a.bJ(22)) {
            bm.bmf = a.getString(22);
        }
        if (a.bJ(26)) {
            bm.aBy = a.getString(26);
        }
        if (a.bJ(27)) {
            int bmh;
            if (a.fx(27)) {
                bmh = 1;
            }
            else {
                bmh = 0;
            }
            bm.bmh = bmh;
        }
        E.c(MailSync.TAG, "readMessageFromProto: message = %s", bm);
        return bm;
    }
    
    private static String a(final String s, final char c) {
        if (s == null) {
            return null;
        }
        final StringBuilder sb = new StringBuilder(s.length());
        int i = 0;
        int n = 0;
        while (i < s.length()) {
            final char char1 = s.charAt(i);
            if (n != 0 && char1 != '\\') {
                sb.append(char1);
                n = 0;
            }
            else if (char1 == '\\' && s.charAt(i + 1) == c) {
                n = 1;
            }
            else {
                sb.append(char1);
            }
            ++i;
        }
        return sb.toString();
    }
    
    private String a(final byte[] p0, final long p1, final long p2, final long p3, final y p4) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: invokestatic    com/google/android/gm/b/a.tg:()V
        //     3: aload_0        
        //     4: bipush          7
        //     6: invokespecial   com/google/android/gm/provider/MailSync.dT:(I)V
        //     9: new             Ljava/util/zip/Inflater;
        //    12: dup            
        //    13: invokespecial   java/util/zip/Inflater.<init>:()V
        //    16: astore          9
        //    18: aload           9
        //    20: aload_1        
        //    21: invokevirtual   java/util/zip/Inflater.setInput:([B)V
        //    24: aload           9
        //    26: invokestatic    com/google/android/gm/provider/bJ.b:(Ljava/util/zip/Inflater;)[B
        //    29: astore          14
        //    31: aload           14
        //    33: arraylength    
        //    34: ifne            167
        //    37: aload           9
        //    39: invokevirtual   java/util/zip/Inflater.needsDictionary:()Z
        //    42: ifeq            167
        //    45: aload           8
        //    47: invokevirtual   com/google/android/gm/provider/y.size:()I
        //    50: ifne            64
        //    53: aload_0        
        //    54: aload           8
        //    56: lload           4
        //    58: lload           6
        //    60: iconst_0       
        //    61: invokespecial   com/google/android/gm/provider/MailSync.a:(Lcom/google/android/gm/provider/y;JJZ)V
        //    64: aload           8
        //    66: invokevirtual   com/google/android/gm/provider/y.DV:()J
        //    69: lstore          20
        //    71: lload_2        
        //    72: lload           20
        //    74: lcmp           
        //    75: ifeq            143
        //    78: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //    81: astore          22
        //    83: iconst_4       
        //    84: anewarray       Ljava/lang/Object;
        //    87: astore          23
        //    89: aload           23
        //    91: iconst_0       
        //    92: lload           4
        //    94: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //    97: aastore        
        //    98: aload           23
        //   100: iconst_1       
        //   101: lload           6
        //   103: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   106: aastore        
        //   107: aload           23
        //   109: iconst_2       
        //   110: lload_2        
        //   111: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   114: aastore        
        //   115: aload           23
        //   117: iconst_3       
        //   118: lload           20
        //   120: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   123: aastore        
        //   124: aload           22
        //   126: ldc_w           "Dictionary checksum mismatch for message %d/%d. Expected %x but was %x"
        //   129: aload           23
        //   131: invokestatic    com/google/android/gm/provider/ad.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   134: pop            
        //   135: aload_0        
        //   136: bipush          8
        //   138: invokespecial   com/google/android/gm/provider/MailSync.dT:(I)V
        //   141: aconst_null    
        //   142: areturn        
        //   143: aload           9
        //   145: aload           8
        //   147: invokevirtual   com/google/android/gm/provider/y.getBytes:()[B
        //   150: invokevirtual   java/util/zip/Inflater.setDictionary:([B)V
        //   153: aload           9
        //   155: invokestatic    com/google/android/gm/provider/bJ.b:(Ljava/util/zip/Inflater;)[B
        //   158: astore          14
        //   160: aload           8
        //   162: aload           14
        //   164: invokevirtual   com/google/android/gm/provider/y.h:([B)V
        //   167: new             Ljava/lang/String;
        //   170: dup            
        //   171: aload           14
        //   173: ldc_w           "UTF-8"
        //   176: invokespecial   java/lang/String.<init>:([BLjava/lang/String;)V
        //   179: astore          15
        //   181: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //   184: astore          16
        //   186: iconst_3       
        //   187: anewarray       Ljava/lang/Object;
        //   190: astore          17
        //   192: aload           17
        //   194: iconst_0       
        //   195: aload           15
        //   197: invokevirtual   java/lang/String.length:()I
        //   200: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   203: aastore        
        //   204: aload           17
        //   206: iconst_1       
        //   207: aload_1        
        //   208: arraylength    
        //   209: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   212: aastore        
        //   213: aload           17
        //   215: iconst_2       
        //   216: aload           15
        //   218: invokevirtual   java/lang/String.length:()I
        //   221: i2f            
        //   222: aload_1        
        //   223: arraylength    
        //   224: i2f            
        //   225: fdiv           
        //   226: invokestatic    java/lang/Float.valueOf:(F)Ljava/lang/Float;
        //   229: aastore        
        //   230: aload           16
        //   232: ldc_w           "Compressed message: %d/%d (%.1fx)"
        //   235: aload           17
        //   237: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   240: pop            
        //   241: invokestatic    com/google/android/gm/b/a.th:()V
        //   244: aload           15
        //   246: areturn        
        //   247: astore          10
        //   249: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //   252: astore          11
        //   254: iconst_1       
        //   255: anewarray       Ljava/lang/Object;
        //   258: astore          12
        //   260: aload           12
        //   262: iconst_0       
        //   263: lload           4
        //   265: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   268: aastore        
        //   269: aload           11
        //   271: aload           10
        //   273: ldc_w           "Error inflating message %d"
        //   276: aload           12
        //   278: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   281: pop            
        //   282: aload_0        
        //   283: bipush          8
        //   285: invokespecial   com/google/android/gm/provider/MailSync.dT:(I)V
        //   288: aconst_null    
        //   289: areturn        
        //   290: astore          19
        //   292: new             Ljava/lang/IllegalStateException;
        //   295: dup            
        //   296: ldc_w           "UTF-8 not supported"
        //   299: invokespecial   java/lang/IllegalStateException.<init>:(Ljava/lang/String;)V
        //   302: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                  
        //  -----  -----  -----  -----  --------------------------------------
        //  24     64     247    290    Ljava/util/zip/DataFormatException;
        //  64     71     247    290    Ljava/util/zip/DataFormatException;
        //  78     141    247    290    Ljava/util/zip/DataFormatException;
        //  143    167    247    290    Ljava/util/zip/DataFormatException;
        //  167    181    290    303    Ljava/io/UnsupportedEncodingException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0167:
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
    
    private void a(final af af, final String s, final String s2) {
        if (af != null) {
            this.p("startSyncNeeded", true);
            this.blr.a(af, s, s2, "SHOW");
            final ArrayList<String> n = Lists.n("labelsIncluded", "labelsPartial", "labelsAll");
            final String b = this.blr.b(af);
            if (b != null) {
                for (final String s3 : n) {
                    final Set<String> fe = this.fe(s3);
                    if (fe.contains(b)) {
                        fe.remove(b);
                        fe.add(s);
                        this.a(s3, fe);
                    }
                }
            }
        }
        this.dT(1);
    }
    
    private void a(final y y, final long n, final long n2, final boolean b) {
        final Cursor a = this.blr.a(new String[] { "messageId", "body" }, n2);
        Label_0098: {
            try {
                Block_3: {
                    while (a.moveToNext()) {
                        if (a.getLong(0) == n) {
                            break Block_3;
                        }
                        y.h(q(a));
                    }
                    break Label_0098;
                }
                if (b) {
                    y.h(q(a));
                }
                return;
            }
            finally {
                a.close();
            }
        }
        a.close();
    }
    
    private static void a(final com.google.common.a.a.a a, final int n, final List<String> list) {
        final ArrayList<com.google.common.a.a.a> list2 = new ArrayList<com.google.common.a.a.a>();
        bv.b(a, n, list2);
        final Iterator<Object> iterator = list2.iterator();
        while (iterator.hasNext()) {
            list.add(f(iterator.next()));
        }
    }
    
    private void a(final com.google.common.a.a.a a, final aX ax) {
        if (E.isLoggable(MailSync.TAG, 2)) {
            while (true) {
                try {
                    E.d("Gmail", "UphillSyncProto: %s", new String(Base64.encode(a.toByteArray(), 2)));
                    final int fa = a.fA(1);
                    E.c("Gmail", "UphillSyncProto: numNothandled: %d", fa);
                    for (int i = 0; i < fa; ++i) {
                        final com.google.common.a.a.a ap = a.ap(1, i);
                        E.c("Gmail", "UphillSyncProto: Nothandled: messageId: %d, error: %s", ap.getLong(1), ap.getString(2));
                    }
                }
                catch (IOException ex) {
                    E.e("Gmail", ex, "Error reading proto", new Object[0]);
                    continue;
                }
                break;
            }
            final int fa2 = a.fA(2);
            E.c("Gmail", "UphillSyncProto: numSavedOrSent: %d", fa2);
            for (int j = 0; j < fa2; ++j) {
                final com.google.common.a.a.a ap2 = a.ap(2, j);
                E.c("Gmail", "UphillSyncProto: SavedOrSent: messageIDOnClient: %d messageId: %d conversationId: %d", ap2.getLong(1), ap2.getLong(2), ap2.getLong(3));
            }
            if (a.bJ(3)) {
                E.c("Gmail", "UphillSyncProto: handledOperationId: %d", a.getLong(3));
            }
            E.c(MailSync.TAG, ax.toString(), new Object[0]);
        }
        final int fa3 = a.fA(1);
        this.blr.prepare();
        int n = 0;
        boolean b;
        while (true) {
            Label_0466: {
                if (n >= fa3) {
                    break Label_0466;
                }
            Label_0479_Outer:
                while (true) {
                    while (true) {
                        int n2;
                        long long2;
                        long long3;
                        long long4;
                        try {
                            final com.google.common.a.a.a ap3 = a.ap(1, n);
                            final long long1 = ap3.getLong(1);
                            final String string = ap3.getString(2);
                            E.e(MailSync.TAG, "Message %d not handled because: %s", long1, string);
                            this.blr.a(long1, string);
                            ++n;
                            break;
                            // iftrue(Label_0684:, n2 >= fa4)
                            // iftrue(Label_0576:, !this.blw)
                            // iftrue(Label_0523:, ax.bkF || long4 != ax.bkt)
                        Block_19_Outer:
                            while (true) {
                                b = true;
                            Block_16:
                                while (true) {
                                    Label_0523: {
                                        break Label_0523;
                                        this.blw = false;
                                        throw new IOException("Faked by mFakeIoExceptionWhenHandlingMessageSavedOrSent");
                                        break Block_16;
                                    }
                                    final com.google.common.a.a.a ap4;
                                    long2 = ap4.getLong(2);
                                    long3 = ap4.getLong(3);
                                    continue Label_0479_Outer;
                                }
                                final com.google.common.a.a.a ap4 = a.ap(2, n2);
                                long4 = ap4.getLong(1);
                                continue Block_19_Outer;
                            }
                            final int fa4 = a.fA(2);
                            n2 = 0;
                            b = false;
                            continue;
                        }
                        finally {
                            this.blr.commit();
                        }
                        Label_0576: {
                            E.c(MailSync.TAG, "message id changed from %d to %d", long4, long2);
                        }
                        this.blr.c(long4, long2, long3);
                        if (!ax.bkF && (ax.bku == long3 || ax.bku == long4) && ax.bkt == long4) {
                            this.blr.h(long3, long2);
                        }
                        ++n2;
                        continue;
                    }
                }
            }
        }
        Label_0684: {
            if (a.bJ(3) && ax.bkF) {
                this.aM(a.getLong(3));
                ax.bkJ = true;
            }
            else if (!ax.bkF && b) {
                this.blr.aJ(ax.bkt);
                ax.bkJ = true;
            }
        }
        this.blr.commit();
    }
    
    private void a(final com.google.common.a.a.a a, final bl bl, final br br, final long n) {
        final long long1 = a.getLong(1);
        this.blr.prepare();
        int n2 = 0;
        com.google.common.a.a.a he = null;
        Label_0373: {
            try {
                while (!this.bln) {
                    he = bl.HE();
                    if (he == null) {
                        E.e(MailSync.TAG, "handleMessageProto: End of stream while reading next chunk part. conversationId: %d", long1);
                        return;
                    }
                    if (!he.bJ(11)) {
                        break Label_0373;
                    }
                    if (n2 != 0) {
                        continue;
                    }
                    final bm a2 = this.a(he.fy(11), long1, new y());
                    if (a2.bck == null) {
                        this.blp.add(long1);
                        E.e(MailSync.TAG, "handleMessageProto: Could not deflate message %d. marking conversation %d  as dirty", a2.bkt, long1);
                        n2 = 1;
                    }
                    else {
                        E.b(MailSync.TAG, "handleMessageProto: message: %s", a2);
                        this.blr.a(a2, n);
                        this.blr.b(a2.bku, MailSync$SyncRationale.bmo);
                        if (br != null) {
                            br.GV();
                        }
                        if (this.blp.contains(long1)) {
                            E.e(MailSync.TAG, "handleMessageProto: Message %d synced successfully. Marking conversation %d as dirty in DB", a2.bkt, long1);
                            this.blr.aK(long1);
                            this.blp.remove(long1);
                        }
                        this.blr.Hc();
                    }
                }
                return;
            }
            finally {
                this.blr.commit();
            }
        }
        if (!he.bJ(13)) {
            throw new IllegalArgumentException("Unexpected chunk in conversation");
        }
        this.blr.commit();
    }
    
    private void a(final com.google.common.a.a.a a, final bl bl, final br br, final long n, final aX ax) {
        com.google.android.gm.b.a.tg();
        final long long1 = a.getLong(1);
        long long2 = 0L;
        if (a.bJ(3)) {
            long2 = a.getLong(3);
        }
        while (true) {
            E.b(MailSync.TAG, "handleConversationProto: conversationId: %d, SyncRationale: %s", long1, dU(a.getInt(2)));
            int n2 = 1;
            this.blr.prepare();
            int n3 = 0;
        Label_0162_Outer:
            while (true) {
                while (true) {
                    y y = null;
                    com.google.common.a.a.a he = null;
                    Label_0398: {
                        try {
                            y = new y();
                            if (this.bln) {
                                return;
                            }
                            try {
                                he = bl.HE();
                                if (he == null) {
                                    E.e(MailSync.TAG, "handleConversationProto: End of stream while reading next chunk part. conversationId: %d", long1);
                                    this.blr.b(long1, MailSync$SyncRationale.bmo);
                                    if (n2 != 0) {
                                        this.blr.a(long1, ax);
                                        if (long2 != 0L && long2 != long1) {
                                            this.blr.a(long2, ax);
                                        }
                                        if (this.blp.contains(long1)) {
                                            E.e(MailSync.TAG, "handleConversationProto: Dirty conversation %d synced successfully. Marking as dirty in DB", long1);
                                            this.blr.aK(long1);
                                            this.blp.remove(long1);
                                        }
                                    }
                                    com.google.android.gm.b.a.Dx();
                                    return;
                                }
                                break Label_0398;
                            }
                            catch (OutOfMemoryError outOfMemoryError) {
                                if (this.He().contains(long1)) {
                                    throw outOfMemoryError;
                                }
                            }
                        }
                        finally {
                            this.blr.commit();
                        }
                        n3 = 1;
                        E.e(MailSync.TAG, "handleConversationProto: Chunk to big to fit in memory. marking conversation %d as dirty", long1);
                        this.blp.add(long1);
                        n2 = 0;
                        continue Label_0162_Outer;
                    }
                    if (he.bJ(11)) {
                        if (n3 != 0) {
                            continue Label_0162_Outer;
                        }
                        bm a2 = null;
                        Label_0549: {
                            try {
                                a2 = this.a(he.fy(11), long1, y);
                                if (a2.bck == null) {
                                    n3 = 1;
                                    E.e(MailSync.TAG, "handleConversationProto: Could not deflate message %d. marking conversation %d as dirty", a2.bkt, long1);
                                    this.blp.add(long1);
                                    n2 = 0;
                                    continue Label_0162_Outer;
                                }
                                break Label_0549;
                            }
                            catch (CompressedMessageCursor$CorruptedMessageException ex) {
                                E.e(MailSync.TAG, ex, "Corrupted data while creating dictionary. Deleting corrupted messages and retrying conversation fetch", new Object[0]);
                                this.blr.j(long1, ex.sM());
                                n2 = 0;
                                continue Label_0162_Outer;
                            }
                            continue Label_0162_Outer;
                        }
                        final af ee = this.blr.eE("^sq_ig_i_promo");
                        if (ee != null && a2.blG.contains(ee.id)) {
                            this.blm = true;
                        }
                        E.b(MailSync.TAG, "handleConversationProto: message: %s", a2);
                        this.blr.a(a2, n);
                        if (br != null) {
                            br.GV();
                        }
                    }
                    else {
                        if (he.bJ(18)) {
                            bl a3 = null;
                            try {
                                a3 = this.a(he.fy(18), long1);
                                if (a3 == null) {
                                    n3 = 1;
                                    E.e(MailSync.TAG, "handleConversationProto: Could not deflate conversation %d. marking conversation as dirty", long1);
                                    this.blp.add(long1);
                                    n2 = 0;
                                    if (a3 != null) {
                                        a3.close();
                                        n2 = 0;
                                        continue Label_0162_Outer;
                                    }
                                    continue Label_0162_Outer;
                                }
                                else {
                                    while (true) {
                                        com.google.common.a.a.a he2 = null;
                                        Label_0754: {
                                            try {
                                                he2 = a3.HE();
                                                if (he2 != null) {
                                                    if (!this.bln) {
                                                        break Label_0754;
                                                    }
                                                    E.b(MailSync.TAG, "sync cancelled while processing messages for conversation: %d", long1);
                                                    n2 = 0;
                                                }
                                            }
                                            catch (IOException ex2) {
                                                n3 = 1;
                                                E.d(MailSync.TAG, ex2, "handleConversationProto: Could not deflate conversation %d.marking conversation as dirty", long1);
                                                this.blp.add(long1);
                                                n2 = 0;
                                            }
                                        }
                                        this.blr.a(this.a(he2.fy(11), long1, null), n);
                                        if (br != null) {
                                            br.GV();
                                        }
                                    }
                                }
                            }
                            catch (CompressedMessageCursor$CorruptedMessageException ex3) {
                                E.e(MailSync.TAG, ex3, "Corrupted data while creating dictionary. Deleting corrupted messages and retrying conversation fetch", new Object[0]);
                                this.blr.j(long1, ex3.sM());
                                n2 = 0;
                                if (a3 != null) {
                                    a3.close();
                                    n2 = 0;
                                    continue Label_0162_Outer;
                                }
                                continue Label_0162_Outer;
                            }
                            finally {
                                if (a3 != null) {
                                    a3.close();
                                }
                            }
                        }
                        if (he.bJ(12)) {
                            E.b(MailSync.TAG, "handleConversationProto: end conversation", new Object[0]);
                            continue;
                        }
                        E.f(MailSync.TAG, "Unexpected chunk in conversation", new Object[0]);
                        continue;
                    }
                    break;
                }
                this.blr.Hc();
                continue Label_0162_Outer;
            }
        }
    }
    
    private void a(final com.google.common.a.a.a p0, final br p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: iconst_1       
        //     2: invokevirtual   com/google/common/a/a/a.getLong:(I)J
        //     5: lstore_3       
        //     6: aload_1        
        //     7: iconst_2       
        //     8: invokevirtual   com/google/common/a/a/a.getLong:(I)J
        //    11: lstore          5
        //    13: aload_1        
        //    14: iconst_3       
        //    15: invokevirtual   com/google/common/a/a/a.getLong:(I)J
        //    18: lstore          7
        //    20: aload_0        
        //    21: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //    24: invokeinterface com/google/android/gm/provider/ba.prepare:()V
        //    29: aload_1        
        //    30: bipush          6
        //    32: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //    35: ifeq            150
        //    38: aload_1        
        //    39: bipush          6
        //    41: invokevirtual   com/google/common/a/a/a.getString:(I)Ljava/lang/String;
        //    44: astore          108
        //    46: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //    49: ldc_w           "StartSyncInfoProto: Custom From prefs: %s"
        //    52: iconst_1       
        //    53: anewarray       Ljava/lang/Object;
        //    56: dup            
        //    57: iconst_0       
        //    58: aload           108
        //    60: aastore        
        //    61: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //    64: pop            
        //    65: aload           108
        //    67: invokevirtual   java/lang/String.isEmpty:()Z
        //    70: ifne            93
        //    73: aload           108
        //    75: iconst_0       
        //    76: invokestatic    com/google/android/gm/provider/MailSync.o:(Ljava/lang/String;Z)Ljava/util/Map;
        //    79: astore          113
        //    81: aload_0        
        //    82: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //    85: aload           113
        //    87: iconst_1       
        //    88: invokeinterface com/google/android/gm/provider/ba.c:(Ljava/util/Map;Z)V
        //    93: aload_1        
        //    94: bipush          7
        //    96: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //    99: ifeq            150
        //   102: aload_1        
        //   103: bipush          7
        //   105: invokevirtual   com/google/common/a/a/a.getString:(I)Ljava/lang/String;
        //   108: astore          110
        //   110: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //   113: ldc_w           "StartSyncInfoProto: Reply From prefs: %s"
        //   116: iconst_1       
        //   117: anewarray       Ljava/lang/Object;
        //   120: dup            
        //   121: iconst_0       
        //   122: aload           110
        //   124: aastore        
        //   125: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   128: pop            
        //   129: ldc_w           "bx_rf"
        //   132: aload           110
        //   134: invokestatic    com/google/common/collect/ImmutableMap.r:(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;
        //   137: astore          112
        //   139: aload_0        
        //   140: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //   143: aload           112
        //   145: invokeinterface com/google/android/gm/provider/ba.k:(Ljava/util/Map;)V
        //   150: aload_1        
        //   151: iconst_5       
        //   152: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //   155: ifeq            206
        //   158: aload_1        
        //   159: iconst_5       
        //   160: invokevirtual   com/google/common/a/a/a.getString:(I)Ljava/lang/String;
        //   163: astore          106
        //   165: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //   168: ldc_w           "StartSyncInfoProto: Custom Color: %s"
        //   171: iconst_1       
        //   172: anewarray       Ljava/lang/Object;
        //   175: dup            
        //   176: iconst_0       
        //   177: aload           106
        //   179: aastore        
        //   180: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   183: pop            
        //   184: aload           106
        //   186: invokevirtual   java/lang/String.isEmpty:()Z
        //   189: ifne            206
        //   192: aload_0        
        //   193: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //   196: aload           106
        //   198: invokestatic    com/google/android/gm/provider/MailSync.fa:(Ljava/lang/String;)Ljava/util/Map;
        //   201: invokeinterface com/google/android/gm/provider/ba.o:(Ljava/util/Map;)V
        //   206: aload_1        
        //   207: bipush          13
        //   209: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //   212: ifeq            316
        //   215: aload_1        
        //   216: bipush          13
        //   218: invokevirtual   com/google/common/a/a/a.getString:(I)Ljava/lang/String;
        //   221: astore          101
        //   223: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //   226: iconst_2       
        //   227: invokestatic    com/google/android/gm/provider/ad.isLoggable:(Ljava/lang/String;I)Z
        //   230: ifeq            271
        //   233: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //   236: ldc_w           "StartSyncInfoProto: Reply To: %s"
        //   239: iconst_1       
        //   240: anewarray       Ljava/lang/Object;
        //   243: dup            
        //   244: iconst_0       
        //   245: aload           101
        //   247: aastore        
        //   248: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   251: pop            
        //   252: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //   255: ldc_w           "StartSyncInfoProto: Reply To: %s"
        //   258: iconst_1       
        //   259: anewarray       Ljava/lang/Object;
        //   262: dup            
        //   263: iconst_0       
        //   264: aload           101
        //   266: aastore        
        //   267: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   270: pop            
        //   271: aload           101
        //   273: ifnull          1270
        //   276: aload           101
        //   278: invokevirtual   java/lang/String.isEmpty:()Z
        //   281: ifne            1270
        //   284: aload           101
        //   286: ldc_w           "null"
        //   289: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   292: ifne            1270
        //   295: ldc_w           "sx_rt"
        //   298: aload           101
        //   300: invokestatic    com/google/common/collect/ImmutableMap.r:(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;
        //   303: astore          103
        //   305: aload_0        
        //   306: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //   309: aload           103
        //   311: invokeinterface com/google/android/gm/provider/ba.k:(Ljava/util/Map;)V
        //   316: aload_1        
        //   317: bipush          14
        //   319: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //   322: ifeq            397
        //   325: aload_1        
        //   326: bipush          14
        //   328: invokevirtual   com/google/common/a/a/a.getString:(I)Ljava/lang/String;
        //   331: astore          97
        //   333: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //   336: ldc_w           "StartSyncInfoProto: Display Name: %s"
        //   339: iconst_1       
        //   340: anewarray       Ljava/lang/Object;
        //   343: dup            
        //   344: iconst_0       
        //   345: aload           97
        //   347: aastore        
        //   348: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   351: pop            
        //   352: aload           97
        //   354: ifnull          1308
        //   357: aload           97
        //   359: invokevirtual   java/lang/String.isEmpty:()Z
        //   362: ifne            1308
        //   365: aload           97
        //   367: ldc_w           "null"
        //   370: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   373: ifne            1308
        //   376: ldc_w           "sx_dn"
        //   379: aload           97
        //   381: invokestatic    com/google/common/collect/ImmutableMap.r:(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;
        //   384: astore          100
        //   386: aload_0        
        //   387: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //   390: aload           100
        //   392: invokeinterface com/google/android/gm/provider/ba.k:(Ljava/util/Map;)V
        //   397: aload_1        
        //   398: bipush          8
        //   400: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //   403: ifeq            606
        //   406: aload_1        
        //   407: bipush          8
        //   409: invokevirtual   com/google/common/a/a/a.getString:(I)Ljava/lang/String;
        //   412: astore          86
        //   414: aload_1        
        //   415: bipush          10
        //   417: invokevirtual   com/google/common/a/a/a.getString:(I)Ljava/lang/String;
        //   420: astore          87
        //   422: aload_1        
        //   423: bipush          9
        //   425: invokevirtual   com/google/common/a/a/a.getString:(I)Ljava/lang/String;
        //   428: astore          88
        //   430: aload_1        
        //   431: bipush          11
        //   433: invokevirtual   com/google/common/a/a/a.getString:(I)Ljava/lang/String;
        //   436: astore          89
        //   438: aload_1        
        //   439: bipush          15
        //   441: invokevirtual   com/google/common/a/a/a.getString:(I)Ljava/lang/String;
        //   444: astore          90
        //   446: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //   449: iconst_2       
        //   450: invokestatic    com/google/android/gm/provider/ad.isLoggable:(Ljava/lang/String;I)Z
        //   453: ifeq            551
        //   456: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //   459: ldc_w           "StartSyncInfoProto: IO enabled: %s"
        //   462: iconst_1       
        //   463: anewarray       Ljava/lang/Object;
        //   466: dup            
        //   467: iconst_0       
        //   468: aload           86
        //   470: aastore        
        //   471: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   474: pop            
        //   475: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //   478: ldc_w           "StartSyncInfoProto: IO sections: %s"
        //   481: iconst_1       
        //   482: anewarray       Ljava/lang/Object;
        //   485: dup            
        //   486: iconst_0       
        //   487: aload           87
        //   489: aastore        
        //   490: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   493: pop            
        //   494: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //   497: ldc_w           "StartSyncInfoProto: IO sizes: %s"
        //   500: iconst_1       
        //   501: anewarray       Ljava/lang/Object;
        //   504: dup            
        //   505: iconst_0       
        //   506: aload           88
        //   508: aastore        
        //   509: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   512: pop            
        //   513: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //   516: ldc_w           "StartSyncInfoProto: IO default inbox: %s"
        //   519: iconst_1       
        //   520: anewarray       Ljava/lang/Object;
        //   523: dup            
        //   524: iconst_0       
        //   525: aload           89
        //   527: aastore        
        //   528: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   531: pop            
        //   532: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //   535: ldc_w           "StartSyncInfoProto: IO arrows off: %s"
        //   538: iconst_1       
        //   539: anewarray       Ljava/lang/Object;
        //   542: dup            
        //   543: iconst_0       
        //   544: aload           90
        //   546: aastore        
        //   547: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   550: pop            
        //   551: new             Lcom/google/common/collect/y;
        //   554: dup            
        //   555: invokespecial   com/google/common/collect/y.<init>:()V
        //   558: ldc_w           "sx_ioe"
        //   561: aload           86
        //   563: invokevirtual   com/google/common/collect/y.p:(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;
        //   566: ldc_w           "sx_iosc"
        //   569: aload           87
        //   571: invokevirtual   com/google/common/collect/y.p:(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;
        //   574: ldc_w           "sx_ioss"
        //   577: aload           88
        //   579: invokevirtual   com/google/common/collect/y.p:(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;
        //   582: ldc_w           "bx_ioao"
        //   585: aload           90
        //   587: invokevirtual   com/google/common/collect/y.p:(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;
        //   590: invokevirtual   com/google/common/collect/y.Zo:()Lcom/google/common/collect/ImmutableMap;
        //   593: astore          91
        //   595: aload_0        
        //   596: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //   599: aload           91
        //   601: invokeinterface com/google/android/gm/provider/ba.k:(Ljava/util/Map;)V
        //   606: aload_1        
        //   607: bipush          16
        //   609: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //   612: ifeq            673
        //   615: aload_1        
        //   616: bipush          16
        //   618: invokevirtual   com/google/common/a/a/a.getString:(I)Ljava/lang/String;
        //   621: astore          83
        //   623: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //   626: ldc_w           "StartSyncInfoProto: Personal inbox enabled: %s"
        //   629: iconst_1       
        //   630: anewarray       Ljava/lang/Object;
        //   633: dup            
        //   634: iconst_0       
        //   635: aload           83
        //   637: aastore        
        //   638: invokestatic    com/google/android/gm/provider/ad.d:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   641: pop            
        //   642: new             Lcom/google/common/collect/y;
        //   645: dup            
        //   646: invokespecial   com/google/common/collect/y.<init>:()V
        //   649: ldc_w           "bx_pie"
        //   652: aload           83
        //   654: invokevirtual   com/google/common/collect/y.p:(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;
        //   657: invokevirtual   com/google/common/collect/y.Zo:()Lcom/google/common/collect/ImmutableMap;
        //   660: astore          85
        //   662: aload_0        
        //   663: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //   666: aload           85
        //   668: invokeinterface com/google/android/gm/provider/ba.k:(Ljava/util/Map;)V
        //   673: aload_1        
        //   674: bipush          17
        //   676: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //   679: ifeq            763
        //   682: aload_1        
        //   683: bipush          17
        //   685: invokevirtual   com/google/common/a/a/a.fy:(I)Lcom/google/common/a/a/a;
        //   688: astore          75
        //   690: aload           75
        //   692: invokevirtual   com/google/common/a/a/a.toByteArray:()[B
        //   695: astore          82
        //   697: aload           82
        //   699: astore          77
        //   701: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //   704: astore          78
        //   706: iconst_1       
        //   707: anewarray       Ljava/lang/Object;
        //   710: astore          79
        //   712: aload           79
        //   714: iconst_0       
        //   715: aload           75
        //   717: invokevirtual   java/lang/Object.toString:()Ljava/lang/String;
        //   720: aastore        
        //   721: aload           78
        //   723: ldc_w           "StartSyncInfoProto: Personal inbox android config: %s"
        //   726: aload           79
        //   728: invokestatic    com/google/android/gm/provider/ad.d:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   731: pop            
        //   732: new             Lcom/google/common/collect/y;
        //   735: dup            
        //   736: invokespecial   com/google/common/collect/y.<init>:()V
        //   739: ldc_w           "sx_piac"
        //   742: aload           77
        //   744: invokevirtual   com/google/common/collect/y.p:(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;
        //   747: invokevirtual   com/google/common/collect/y.Zo:()Lcom/google/common/collect/ImmutableMap;
        //   750: astore          81
        //   752: aload_0        
        //   753: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //   756: aload           81
        //   758: invokeinterface com/google/android/gm/provider/ba.m:(Ljava/util/Map;)V
        //   763: aload_1        
        //   764: bipush          18
        //   766: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //   769: ifeq            845
        //   772: aload_1        
        //   773: bipush          18
        //   775: invokevirtual   com/google/common/a/a/a.fx:(I)Z
        //   778: istore          70
        //   780: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //   783: astore          71
        //   785: iconst_1       
        //   786: anewarray       Ljava/lang/Object;
        //   789: astore          72
        //   791: aload           72
        //   793: iconst_0       
        //   794: iload           70
        //   796: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //   799: aastore        
        //   800: aload           71
        //   802: ldc_w           "StartSyncInfoProto: personal inbox available: %s"
        //   805: aload           72
        //   807: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   810: pop            
        //   811: new             Lcom/google/common/collect/y;
        //   814: dup            
        //   815: invokespecial   com/google/common/collect/y.<init>:()V
        //   818: ldc_w           "bx_pia"
        //   821: iload           70
        //   823: invokestatic    java/lang/Boolean.toString:(Z)Ljava/lang/String;
        //   826: invokevirtual   com/google/common/collect/y.p:(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;
        //   829: invokevirtual   com/google/common/collect/y.Zo:()Lcom/google/common/collect/ImmutableMap;
        //   832: astore          74
        //   834: aload_0        
        //   835: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //   838: aload           74
        //   840: invokeinterface com/google/android/gm/provider/ba.k:(Ljava/util/Map;)V
        //   845: aload_1        
        //   846: bipush          19
        //   848: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //   851: ifeq            927
        //   854: aload_1        
        //   855: bipush          19
        //   857: invokevirtual   com/google/common/a/a/a.fx:(I)Z
        //   860: istore          65
        //   862: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //   865: astore          66
        //   867: iconst_1       
        //   868: anewarray       Ljava/lang/Object;
        //   871: astore          67
        //   873: aload           67
        //   875: iconst_0       
        //   876: iload           65
        //   878: invokestatic    java/lang/Boolean.valueOf:(Z)Ljava/lang/Boolean;
        //   881: aastore        
        //   882: aload           66
        //   884: ldc_w           "StartSyncInfoProto: personal inbox user flipped: %s"
        //   887: aload           67
        //   889: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   892: pop            
        //   893: new             Lcom/google/common/collect/y;
        //   896: dup            
        //   897: invokespecial   com/google/common/collect/y.<init>:()V
        //   900: ldc_w           "bx_piuf"
        //   903: iload           65
        //   905: invokestatic    java/lang/Boolean.toString:(Z)Ljava/lang/String;
        //   908: invokevirtual   com/google/common/collect/y.p:(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;
        //   911: invokevirtual   com/google/common/collect/y.Zo:()Lcom/google/common/collect/ImmutableMap;
        //   914: astore          69
        //   916: aload_0        
        //   917: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //   920: aload           69
        //   922: invokeinterface com/google/android/gm/provider/ba.k:(Ljava/util/Map;)V
        //   927: aload_1        
        //   928: bipush          21
        //   930: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //   933: ifeq            974
        //   936: aload_1        
        //   937: bipush          21
        //   939: invokevirtual   com/google/common/a/a/a.getString:(I)Ljava/lang/String;
        //   942: astore          63
        //   944: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //   947: ldc_w           "StartSyncInfoProto: Dasher Domain Title: %s"
        //   950: iconst_1       
        //   951: anewarray       Ljava/lang/Object;
        //   954: dup            
        //   955: iconst_0       
        //   956: aload           63
        //   958: aastore        
        //   959: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   962: pop            
        //   963: aload_0        
        //   964: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //   967: aload           63
        //   969: invokeinterface com/google/android/gm/provider/ba.eH:(Ljava/lang/String;)V
        //   974: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //   977: iconst_2       
        //   978: invokestatic    com/google/android/gm/provider/ad.isLoggable:(Ljava/lang/String;I)Z
        //   981: istore          10
        //   983: iload           10
        //   985: ifeq            1353
        //   988: iconst_1       
        //   989: anewarray       Ljava/lang/Object;
        //   992: astore          61
        //   994: aload           61
        //   996: iconst_0       
        //   997: new             Ljava/lang/String;
        //  1000: dup            
        //  1001: aload_1        
        //  1002: invokevirtual   com/google/common/a/a/a.toByteArray:()[B
        //  1005: iconst_2       
        //  1006: invokestatic    android/util/Base64.encode:([BI)[B
        //  1009: invokespecial   java/lang/String.<init>:([B)V
        //  1012: aastore        
        //  1013: ldc_w           "Gmail"
        //  1016: ldc_w           "StartSyncInfoProto: %s"
        //  1019: aload           61
        //  1021: invokestatic    com/google/android/gm/provider/ad.d:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1024: pop            
        //  1025: aload_1        
        //  1026: iconst_4       
        //  1027: invokevirtual   com/google/common/a/a/a.fA:(I)I
        //  1030: istore          45
        //  1032: iconst_1       
        //  1033: anewarray       Ljava/lang/Object;
        //  1036: astore          46
        //  1038: aload           46
        //  1040: iconst_0       
        //  1041: iload           45
        //  1043: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1046: aastore        
        //  1047: ldc_w           "Gmail"
        //  1050: ldc_w           "StartSyncInfoProto: Labels: numLabels: %d"
        //  1053: aload           46
        //  1055: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1058: pop            
        //  1059: iconst_0       
        //  1060: istore          48
        //  1062: iload           48
        //  1064: iload           45
        //  1066: if_icmpge       1353
        //  1069: aload_1        
        //  1070: iconst_4       
        //  1071: iload           48
        //  1073: invokevirtual   com/google/common/a/a/a.ap:(II)Lcom/google/common/a/a/a;
        //  1076: astore          49
        //  1078: aload           49
        //  1080: iconst_1       
        //  1081: invokevirtual   com/google/common/a/a/a.getLong:(I)J
        //  1084: lstore          50
        //  1086: aload           49
        //  1088: iconst_2       
        //  1089: invokevirtual   com/google/common/a/a/a.getString:(I)Ljava/lang/String;
        //  1092: astore          52
        //  1094: aload           49
        //  1096: iconst_3       
        //  1097: invokevirtual   com/google/common/a/a/a.getString:(I)Ljava/lang/String;
        //  1100: astore          53
        //  1102: aload           49
        //  1104: iconst_4       
        //  1105: invokevirtual   com/google/common/a/a/a.getInt:(I)I
        //  1108: istore          54
        //  1110: aload           49
        //  1112: iconst_5       
        //  1113: invokevirtual   com/google/common/a/a/a.getInt:(I)I
        //  1116: istore          55
        //  1118: aload           49
        //  1120: bipush          8
        //  1122: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //  1125: ifeq            1858
        //  1128: aload           49
        //  1130: bipush          8
        //  1132: invokevirtual   com/google/common/a/a/a.getInt:(I)I
        //  1135: istore          56
        //  1137: aload           49
        //  1139: bipush          6
        //  1141: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //  1144: ifeq            1844
        //  1147: aload           49
        //  1149: bipush          6
        //  1151: invokevirtual   com/google/common/a/a/a.getInt:(I)I
        //  1154: istore          57
        //  1156: ldc_w           "Default"
        //  1159: astore          58
        //  1161: aload           49
        //  1163: bipush          7
        //  1165: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //  1168: ifeq            1180
        //  1171: aload           49
        //  1173: bipush          7
        //  1175: invokevirtual   com/google/common/a/a/a.getString:(I)Ljava/lang/String;
        //  1178: astore          58
        //  1180: bipush          8
        //  1182: anewarray       Ljava/lang/Object;
        //  1185: astore          59
        //  1187: aload           59
        //  1189: iconst_0       
        //  1190: lload           50
        //  1192: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //  1195: aastore        
        //  1196: aload           59
        //  1198: iconst_1       
        //  1199: aload           52
        //  1201: aastore        
        //  1202: aload           59
        //  1204: iconst_2       
        //  1205: aload           53
        //  1207: aastore        
        //  1208: aload           59
        //  1210: iconst_3       
        //  1211: iload           54
        //  1213: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1216: aastore        
        //  1217: aload           59
        //  1219: iconst_4       
        //  1220: iload           55
        //  1222: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1225: aastore        
        //  1226: aload           59
        //  1228: iconst_5       
        //  1229: iload           56
        //  1231: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1234: aastore        
        //  1235: aload           59
        //  1237: bipush          6
        //  1239: iload           57
        //  1241: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //  1244: aastore        
        //  1245: aload           59
        //  1247: bipush          7
        //  1249: aload           58
        //  1251: aastore        
        //  1252: ldc_w           "Gmail"
        //  1255: ldc_w           "StartSyncInfoProto: Label id: %d canonicalName: %s displayName: %s numConversations: %d numUnreadConversations: %d numUnseenConversations: %d color: %d visibility: %s"
        //  1258: aload           59
        //  1260: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1263: pop            
        //  1264: iinc            48, 1
        //  1267: goto            1062
        //  1270: ldc_w           "sx_rt"
        //  1273: ldc             ""
        //  1275: invokestatic    com/google/common/collect/ImmutableMap.r:(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;
        //  1278: astore          102
        //  1280: aload_0        
        //  1281: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  1284: aload           102
        //  1286: invokeinterface com/google/android/gm/provider/ba.k:(Ljava/util/Map;)V
        //  1291: goto            316
        //  1294: astore          9
        //  1296: aload_0        
        //  1297: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  1300: invokeinterface com/google/android/gm/provider/ba.commit:()V
        //  1305: aload           9
        //  1307: athrow         
        //  1308: ldc_w           "sx_dn"
        //  1311: ldc             ""
        //  1313: invokestatic    com/google/common/collect/ImmutableMap.r:(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;
        //  1316: astore          99
        //  1318: aload_0        
        //  1319: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  1322: aload           99
        //  1324: invokeinterface com/google/android/gm/provider/ba.k:(Ljava/util/Map;)V
        //  1329: goto            397
        //  1332: astore          43
        //  1334: ldc_w           "Gmail"
        //  1337: aload           43
        //  1339: ldc_w           "Error reading proto"
        //  1342: iconst_0       
        //  1343: anewarray       Ljava/lang/Object;
        //  1346: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1349: pop            
        //  1350: goto            1025
        //  1353: invokestatic    com/google/common/collect/Maps.aan:()Ljava/util/HashMap;
        //  1356: astore          11
        //  1358: aload_1        
        //  1359: iconst_4       
        //  1360: invokevirtual   com/google/common/a/a/a.fA:(I)I
        //  1363: istore          12
        //  1365: iconst_0       
        //  1366: istore          13
        //  1368: iload           13
        //  1370: iload           12
        //  1372: if_icmpge       1562
        //  1375: aload_1        
        //  1376: iconst_4       
        //  1377: iload           13
        //  1379: invokevirtual   com/google/common/a/a/a.ap:(II)Lcom/google/common/a/a/a;
        //  1382: astore          14
        //  1384: aload           14
        //  1386: iconst_1       
        //  1387: invokevirtual   com/google/common/a/a/a.getLong:(I)J
        //  1390: lstore          15
        //  1392: aload_0        
        //  1393: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  1396: lload           15
        //  1398: invokeinterface com/google/android/gm/provider/ba.ar:(J)Lcom/google/android/gm/provider/af;
        //  1403: astore          17
        //  1405: aload           17
        //  1407: ifnull          1864
        //  1410: aload           14
        //  1412: iconst_2       
        //  1413: invokevirtual   com/google/common/a/a/a.getString:(I)Ljava/lang/String;
        //  1416: astore          18
        //  1418: aload           14
        //  1420: iconst_3       
        //  1421: invokevirtual   com/google/common/a/a/a.getString:(I)Ljava/lang/String;
        //  1424: astore          19
        //  1426: aload           14
        //  1428: iconst_4       
        //  1429: invokevirtual   com/google/common/a/a/a.getInt:(I)I
        //  1432: istore          20
        //  1434: aload           14
        //  1436: iconst_5       
        //  1437: invokevirtual   com/google/common/a/a/a.getInt:(I)I
        //  1440: istore          21
        //  1442: aload           14
        //  1444: bipush          8
        //  1446: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //  1449: ifeq            1870
        //  1452: aload           14
        //  1454: bipush          8
        //  1456: invokevirtual   com/google/common/a/a/a.getInt:(I)I
        //  1459: istore          22
        //  1461: ldc_w           2147483647
        //  1464: istore          23
        //  1466: aload           14
        //  1468: bipush          6
        //  1470: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //  1473: ifeq            1485
        //  1476: aload           14
        //  1478: bipush          6
        //  1480: invokevirtual   com/google/common/a/a/a.getInt:(I)I
        //  1483: istore          23
        //  1485: ldc_w           "SHOW"
        //  1488: astore          24
        //  1490: aload           14
        //  1492: bipush          7
        //  1494: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //  1497: ifeq            1528
        //  1500: aload           14
        //  1502: bipush          7
        //  1504: invokevirtual   com/google/common/a/a/a.getString:(I)Ljava/lang/String;
        //  1507: astore          24
        //  1509: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //  1512: ldc_w           "StartSyncInfoProto: LABEL_VISIBILITY: %s"
        //  1515: iconst_1       
        //  1516: anewarray       Ljava/lang/Object;
        //  1519: dup            
        //  1520: iconst_0       
        //  1521: aload           24
        //  1523: aastore        
        //  1524: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1527: pop            
        //  1528: aload           11
        //  1530: aload           17
        //  1532: new             Lcom/google/android/gm/provider/bd;
        //  1535: dup            
        //  1536: aload           18
        //  1538: aload           19
        //  1540: iload           20
        //  1542: iload           21
        //  1544: iload           22
        //  1546: iload           23
        //  1548: aload           24
        //  1550: invokespecial   com/google/android/gm/provider/bd.<init>:(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V
        //  1553: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //  1558: pop            
        //  1559: goto            1864
        //  1562: iload           12
        //  1564: ifle            1577
        //  1567: aload_2        
        //  1568: ifnull          1577
        //  1571: aload_2        
        //  1572: invokeinterface com/google/android/gm/provider/br.GW:()V
        //  1577: aload_0        
        //  1578: aload           11
        //  1580: aload_2        
        //  1581: invokespecial   com/google/android/gm/provider/MailSync.a:(Ljava/util/Map;Lcom/google/android/gm/provider/br;)V
        //  1584: aload_1        
        //  1585: bipush          20
        //  1587: invokevirtual   com/google/common/a/a/a.fA:(I)I
        //  1590: istore          27
        //  1592: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //  1595: new             Ljava/lang/StringBuilder;
        //  1598: dup            
        //  1599: ldc_w           "StartSyncInfoProto: server pref count: "
        //  1602: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1605: iload           27
        //  1607: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //  1610: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1613: iconst_0       
        //  1614: anewarray       Ljava/lang/Object;
        //  1617: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1620: pop            
        //  1621: iload           27
        //  1623: ifle            1720
        //  1626: invokestatic    com/google/common/collect/Maps.aan:()Ljava/util/HashMap;
        //  1629: astore          29
        //  1631: iconst_0       
        //  1632: istore          30
        //  1634: iload           30
        //  1636: iload           27
        //  1638: if_icmpge       1709
        //  1641: aload_1        
        //  1642: bipush          20
        //  1644: iload           30
        //  1646: invokevirtual   com/google/common/a/a/a.ap:(II)Lcom/google/common/a/a/a;
        //  1649: astore          31
        //  1651: aload           31
        //  1653: iconst_1       
        //  1654: invokevirtual   com/google/common/a/a/a.getString:(I)Ljava/lang/String;
        //  1657: astore          32
        //  1659: aload           31
        //  1661: iconst_2       
        //  1662: invokevirtual   com/google/common/a/a/a.getString:(I)Ljava/lang/String;
        //  1665: astore          33
        //  1667: aload           32
        //  1669: ifnull          1692
        //  1672: aload           33
        //  1674: ifnull          1692
        //  1677: aload           29
        //  1679: aload           32
        //  1681: aload           33
        //  1683: invokeinterface java/util/Map.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //  1688: pop            
        //  1689: goto            1876
        //  1692: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //  1695: ldc_w           "StartSyncInfoProto: received invalid pref from server"
        //  1698: iconst_0       
        //  1699: anewarray       Ljava/lang/Object;
        //  1702: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1705: pop            
        //  1706: goto            1876
        //  1709: aload_0        
        //  1710: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  1713: aload           29
        //  1715: invokeinterface com/google/android/gm/provider/ba.k:(Ljava/util/Map;)V
        //  1720: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //  1723: astore          36
        //  1725: iconst_3       
        //  1726: anewarray       Ljava/lang/Object;
        //  1729: astore          37
        //  1731: aload           37
        //  1733: iconst_0       
        //  1734: lload           7
        //  1736: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //  1739: aastore        
        //  1740: aload           37
        //  1742: iconst_1       
        //  1743: lload           5
        //  1745: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //  1748: aastore        
        //  1749: aload           37
        //  1751: iconst_2       
        //  1752: lload_3        
        //  1753: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //  1756: aastore        
        //  1757: aload           36
        //  1759: ldc_w           "handleStartSyncInfoValues: highestServerOperation: %d highestServerConversation: %d handledClientOperation: %d"
        //  1762: aload           37
        //  1764: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1767: pop            
        //  1768: aload_0        
        //  1769: ldc             "startSyncNeeded"
        //  1771: invokevirtual   com/google/android/gm/provider/MailSync.fc:(Ljava/lang/String;)Z
        //  1774: ifeq            1825
        //  1777: aload_0        
        //  1778: ldc             "startSyncNeeded"
        //  1780: iconst_0       
        //  1781: invokevirtual   com/google/android/gm/provider/MailSync.p:(Ljava/lang/String;Z)Z
        //  1784: pop            
        //  1785: aload_0        
        //  1786: ldc             "highestProcessedServerOperationId"
        //  1788: invokespecial   com/google/android/gm/provider/MailSync.fb:(Ljava/lang/String;)J
        //  1791: lconst_0       
        //  1792: lcmp           
        //  1793: ifne            1805
        //  1796: aload_0        
        //  1797: ldc             "highestProcessedServerOperationId"
        //  1799: lload           7
        //  1801: invokespecial   com/google/android/gm/provider/MailSync.q:(Ljava/lang/String;J)Z
        //  1804: pop            
        //  1805: aload_0        
        //  1806: ldc             "lowestBackwardConversationId"
        //  1808: lconst_1       
        //  1809: lload           5
        //  1811: ladd           
        //  1812: invokespecial   com/google/android/gm/provider/MailSync.q:(Ljava/lang/String;J)Z
        //  1815: pop            
        //  1816: aload_0        
        //  1817: ldc             "highestBackwardConversationId"
        //  1819: lload           5
        //  1821: invokespecial   com/google/android/gm/provider/MailSync.q:(Ljava/lang/String;J)Z
        //  1824: pop            
        //  1825: aload_0        
        //  1826: lload_3        
        //  1827: invokespecial   com/google/android/gm/provider/MailSync.aM:(J)V
        //  1830: aload_0        
        //  1831: invokevirtual   com/google/android/gm/provider/MailSync.HA:()V
        //  1834: aload_0        
        //  1835: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  1838: invokeinterface com/google/android/gm/provider/ba.commit:()V
        //  1843: return         
        //  1844: iconst_m1      
        //  1845: istore          57
        //  1847: goto            1156
        //  1850: astore          76
        //  1852: aconst_null    
        //  1853: astore          77
        //  1855: goto            701
        //  1858: iconst_m1      
        //  1859: istore          56
        //  1861: goto            1137
        //  1864: iinc            13, 1
        //  1867: goto            1368
        //  1870: iconst_m1      
        //  1871: istore          22
        //  1873: goto            1461
        //  1876: iinc            30, 1
        //  1879: goto            1634
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  29     93     1294   1308   Any
        //  93     150    1294   1308   Any
        //  150    206    1294   1308   Any
        //  206    271    1294   1308   Any
        //  276    316    1294   1308   Any
        //  316    352    1294   1308   Any
        //  357    397    1294   1308   Any
        //  397    551    1294   1308   Any
        //  551    606    1294   1308   Any
        //  606    673    1294   1308   Any
        //  673    690    1294   1308   Any
        //  690    697    1850   1858   Ljava/io/IOException;
        //  690    697    1294   1308   Any
        //  701    763    1294   1308   Any
        //  763    845    1294   1308   Any
        //  845    927    1294   1308   Any
        //  927    974    1294   1308   Any
        //  974    983    1294   1308   Any
        //  988    1025   1332   1353   Ljava/io/IOException;
        //  988    1025   1294   1308   Any
        //  1025   1059   1294   1308   Any
        //  1069   1137   1294   1308   Any
        //  1137   1156   1294   1308   Any
        //  1161   1180   1294   1308   Any
        //  1180   1264   1294   1308   Any
        //  1270   1291   1294   1308   Any
        //  1308   1329   1294   1308   Any
        //  1334   1350   1294   1308   Any
        //  1353   1365   1294   1308   Any
        //  1375   1405   1294   1308   Any
        //  1410   1461   1294   1308   Any
        //  1466   1485   1294   1308   Any
        //  1490   1528   1294   1308   Any
        //  1528   1559   1294   1308   Any
        //  1571   1577   1294   1308   Any
        //  1577   1621   1294   1308   Any
        //  1626   1631   1294   1308   Any
        //  1641   1667   1294   1308   Any
        //  1677   1689   1294   1308   Any
        //  1692   1706   1294   1308   Any
        //  1709   1720   1294   1308   Any
        //  1720   1805   1294   1308   Any
        //  1805   1825   1294   1308   Any
        //  1825   1834   1294   1308   Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0701:
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
    
    private void a(final Map<af, bd> map, final br br) {
        E.c(MailSync.TAG, "handleLabelsValues: receiving set of %d labels", map.size());
        final HashMap<Long, bd> aan = Maps.aan();
        final HashSet<String> set = new HashSet<String>();
        for (final Map.Entry<af, bd> entry : map.entrySet()) {
            final af af = entry.getKey();
            final bd bd = entry.getValue();
            aan.put(af.id, bd);
            set.add(bd.bhU);
        }
        this.blr.n(aan);
        this.a(null, null, set);
        this.HA();
        if (br != null) {
            br.GW();
        }
    }
    
    private void a(final Set<String> set, final Set<String> set2, Set<String> fe) {
        final Set<String> fe2 = this.fe("labelsIncluded");
        final Set<String> fe3 = this.fe("labelsPartial");
        boolean a = a((Set<Object>)fe2, (Set<Object>)set2);
        if (a((Set<Object>)fe3, (Set<Object>)set2)) {
            a = true;
        }
        if (b((Set<Object>)fe2, (Set<Object>)fe)) {
            a = true;
        }
        if (b((Set<Object>)fe3, (Set<Object>)fe)) {
            a = true;
        }
        if (fe == null) {
            if (this.bls.containsKey("labelsAll")) {
                fe = this.fe("labelsAll");
                if (set != null) {
                    a |= fe.addAll(set);
                }
                if (set2 != null) {
                    a |= fe.removeAll(set2);
                }
            }
        }
        else {
            a = true;
        }
        if (fe != null && fe.size() != 0) {
            final Iterator<String> iterator = Y.Fi().iterator();
            boolean b = a;
            while (iterator.hasNext()) {
                final String s = iterator.next();
                int n;
                if (fe.contains(s) || ae.eN(s)) {
                    n = 1;
                }
                else {
                    n = 0;
                }
                boolean b2;
                if (n != 0) {
                    b2 = (b | fe2.add(s) | fe3.remove(s));
                }
                else {
                    b2 = b;
                }
                b = b2;
            }
            for (final String s2 : Y.Fj()) {
                int n2;
                if (fe.contains(s2) || ae.eN(s2)) {
                    n2 = 1;
                }
                else {
                    n2 = 0;
                }
                if (n2 != 0 && !fe2.contains(s2)) {
                    b |= fe3.add(s2);
                }
            }
            if (b) {
                if (E.isLoggable(MailSync.TAG, 4)) {
                    E.d(MailSync.TAG, "checkLabelsSets changed the label sets to: included(%s), partial(%s), all(%s)", ad.l(fe2), ad.l(fe3), ad.l(fe));
                }
                this.a("labelsIncluded", fe2);
                this.a("labelsPartial", fe3);
                this.a("labelsAll", fe);
                this.blr.GA();
            }
        }
    }
    
    private boolean a(final String s, final Set<String> set) {
        final Object[] array = set.toArray();
        Arrays.sort(array);
        return this.aa(s, TextUtils.join((CharSequence)" ", array));
    }
    
    private static <E> boolean a(final Set<E> set, final Set<E> set2) {
        boolean b = false;
        if (set2 != null) {
            final Iterator<E> iterator = set.iterator();
            while (iterator.hasNext()) {
                if (set2.contains(iterator.next())) {
                    iterator.remove();
                    b = true;
                }
            }
        }
        return b;
    }
    
    private void aM(final long n) {
        E.b(MailSync.TAG, "Received handled client operation id from server", new Object[0]);
        this.blr.aI(n);
        this.p("unackedSentOperations", false);
        this.q("clientOpToAck", n);
    }
    
    private boolean aa(final String s, final String s2) {
        if (!this.bls.containsKey(s) || !this.bls.get(s).equals(s2)) {
            this.bls.put(s, s2);
            this.blt.put(s, s2);
            return true;
        }
        return false;
    }
    
    private int b(final HttpResponse p0, final br p1, final long p2, final aX p3) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: aload_1        
        //     2: invokespecial   com/google/android/gm/provider/MailSync.f:(Lorg/apache/http/HttpResponse;)Lcom/google/android/gm/provider/bl;
        //     5: astore          6
        //     7: aload           6
        //     9: invokevirtual   com/google/android/gm/provider/bl.HD:()I
        //    12: bipush          25
        //    14: if_icmpge       52
        //    17: new             Ljava/lang/IllegalArgumentException;
        //    20: dup            
        //    21: new             Ljava/lang/StringBuilder;
        //    24: dup            
        //    25: ldc_w           "Attempt to use protos for a version-"
        //    28: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    31: aload           6
        //    33: invokevirtual   com/google/android/gm/provider/bl.HD:()I
        //    36: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //    39: ldc_w           " response"
        //    42: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    45: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    48: invokespecial   java/lang/IllegalArgumentException.<init>:(Ljava/lang/String;)V
        //    51: athrow         
        //    52: aconst_null    
        //    53: astore          7
        //    55: iconst_0       
        //    56: istore          8
        //    58: aload_0        
        //    59: getfield        com/google/android/gm/provider/MailSync.bln:Z
        //    62: ifne            3041
        //    65: aload           6
        //    67: invokevirtual   com/google/android/gm/provider/bl.HE:()Lcom/google/common/a/a/a;
        //    70: astore          10
        //    72: aload           10
        //    74: ifnull          3041
        //    77: aload           10
        //    79: invokevirtual   com/google/common/a/a/a.getDataSize:()I
        //    82: istore          11
        //    84: iload           8
        //    86: iload           11
        //    88: iadd           
        //    89: istore          12
        //    91: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //    94: iconst_2       
        //    95: invokestatic    com/google/android/gm/provider/ad.isLoggable:(Ljava/lang/String;I)Z
        //    98: ifeq            147
        //   101: new             Ljava/lang/StringBuffer;
        //   104: dup            
        //   105: ldc_w           "HttpResponseChunk: "
        //   108: invokespecial   java/lang/StringBuffer.<init>:(Ljava/lang/String;)V
        //   111: astore          14
        //   113: aload           10
        //   115: iconst_2       
        //   116: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //   119: ifeq            451
        //   122: aload           14
        //   124: ldc_w           "ConfigInfo"
        //   127: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   130: pop            
        //   131: ldc_w           "Gmail"
        //   134: aload           14
        //   136: invokevirtual   java/lang/StringBuffer.toString:()Ljava/lang/String;
        //   139: iconst_0       
        //   140: anewarray       Ljava/lang/Object;
        //   143: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   146: pop            
        //   147: aload           10
        //   149: bipush          14
        //   151: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //   154: pop            
        //   155: aload           10
        //   157: iconst_2       
        //   158: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //   161: ifeq            776
        //   164: aload           10
        //   166: iconst_2       
        //   167: invokevirtual   com/google/common/a/a/a.fy:(I)Lcom/google/common/a/a/a;
        //   170: astore          109
        //   172: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //   175: iconst_2       
        //   176: invokestatic    com/google/android/gm/provider/ad.isLoggable:(Ljava/lang/String;I)Z
        //   179: istore          110
        //   181: iload           110
        //   183: ifeq            331
        //   186: iconst_1       
        //   187: anewarray       Ljava/lang/Object;
        //   190: astore          135
        //   192: aload           135
        //   194: iconst_0       
        //   195: new             Ljava/lang/String;
        //   198: dup            
        //   199: aload           109
        //   201: invokevirtual   com/google/common/a/a/a.toByteArray:()[B
        //   204: iconst_2       
        //   205: invokestatic    android/util/Base64.encode:([BI)[B
        //   208: invokespecial   java/lang/String.<init>:([B)V
        //   211: aastore        
        //   212: ldc_w           "Gmail"
        //   215: ldc_w           "ConfigInfoProto: %s"
        //   218: aload           135
        //   220: invokestatic    com/google/android/gm/provider/ad.d:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   223: pop            
        //   224: aload           109
        //   226: iconst_1       
        //   227: invokevirtual   com/google/common/a/a/a.getLong:(I)J
        //   230: lstore          127
        //   232: iconst_1       
        //   233: anewarray       Ljava/lang/Object;
        //   236: astore          129
        //   238: aload           129
        //   240: iconst_0       
        //   241: lload           127
        //   243: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   246: aastore        
        //   247: ldc_w           "Gmail"
        //   250: ldc_w           "ConfigInfoProto: Conversation Age Days: %d"
        //   253: aload           129
        //   255: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   258: pop            
        //   259: new             Ljava/util/HashSet;
        //   262: dup            
        //   263: invokespecial   java/util/HashSet.<init>:()V
        //   266: astore          131
        //   268: new             Ljava/util/HashSet;
        //   271: dup            
        //   272: invokespecial   java/util/HashSet.<init>:()V
        //   275: astore          132
        //   277: aload           109
        //   279: iconst_2       
        //   280: aload           131
        //   282: invokestatic    com/google/android/gm/provider/bv.c:(Lcom/google/common/a/a/a;ILjava/util/Collection;)V
        //   285: ldc_w           "Gmail"
        //   288: ldc_w           "ConfigInfoProto: Included Canonical Label Name: %s"
        //   291: iconst_1       
        //   292: anewarray       Ljava/lang/Object;
        //   295: dup            
        //   296: iconst_0       
        //   297: aload           131
        //   299: aastore        
        //   300: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   303: pop            
        //   304: aload           109
        //   306: iconst_3       
        //   307: aload           132
        //   309: invokestatic    com/google/android/gm/provider/bv.c:(Lcom/google/common/a/a/a;ILjava/util/Collection;)V
        //   312: ldc_w           "Gmail"
        //   315: ldc_w           "ConfigInfoProto: Duration Canonical Label Name: %s"
        //   318: iconst_1       
        //   319: anewarray       Ljava/lang/Object;
        //   322: dup            
        //   323: iconst_0       
        //   324: aload           132
        //   326: aastore        
        //   327: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   330: pop            
        //   331: aload           109
        //   333: iconst_1       
        //   334: invokevirtual   com/google/common/a/a/a.getLong:(I)J
        //   337: lstore          111
        //   339: new             Ljava/util/HashSet;
        //   342: dup            
        //   343: invokespecial   java/util/HashSet.<init>:()V
        //   346: astore          113
        //   348: new             Ljava/util/HashSet;
        //   351: dup            
        //   352: invokespecial   java/util/HashSet.<init>:()V
        //   355: astore          114
        //   357: aload           109
        //   359: iconst_2       
        //   360: aload           113
        //   362: invokestatic    com/google/android/gm/provider/bv.c:(Lcom/google/common/a/a/a;ILjava/util/Collection;)V
        //   365: aload           109
        //   367: iconst_3       
        //   368: aload           114
        //   370: invokestatic    com/google/android/gm/provider/bv.c:(Lcom/google/common/a/a/a;ILjava/util/Collection;)V
        //   373: aload_0        
        //   374: invokespecial   com/google/android/gm/provider/MailSync.Hz:()I
        //   377: istore          115
        //   379: aload_0        
        //   380: ldc             "serverVersion"
        //   382: invokespecial   com/google/android/gm/provider/MailSync.fb:(Ljava/lang/String;)J
        //   385: lstore          116
        //   387: iload           115
        //   389: i2l            
        //   390: lload           116
        //   392: lcmp           
        //   393: ifle            725
        //   396: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //   399: astore          118
        //   401: iconst_2       
        //   402: anewarray       Ljava/lang/Object;
        //   405: astore          119
        //   407: aload           119
        //   409: iconst_0       
        //   410: lload           116
        //   412: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   415: aastore        
        //   416: aload           119
        //   418: iconst_1       
        //   419: iload           115
        //   421: invokestatic    java/lang/Integer.valueOf:(I)Ljava/lang/Integer;
        //   424: aastore        
        //   425: aload           118
        //   427: ldc_w           "Ignoring config info from server because server version is %d but gservices says that the min server version is %d"
        //   430: aload           119
        //   432: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   435: pop            
        //   436: aload_0        
        //   437: ldc             "needConfigSuggestion"
        //   439: iconst_0       
        //   440: invokevirtual   com/google/android/gm/provider/MailSync.p:(Ljava/lang/String;Z)Z
        //   443: pop            
        //   444: iload           12
        //   446: istore          8
        //   448: goto            58
        //   451: aload           10
        //   453: iconst_3       
        //   454: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //   457: ifeq            486
        //   460: aload           14
        //   462: ldc_w           "ConfigAccepted"
        //   465: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   468: pop            
        //   469: goto            131
        //   472: astore          13
        //   474: iload           12
        //   476: istore          8
        //   478: aload           6
        //   480: invokevirtual   com/google/android/gm/provider/bl.close:()V
        //   483: iload           8
        //   485: ireturn        
        //   486: aload           10
        //   488: iconst_4       
        //   489: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //   492: ifeq            507
        //   495: aload           14
        //   497: ldc_w           "StartSync"
        //   500: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   503: pop            
        //   504: goto            131
        //   507: aload           10
        //   509: iconst_5       
        //   510: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //   513: ifeq            528
        //   516: aload           14
        //   518: ldc_w           "UphillSync"
        //   521: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   524: pop            
        //   525: goto            131
        //   528: aload           10
        //   530: bipush          7
        //   532: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //   535: ifeq            550
        //   538: aload           14
        //   540: ldc_w           "ForwardSync"
        //   543: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   546: pop            
        //   547: goto            131
        //   550: aload           10
        //   552: bipush          8
        //   554: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //   557: ifeq            572
        //   560: aload           14
        //   562: ldc_w           "CheckConversation"
        //   565: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   568: pop            
        //   569: goto            131
        //   572: aload           10
        //   574: bipush          9
        //   576: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //   579: ifeq            594
        //   582: aload           14
        //   584: ldc_w           "BeginConversation"
        //   587: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   590: pop            
        //   591: goto            131
        //   594: aload           10
        //   596: bipush          10
        //   598: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //   601: ifeq            616
        //   604: aload           14
        //   606: ldc_w           "BeginMessage"
        //   609: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   612: pop            
        //   613: goto            131
        //   616: aload           10
        //   618: bipush          16
        //   620: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //   623: ifeq            638
        //   626: aload           14
        //   628: ldc_w           "NoConversation"
        //   631: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   634: pop            
        //   635: goto            131
        //   638: aload           10
        //   640: bipush          17
        //   642: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //   645: ifeq            660
        //   648: aload           14
        //   650: ldc_w           "NoMessage"
        //   653: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   656: pop            
        //   657: goto            131
        //   660: aload           10
        //   662: bipush          14
        //   664: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //   667: ifeq            682
        //   670: aload           14
        //   672: ldc_w           "SyncPostamble"
        //   675: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   678: pop            
        //   679: goto            131
        //   682: aload           10
        //   684: bipush          19
        //   686: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //   689: ifeq            131
        //   692: aload           14
        //   694: ldc_w           "Ads"
        //   697: invokevirtual   java/lang/StringBuffer.append:(Ljava/lang/String;)Ljava/lang/StringBuffer;
        //   700: pop            
        //   701: goto            131
        //   704: astore          125
        //   706: ldc_w           "Gmail"
        //   709: aload           125
        //   711: ldc_w           "Error reading proto"
        //   714: iconst_0       
        //   715: anewarray       Ljava/lang/Object;
        //   718: invokestatic    com/google/android/gm/provider/ad.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   721: pop            
        //   722: goto            224
        //   725: aload_0        
        //   726: ldc             " "
        //   728: aload           113
        //   730: invokestatic    android/text/TextUtils.join:(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
        //   733: ldc             " "
        //   735: aload           114
        //   737: invokestatic    android/text/TextUtils.join:(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
        //   740: lload           111
        //   742: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   745: lconst_0       
        //   746: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   749: invokevirtual   com/google/android/gm/provider/MailSync.a:(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)Z
        //   752: pop            
        //   753: aload_0        
        //   754: ldc             "needConfigSuggestion"
        //   756: iconst_0       
        //   757: invokevirtual   com/google/android/gm/provider/MailSync.p:(Ljava/lang/String;Z)Z
        //   760: pop            
        //   761: aload_0        
        //   762: ldc             "configDirty"
        //   764: iconst_1       
        //   765: invokevirtual   com/google/android/gm/provider/MailSync.p:(Ljava/lang/String;Z)Z
        //   768: pop            
        //   769: iload           12
        //   771: istore          8
        //   773: goto            58
        //   776: aload           10
        //   778: iconst_3       
        //   779: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //   782: ifeq            938
        //   785: aload           10
        //   787: iconst_3       
        //   788: invokevirtual   com/google/common/a/a/a.fy:(I)Lcom/google/common/a/a/a;
        //   791: astore          96
        //   793: aload           96
        //   795: iconst_1       
        //   796: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //   799: ifne            813
        //   802: new             Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //   805: dup            
        //   806: ldc_w           "ConfigAccepted Proto is missing a client_id value"
        //   809: invokespecial   com/google/android/gm/provider/MailSync$ResponseParseException.<init>:(Ljava/lang/String;)V
        //   812: athrow         
        //   813: aload           96
        //   815: iconst_1       
        //   816: invokevirtual   com/google/common/a/a/a.getLong:(I)J
        //   819: lstore          97
        //   821: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //   824: astore          99
        //   826: iconst_1       
        //   827: anewarray       Ljava/lang/Object;
        //   830: astore          100
        //   832: aload           100
        //   834: iconst_0       
        //   835: lload           97
        //   837: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //   840: aastore        
        //   841: aload           99
        //   843: ldc_w           "handleConfigAcceptedValues: %d"
        //   846: aload           100
        //   848: invokestatic    com/google/android/gm/provider/ad.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   851: pop            
        //   852: aload_0        
        //   853: ldc             "clientId"
        //   855: invokespecial   com/google/android/gm/provider/MailSync.fb:(Ljava/lang/String;)J
        //   858: lstore          102
        //   860: lload           102
        //   862: lconst_0       
        //   863: lcmp           
        //   864: ifeq            886
        //   867: lload           97
        //   869: lload           102
        //   871: lcmp           
        //   872: ifeq            886
        //   875: new             Ljava/lang/IllegalStateException;
        //   878: dup            
        //   879: ldc_w           "Client id is already set but response has different id"
        //   882: invokespecial   java/lang/IllegalStateException.<init>:(Ljava/lang/String;)V
        //   885: athrow         
        //   886: aload_0        
        //   887: ldc             "clientId"
        //   889: lload           97
        //   891: invokespecial   com/google/android/gm/provider/MailSync.q:(Ljava/lang/String;J)Z
        //   894: pop            
        //   895: aload_0        
        //   896: ldc             "configDirty"
        //   898: iconst_0       
        //   899: invokevirtual   com/google/android/gm/provider/MailSync.p:(Ljava/lang/String;Z)Z
        //   902: pop            
        //   903: aload_0        
        //   904: ldc             "startSyncNeeded"
        //   906: iconst_1       
        //   907: invokevirtual   com/google/android/gm/provider/MailSync.p:(Ljava/lang/String;Z)Z
        //   910: pop            
        //   911: aload_0        
        //   912: ldc             "highestBackwardConversationId"
        //   914: lconst_0       
        //   915: invokespecial   com/google/android/gm/provider/MailSync.q:(Ljava/lang/String;J)Z
        //   918: pop            
        //   919: aload_0        
        //   920: ldc             "lowestBackwardConversationId"
        //   922: lconst_0       
        //   923: invokespecial   com/google/android/gm/provider/MailSync.q:(Ljava/lang/String;J)Z
        //   926: pop            
        //   927: aload_0        
        //   928: invokevirtual   com/google/android/gm/provider/MailSync.HA:()V
        //   931: iload           12
        //   933: istore          8
        //   935: goto            58
        //   938: aload           10
        //   940: iconst_4       
        //   941: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //   944: ifeq            971
        //   947: aload_0        
        //   948: aload           10
        //   950: iconst_4       
        //   951: invokevirtual   com/google/common/a/a/a.fy:(I)Lcom/google/common/a/a/a;
        //   954: aload_2        
        //   955: invokespecial   com/google/android/gm/provider/MailSync.a:(Lcom/google/common/a/a/a;Lcom/google/android/gm/provider/br;)V
        //   958: aload           5
        //   960: iconst_1       
        //   961: putfield        com/google/android/gm/provider/aX.bkJ:Z
        //   964: iload           12
        //   966: istore          8
        //   968: goto            58
        //   971: aload           10
        //   973: iconst_5       
        //   974: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //   977: ifeq            999
        //   980: aload_0        
        //   981: aload           10
        //   983: iconst_5       
        //   984: invokevirtual   com/google/common/a/a/a.fy:(I)Lcom/google/common/a/a/a;
        //   987: aload           5
        //   989: invokespecial   com/google/android/gm/provider/MailSync.a:(Lcom/google/common/a/a/a;Lcom/google/android/gm/provider/aX;)V
        //   992: iload           12
        //   994: istore          8
        //   996: goto            58
        //   999: aload           10
        //  1001: bipush          7
        //  1003: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //  1006: ifeq            2642
        //  1009: aload           10
        //  1011: bipush          7
        //  1013: invokevirtual   com/google/common/a/a/a.fy:(I)Lcom/google/common/a/a/a;
        //  1016: astore          33
        //  1018: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //  1021: iconst_2       
        //  1022: invokestatic    com/google/android/gm/provider/ad.isLoggable:(Ljava/lang/String;I)Z
        //  1025: ifeq            1033
        //  1028: aload           33
        //  1030: invokestatic    com/google/android/gm/provider/bv.g:(Lcom/google/common/a/a/a;)V
        //  1033: aload           33
        //  1035: iconst_1       
        //  1036: invokevirtual   com/google/common/a/a/a.getLong:(I)J
        //  1039: lstore          34
        //  1041: aload_0        
        //  1042: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  1045: invokeinterface com/google/android/gm/provider/ba.prepare:()V
        //  1050: iconst_0       
        //  1051: istore          36
        //  1053: aload           33
        //  1055: iconst_2       
        //  1056: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //  1059: ifeq            1368
        //  1062: aload           33
        //  1064: iconst_2       
        //  1065: invokevirtual   com/google/common/a/a/a.fy:(I)Lcom/google/common/a/a/a;
        //  1068: astore          84
        //  1070: aload           84
        //  1072: iconst_2       
        //  1073: invokevirtual   com/google/common/a/a/a.getLong:(I)J
        //  1076: lstore          85
        //  1078: aload           84
        //  1080: iconst_1       
        //  1081: invokevirtual   com/google/common/a/a/a.getInt:(I)I
        //  1084: istore          87
        //  1086: iload           87
        //  1088: ifne            1152
        //  1091: iconst_1       
        //  1092: istore          88
        //  1094: goto            3080
        //  1097: iload           88
        //  1099: ifne            1170
        //  1102: iload           89
        //  1104: ifne            1170
        //  1107: iload           90
        //  1109: ifne            1170
        //  1112: new             Ljava/lang/IllegalArgumentException;
        //  1115: dup            
        //  1116: new             Ljava/lang/StringBuilder;
        //  1119: dup            
        //  1120: ldc_w           "unknown change code: "
        //  1123: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //  1126: iload           87
        //  1128: invokevirtual   java/lang/StringBuilder.append:(I)Ljava/lang/StringBuilder;
        //  1131: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //  1134: invokespecial   java/lang/IllegalArgumentException.<init>:(Ljava/lang/String;)V
        //  1137: athrow         
        //  1138: astore          37
        //  1140: aload_0        
        //  1141: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  1144: invokeinterface com/google/android/gm/provider/ba.commit:()V
        //  1149: aload           37
        //  1151: athrow         
        //  1152: iconst_0       
        //  1153: istore          88
        //  1155: goto            3080
        //  1158: iconst_0       
        //  1159: istore          89
        //  1161: goto            3089
        //  1164: iconst_0       
        //  1165: istore          90
        //  1167: goto            1097
        //  1170: iload           88
        //  1172: ifne            1183
        //  1175: aconst_null    
        //  1176: astore          91
        //  1178: iload           89
        //  1180: ifeq            1204
        //  1183: aload           84
        //  1185: iconst_3       
        //  1186: invokevirtual   com/google/common/a/a/a.getLong:(I)J
        //  1189: lstore          94
        //  1191: aload_0        
        //  1192: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  1195: lload           94
        //  1197: invokeinterface com/google/android/gm/provider/ba.ar:(J)Lcom/google/android/gm/provider/af;
        //  1202: astore          91
        //  1204: aload           84
        //  1206: iconst_4       
        //  1207: invokevirtual   com/google/common/a/a/a.getInt:(I)I
        //  1210: invokestatic    com/google/android/gm/provider/MailSync.dU:(I)Lcom/google/android/gm/provider/MailSync$SyncRationale;
        //  1213: astore          92
        //  1215: new             Ljava/util/ArrayList;
        //  1218: dup            
        //  1219: invokespecial   java/util/ArrayList.<init>:()V
        //  1222: astore          93
        //  1224: aload           84
        //  1226: iconst_5       
        //  1227: aload           93
        //  1229: invokestatic    com/google/android/gm/provider/bv.a:(Lcom/google/common/a/a/a;ILjava/util/Collection;)V
        //  1232: iload           88
        //  1234: ifne            1242
        //  1237: iload           89
        //  1239: ifeq            1331
        //  1242: aload           91
        //  1244: ifnull          1266
        //  1247: aload_0        
        //  1248: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  1251: lload           85
        //  1253: aload           93
        //  1255: aload           91
        //  1257: iload           88
        //  1259: aload           92
        //  1261: invokeinterface com/google/android/gm/provider/ba.a:(JLjava/util/List;Lcom/google/android/gm/provider/af;ZLcom/google/android/gm/provider/MailSync$SyncRationale;)V
        //  1266: aload_0        
        //  1267: iconst_1       
        //  1268: invokespecial   com/google/android/gm/provider/MailSync.dT:(I)V
        //  1271: aload_0        
        //  1272: ldc             "highestProcessedServerOperationId"
        //  1274: lload           34
        //  1276: invokespecial   com/google/android/gm/provider/MailSync.q:(Ljava/lang/String;J)Z
        //  1279: pop            
        //  1280: aload_0        
        //  1281: invokevirtual   com/google/android/gm/provider/MailSync.HA:()V
        //  1284: aload_2        
        //  1285: ifnull          1294
        //  1288: aload_2        
        //  1289: invokeinterface com/google/android/gm/provider/br.GW:()V
        //  1294: aload_0        
        //  1295: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  1298: invokeinterface com/google/android/gm/provider/ba.commit:()V
        //  1303: iload           36
        //  1305: ifeq            1324
        //  1308: aload_0        
        //  1309: getfield        com/google/android/gm/provider/MailSync.mContext:Landroid/content/Context;
        //  1312: aload_0        
        //  1313: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  1316: invokeinterface com/google/android/gm/provider/ba.Dc:()Ljava/lang/String;
        //  1321: invokestatic    com/google/android/gm/provider/GmailProvider.R:(Landroid/content/Context;Ljava/lang/String;)V
        //  1324: iload           12
        //  1326: istore          8
        //  1328: goto            58
        //  1331: iload           90
        //  1333: ifeq            1354
        //  1336: aload_0        
        //  1337: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  1340: lload           85
        //  1342: aload           93
        //  1344: aload           92
        //  1346: invokeinterface com/google/android/gm/provider/ba.a:(JLjava/util/List;Lcom/google/android/gm/provider/MailSync$SyncRationale;)V
        //  1351: goto            1266
        //  1354: getstatic       com/google/android/gm/provider/MailSync.vb:Z
        //  1357: ifne            1266
        //  1360: new             Ljava/lang/AssertionError;
        //  1363: dup            
        //  1364: invokespecial   java/lang/AssertionError.<init>:()V
        //  1367: athrow         
        //  1368: aload           33
        //  1370: iconst_3       
        //  1371: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //  1374: ifeq            1486
        //  1377: aload           33
        //  1379: iconst_3       
        //  1380: invokevirtual   com/google/common/a/a/a.fy:(I)Lcom/google/common/a/a/a;
        //  1383: astore          77
        //  1385: aload           77
        //  1387: iconst_1       
        //  1388: invokevirtual   com/google/common/a/a/a.getLong:(I)J
        //  1391: lstore          78
        //  1393: aload_0        
        //  1394: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  1397: lload           78
        //  1399: invokeinterface com/google/android/gm/provider/ba.ar:(J)Lcom/google/android/gm/provider/af;
        //  1404: astore          80
        //  1406: aload           77
        //  1408: iconst_2       
        //  1409: invokevirtual   com/google/common/a/a/a.getString:(I)Ljava/lang/String;
        //  1412: astore          81
        //  1414: aload           77
        //  1416: iconst_3       
        //  1417: invokevirtual   com/google/common/a/a/a.getString:(I)Ljava/lang/String;
        //  1420: astore          82
        //  1422: aload           80
        //  1424: ifnull          1475
        //  1427: aload_0        
        //  1428: ldc             "startSyncNeeded"
        //  1430: iconst_1       
        //  1431: invokevirtual   com/google/android/gm/provider/MailSync.p:(Ljava/lang/String;Z)Z
        //  1434: pop            
        //  1435: aload_0        
        //  1436: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  1439: aload           80
        //  1441: aload           81
        //  1443: aload           82
        //  1445: ldc_w           "SHOW"
        //  1448: invokeinterface com/google/android/gm/provider/ba.a:(Lcom/google/android/gm/provider/af;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
        //  1453: aload_0        
        //  1454: iconst_1       
        //  1455: anewarray       Ljava/lang/String;
        //  1458: dup            
        //  1459: iconst_0       
        //  1460: aload           81
        //  1462: aastore        
        //  1463: invokestatic    com/google/common/collect/Sets.p:([Ljava/lang/Object;)Ljava/util/HashSet;
        //  1466: aconst_null    
        //  1467: aconst_null    
        //  1468: invokespecial   com/google/android/gm/provider/MailSync.a:(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
        //  1471: aload_0        
        //  1472: invokevirtual   com/google/android/gm/provider/MailSync.HA:()V
        //  1475: aload_0        
        //  1476: iconst_1       
        //  1477: invokespecial   com/google/android/gm/provider/MailSync.dT:(I)V
        //  1480: iconst_0       
        //  1481: istore          36
        //  1483: goto            1271
        //  1486: aload           33
        //  1488: iconst_4       
        //  1489: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //  1492: ifeq            1544
        //  1495: aload           33
        //  1497: iconst_4       
        //  1498: invokevirtual   com/google/common/a/a/a.fy:(I)Lcom/google/common/a/a/a;
        //  1501: astore          74
        //  1503: aload           74
        //  1505: iconst_1       
        //  1506: invokevirtual   com/google/common/a/a/a.getLong:(I)J
        //  1509: lstore          75
        //  1511: aload_0        
        //  1512: aload_0        
        //  1513: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  1516: lload           75
        //  1518: invokeinterface com/google/android/gm/provider/ba.ar:(J)Lcom/google/android/gm/provider/af;
        //  1523: aload           74
        //  1525: iconst_2       
        //  1526: invokevirtual   com/google/common/a/a/a.getString:(I)Ljava/lang/String;
        //  1529: aload           74
        //  1531: iconst_3       
        //  1532: invokevirtual   com/google/common/a/a/a.getString:(I)Ljava/lang/String;
        //  1535: invokespecial   com/google/android/gm/provider/MailSync.a:(Lcom/google/android/gm/provider/af;Ljava/lang/String;Ljava/lang/String;)V
        //  1538: iconst_0       
        //  1539: istore          36
        //  1541: goto            1271
        //  1544: aload           33
        //  1546: iconst_5       
        //  1547: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //  1550: ifeq            1645
        //  1553: aload           33
        //  1555: iconst_5       
        //  1556: invokevirtual   com/google/common/a/a/a.fy:(I)Lcom/google/common/a/a/a;
        //  1559: iconst_1       
        //  1560: invokevirtual   com/google/common/a/a/a.getLong:(I)J
        //  1563: lstore          70
        //  1565: aload_0        
        //  1566: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  1569: lload           70
        //  1571: invokeinterface com/google/android/gm/provider/ba.aq:(J)Lcom/google/android/gm/provider/af;
        //  1576: astore          72
        //  1578: aload           72
        //  1580: ifnull          1634
        //  1583: aload_0        
        //  1584: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  1587: aload           72
        //  1589: invokeinterface com/google/android/gm/provider/ba.b:(Lcom/google/android/gm/provider/af;)Ljava/lang/String;
        //  1594: astore          73
        //  1596: aload_0        
        //  1597: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  1600: aload           72
        //  1602: invokeinterface com/google/android/gm/provider/ba.c:(Lcom/google/android/gm/provider/af;)V
        //  1607: aload           73
        //  1609: ifnull          1630
        //  1612: aload_0        
        //  1613: aconst_null    
        //  1614: iconst_1       
        //  1615: anewarray       Ljava/lang/String;
        //  1618: dup            
        //  1619: iconst_0       
        //  1620: aload           73
        //  1622: aastore        
        //  1623: invokestatic    com/google/common/collect/Sets.p:([Ljava/lang/Object;)Ljava/util/HashSet;
        //  1626: aconst_null    
        //  1627: invokespecial   com/google/android/gm/provider/MailSync.a:(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
        //  1630: aload_0        
        //  1631: invokevirtual   com/google/android/gm/provider/MailSync.HA:()V
        //  1634: aload_0        
        //  1635: iconst_1       
        //  1636: invokespecial   com/google/android/gm/provider/MailSync.dT:(I)V
        //  1639: iconst_0       
        //  1640: istore          36
        //  1642: goto            1271
        //  1645: aload           33
        //  1647: bipush          8
        //  1649: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //  1652: ifeq            1672
        //  1655: aload_0        
        //  1656: aload           33
        //  1658: bipush          8
        //  1660: invokevirtual   com/google/common/a/a/a.fy:(I)Lcom/google/common/a/a/a;
        //  1663: invokespecial   com/google/android/gm/provider/MailSync.d:(Lcom/google/common/a/a/a;)V
        //  1666: iconst_0       
        //  1667: istore          36
        //  1669: goto            1271
        //  1672: aload           33
        //  1674: bipush          9
        //  1676: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //  1679: ifeq            2617
        //  1682: aload           33
        //  1684: bipush          9
        //  1686: invokevirtual   com/google/common/a/a/a.fy:(I)Lcom/google/common/a/a/a;
        //  1689: astore          40
        //  1691: aload           40
        //  1693: iconst_1       
        //  1694: invokevirtual   com/google/common/a/a/a.getString:(I)Ljava/lang/String;
        //  1697: astore          41
        //  1699: aload           40
        //  1701: iconst_3       
        //  1702: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //  1705: ifeq            3074
        //  1708: aload           40
        //  1710: iconst_3       
        //  1711: invokevirtual   com/google/common/a/a/a.fx:(I)Z
        //  1714: istore          42
        //  1716: ldc             ""
        //  1718: astore          43
        //  1720: iload           42
        //  1722: ifne            1733
        //  1725: aload           40
        //  1727: iconst_2       
        //  1728: invokevirtual   com/google/common/a/a/a.getString:(I)Ljava/lang/String;
        //  1731: astore          43
        //  1733: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //  1736: ldc_w           "MainSync: Custom preference name: %s"
        //  1739: iconst_1       
        //  1740: anewarray       Ljava/lang/Object;
        //  1743: dup            
        //  1744: iconst_0       
        //  1745: aload           41
        //  1747: aastore        
        //  1748: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1751: pop            
        //  1752: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //  1755: ldc_w           "MainSync: Custom preference value: %s"
        //  1758: iconst_1       
        //  1759: anewarray       Ljava/lang/Object;
        //  1762: dup            
        //  1763: iconst_0       
        //  1764: aload           43
        //  1766: aastore        
        //  1767: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1770: pop            
        //  1771: aload           41
        //  1773: ldc_w           "sx_clcp"
        //  1776: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //  1779: ifeq            1836
        //  1782: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //  1785: ldc_w           "MainSync: Custom Color: %s"
        //  1788: iconst_1       
        //  1789: anewarray       Ljava/lang/Object;
        //  1792: dup            
        //  1793: iconst_0       
        //  1794: aload           43
        //  1796: aastore        
        //  1797: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1800: pop            
        //  1801: aload           43
        //  1803: invokevirtual   java/lang/String.isEmpty:()Z
        //  1806: istore          69
        //  1808: iconst_0       
        //  1809: istore          36
        //  1811: iload           69
        //  1813: ifne            1271
        //  1816: aload_0        
        //  1817: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  1820: aload           43
        //  1822: invokestatic    com/google/android/gm/provider/MailSync.fa:(Ljava/lang/String;)Ljava/util/Map;
        //  1825: invokeinterface com/google/android/gm/provider/ba.o:(Ljava/util/Map;)V
        //  1830: iconst_0       
        //  1831: istore          36
        //  1833: goto            1271
        //  1836: aload           41
        //  1838: ldc_w           "bx_rf"
        //  1841: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //  1844: ifeq            1892
        //  1847: aload           43
        //  1849: invokevirtual   java/lang/String.isEmpty:()Z
        //  1852: istore          66
        //  1854: iconst_0       
        //  1855: istore          36
        //  1857: iload           66
        //  1859: ifne            1271
        //  1862: ldc_w           "bx_rf"
        //  1865: aload           43
        //  1867: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //  1870: invokestatic    com/google/common/collect/ImmutableMap.r:(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;
        //  1873: astore          67
        //  1875: aload_0        
        //  1876: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  1879: aload           67
        //  1881: invokeinterface com/google/android/gm/provider/ba.k:(Ljava/util/Map;)V
        //  1886: iconst_0       
        //  1887: istore          36
        //  1889: goto            1271
        //  1892: aload           41
        //  1894: ldc_w           "/customfrom/"
        //  1897: invokevirtual   java/lang/String.startsWith:(Ljava/lang/String;)Z
        //  1900: ifeq            1966
        //  1903: iload           42
        //  1905: ifne            1930
        //  1908: aload_0        
        //  1909: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  1912: aload           43
        //  1914: iconst_1       
        //  1915: invokestatic    com/google/android/gm/provider/MailSync.o:(Ljava/lang/String;Z)Ljava/util/Map;
        //  1918: iconst_0       
        //  1919: invokeinterface com/google/android/gm/provider/ba.c:(Ljava/util/Map;Z)V
        //  1924: iconst_0       
        //  1925: istore          36
        //  1927: goto            1271
        //  1930: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //  1933: ldc_w           "Deleting preference %s"
        //  1936: iconst_1       
        //  1937: anewarray       Ljava/lang/Object;
        //  1940: dup            
        //  1941: iconst_0       
        //  1942: aload           41
        //  1944: aastore        
        //  1945: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  1948: pop            
        //  1949: aload_0        
        //  1950: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  1953: aload           41
        //  1955: invokeinterface com/google/android/gm/provider/ba.eX:(Ljava/lang/String;)V
        //  1960: iconst_0       
        //  1961: istore          36
        //  1963: goto            1271
        //  1966: aload           41
        //  1968: ldc_w           "sx_rt"
        //  1971: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //  1974: ifeq            2030
        //  1977: aload           43
        //  1979: ifnull          3101
        //  1982: aload           43
        //  1984: invokevirtual   java/lang/String.isEmpty:()Z
        //  1987: ifeq            2020
        //  1990: goto            3101
        //  1993: ldc_w           "sx_rt"
        //  1996: aload           47
        //  1998: invokestatic    com/google/common/collect/ImmutableMap.r:(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;
        //  2001: astore          48
        //  2003: aload_0        
        //  2004: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  2007: aload           48
        //  2009: invokeinterface com/google/android/gm/provider/ba.k:(Ljava/util/Map;)V
        //  2014: iconst_0       
        //  2015: istore          36
        //  2017: goto            1271
        //  2020: aload           43
        //  2022: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //  2025: astore          47
        //  2027: goto            1993
        //  2030: aload           41
        //  2032: ldc_w           "sx_dn"
        //  2035: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //  2038: ifeq            2094
        //  2041: aload           43
        //  2043: ifnull          3108
        //  2046: aload           43
        //  2048: invokevirtual   java/lang/String.isEmpty:()Z
        //  2051: ifeq            2084
        //  2054: goto            3108
        //  2057: ldc_w           "sx_dn"
        //  2060: aload           49
        //  2062: invokestatic    com/google/common/collect/ImmutableMap.r:(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;
        //  2065: astore          50
        //  2067: aload_0        
        //  2068: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  2071: aload           50
        //  2073: invokeinterface com/google/android/gm/provider/ba.k:(Ljava/util/Map;)V
        //  2078: iconst_0       
        //  2079: istore          36
        //  2081: goto            1271
        //  2084: aload           43
        //  2086: invokestatic    java/lang/String.valueOf:(Ljava/lang/Object;)Ljava/lang/String;
        //  2089: astore          49
        //  2091: goto            2057
        //  2094: aload           41
        //  2096: ldc_w           "sx_ioe"
        //  2099: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //  2102: ifeq            2159
        //  2105: iconst_0       
        //  2106: istore          36
        //  2108: aload           43
        //  2110: ifnull          1271
        //  2113: iconst_0       
        //  2114: istore          36
        //  2116: iload           42
        //  2118: ifne            1271
        //  2121: ldc_w           "sx_ioe"
        //  2124: aload           43
        //  2126: invokevirtual   java/lang/String.toString:()Ljava/lang/String;
        //  2129: invokestatic    com/google/common/collect/ImmutableMap.r:(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;
        //  2132: astore          51
        //  2134: aload_0        
        //  2135: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  2138: aload           51
        //  2140: invokeinterface com/google/android/gm/provider/ba.k:(Ljava/util/Map;)V
        //  2145: aload_0        
        //  2146: ldc             "startSyncNeeded"
        //  2148: iconst_1       
        //  2149: invokevirtual   com/google/android/gm/provider/MailSync.p:(Ljava/lang/String;Z)Z
        //  2152: pop            
        //  2153: iconst_0       
        //  2154: istore          36
        //  2156: goto            1271
        //  2159: aload           41
        //  2161: ldc_w           "sx_iosc"
        //  2164: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //  2167: ifeq            2216
        //  2170: iconst_0       
        //  2171: istore          36
        //  2173: aload           43
        //  2175: ifnull          1271
        //  2178: iconst_0       
        //  2179: istore          36
        //  2181: iload           42
        //  2183: ifne            1271
        //  2186: ldc_w           "sx_iosc"
        //  2189: aload           43
        //  2191: invokevirtual   java/lang/String.toString:()Ljava/lang/String;
        //  2194: invokestatic    com/google/common/collect/ImmutableMap.r:(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;
        //  2197: astore          53
        //  2199: aload_0        
        //  2200: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  2203: aload           53
        //  2205: invokeinterface com/google/android/gm/provider/ba.k:(Ljava/util/Map;)V
        //  2210: iconst_0       
        //  2211: istore          36
        //  2213: goto            1271
        //  2216: aload           41
        //  2218: ldc_w           "bx_ioao"
        //  2221: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //  2224: ifeq            2273
        //  2227: iconst_0       
        //  2228: istore          36
        //  2230: aload           43
        //  2232: ifnull          1271
        //  2235: iconst_0       
        //  2236: istore          36
        //  2238: iload           42
        //  2240: ifne            1271
        //  2243: ldc_w           "bx_ioao"
        //  2246: aload           43
        //  2248: invokevirtual   java/lang/String.toString:()Ljava/lang/String;
        //  2251: invokestatic    com/google/common/collect/ImmutableMap.r:(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;
        //  2254: astore          54
        //  2256: aload_0        
        //  2257: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  2260: aload           54
        //  2262: invokeinterface com/google/android/gm/provider/ba.k:(Ljava/util/Map;)V
        //  2267: iconst_0       
        //  2268: istore          36
        //  2270: goto            1271
        //  2273: aload           41
        //  2275: ldc_w           "bx_pie"
        //  2278: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //  2281: ifeq            2359
        //  2284: iconst_0       
        //  2285: istore          36
        //  2287: aload           43
        //  2289: ifnull          1271
        //  2292: iconst_0       
        //  2293: istore          36
        //  2295: iload           42
        //  2297: ifne            1271
        //  2300: aload           43
        //  2302: invokevirtual   java/lang/String.toString:()Ljava/lang/String;
        //  2305: astore          55
        //  2307: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //  2310: ldc_w           "Received updated %s: %s"
        //  2313: iconst_2       
        //  2314: anewarray       Ljava/lang/Object;
        //  2317: dup            
        //  2318: iconst_0       
        //  2319: ldc_w           "bx_pie"
        //  2322: aastore        
        //  2323: dup            
        //  2324: iconst_1       
        //  2325: aload           55
        //  2327: aastore        
        //  2328: invokestatic    com/google/android/gm/provider/ad.d:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  2331: pop            
        //  2332: ldc_w           "bx_pie"
        //  2335: aload           55
        //  2337: invokestatic    com/google/common/collect/ImmutableMap.r:(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;
        //  2340: astore          57
        //  2342: aload_0        
        //  2343: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  2346: aload           57
        //  2348: invokeinterface com/google/android/gm/provider/ba.k:(Ljava/util/Map;)V
        //  2353: iconst_0       
        //  2354: istore          36
        //  2356: goto            1271
        //  2359: aload           41
        //  2361: ldc_w           "sx_piac"
        //  2364: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //  2367: ifeq            2473
        //  2370: iconst_0       
        //  2371: istore          36
        //  2373: iload           42
        //  2375: ifne            1271
        //  2378: aload           40
        //  2380: iconst_4       
        //  2381: invokevirtual   com/google/common/a/a/a.getBytes:(I)[B
        //  2384: astore          58
        //  2386: aload           58
        //  2388: ifnull          2453
        //  2391: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //  2394: ldc_w           "Received updated %s: %s"
        //  2397: iconst_2       
        //  2398: anewarray       Ljava/lang/Object;
        //  2401: dup            
        //  2402: iconst_0       
        //  2403: ldc_w           "sx_piac"
        //  2406: aastore        
        //  2407: dup            
        //  2408: iconst_1       
        //  2409: aload           58
        //  2411: aastore        
        //  2412: invokestatic    com/google/android/gm/provider/ad.d:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  2415: pop            
        //  2416: new             Lcom/google/common/collect/y;
        //  2419: dup            
        //  2420: invokespecial   com/google/common/collect/y.<init>:()V
        //  2423: ldc_w           "sx_piac"
        //  2426: aload           58
        //  2428: invokevirtual   com/google/common/collect/y.p:(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/y;
        //  2431: invokevirtual   com/google/common/collect/y.Zo:()Lcom/google/common/collect/ImmutableMap;
        //  2434: astore          60
        //  2436: aload_0        
        //  2437: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  2440: aload           60
        //  2442: invokeinterface com/google/android/gm/provider/ba.m:(Ljava/util/Map;)V
        //  2447: iconst_0       
        //  2448: istore          36
        //  2450: goto            1271
        //  2453: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //  2456: ldc_w           "sx_piac was null"
        //  2459: iconst_0       
        //  2460: anewarray       Ljava/lang/Object;
        //  2463: invokestatic    com/google/android/gm/provider/ad.g:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  2466: pop            
        //  2467: iconst_0       
        //  2468: istore          36
        //  2470: goto            1271
        //  2473: aload           41
        //  2475: ldc_w           "bx_piuf"
        //  2478: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //  2481: ifeq            2561
        //  2484: iconst_0       
        //  2485: istore          36
        //  2487: aload           43
        //  2489: ifnull          1271
        //  2492: iconst_0       
        //  2493: istore          36
        //  2495: iload           42
        //  2497: ifne            1271
        //  2500: aload           43
        //  2502: invokestatic    java/lang/Boolean.valueOf:(Ljava/lang/String;)Ljava/lang/Boolean;
        //  2505: astore          62
        //  2507: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //  2510: ldc_w           "ForwardSync: personal inbox user flipped: %s"
        //  2513: iconst_1       
        //  2514: anewarray       Ljava/lang/Object;
        //  2517: dup            
        //  2518: iconst_0       
        //  2519: aload           62
        //  2521: aastore        
        //  2522: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  2525: pop            
        //  2526: aload           62
        //  2528: invokevirtual   java/lang/Boolean.booleanValue:()Z
        //  2531: istore          64
        //  2533: iconst_0       
        //  2534: istore          36
        //  2536: iload           64
        //  2538: ifeq            1271
        //  2541: aload_0        
        //  2542: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  2545: ldc_w           "ShouldShowSectionedInboxOOBE"
        //  2548: aload           43
        //  2550: invokeinterface com/google/android/gm/provider/ba.Z:(Ljava/lang/String;Ljava/lang/String;)V
        //  2555: iconst_0       
        //  2556: istore          36
        //  2558: goto            1271
        //  2561: iload           42
        //  2563: ifeq            2601
        //  2566: aload_0        
        //  2567: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  2570: aload           41
        //  2572: invokeinterface com/google/android/gm/provider/ba.eI:(Ljava/lang/String;)V
        //  2577: ldc_w           "bx_eid"
        //  2580: aload           41
        //  2582: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //  2585: istore          65
        //  2587: iconst_0       
        //  2588: istore          36
        //  2590: iload           65
        //  2592: ifeq            1271
        //  2595: iconst_1       
        //  2596: istore          36
        //  2598: goto            1271
        //  2601: aload_0        
        //  2602: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  2605: aload           41
        //  2607: aload           43
        //  2609: invokeinterface com/google/android/gm/provider/ba.Z:(Ljava/lang/String;Ljava/lang/String;)V
        //  2614: goto            2577
        //  2617: aload           33
        //  2619: invokestatic    com/google/android/gm/provider/bv.g:(Lcom/google/common/a/a/a;)V
        //  2622: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //  2625: ldc_w           "No forward sync operation found"
        //  2628: iconst_0       
        //  2629: anewarray       Ljava/lang/Object;
        //  2632: invokestatic    com/google/android/gm/provider/ad.g:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  2635: pop            
        //  2636: iconst_0       
        //  2637: istore          36
        //  2639: goto            1271
        //  2642: aload           10
        //  2644: bipush          8
        //  2646: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //  2649: ifeq            2670
        //  2652: aload_0        
        //  2653: aload           10
        //  2655: bipush          8
        //  2657: invokevirtual   com/google/common/a/a/a.fy:(I)Lcom/google/common/a/a/a;
        //  2660: invokespecial   com/google/android/gm/provider/MailSync.d:(Lcom/google/common/a/a/a;)V
        //  2663: iload           12
        //  2665: istore          8
        //  2667: goto            58
        //  2670: aload           10
        //  2672: bipush          9
        //  2674: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //  2677: ifeq            2704
        //  2680: aload_0        
        //  2681: aload           10
        //  2683: bipush          9
        //  2685: invokevirtual   com/google/common/a/a/a.fy:(I)Lcom/google/common/a/a/a;
        //  2688: aload           6
        //  2690: aload_2        
        //  2691: lload_3        
        //  2692: aload           5
        //  2694: invokespecial   com/google/android/gm/provider/MailSync.a:(Lcom/google/common/a/a/a;Lcom/google/android/gm/provider/bl;Lcom/google/android/gm/provider/br;JLcom/google/android/gm/provider/aX;)V
        //  2697: iload           12
        //  2699: istore          8
        //  2701: goto            58
        //  2704: aload           10
        //  2706: bipush          10
        //  2708: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //  2711: ifeq            2736
        //  2714: aload_0        
        //  2715: aload           10
        //  2717: bipush          10
        //  2719: invokevirtual   com/google/common/a/a/a.fy:(I)Lcom/google/common/a/a/a;
        //  2722: aload           6
        //  2724: aload_2        
        //  2725: lload_3        
        //  2726: invokespecial   com/google/android/gm/provider/MailSync.a:(Lcom/google/common/a/a/a;Lcom/google/android/gm/provider/bl;Lcom/google/android/gm/provider/br;J)V
        //  2729: iload           12
        //  2731: istore          8
        //  2733: goto            58
        //  2736: aload           10
        //  2738: bipush          16
        //  2740: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //  2743: ifeq            2869
        //  2746: aload           10
        //  2748: bipush          16
        //  2750: invokevirtual   com/google/common/a/a/a.fy:(I)Lcom/google/common/a/a/a;
        //  2753: iconst_1       
        //  2754: invokevirtual   com/google/common/a/a/a.getLong:(I)J
        //  2757: lstore          25
        //  2759: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //  2762: astore          27
        //  2764: iconst_1       
        //  2765: anewarray       Ljava/lang/Object;
        //  2768: astore          28
        //  2770: aload           28
        //  2772: iconst_0       
        //  2773: lload           25
        //  2775: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //  2778: aastore        
        //  2779: aload           27
        //  2781: ldc_w           "handleNoConversationProto: conversationId: %d"
        //  2784: aload           28
        //  2786: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  2789: pop            
        //  2790: aload_0        
        //  2791: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  2794: invokeinterface com/google/android/gm/provider/ba.prepare:()V
        //  2799: aload_0        
        //  2800: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  2803: lload           25
        //  2805: getstatic       com/google/android/gm/provider/MailSync$SyncRationale.bmn:Lcom/google/android/gm/provider/MailSync$SyncRationale;
        //  2808: invokeinterface com/google/android/gm/provider/ba.b:(JLcom/google/android/gm/provider/MailSync$SyncRationale;)V
        //  2813: aload_0        
        //  2814: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  2817: astore          31
        //  2819: getstatic       com/google/android/gm/provider/MailSync$SyncRationale.bmn:Lcom/google/android/gm/provider/MailSync$SyncRationale;
        //  2822: pop            
        //  2823: aload           31
        //  2825: lload           25
        //  2827: new             Lcom/google/android/gm/provider/aX;
        //  2830: dup            
        //  2831: invokespecial   com/google/android/gm/provider/aX.<init>:()V
        //  2834: invokeinterface com/google/android/gm/provider/ba.a:(JLcom/google/android/gm/provider/aX;)V
        //  2839: aload_0        
        //  2840: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  2843: invokeinterface com/google/android/gm/provider/ba.commit:()V
        //  2848: iload           12
        //  2850: istore          8
        //  2852: goto            58
        //  2855: astore          30
        //  2857: aload_0        
        //  2858: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  2861: invokeinterface com/google/android/gm/provider/ba.commit:()V
        //  2866: aload           30
        //  2868: athrow         
        //  2869: aload           10
        //  2871: bipush          17
        //  2873: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //  2876: ifeq            2941
        //  2879: aload           10
        //  2881: bipush          17
        //  2883: invokevirtual   com/google/common/a/a/a.fy:(I)Lcom/google/common/a/a/a;
        //  2886: iconst_1       
        //  2887: invokevirtual   com/google/common/a/a/a.getLong:(I)J
        //  2890: lstore          20
        //  2892: getstatic       com/google/android/gm/provider/MailSync.TAG:Ljava/lang/String;
        //  2895: astore          22
        //  2897: iconst_1       
        //  2898: anewarray       Ljava/lang/Object;
        //  2901: astore          23
        //  2903: aload           23
        //  2905: iconst_0       
        //  2906: lload           20
        //  2908: invokestatic    java/lang/Long.valueOf:(J)Ljava/lang/Long;
        //  2911: aastore        
        //  2912: aload           22
        //  2914: ldc_w           "handleNoMessageProto: messageId: %d"
        //  2917: aload           23
        //  2919: invokestatic    com/google/android/gm/provider/ad.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //  2922: pop            
        //  2923: aload_0        
        //  2924: getfield        com/google/android/gm/provider/MailSync.blr:Lcom/google/android/gm/provider/ba;
        //  2927: lload           20
        //  2929: invokeinterface com/google/android/gm/provider/ba.aH:(J)V
        //  2934: iload           12
        //  2936: istore          8
        //  2938: goto            58
        //  2941: aload           10
        //  2943: bipush          14
        //  2945: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //  2948: ifeq            3002
        //  2951: aload           10
        //  2953: bipush          14
        //  2955: invokevirtual   com/google/common/a/a/a.fy:(I)Lcom/google/common/a/a/a;
        //  2958: astore          18
        //  2960: aload           18
        //  2962: iconst_4       
        //  2963: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //  2966: ifeq            2987
        //  2969: aload_0        
        //  2970: ldc_w           "lowestMessageIdInDuration"
        //  2973: aload           18
        //  2975: iconst_4       
        //  2976: invokevirtual   com/google/common/a/a/a.getLong:(I)J
        //  2979: invokespecial   com/google/android/gm/provider/MailSync.q:(Ljava/lang/String;J)Z
        //  2982: pop            
        //  2983: aload_0        
        //  2984: invokevirtual   com/google/android/gm/provider/MailSync.HA:()V
        //  2987: aload_0        
        //  2988: invokespecial   com/google/android/gm/provider/MailSync.Hs:()V
        //  2991: aload           18
        //  2993: astore          7
        //  2995: iload           12
        //  2997: istore          8
        //  2999: goto            58
        //  3002: aload           10
        //  3004: bipush          19
        //  3006: invokevirtual   com/google/common/a/a/a.bJ:(I)Z
        //  3009: ifeq            3030
        //  3012: aload_0        
        //  3013: aload           10
        //  3015: bipush          19
        //  3017: invokevirtual   com/google/common/a/a/a.fy:(I)Lcom/google/common/a/a/a;
        //  3020: invokespecial   com/google/android/gm/provider/MailSync.e:(Lcom/google/common/a/a/a;)V
        //  3023: iload           12
        //  3025: istore          8
        //  3027: goto            58
        //  3030: new             Lcom/google/android/gm/provider/MailSync$ResponseParseException;
        //  3033: dup            
        //  3034: ldc_w           "No protobuf found inside response chunk"
        //  3037: invokespecial   com/google/android/gm/provider/MailSync$ResponseParseException.<init>:(Ljava/lang/String;)V
        //  3040: athrow         
        //  3041: aload_0        
        //  3042: getfield        com/google/android/gm/provider/MailSync.bln:Z
        //  3045: ifne            3061
        //  3048: aload           7
        //  3050: ifnull          3061
        //  3053: aload_0        
        //  3054: aload           7
        //  3056: aload           5
        //  3058: invokespecial   com/google/android/gm/provider/MailSync.b:(Lcom/google/common/a/a/a;Lcom/google/android/gm/provider/aX;)V
        //  3061: aload           6
        //  3063: invokevirtual   com/google/android/gm/provider/bl.close:()V
        //  3066: iload           8
        //  3068: ireturn        
        //  3069: astore          9
        //  3071: goto            478
        //  3074: iconst_0       
        //  3075: istore          42
        //  3077: goto            1716
        //  3080: iload           87
        //  3082: iconst_1       
        //  3083: if_icmpne       1158
        //  3086: iconst_1       
        //  3087: istore          89
        //  3089: iload           87
        //  3091: iconst_2       
        //  3092: if_icmpne       1164
        //  3095: iconst_1       
        //  3096: istore          90
        //  3098: goto            1097
        //  3101: ldc             ""
        //  3103: astore          47
        //  3105: goto            1993
        //  3108: ldc             ""
        //  3110: astore          49
        //  3112: goto            2057
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  58     72     3069   3074   Any
        //  77     84     3069   3074   Any
        //  91     131    472    478    Any
        //  131    147    472    478    Any
        //  147    181    472    478    Any
        //  186    224    704    725    Ljava/io/IOException;
        //  186    224    472    478    Any
        //  224    331    472    478    Any
        //  331    387    472    478    Any
        //  396    444    472    478    Any
        //  451    469    472    478    Any
        //  486    504    472    478    Any
        //  507    525    472    478    Any
        //  528    547    472    478    Any
        //  550    569    472    478    Any
        //  572    591    472    478    Any
        //  594    613    472    478    Any
        //  616    635    472    478    Any
        //  638    657    472    478    Any
        //  660    679    472    478    Any
        //  682    701    472    478    Any
        //  706    722    472    478    Any
        //  725    769    472    478    Any
        //  776    813    472    478    Any
        //  813    860    472    478    Any
        //  875    886    472    478    Any
        //  886    931    472    478    Any
        //  938    964    472    478    Any
        //  971    992    472    478    Any
        //  999    1033   472    478    Any
        //  1033   1050   472    478    Any
        //  1053   1086   1138   1152   Any
        //  1112   1138   1138   1152   Any
        //  1140   1152   472    478    Any
        //  1183   1204   1138   1152   Any
        //  1204   1232   1138   1152   Any
        //  1247   1266   1138   1152   Any
        //  1266   1271   1138   1152   Any
        //  1271   1284   1138   1152   Any
        //  1288   1294   1138   1152   Any
        //  1294   1303   472    478    Any
        //  1308   1324   472    478    Any
        //  1336   1351   1138   1152   Any
        //  1354   1368   1138   1152   Any
        //  1368   1422   1138   1152   Any
        //  1427   1475   1138   1152   Any
        //  1475   1480   1138   1152   Any
        //  1486   1538   1138   1152   Any
        //  1544   1578   1138   1152   Any
        //  1583   1607   1138   1152   Any
        //  1612   1630   1138   1152   Any
        //  1630   1634   1138   1152   Any
        //  1634   1639   1138   1152   Any
        //  1645   1666   1138   1152   Any
        //  1672   1716   1138   1152   Any
        //  1725   1733   1138   1152   Any
        //  1733   1808   1138   1152   Any
        //  1816   1830   1138   1152   Any
        //  1836   1854   1138   1152   Any
        //  1862   1886   1138   1152   Any
        //  1892   1903   1138   1152   Any
        //  1908   1924   1138   1152   Any
        //  1930   1960   1138   1152   Any
        //  1966   1977   1138   1152   Any
        //  1982   1990   1138   1152   Any
        //  1993   2014   1138   1152   Any
        //  2020   2027   1138   1152   Any
        //  2030   2041   1138   1152   Any
        //  2046   2054   1138   1152   Any
        //  2057   2078   1138   1152   Any
        //  2084   2091   1138   1152   Any
        //  2094   2105   1138   1152   Any
        //  2121   2153   1138   1152   Any
        //  2159   2170   1138   1152   Any
        //  2186   2210   1138   1152   Any
        //  2216   2227   1138   1152   Any
        //  2243   2267   1138   1152   Any
        //  2273   2284   1138   1152   Any
        //  2300   2353   1138   1152   Any
        //  2359   2370   1138   1152   Any
        //  2378   2386   1138   1152   Any
        //  2391   2447   1138   1152   Any
        //  2453   2467   1138   1152   Any
        //  2473   2484   1138   1152   Any
        //  2500   2533   1138   1152   Any
        //  2541   2555   1138   1152   Any
        //  2566   2577   1138   1152   Any
        //  2577   2587   1138   1152   Any
        //  2601   2614   1138   1152   Any
        //  2617   2636   1138   1152   Any
        //  2642   2663   472    478    Any
        //  2670   2697   472    478    Any
        //  2704   2729   472    478    Any
        //  2736   2799   472    478    Any
        //  2799   2839   2855   2869   Any
        //  2839   2848   472    478    Any
        //  2857   2869   472    478    Any
        //  2869   2934   472    478    Any
        //  2941   2987   472    478    Any
        //  2987   2991   472    478    Any
        //  3002   3023   472    478    Any
        //  3030   3041   472    478    Any
        //  3041   3048   3069   3074   Any
        //  3053   3061   3069   3074   Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0224:
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
    
    private long b(final HttpResponse httpResponse, final bk bk) {
        while (true) {
            final bl f = this.f(httpResponse);
            while (true) {
                try {
                    final com.google.common.a.a.a he = f.HE();
                    if (he != null && he.bJ(15)) {
                        return a(he.fy(15), bk);
                    }
                    final String tag = MailSync.TAG;
                    final Object[] array = { null };
                    if (he != null) {
                        final String s = "null protoBuf";
                        array[0] = s;
                        E.e(tag, "handleQueryResponseProto: No query result found inside response chunk. reason: %s", array);
                        throw new MailSync$ResponseParseException("No query result found inside response chunk");
                    }
                }
                finally {
                    f.close();
                }
                final String s = "missing query result";
                continue;
            }
        }
    }
    
    private void b(final com.google.common.a.a.a a, final aX ax) {
        if (E.isLoggable(MailSync.TAG, 2)) {
        Label_0157_Outer:
            while (true) {
                while (true) {
                    Label_0737: {
                        while (true) {
                            try {
                                E.d("Gmail", "SyncPostableProto: %s", new String(Base64.encode(a.toByteArray(), 2)));
                                final ArrayList<com.google.common.a.a.a> list = new ArrayList<com.google.common.a.a.a>();
                                bv.b(a, 5, list);
                                for (final com.google.common.a.a.a a2 : list) {
                                    final int int1 = a2.getInt(2);
                                    int int2 = Integer.MAX_VALUE;
                                    if (a2.bJ(4)) {
                                        int2 = a2.getInt(4);
                                    }
                                    final int int3 = a2.getInt(3);
                                    final long long1 = a2.getLong(1);
                                    if (!a2.bJ(5)) {
                                        break Label_0737;
                                    }
                                    final String string = a2.getString(5);
                                    E.c("Gmail", "SyncPostAmbleProto: labelId: %d, count: %d, unreadCount: %d, color: %d, visibility: %s", long1, int1, int3, int2, string);
                                }
                            }
                            catch (IOException ex) {
                                E.e("Gmail", ex, "Error reading proto", new Object[0]);
                                continue Label_0157_Outer;
                            }
                            break;
                        }
                        break;
                    }
                    final String string = "SHOW";
                    continue;
                }
            }
        }
        if (a.bJ(1)) {
            final long long2 = a.getLong(1);
            if (long2 == 0L) {
                this.blr.eP("Received operationId of 0 as last-examined-server-op. Wiping.");
            }
            E.c(MailSync.TAG, "last-examined-server-operation operationId: %d", long2);
            this.q("highestProcessedServerOperationId", long2);
            this.HA();
        }
        if (a.bJ(2)) {
            final long long3 = a.getLong(2);
            E.b(MailSync.TAG, "lowest-backward-convesation-id conversationid: %d", long3);
            this.q("lowestBackwardConversationId", long3);
        }
        if (a.bJ(6)) {
            final long long4 = a.getLong(6);
            E.b(MailSync.TAG, "%s messageSequenceNumber: %d", "messageSequenceNumber", long4);
            this.q("messageSequenceNumber", long4);
            this.HA();
        }
        while (true) {
            Label_0699: {
                if (!ax.bkF) {
                    break Label_0699;
                }
                this.p("moreForwardSyncNeeded", a.fx(3));
                HashSet<Long> set = null;
            Label_0623_Outer:
                while (true) {
                    final ArrayList<com.google.common.a.a.a> list2 = new ArrayList<com.google.common.a.a.a>();
                    bv.b(a, 5, list2);
                    set = new HashSet<Long>();
                    this.blr.prepare();
                    while (true) {
                        Label_0710: {
                            try {
                                for (final com.google.common.a.a.a a3 : list2) {
                                    int int4 = Integer.MAX_VALUE;
                                    if (a3.bJ(4)) {
                                        int4 = a3.getInt(4);
                                    }
                                    String string2 = "SHOW";
                                    if (a3.bJ(5)) {
                                        string2 = a3.getString(5);
                                        E.b(MailSync.TAG, "ResponseSyncPostamble: LABEL_VISIBILITY: %s", string2);
                                    }
                                    final int int5 = a3.getInt(2);
                                    final int int6 = a3.getInt(3);
                                    if (!a3.bJ(6)) {
                                        break Label_0710;
                                    }
                                    final int int7 = a3.getInt(6);
                                    final af aq = this.blr.aq(a3.getLong(1));
                                    if (aq == null) {
                                        continue Label_0623_Outer;
                                    }
                                    this.blr.a(aq, int5, int6, int7, int4, string2);
                                    set.add(aq.id);
                                }
                                break;
                            }
                            finally {
                                this.blr.commit();
                            }
                            break Label_0699;
                        }
                        final int int7 = -1;
                        continue;
                    }
                }
                this.blr.commit();
                this.blr.q(set);
                return;
            }
            this.p("moreForwardSyncNeeded", false);
            continue;
        }
    }
    
    private static <E> boolean b(final Set<E> set, final Set<E> set2) {
        boolean b = false;
        if (set2 != null) {
            final Iterator<E> iterator = set.iterator();
            while (iterator.hasNext()) {
                if (!set2.contains(iterator.next())) {
                    iterator.remove();
                    b = true;
                }
            }
        }
        return b;
    }
    
    private void d(final com.google.common.a.a.a a) {
        this.blr.prepare();
        try {
            long bku;
            if (a.bJ(3)) {
                final bi bi = new bi();
                final com.google.common.a.a.a fy = a.fy(3);
                bku = fy.getLong(1);
                bi.bku = bku;
                bi.bhx = fy.getLong(2);
                bi.blE = fy.getLong(3);
                bi.ayV = fy.getString(4);
                bi.abh = fy.getString(5);
                bi.blF = Gmail$PersonalLevel.dN(fy.getInt(6));
                bi.blA = fy.getLong(7);
                bi.blB = fy.getInt(8);
                bi.ayX = fy.fx(9);
                bi.blD = s.b(fy.fy(10));
                bv.a(fy, 11, bi.blG = new HashSet<Long>());
                this.blr.a(bi);
            }
            else {
                bku = a.getLong(1);
            }
            final long long1 = a.getLong(2);
            E.b(MailSync.TAG, "checkConversationProto: conversationId: %d, messageId: %d", bku, long1);
            this.blr.i(bku, long1);
            this.blr.commit();
            this.dT(2);
        }
        finally {
            this.blr.commit();
        }
    }
    
    private static void d(final HttpResponse httpResponse) {
        final HttpEntity entity = httpResponse.getEntity();
        if (entity.getContentLength() < 2147483647L) {
            final InputStreamReader inputStreamReader = new InputStreamReader(AndroidHttpClient.getUngzippedContent(entity), "UTF-8");
            int n = (int)entity.getContentLength();
            if (n < 0) {
                n = 4096;
            }
            final CharArrayBuffer charArrayBuffer = new CharArrayBuffer(n);
            try {
                final char[] array = new char[1024];
                while (true) {
                    do {
                        final int read = inputStreamReader.read(array);
                        if (read == -1) {
                            inputStreamReader.close();
                            E.d(MailSync.TAG, "Html Response from html content = %s", charArrayBuffer);
                            return;
                        }
                        charArrayBuffer.append(array, 0, read);
                    } while (SystemClock.elapsedRealtime() - SystemClock.elapsedRealtime() <= 3600000L);
                    charArrayBuffer.append("\nRead timed out...");
                    continue;
                }
            }
            finally {
                inputStreamReader.close();
            }
        }
        E.d(MailSync.TAG, "Response too large to print", new Object[0]);
    }
    
    private void dT(final int n) {
        final long[] blv = this.blv;
        ++blv[n];
    }
    
    private static MailSync$SyncRationale dU(final int n) {
        switch (n) {
            default: {
                throw new IllegalArgumentException("Unknown proto rationale: " + n);
            }
            case 0: {
                return MailSync$SyncRationale.bmn;
            }
            case 1: {
                return MailSync$SyncRationale.bmm;
            }
            case 2: {
                return MailSync$SyncRationale.bml;
            }
        }
    }
    
    private void e(final com.google.common.a.a.a a) {
        int i = 0;
        this.blr.prepare();
        try {
            final boolean bj = a.bJ(2);
            String string = null;
            if (bj) {
                string = a.fy(2).getString(1);
            }
            if (a.bJ(3)) {
                final String string2 = a.fy(3).getString(1);
                if (string2 != null) {
                    E.c(MailSync.TAG, "Ads targetting info: " + string2, new Object[0]);
                }
            }
            while (i < a.fA(1)) {
                final Advertisement advertisement = new Advertisement(a.ap(1, i), string);
                E.d(MailSync.TAG, "Received Ad with event id: %s", advertisement.bcd);
                this.blr.h(advertisement);
                ++i;
            }
        }
        finally {
            this.blr.commit();
        }
    }
    
    public static boolean e(final HttpResponse httpResponse) {
        return httpResponse.getStatusLine().getStatusCode() == 401;
    }
    
    private bl f(final HttpResponse httpResponse) {
        final int statusCode = httpResponse.getStatusLine().getStatusCode();
        if (httpResponse.getEntity() == null) {
            throw new MailSync$ResponseParseException("No response body received. Status is " + statusCode);
        }
        if (statusCode != 200) {
            throw new MailSync$ResponseParseException("Error returned from server: " + statusCode);
        }
        final bl bl = new bl(AndroidHttpClient.getUngzippedContent(httpResponse.getEntity()));
        final com.google.common.a.a.a he = bl.HE();
        if (he == null) {
            throw new MailSync$ResponseParseException("End of stream while reading next chunk part");
        }
        final com.google.common.a.a.a fy = he.fy(1);
        Label_0341: {
            if (!E.isLoggable(MailSync.TAG, 2)) {
                break Label_0341;
            }
        Label_0214_Outer:
            while (true) {
                while (true) {
                    while (true) {
                        try {
                            E.d("Gmail", "HttpResponseProto: %s", new String(Base64.encode(fy.toByteArray(), 2)));
                            int int1 = -1;
                            if (fy.bJ(2)) {
                                int1 = fy.getInt(2);
                            }
                            if (fy.bJ(3) && fy.fx(3)) {
                                final boolean b = true;
                                long n = -1L;
                                if (fy.bJ(6)) {
                                    n = fy.getInt(6);
                                }
                                String string = "noWipeDescription";
                                if (fy.bJ(5)) {
                                    string = fy.getString(5);
                                }
                                int int2 = -1;
                                if (fy.bJ(1)) {
                                    int2 = fy.getInt(1);
                                }
                                E.c("Gmail", "HttpProtoResponse: serverVersion: %d, hasVersionError: %b, delay: %d, responseVersion: %d wipeDescription: %s", int1, b, n, int2, string);
                                final int int3 = fy.getInt(2);
                                this.q("serverVersion", int3);
                                if (fy.bJ(3) && fy.fx(3)) {
                                    throw new IOException("The server (version " + int3 + ") does not support the protocol version that we used");
                                }
                                break;
                            }
                        }
                        catch (IOException ex) {
                            E.e("Gmail", ex, "Error reading proto", new Object[0]);
                            continue Label_0214_Outer;
                        }
                        break;
                    }
                    final boolean b = false;
                    continue;
                }
            }
        }
        if (fy.bJ(4) && fy.fx(4)) {
            throw new MailSync$ResponseParseException("Abuse error reported");
        }
        final long n2 = fy.getInt(6);
        if (n2 != 0L) {
            this.blo = n2 + SystemClock.elapsedRealtime();
        }
        final String string2 = fy.getString(5);
        if (!TextUtils.isEmpty((CharSequence)string2)) {
            this.blr.eP("Received mustWipe error from server: " + string2);
        }
        bl.dV(fy.getInt(1));
        final String ew = this.blr.eW("temp_adie");
        String value;
        if (fy.bJ(7)) {
            value = String.valueOf(fy.fx(7));
        }
        else {
            value = null;
        }
        if (!TextUtils.equals((CharSequence)ew, (CharSequence)value)) {
            if (value == null) {
                this.blr.eI("temp_adie");
            }
            else {
                this.blr.Z("temp_adie", value);
            }
            GmailProvider.R(this.mContext, this.blr.Dc());
        }
        return bl;
    }
    
    private static String f(final com.google.common.a.a.a a) {
        String s = a.getString(1);
        if (a.bJ(2)) {
            s = "\"" + a.getString(2) + "\" <" + s + ">";
        }
        return s;
    }
    
    private static Map<String, bc> fa(final String s) {
        final HashMap<String, bc> hashMap = new HashMap<String, bc>();
        final String[] split = TextUtils.split(s, ",");
        int i = 0;
    Label_0065_Outer:
        while (i < split.length) {
            final String[] split2 = TextUtils.split(split[i], ":");
            while (true) {
                try {
                    hashMap.put(split2[0], new bc(split2[1], split2[2]));
                    ++i;
                    continue Label_0065_Outer;
                }
                catch (ArrayIndexOutOfBoundsException ex) {
                    E.b(MailSync.TAG, "Unexpected Custom Color preference received: %s", s);
                    continue;
                }
                break;
            }
            break;
        }
        return hashMap;
    }
    
    private long fb(final String s) {
        if (this.bls.containsKey(s)) {
            return Long.parseLong(this.bls.get(s));
        }
        throw new IllegalStateException("missing setting: " + s);
    }
    
    private String fd(final String s) {
        if (this.bls.containsKey(s)) {
            return this.bls.get(s);
        }
        throw new IllegalStateException("missing setting: " + s);
    }
    
    private Set<String> fe(final String s) {
        return Sets.p(TextUtils.split(this.fd(s), Gmail.bdH));
    }
    
    private static Map<String, bb> o(final String s, final boolean b) {
        final HashMap<String, bb> hashMap = new HashMap<String, bb>();
        Label_0130: {
            if (b) {
                break Label_0130;
            }
            String[] split = TextUtils.split(s, "(?<!\\\\)#");
        Label_0023_Outer:
            while (true) {
                int n = 0;
                String[] split2;
                String s2;
                bb bb;
                Label_0070_Outer:Label_0124_Outer:
                while (true) {
                    if (n >= split.length) {
                        return hashMap;
                    }
                    split2 = TextUtils.split(a(split[n], '#'), "(?<!\\\\),");
                    Label_0142: {
                        if (split2.length >= 4 && !TextUtils.isEmpty((CharSequence)split2[3])) {
                            break Label_0142;
                        }
                        s2 = split2[1];
                        while (true) {
                            try {
                                while (true) {
                                    bb = new bb(a(split2[0], ','), split2[1], split2[2], s2);
                                    if (split2[1].contains("@")) {
                                        hashMap.put(split2[1], bb);
                                    }
                                    ++n;
                                    continue Label_0070_Outer;
                                    s2 = split2[3];
                                    continue Label_0124_Outer;
                                }
                                split = new String[] { s };
                                continue Label_0023_Outer;
                            }
                            catch (ArrayIndexOutOfBoundsException ex) {
                                E.b(MailSync.TAG, "Unexpected Custom from preference received: %s", split[n]);
                                continue;
                            }
                            break;
                        }
                    }
                    break;
                }
                break;
            }
        }
        return hashMap;
    }
    
    private boolean q(final String s, final long n) {
        return this.aa(s, Long.toString(n));
    }
    
    private static byte[] q(final Cursor cursor) {
        try {
            return cursor.getString(1).getBytes("UTF-8");
        }
        catch (UnsupportedEncodingException ex) {
            throw new IllegalStateException("UTF-8 not supported");
        }
    }
    
    public final int DR() {
        final int n = (int)this.fb("serverVersion");
        if (n == 0) {
            return 25;
        }
        if (n < 10) {
            E.e(MailSync.TAG, "Server version (%d) is too old to talk to. Minimum supported version is %d", n, 10);
            return 10;
        }
        return Math.min(n, 25);
    }
    
    public final long Ey() {
        return this.fb("conversationAgeDays");
    }
    
    public final long GT() {
        return this.fb("messageSequenceNumber");
    }
    
    final void HA() {
        final boolean b = this.blt.containsKey("labelsIncluded") || this.blt.containsKey("labelsPartial") || this.blt.containsKey("conversationAgeDays") || this.blt.containsKey("maxAttachmentSize");
        final Map<String, String> blt = this.blt;
        this.blt = (Map<String, String>)Maps.aan();
        this.blr.b(blt, b);
    }
    
    public final void Hr() {
        this.blv = new long[MailSync.blu.length];
    }
    
    public final long Ht() {
        return this.fb("clientId");
    }
    
    public final long Hu() {
        return this.fb("serverVersion");
    }
    
    public final String[] Hv() {
        return TextUtils.split(this.fd("labelsIncluded"), MailSync.bhh);
    }
    
    public final String[] Hw() {
        return TextUtils.split(this.fd("labelsPartial"), MailSync.bhh);
    }
    
    public final long Hx() {
        if (this.bls.containsKey("lowestMessageIdInDuration")) {
            return this.fb("lowestMessageIdInDuration");
        }
        return 0L;
    }
    
    public final void Hy() {
        this.blp.clear();
    }
    
    public final int a(final HttpResponse httpResponse, final br br, final aX ax) {
        this.dT(6);
        return this.a(httpResponse, br, 0L, ax);
    }
    
    public final long a(final HttpResponse httpResponse, final bk bk) {
        final String value = httpResponse.getFirstHeader("Content-Type").getValue();
        if (value.startsWith("application/vnd.google-x-gms-proto")) {
            return this.b(httpResponse, bk);
        }
        if (value.startsWith("text/html")) {
            final int statusCode = httpResponse.getStatusLine().getStatusCode();
            if (E.isLoggable(MailSync.TAG, 2)) {
                d(httpResponse);
            }
            throw new MailSync$ResponseParseException("Server returned unhandled response content type (text/html status: " + statusCode + ")");
        }
        throw new MailSync$ResponseParseException("Unknown response content type: " + value);
    }
    
    protected final String a(final SyncResult syncResult) {
        final StringBuffer sb = new StringBuffer();
        for (int i = 0; i < MailSync.blu.length; ++i) {
            if (this.blv[i] > 0L) {
                sb.append(MailSync.blu[i]).append(this.blv[i]);
            }
        }
        sb.append(syncResult.toDebugString());
        return sb.toString();
    }
    
    public final HttpUriRequest a(final bj bj) {
        final ArrayList<bj> list = new ArrayList<bj>();
        list.add(bj);
        return (HttpUriRequest)this.bcK.a(this.Hb, this.DR(), this.fb("clientId"), this.bcK.a(this.Hb, this.fb("lowestBackwardConversationId"), this.fb("highestProcessedServerOperationId"), this.fb("clientOpToAck"), list, new ArrayList<Long>(), this.He(), new aX()), true);
    }
    
    public final HttpUriRequest a(final String s, final long n, final int n2) {
        return this.bcK.a(this.Hb, this.DR(), s, n, n2, 5);
    }
    
    public final HttpUriRequest a(final boolean b, final aX ax, ArrayList<bj> a) {
        while (true) {
            final long elapsedRealtime = SystemClock.elapsedRealtime();
            if (elapsedRealtime >= this.blo) {
                break;
            }
            try {
                final long n = this.blo - elapsedRealtime;
                E.d(MailSync.TAG, "Sync waiting for %d ms", n);
                Thread.sleep(n);
            }
            catch (InterruptedException ex) {}
        }
        this.bln = false;
        if (this.fc("needConfigSuggestion")) {
            return this.bcK.a(this.Hb, this.DR());
        }
        long n2 = this.fb("clientId");
        final boolean fc = this.fc("configDirty");
        if (n2 == 0L || (fc && !ax.bkG)) {
            if (n2 == 0L) {
                n2 = System.currentTimeMillis();
            }
            return this.bcK.a(this.Hb, this.DR(), n2, this.fe("labelsIncluded"), this.fe("labelsPartial"), this.fb("conversationAgeDays"), this.fb("maxAttachmentSize"));
        }
        final long fb = this.fb("highestProcessedServerOperationId");
        long fb2 = this.fb("highestBackwardConversationId");
        long fb3 = this.fb("lowestBackwardConversationId");
        final int int1 = c.getInt(this.Hb, "gmail_start_sync_interval", 100);
        boolean b2;
        if (ax.bkF && b && (1 + new Random().nextInt(int1)) % int1 == 0) {
            b2 = true;
        }
        else {
            b2 = false;
        }
        if (this.fc("startSyncNeeded") || this.fc("unackedSentOperations") || b2) {
            if (fb2 < fb3) {
                fb2 = 0L;
                fb3 = 0L;
            }
            return this.bcK.a(this.Hb, this.DR(), n2, fb, fb2, fb3, this.fb("clientOpToAck"));
        }
        ArrayList<bj> list;
        ArrayList<Long> hd;
        if (ax.bkG) {
            list = new ArrayList<bj>();
            hd = new ArrayList<Long>();
        }
        else {
            if (a == null) {
                a = this.blr.a(ax);
            }
            hd = this.blr.Hd();
            list = a;
        }
        if (E.isLoggable(MailSync.TAG, 2)) {
            E.b(MailSync.TAG, "highestMessageIds: " + Arrays.toString(list.toArray()), new Object[0]);
        }
        final com.google.common.a.a.a a2 = this.bcK.a(this.Hb, fb3, fb, this.fb("clientOpToAck"), list, hd, this.He(), ax);
        if (this.bln) {
            return null;
        }
        final bo bo = new bo(this, a2.fy(7));
        this.blr.a(bo, ax, System.currentTimeMillis() / 1000L);
        final ArrayList<g> hg = bo.HG();
        final HttpPost a3 = this.bcK.a(this.Hb, this.DR(), n2, a2, false);
        while (true) {
            while (true) {
                int n3 = 0;
                Label_0560: {
                    if (c.getInt(this.Hb, "gmail_use_multipart_protobuf", 1) != 0) {
                        n3 = 1;
                        break Label_0560;
                    }
                    Label_0768: {
                        break Label_0768;
                        ByteArrayOutputStream byteArrayOutputStream = null;
                        Object compressedEntity;
                        long n4;
                        long[] blv;
                        int n5;
                        int n6;
                        Label_0705_Outer:Label_0716_Outer:
                        while (true) {
                            while (true) {
                            Label_0875:
                                while (true) {
                                Label_0869:
                                    while (true) {
                                        Label_0852: {
                                            try {
                                                if (bo.HF() && hg != null) {
                                                    hg.add(new com.google.android.common.http.a("PROTOBUFDATA", new bn(this, "PROTOBUFDATA", a2.getDataSize(), a2.toByteArray()), null));
                                                    a3.setEntity((HttpEntity)new d(hg.toArray(new g[0])));
                                                }
                                                else {
                                                    byteArrayOutputStream = new ByteArrayOutputStream();
                                                    a2.g(byteArrayOutputStream);
                                                    if (byteArrayOutputStream.size() > c.getInt(this.Hb, "gmail_max_gzip_size_bytes", 250000)) {
                                                        break Label_0852;
                                                    }
                                                    compressedEntity = AndroidHttpClient.getCompressedEntity(byteArrayOutputStream.toByteArray(), this.Hb);
                                                    a3.setEntity((HttpEntity)compressedEntity);
                                                }
                                                n4 = bo.HB();
                                                blv = this.blv;
                                                blv[5] += n4;
                                                if (fb3 == 0L && list.size() == 0 && !this.fc("moreForwardSyncNeeded") && hd.size() == 0) {
                                                    break Label_0869;
                                                }
                                                n5 = 1;
                                                if (bo.HB() == 0) {
                                                    break Label_0875;
                                                }
                                                n6 = 1;
                                                if (n6 != 0 || (!ax.bkG && n5 != 0) || b) {
                                                    this.p("moreForwardSyncNeeded", true);
                                                    if (bo.HB() != 0) {
                                                        this.p("unackedSentOperations", true);
                                                    }
                                                    this.HA();
                                                    return (HttpUriRequest)a3;
                                                }
                                                break;
                                                n3 = 0;
                                                break Label_0560;
                                            }
                                            catch (IOException ex2) {
                                                throw new RuntimeException("Should not get IO errors while writing to ram");
                                            }
                                        }
                                        compressedEntity = new ByteArrayEntity(byteArrayOutputStream.toByteArray());
                                        continue Label_0705_Outer;
                                    }
                                    n5 = 0;
                                    continue Label_0716_Outer;
                                }
                                n6 = 0;
                                continue;
                            }
                        }
                    }
                    E.d(MailSync.TAG, "lowestBackward conversation id " + fb3, new Object[0]);
                    return null;
                }
                if (n3 != 0) {
                    continue;
                }
                break;
            }
            continue;
        }
    }
    
    public final void a(final HttpResponse httpResponse, final long n) {
        this.a(httpResponse, null, n, new aX());
    }
    
    public final boolean a(final String s, final String s2, final Long n, final Long n2) {
        boolean b;
        ImmutableSet<String> set;
        if (s != null) {
            final ImmutableSet<String> j = ImmutableSet.j(TextUtils.split(s, MailSync.bhh));
            b = (false | this.a("labelsIncluded", j));
            set = j;
        }
        else {
            b = false;
            set = null;
        }
        boolean b2;
        ImmutableSet<String> set2;
        if (s2 != null) {
            final ImmutableSet<String> i = ImmutableSet.j(TextUtils.split(s2, MailSync.bhh));
            b2 = (b | this.a("labelsPartial", i));
            set2 = i;
        }
        else {
            b2 = b;
            set2 = null;
        }
        if (n != null) {
            b2 |= this.q("conversationAgeDays", n);
        }
        if (n2 != null) {
            b2 |= this.q("maxAttachmentSize", n2);
        }
        if (b2 | this.p("needConfigSuggestion", false)) {
            E.d(MailSync.TAG, "config changed locally to changed the label sets to: included(%s), partial(%s)", ad.l(set), ad.l(set2));
            this.p("configDirty", true);
            this.a(null, null, (Set<String>)null);
            this.HA();
            return true;
        }
        return false;
    }
    
    final boolean fc(final String s) {
        if (this.bls.containsKey(s)) {
            return Long.parseLong(this.bls.get(s)) != 0L;
        }
        throw new IllegalStateException("missing setting: " + s);
    }
    
    public final long g(final af af) {
        long fb = Long.MAX_VALUE;
        long n = 0L;
        final Set<String> fe = this.fe("labelsIncluded");
        final Set<String> fe2 = this.fe("labelsPartial");
        final String b = this.blr.b(af);
        if (this.fb("clientId") != n && (af == null || !ae.au(af.id))) {
            while (true) {
                Label_0156: {
                    if (b == null) {
                        break Label_0156;
                    }
                    if (!fe.contains(b)) {
                        if (!fe2.contains(b)) {
                            break Label_0156;
                        }
                        if (this.bls.containsKey("lowestMessageIdInDuration")) {
                            n = this.fb("lowestMessageIdInDuration") - 1L;
                        }
                        else {
                            n = fb;
                        }
                    }
                    if (this.bls.containsKey("lowestBackwardConversationId")) {
                        fb = this.fb("lowestBackwardConversationId");
                    }
                    return Math.max(n, fb);
                }
                n = fb;
                continue;
            }
        }
        return n;
    }
    
    public final void onSyncCanceled() {
        this.bln = true;
    }
    
    final boolean p(final String s, final boolean b) {
        long n;
        if (b) {
            n = 1L;
        }
        else {
            n = 0L;
        }
        return this.aa(s, Long.toString(n));
    }
}
