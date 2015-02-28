package com.android.mail.browse;

import android.app.*;
import android.content.*;
import android.text.*;
import com.android.mail.providers.*;
import android.net.*;
import com.android.mail.utils.*;
import android.database.*;
import java.io.*;
import com.android.mail.c.*;
import android.os.*;
import com.google.common.collect.*;
import java.util.*;

public final class u implements Cursor, J, m
{
    private static int alS;
    static A alT;
    private final ContentResolver Hb;
    private boolean Mg;
    F alU;
    private volatile F alV;
    private final HashMap<String, ContentValues> alW;
    private final Object alX;
    private final List<y> alY;
    private E alZ;
    private boolean ama;
    private boolean amb;
    private boolean amc;
    private final List<Conversation> amd;
    private final Set<Conversation> ame;
    private String[] amf;
    private Set<String> amg;
    private final D amh;
    private boolean ami;
    private boolean amj;
    private int amk;
    private Uri aml;
    private String[] amm;
    private final Handler amn;
    private final boolean amo;
    private final String mName;
    private int vk;
    
    static {
        u.alS = 0;
    }
    
    public u(final Activity activity, final Uri aml, final boolean amc, final String mName) {
        this.alW = new HashMap<String, ContentValues>();
        this.alX = new Object();
        this.alY = new ArrayList<y>();
        this.ama = false;
        this.amb = false;
        this.amc = false;
        this.amd = new ArrayList<Conversation>();
        this.ame = new HashSet<Conversation>();
        this.ami = false;
        this.Mg = false;
        this.amj = false;
        this.vk = -1;
        this.amk = 0;
        this.amn = new Handler(Looper.getMainLooper());
        this.amc = amc;
        this.Hb = activity.getApplicationContext().getContentResolver();
        this.aml = aml;
        this.mName = mName;
        this.amm = com.android.mail.providers.E.aCx;
        this.amh = new D(this, new Handler(Looper.getMainLooper()));
        final boolean af = ag.aF((Context)activity);
        boolean amo = false;
        if (!af) {
            amo = true;
        }
        this.amo = amo;
    }
    
    private int a(final Collection<Conversation> collection, final int n, final be be) {
        final ArrayList<z> list = new ArrayList<z>();
        final Iterator<Conversation> iterator = collection.iterator();
        while (iterator.hasNext()) {
            list.add(new z(this, n, iterator.next(), be));
        }
        return this.e(list);
    }
    
    private int a(final Collection<Conversation> collection, final ContentValues contentValues) {
        return this.e(this.a(collection, 2, contentValues, null));
    }
    
    private z a(final Conversation conversation, final int n, final ContentValues contentValues, final be be) {
        return new z(this, n, conversation, contentValues, be);
    }
    
    private static String a(final String s, final StringBuilder sb) {
        final String substring = s.substring(3 + s.indexOf("://"));
        if (sb != null) {
            sb.setLength(0);
            sb.append(A.amx);
            sb.append(substring);
            return sb.toString();
        }
        return A.amx + substring;
    }
    
    private ArrayList<z> a(final Collection<Conversation> collection, final int n, final ContentValues contentValues, final be be) {
        final ArrayList<z> list = new ArrayList<z>();
        final Iterator<Conversation> iterator = collection.iterator();
        while (iterator.hasNext()) {
            list.add(this.a(iterator.next(), n, contentValues, null));
        }
        return list;
    }
    
    private void a(final F alU) {
    Label_0186_Outer:
        while (true) {
            while (true) {
                Label_0395: {
                    while (true) {
                    Label_0129_Outer:
                        while (true) {
                            boolean b = false;
                            int n2 = 0;
                            Label_0376: {
                                int n = 0;
                                Label_0372: {
                                    Label_0369: {
                                        String s = null;
                                        Label_0252: {
                                            while (true) {
                                                final Long asLong;
                                                Label_0225: {
                                                    synchronized (this.alX) {
                                                        final Iterator<Map.Entry<String, ContentValues>> iterator = this.alW.entrySet().iterator();
                                                        final long currentTimeMillis = System.currentTimeMillis();
                                                        if (!iterator.hasNext()) {
                                                            break;
                                                        }
                                                        final Map.Entry<String, ContentValues> entry = iterator.next();
                                                        final ContentValues contentValues = entry.getValue();
                                                        s = entry.getKey();
                                                        if (contentValues == null) {
                                                            break Label_0252;
                                                        }
                                                        asLong = contentValues.getAsLong("__updatetime__");
                                                        if (asLong == null || currentTimeMillis - asLong >= 10000L) {
                                                            break Label_0225;
                                                        }
                                                        com.android.mail.utils.E.c("ConvCursor", "IN resetCursor, keep recent changes to %s", s);
                                                        n = 1;
                                                        if (!contentValues.containsKey("__deleted__") || alU.contains(s)) {
                                                            break Label_0369;
                                                        }
                                                        --this.amk;
                                                        final Object[] array = { this.amk, null };
                                                        if (com.android.mail.utils.E.isLoggable("ConvCursor", 3)) {
                                                            array[1] = s;
                                                            com.android.mail.utils.E.d("ConvCursor", "IN resetCursor, sDeletedCount decremented to: %d by %s", array);
                                                            b = true;
                                                            break Label_0372;
                                                        }
                                                        break Label_0395;
                                                        iterator.remove();
                                                        continue Label_0129_Outer;
                                                    }
                                                }
                                                if (asLong == null) {
                                                    com.android.mail.utils.E.f("ConvCursor", "null updateTime from mCacheMap for key: %s", s);
                                                }
                                                n = 0;
                                                continue Label_0186_Outer;
                                            }
                                        }
                                        com.android.mail.utils.E.f("ConvCursor", "null ContentValues from mCacheMap for key: %s", s);
                                        b = false;
                                        n2 = 0;
                                        break Label_0376;
                                    }
                                    b = false;
                                }
                                n2 = n;
                            }
                            if (n2 != 0 && !b) {
                                continue Label_0186_Outer;
                            }
                            break;
                        }
                        continue;
                    }
                }
                String s = "[redacted]";
                continue;
            }
        }
        if (this.alU != null) {
            this.close();
        }
        this.alU = alU;
        this.vk = -1;
        this.alU.moveToPosition(this.vk);
        if (!this.ami) {
            this.alU.registerContentObserver((ContentObserver)this.amh);
            this.ami = true;
        }
        this.amb = false;
        final boolean pt = this.alU.pt();
        this.alU.pu();
        if (pt) {
            this.pa();
        }
    }
    // monitorexit(o)
    
    private void a(final String s, final String s2, final Object o) {
        if (oY()) {
            com.android.mail.utils.E.e("ConvCursor", new Error(), "cacheValue incorrectly being called from non-UI thread", new Object[0]);
        }
    Label_0109_Outer:
        while (true) {
            while (true) {
            Label_0208:
                while (true) {
                    ContentValues contentValues = null;
                Label_0201:
                    while (true) {
                        final boolean booleanValue;
                        Label_0192: {
                            synchronized (this.alX) {
                                contentValues = this.alW.get(s);
                                if (contentValues == null) {
                                    final ContentValues contentValues2 = new ContentValues();
                                    this.alW.put(s, contentValues2);
                                    final ContentValues contentValues3 = contentValues2;
                                    if (s2.equals("__deleted__")) {
                                        booleanValue = (boolean)o;
                                        if (contentValues3.get(s2) == null) {
                                            break Label_0208;
                                        }
                                        final int n = 1;
                                        if (booleanValue && n == 0) {
                                            ++this.amk;
                                        }
                                        else {
                                            if (!booleanValue && n != 0) {
                                                --this.amk;
                                                contentValues3.remove(s2);
                                                return;
                                            }
                                            break Label_0192;
                                        }
                                    }
                                    b(contentValues3, s2, o);
                                    contentValues3.put("__updatetime__", System.currentTimeMillis());
                                    return;
                                }
                                break Label_0201;
                            }
                        }
                        if (!booleanValue) {
                            break;
                        }
                        continue;
                    }
                    final ContentValues contentValues3 = contentValues;
                    continue Label_0109_Outer;
                }
                final int n = 0;
                continue;
            }
        }
    }
    // monitorexit(o2)
    
    public static void a(final ArrayList<Uri> list, final ArrayList<Boolean> list2, final ContentValues contentValues) {
        final ArrayList<String> list3 = new ArrayList<String>();
        for (int i = 0; i < list.size(); ++i) {
            list3.add(list.get(i).buildUpon().appendPath(new StringBuilder().append(list2.get(i)).toString()).toString());
        }
        contentValues.put("folders_updated", TextUtils.join((CharSequence)",", (Iterable)list3));
    }
    
    public static boolean a(final u u) {
        boolean b = true;
        if (u == null) {
            b = false;
        }
        else {
            final Bundle extras = u.getExtras();
            int int1;
            if (extras == null) {
                int1 = (b ? 1 : 0);
            }
            else {
                int1 = extras.getInt("cursor_status");
            }
            if (u.getCount() <= 0 && 4 != int1 && 8 != int1) {
                return false;
            }
        }
        return b;
    }
    
    private F at(final boolean b) {
        Uri uri = this.aml;
        if (b) {
            uri = uri.buildUpon().appendQueryParameter("limit", "50").build();
        }
        System.currentTimeMillis();
        ag.cJ("query");
        final Cursor query = this.Hb.query(uri, this.amm, (String)null, (String[])null, (String)null);
        ag.Bi();
        if (query == null) {
            com.android.mail.utils.E.e("ConvCursor", "doQuery returning null cursor, uri: " + uri, new Object[0]);
        }
        System.gc();
        return new F(query, this.amo);
    }
    
    private static void b(final ContentValues contentValues, final String s, final Object o) {
        if (o instanceof Boolean) {
            int n;
            if (o) {
                n = 1;
            }
            else {
                n = 0;
            }
            contentValues.put(s, n);
            return;
        }
        if (o instanceof Integer) {
            contentValues.put(s, (Integer)o);
            return;
        }
        if (o instanceof String) {
            contentValues.put(s, (String)o);
            return;
        }
        if (o instanceof byte[]) {
            contentValues.put(s, (byte[])o);
            return;
        }
        throw new IllegalArgumentException("Value class not compatible with cache: " + o.getClass().getName());
    }
    
    public static void b(final Collection<Folder> collection, final ContentValues contentValues) {
        contentValues.put("rawFolders", FolderList.p(collection).uN());
    }
    
    private Object bT(final int n) {
        return this.d(this.alU.ps(), n);
    }
    
    private Object d(final String s, final int n) {
        final ContentValues contentValues = this.alW.get(s);
        if (contentValues != null) {
            String s2;
            if (n == -1) {
                s2 = "__deleted__";
            }
            else {
                s2 = this.amf[n];
            }
            return contentValues.get(s2);
        }
        return null;
    }
    
    private int e(final Collection<z> collection) {
        return u.alT.apply(collection, this);
    }
    
    private static Uri j(final Uri uri) {
        if (!uri.getAuthority().equals(A.AUTHORITY)) {
            return uri;
        }
        final List pathSegments = uri.getPathSegments();
        final Uri$Builder authority = new Uri$Builder().scheme(uri.getScheme()).authority((String)pathSegments.get(0));
        for (int i = 1; i < pathSegments.size(); ++i) {
            authority.appendPath((String)pathSegments.get(i));
        }
        return authority.build();
    }
    
    private static String k(final Uri uri) {
        return Uri.decode(j(uri).toString());
    }
    
    private void oW() {
        if (!this.Mg && !this.amj) {
            if (this.amb && this.alZ == null) {
                this.pb();
            }
            else if (this.ama) {
                this.pc();
            }
        }
    }
    
    static boolean oY() {
        return Looper.getMainLooper().getThread() != Thread.currentThread();
    }
    
    private void pa() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/android/mail/browse/u.alX:Ljava/lang/Object;
        //     4: astore_1       
        //     5: aload_1        
        //     6: monitorenter   
        //     7: aload_0        
        //     8: getfield        com/android/mail/browse/u.ami:Z
        //    11: istore_3       
        //    12: iload_3        
        //    13: ifeq            32
        //    16: aload_0        
        //    17: getfield        com/android/mail/browse/u.alU:Lcom/android/mail/browse/F;
        //    20: aload_0        
        //    21: getfield        com/android/mail/browse/u.amh:Lcom/android/mail/browse/D;
        //    24: invokevirtual   com/android/mail/browse/F.unregisterContentObserver:(Landroid/database/ContentObserver;)V
        //    27: aload_0        
        //    28: iconst_0       
        //    29: putfield        com/android/mail/browse/u.ami:Z
        //    32: aload_0        
        //    33: iconst_1       
        //    34: putfield        com/android/mail/browse/u.amb:Z
        //    37: aload_0        
        //    38: getfield        com/android/mail/browse/u.Mg:Z
        //    41: ifne            48
        //    44: aload_0        
        //    45: invokespecial   com/android/mail/browse/u.pb:()V
        //    48: aload_1        
        //    49: monitorexit    
        //    50: return         
        //    51: astore_2       
        //    52: aload_1        
        //    53: monitorexit    
        //    54: aload_2        
        //    55: athrow         
        //    56: astore          4
        //    58: goto            27
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                             
        //  -----  -----  -----  -----  ---------------------------------
        //  7      12     51     56     Any
        //  16     27     56     61     Ljava/lang/IllegalStateException;
        //  16     27     51     56     Any
        //  27     32     51     56     Any
        //  32     48     51     56     Any
        //  48     50     51     56     Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0027:
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
    
    private void pb() {
        if (!this.amj) {
            synchronized (this.alY) {
                final Iterator<y> iterator = this.alY.iterator();
                while (iterator.hasNext()) {
                    iterator.next().pm();
                }
            }
        }
        // monitorexit(list)
    }
    
    private void pc() {
        synchronized (this.alY) {
            final Iterator<y> iterator = this.alY.iterator();
            while (iterator.hasNext()) {
                iterator.next().pn();
            }
        }
    }
    // monitorexit(list)
    
    private void pd() {
        synchronized (this.alY) {
            final Iterator<y> iterator = this.alY.iterator();
            while (iterator.hasNext()) {
                iterator.next().onDataSetChanged();
            }
        }
        // monitorexit(list)
        this.pj();
    }
    
    public final int N(final long n) {
        return this.alU.P(n);
    }
    
    public final int O(final long n) {
        final int p = this.alU.P(n);
        if (p < 0) {
            return p;
        }
        int n2 = 0;
    Label_0141_Outer:
        while (true) {
            while (true) {
            Label_0154:
                while (true) {
                    final int bg;
                    synchronized (this.alX) {
                        final Iterator<Map.Entry<String, ContentValues>> iterator = this.alW.entrySet().iterator();
                        n2 = p;
                        if (!iterator.hasNext()) {
                            break;
                        }
                        final Map.Entry<String, ContentValues> entry = iterator.next();
                        if (!entry.getValue().containsKey("__deleted__")) {
                            break Label_0154;
                        }
                        bg = this.alU.bg(entry.getKey());
                        if (bg == p) {
                            return -1;
                        }
                    }
                    if (bg < 0 || bg >= p) {
                        break Label_0154;
                    }
                    final int n3 = n2 - 1;
                    n2 = n3;
                    continue Label_0141_Outer;
                }
                final int n3 = n2;
                continue;
            }
        }
        // monitorexit(o)
        return n2;
    }
    
    public final int a(final Conversation conversation, final String s, final boolean b) {
        return this.a(Arrays.asList(conversation), s, b);
    }
    
    public final int a(final Collection<Conversation> collection, final be be) {
        return this.a(collection, 0, be);
    }
    
    public final int a(final Collection<Conversation> collection, final String s, final int n) {
        if (com.android.mail.utils.E.isLoggable("ConvCursor", 3)) {
            com.android.mail.utils.E.c("ConvCursor", "ConversationCursor.updateInt(conversations=%s, columnName=%s)", collection.toArray(), s);
        }
        final ContentValues contentValues = new ContentValues();
        contentValues.put(s, n);
        return this.a(collection, contentValues);
    }
    
    public final int a(final Collection<Conversation> collection, final String s, final boolean b) {
        final ContentValues contentValues = new ContentValues();
        contentValues.put(s, b);
        return this.a(collection, contentValues);
    }
    
    public final z a(final Conversation conversation, final ContentValues contentValues) {
        return this.a(conversation, 2, contentValues, null);
    }
    
    public final z a(final Conversation conversation, final ArrayList<Uri> list, final ArrayList<Boolean> list2, final Collection<Folder> collection, final be be) {
        final ContentValues contentValues = new ContentValues();
        a(list, list2, contentValues);
        b(collection, contentValues);
        return this.a(conversation, 2, contentValues, be);
    }
    
    public final void a(final Context context, final Uri uri) {
        new Thread(new v(this, context, uri)).start();
        u.alT.m(this);
    }
    
    public final void a(final Uri uri, final String s, final Object o) {
        final String k = k(uri);
        synchronized (this.alX) {
            this.a(k, s, o);
            // monitorexit(this.alX)
            this.pd();
        }
    }
    
    public final void a(final y y) {
        synchronized (this.alY) {
            final int size = this.alY.size();
            if (!this.alY.contains(y)) {
                this.alY.add(y);
            }
            else {
                com.android.mail.utils.E.c("ConvCursor", "Ignoring duplicate add of listener", new Object[0]);
            }
            // monitorexit(this.alY)
            if (size == 0 && this.amb) {
                this.pb();
            }
        }
    }
    
    final void a(final Conversation conversation) {
        conversation.aze &= 0xFFFFFFFE;
        this.amd.remove(conversation);
        com.android.mail.utils.E.c("ConvCursor", "[All dead: %s]", conversation.uri);
        if (this.amd.isEmpty()) {
            this.amj = false;
            this.oW();
        }
    }
    
    public final void a(final l l, final int n) {
        if (this.alU != null) {
            this.alU.a(l, n);
        }
    }
    
    final void a(final String s, final Conversation conversation) {
        com.android.mail.utils.E.c("ConvCursor", "[Mostly dead, deferring: %s] ", s);
        this.a(s, "conversationFlags", 1);
        conversation.aze |= 0x1;
        this.amd.add(conversation);
        this.amj = true;
    }
    
    public final int b(final Collection<Conversation> collection, final be be) {
        return this.a(collection, 3, be);
    }
    
    public final void b(final y y) {
        synchronized (this.alY) {
            this.alY.remove(y);
        }
    }
    
    public final byte[] bU(final int n) {
        return (byte[])this.bT(n);
    }
    
    final boolean bf(final String s) {
        com.android.mail.utils.E.c("ConvCursor", "[Clearing mostly dead %s] ", s);
        this.amd.clear();
        this.amj = false;
        final Object d = this.d(s, 16);
        if (d != null) {
            final int intValue = (int)d;
            if ((intValue & 0x1) != 0x0) {
                this.a(s, "conversationFlags", intValue & 0xFFFFFFFE);
                return true;
            }
        }
        return false;
    }
    
    public final int c(final Collection<Conversation> collection, final ContentValues contentValues) {
        return this.e(this.a(collection, 130, contentValues, null));
    }
    
    public final int c(final Collection<Conversation> collection, final be be) {
        return this.a(collection, 4, be);
    }
    
    public final void close() {
        if (this.alU == null || this.alU.isClosed()) {
            return;
        }
        Label_0040: {
            if (!this.ami) {
                break Label_0040;
            }
            while (true) {
                try {
                    this.alU.unregisterContentObserver((ContentObserver)this.amh);
                    this.ami = false;
                    this.alU.close();
                }
                catch (IllegalStateException ex) {
                    continue;
                }
                break;
            }
        }
    }
    
    public final void copyStringToBuffer(final int n, final CharArrayBuffer charArrayBuffer) {
        throw new UnsupportedOperationException();
    }
    
    public final int d(final Collection<z> collection) {
        return this.e(collection);
    }
    
    public final int d(final Collection<Conversation> collection, final be be) {
        return this.a(collection, 5, be);
    }
    
    public final void deactivate() {
        throw new UnsupportedOperationException();
    }
    
    public final void disable() {
        this.close();
        this.alW.clear();
        this.alY.clear();
        this.alU = null;
    }
    
    public final int e(final Collection<Conversation> collection, final be be) {
        return this.a(collection, 6, be);
    }
    
    public final int f(final Collection<Conversation> collection) {
        return this.a(collection, 0, null);
    }
    
    public final int f(final Collection<Conversation> collection, final be be) {
        return this.a(collection, 7, be);
    }
    
    public final int g(final Collection<Conversation> collection) {
        return this.a(collection, 8, null);
    }
    
    public final byte[] getBlob(final int n) {
        final Object bt = this.bT(n);
        if (bt != null) {
            return (byte[])bt;
        }
        return this.alU.getBlob(n);
    }
    
    public final int getColumnCount() {
        return this.alU.getColumnCount();
    }
    
    public final int getColumnIndex(final String s) {
        return this.alU.getColumnIndex(s);
    }
    
    public final int getColumnIndexOrThrow(final String s) {
        return this.alU.getColumnIndexOrThrow(s);
    }
    
    public final String getColumnName(final int n) {
        return this.alU.getColumnName(n);
    }
    
    public final String[] getColumnNames() {
        return this.alU.getColumnNames();
    }
    
    public final int getCount() {
        if (this.alU == null) {
            throw new IllegalStateException("getCount() on disabled cursor: " + this.mName + "(" + this.aml + ")");
        }
        return this.alU.getCount() - this.amk;
    }
    
    public final double getDouble(final int n) {
        final Object bt = this.bT(n);
        if (bt != null) {
            return (double)bt;
        }
        return this.alU.getDouble(n);
    }
    
    public final Bundle getExtras() {
        if (this.alU != null) {
            return this.alU.getExtras();
        }
        return Bundle.EMPTY;
    }
    
    public final float getFloat(final int n) {
        final Object bt = this.bT(n);
        if (bt != null) {
            return (float)bt;
        }
        return this.alU.getFloat(n);
    }
    
    public final int getInt(final int n) {
        final Object bt = this.bT(n);
        if (bt != null) {
            return (int)bt;
        }
        return this.alU.getInt(n);
    }
    
    public final long getLong(final int n) {
        final Object bt = this.bT(n);
        if (bt != null) {
            return (long)bt;
        }
        return this.alU.getLong(n);
    }
    
    public final Uri getNotificationUri() {
        if (this.alU == null) {
            return null;
        }
        return this.alU.getNotificationUri();
    }
    
    public final int getPosition() {
        return this.vk;
    }
    
    public final short getShort(final int n) {
        final Object bt = this.bT(n);
        if (bt != null) {
            return (short)bt;
        }
        return this.alU.getShort(n);
    }
    
    public final String getString(final int n) {
        if (n == 1) {
            return a(this.alU.ps(), (StringBuilder)null);
        }
        final Object bt = this.bT(n);
        if (bt != null) {
            return (String)bt;
        }
        return this.alU.getString(n);
    }
    
    public final int getType(final int n) {
        return this.alU.getType(n);
    }
    
    public final boolean getWantsAllOnMoveCalls() {
        throw new UnsupportedOperationException();
    }
    
    public final int h(final Collection<Conversation> collection) {
        return this.a(collection, 9, null);
    }
    
    @Override
    public final int hashCode() {
        return super.hashCode();
    }
    
    public final int i(final Collection<Conversation> collection) {
        return this.a(collection, 131, null);
    }
    
    public final boolean isAfterLast() {
        throw new UnsupportedOperationException();
    }
    
    public final boolean isBeforeFirst() {
        throw new UnsupportedOperationException();
    }
    
    public final boolean isClosed() {
        return this.alU == null || this.alU.isClosed();
    }
    
    public final boolean isFirst() {
        throw new UnsupportedOperationException();
    }
    
    public final boolean isLast() {
        throw new UnsupportedOperationException();
    }
    
    public final boolean isNull(final int n) {
        throw new UnsupportedOperationException();
    }
    
    public final int j(final Collection<Conversation> collection) {
        return this.a(collection, 128, null);
    }
    
    public final void kc() {
        for (Object o = this.alU; o != null; o = ((CursorWrapper)o).getWrappedCursor()) {
            if (o instanceof J) {
                ((J)o).kc();
                break;
            }
            if (!(o instanceof CursorWrapper)) {
                break;
            }
        }
    }
    
    public final void kd() {
        for (Object o = this.alU; o != null; o = ((CursorWrapper)o).getWrappedCursor()) {
            if (o instanceof J) {
                ((J)o).kd();
                break;
            }
            if (!(o instanceof CursorWrapper)) {
                break;
            }
        }
    }
    
    public final boolean move(final int n) {
        throw new UnsupportedOperationException("move unsupported!");
    }
    
    public final boolean moveToFirst() {
        if (this.alU == null) {
            throw new IllegalStateException("moveToFirst() on disabled cursor: " + this.mName + "(" + this.aml + ")");
        }
        this.alU.moveToPosition(-1);
        this.vk = -1;
        return this.moveToNext();
    }
    
    public final boolean moveToLast() {
        throw new UnsupportedOperationException("moveToLast unsupported!");
    }
    
    public final boolean moveToNext() {
        while (this.alU.moveToNext()) {
            if (!(this.bT(-1) instanceof Integer)) {
                ++this.vk;
                return true;
            }
        }
        this.vk = this.getCount();
        return false;
    }
    
    public final boolean moveToPosition(final int i) {
        while (this.alU != null) {
            if (this.alU.getPosition() == -1) {
                com.android.mail.utils.E.c("ConvCursor", "*** Underlying cursor position is -1 asking to move from %d to %d", this.vk, i);
            }
            boolean moveToFirst;
            if (i == 0) {
                moveToFirst = this.moveToFirst();
            }
            else {
                if (i < 0) {
                    this.vk = -1;
                    this.alU.moveToPosition(this.vk);
                    return false;
                }
                if (i == this.vk) {
                    final int count = this.getCount();
                    moveToFirst = false;
                    if (i < count) {
                        return true;
                    }
                }
                else {
                    if (i > this.vk) {
                        while (i > this.vk) {
                            if (!this.moveToNext()) {
                                return false;
                            }
                        }
                        return true;
                    }
                    if (i >= 0 && this.vk - i > i) {
                        this.moveToFirst();
                        continue;
                    }
                    while (i < this.vk) {
                        if (!this.moveToPrevious()) {
                            return false;
                        }
                    }
                    return true;
                }
            }
            return moveToFirst;
        }
        throw new IllegalStateException("moveToPosition() on disabled cursor: " + this.mName + "(" + this.aml + ")");
    }
    
    public final boolean moveToPrevious() {
        while (this.alU.moveToPrevious()) {
            if (!(this.bT(-1) instanceof Integer)) {
                --this.vk;
                return true;
            }
        }
        this.vk = -1;
        return false;
    }
    
    public final void oV() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_0       
        //     1: istore_1       
        //     2: aload_0        
        //     3: getfield        com/android/mail/browse/u.alX:Ljava/lang/Object;
        //     6: astore_2       
        //     7: aload_2        
        //     8: monitorenter   
        //     9: ldc_w           "ConvCursor"
        //    12: ldc_w           "Create: initial creation"
        //    15: iconst_0       
        //    16: anewarray       Ljava/lang/Object;
        //    19: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //    22: pop            
        //    23: aload_0        
        //    24: aload_0        
        //    25: getfield        com/android/mail/browse/u.amc:Z
        //    28: invokespecial   com/android/mail/browse/u.at:(Z)Lcom/android/mail/browse/F;
        //    31: astore          6
        //    33: aload_0        
        //    34: getfield        com/android/mail/browse/u.alU:Lcom/android/mail/browse/F;
        //    37: ifnull          44
        //    40: aload_0        
        //    41: invokevirtual   com/android/mail/browse/u.close:()V
        //    44: aload_0        
        //    45: aload           6
        //    47: invokevirtual   com/android/mail/browse/F.getColumnNames:()[Ljava/lang/String;
        //    50: putfield        com/android/mail/browse/u.amf:[Ljava/lang/String;
        //    53: invokestatic    com/google/common/collect/ImmutableSet.Zx:()Lcom/google/common/collect/z;
        //    56: astore          7
        //    58: aload_0        
        //    59: getfield        com/android/mail/browse/u.amf:[Ljava/lang/String;
        //    62: astore          8
        //    64: aload           8
        //    66: arraylength    
        //    67: istore          9
        //    69: iload_1        
        //    70: iload           9
        //    72: if_icmpge       91
        //    75: aload           7
        //    77: aload           8
        //    79: iload_1        
        //    80: aaload         
        //    81: invokevirtual   com/google/common/collect/z.aH:(Ljava/lang/Object;)Lcom/google/common/collect/z;
        //    84: pop            
        //    85: iinc            1, 1
        //    88: goto            69
        //    91: aload_0        
        //    92: aload           7
        //    94: invokevirtual   com/google/common/collect/z.Zy:()Lcom/google/common/collect/ImmutableSet;
        //    97: putfield        com/android/mail/browse/u.amg:Ljava/util/Set;
        //   100: aload_0        
        //   101: iconst_0       
        //   102: putfield        com/android/mail/browse/u.amb:Z
        //   105: aload_0        
        //   106: iconst_0       
        //   107: putfield        com/android/mail/browse/u.ama:Z
        //   110: aload_0        
        //   111: aconst_null    
        //   112: putfield        com/android/mail/browse/u.alZ:Lcom/android/mail/browse/E;
        //   115: aload_0        
        //   116: aload           6
        //   118: invokespecial   com/android/mail/browse/u.a:(Lcom/android/mail/browse/F;)V
        //   121: aload_0        
        //   122: getfield        com/android/mail/browse/u.amn:Landroid/os/Handler;
        //   125: new             Lcom/android/mail/browse/w;
        //   128: dup            
        //   129: aload_0        
        //   130: invokespecial   com/android/mail/browse/w.<init>:(Lcom/android/mail/browse/u;)V
        //   133: invokevirtual   android/os/Handler.post:(Ljava/lang/Runnable;)Z
        //   136: pop            
        //   137: aload_0        
        //   138: invokevirtual   com/android/mail/browse/u.pj:()V
        //   141: aload_0        
        //   142: getfield        com/android/mail/browse/u.amc:Z
        //   145: ifeq            157
        //   148: aload_0        
        //   149: iconst_0       
        //   150: putfield        com/android/mail/browse/u.amc:Z
        //   153: aload_0        
        //   154: invokespecial   com/android/mail/browse/u.pa:()V
        //   157: aload_2        
        //   158: monitorexit    
        //   159: return         
        //   160: astore_3       
        //   161: aload_0        
        //   162: getfield        com/android/mail/browse/u.amc:Z
        //   165: ifeq            177
        //   168: aload_0        
        //   169: iconst_0       
        //   170: putfield        com/android/mail/browse/u.amc:Z
        //   173: aload_0        
        //   174: invokespecial   com/android/mail/browse/u.pa:()V
        //   177: aload_3        
        //   178: athrow         
        //   179: astore          4
        //   181: aload_2        
        //   182: monitorexit    
        //   183: aload           4
        //   185: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  9      44     160    179    Any
        //  44     69     160    179    Any
        //  75     85     160    179    Any
        //  91     141    160    179    Any
        //  141    157    179    186    Any
        //  157    159    179    186    Any
        //  161    177    179    186    Any
        //  177    179    179    186    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0177:
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
    
    public final Set<Long> oX() {
        if (this.alU != null) {
            return this.alU.pr();
        }
        return null;
    }
    
    public final Set<String> oZ() {
        final HashSet<String> set;
        synchronized (this.alX) {
            set = new HashSet<String>();
            final Iterator<Map.Entry<String, ContentValues>> iterator = this.alW.entrySet().iterator();
            final StringBuilder sb = new StringBuilder();
            while (iterator.hasNext()) {
                final Map.Entry<String, ContentValues> entry = iterator.next();
                if (entry.getValue().containsKey("__deleted__")) {
                    set.add(a(entry.getKey(), sb));
                }
            }
        }
        // monitorexit(o)
        return set;
    }
    
    public final void pause() {
        this.Mg = true;
    }
    
    public final boolean pe() {
        return this.amb;
    }
    
    public final boolean pf() {
        return this.ama;
    }
    
    public final Conversation pg() {
        Conversation ph = this.ph();
        if (ph == null) {
            ph = new Conversation((Cursor)this);
            this.alU.b(ph);
        }
        return ph;
    }
    
    public final Conversation ph() {
        final Conversation pg = this.alU.pg();
        if (pg == null) {
            return null;
        }
        final ContentValues contentValues = this.alW.get(this.alU.ps());
        if (contentValues != null) {
            final ContentValues contentValues2 = new ContentValues();
            for (final String s : contentValues.keySet()) {
                if (this.amg.contains(s)) {
                    b(contentValues2, s, contentValues.get(s));
                }
            }
            if (contentValues2.size() > 0) {
                final Conversation conversation = new Conversation(pg);
                conversation.d(contentValues2);
                return conversation;
            }
        }
        return pg;
    }
    
    public final void pi() {
        F.g(this.alU);
    }
    
    public final void pj() {
        this.amn.post((Runnable)new x(this));
    }
    
    public final boolean refresh() {
        synchronized (this.alX) {
            if (this.alZ != null) {
                return false;
            }
            if (this.alU != null) {
                this.alU.pq();
            }
            (this.alZ = new E(this, (byte)0)).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, (Object[])new Void[0]);
            return true;
        }
    }
    
    public final void registerContentObserver(final ContentObserver contentObserver) {
    }
    
    public final void registerDataSetObserver(final DataSetObserver dataSetObserver) {
    }
    
    public final boolean requery() {
        return true;
    }
    
    public final Bundle respond(final Bundle bundle) {
        if (this.alU != null) {
            return this.alU.respond(bundle);
        }
        return Bundle.EMPTY;
    }
    
    public final void resume() {
        this.Mg = false;
        this.oW();
    }
    
    public final void setNotificationUri(final ContentResolver contentResolver, final Uri uri) {
        throw new UnsupportedOperationException();
    }
    
    public final void sync() {
        if (this.alV == null) {
            return;
        }
        synchronized (this.alX) {
            this.alZ = null;
            this.ama = false;
            this.a(this.alV);
            this.alV = null;
            // monitorexit(this.alX)
            this.pd();
        }
    }
    
    @Override
    public final String toString() {
        final StringBuilder sb = new StringBuilder("{");
        sb.append(super.toString());
        sb.append(" mName=");
        sb.append(this.mName);
        sb.append(" mDeferSync=");
        sb.append(this.amj);
        sb.append(" mRefreshRequired=");
        sb.append(this.amb);
        sb.append(" mRefreshReady=");
        sb.append(this.ama);
        sb.append(" mRefreshTask=");
        sb.append(this.alZ);
        sb.append(" mPaused=");
        sb.append(this.Mg);
        sb.append(" mDeletedCount=");
        sb.append(this.amk);
        sb.append(" mUnderlying=");
        sb.append(this.alU);
        if (com.android.mail.utils.E.isLoggable("ConvCursor", 3)) {
            sb.append(" mCacheMap=");
            sb.append(this.alW);
        }
        sb.append("}");
        return sb.toString();
    }
    
    public final void unregisterContentObserver(final ContentObserver contentObserver) {
    }
    
    public final void unregisterDataSetObserver(final DataSetObserver dataSetObserver) {
    }
}
