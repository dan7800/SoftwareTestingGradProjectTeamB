package com.android.mail.providers;

import android.net.*;
import com.android.mail.utils.*;
import android.content.*;
import org.json.*;
import android.os.*;
import com.google.common.collect.*;
import java.util.*;
import android.database.*;

public abstract class t extends ContentProvider implements Loader$OnLoadCompleteListener<Cursor>
{
    private static t aAY;
    private static String ary;
    private static final String mW;
    private ContentResolver Hb;
    private final LinkedHashMap<Uri, v> aAU;
    private final Map<Uri, CursorLoader> aAV;
    private final Map<CursorLoader, Boolean> aAW;
    private Comparator<v> aAX;
    private SharedPreferences aAZ;
    
    static {
        mW = D.AU();
    }
    
    protected t() {
        this.aAU = new LinkedHashMap<Uri, v>();
        this.aAV = (Map<Uri, CursorLoader>)Maps.aan();
        this.aAW = (Map<CursorLoader, Boolean>)Maps.aan();
    }
    
    private void a(final Uri uri, final v v) {
        synchronized (this.aAU) {
            E.b(t.mW, "adding account %s", v.Nc);
            this.aAU.put(uri, v);
        }
    }
    
    public static Intent aq(final Context context) {
        return t.aAY.ap(context);
    }
    
    private void v(final Uri uri) {
        synchronized (this) {
            final CursorLoader cursorLoader = new CursorLoader(this.getContext(), uri, com.android.mail.providers.E.aCr, (String)null, (String[])null, (String)null);
            cursorLoader.registerListener(uri.hashCode(), (Loader$OnLoadCompleteListener)this);
            cursorLoader.startLoading();
            final CursorLoader cursorLoader2 = this.aAV.get(uri);
            if (cursorLoader2 != null) {
                cursorLoader2.stopLoading();
            }
            this.aAV.put(uri, cursorLoader);
            this.aAW.put(cursorLoader, false);
        }
    }
    
    public static Uri vh() {
        return Uri.parse("content://" + t.ary + "/");
    }
    
    public static t vi() {
        return t.aAY;
    }
    
    private static void vj() {
        final t aay = t.aAY;
        if (aay != null) {
            aay.Hb.notifyChange(vh(), (ContentObserver)null);
        }
    }
    
    private SharedPreferences vm() {
        if (this.aAZ == null) {
            this.aAZ = this.getContext().getSharedPreferences("MailAppProvider", 0);
        }
        return this.aAZ;
    }
    
    private boolean vn() {
        final Iterator<Boolean> iterator = this.aAW.values().iterator();
        while (iterator.hasNext()) {
            if (!iterator.next()) {
                return false;
            }
        }
        return true;
    }
    
    public static Account w(final Uri uri) {
        final t aay = t.aAY;
        Label_0054: {
            if (aay == null || !aay.vn()) {
                break Label_0054;
            }
            synchronized (aay.aAU) {
                final v v = aay.aAU.get(uri);
                if (v != null) {
                    return v.Nc;
                }
                return null;
            }
        }
    }
    
    protected abstract Intent ap(final Context p0);
    
    public final void bU(final String s) {
        final SharedPreferences$Editor edit = this.vm().edit();
        edit.putString("lastViewedAccount", s);
        edit.apply();
    }
    
    public final void bV(final String s) {
        final SharedPreferences$Editor edit = this.vm().edit();
        edit.putString("lastSendFromAccount", s);
        edit.apply();
    }
    
    public int delete(final Uri uri, final String s, final String[] array) {
        return 0;
    }
    
    protected abstract String getAuthority();
    
    public String getType(final Uri uri) {
        return null;
    }
    
    public Uri insert(final Uri uri, final ContentValues contentValues) {
        return uri;
    }
    
    public boolean onCreate() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: iconst_0       
        //     1: istore_1       
        //     2: aload_0        
        //     3: invokevirtual   com/android/mail/providers/t.getAuthority:()Ljava/lang/String;
        //     6: putstatic       com/android/mail/providers/t.ary:Ljava/lang/String;
        //     9: aload_0        
        //    10: putstatic       com/android/mail/providers/t.aAY:Lcom/android/mail/providers/t;
        //    13: aload_0        
        //    14: aload_0        
        //    15: invokevirtual   com/android/mail/providers/t.getContext:()Landroid/content/Context;
        //    18: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //    21: putfield        com/android/mail/providers/t.Hb:Landroid/content/ContentResolver;
        //    24: aload_0        
        //    25: invokespecial   com/android/mail/providers/t.vm:()Landroid/content/SharedPreferences;
        //    28: ldc             "accountList"
        //    30: aconst_null    
        //    31: invokeinterface android/content/SharedPreferences.getString:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //    36: astore          18
        //    38: aload           18
        //    40: ifnull          315
        //    43: new             Lorg/json/JSONArray;
        //    46: dup            
        //    47: aload           18
        //    49: invokespecial   org/json/JSONArray.<init>:(Ljava/lang/String;)V
        //    52: astore          19
        //    54: aload           19
        //    56: astore          4
        //    58: aload           4
        //    60: ifnull          249
        //    63: iconst_0       
        //    64: istore          7
        //    66: iload           7
        //    68: aload           4
        //    70: invokevirtual   org/json/JSONArray.length:()I
        //    73: if_icmpge       246
        //    76: new             Lcom/android/mail/providers/v;
        //    79: dup            
        //    80: aload           4
        //    82: iload           7
        //    84: invokevirtual   org/json/JSONArray.getJSONObject:(I)Lorg/json/JSONObject;
        //    87: invokespecial   com/android/mail/providers/v.<init>:(Lorg/json/JSONObject;)V
        //    90: astore          8
        //    92: aload           8
        //    94: getfield        com/android/mail/providers/v.Nc:Lcom/android/mail/providers/Account;
        //    97: getfield        com/android/mail/providers/Account.ayw:Lcom/android/mail/providers/Settings;
        //   100: ifnonnull       145
        //   103: getstatic       com/android/mail/providers/t.mW:Ljava/lang/String;
        //   106: ldc_w           "Dropping account that doesn't specify settings"
        //   109: iconst_0       
        //   110: anewarray       Ljava/lang/Object;
        //   113: invokestatic    com/android/mail/utils/E.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   116: pop            
        //   117: iinc            7, 1
        //   120: goto            66
        //   123: astore_2       
        //   124: getstatic       com/android/mail/providers/t.mW:Ljava/lang/String;
        //   127: aload_2        
        //   128: ldc_w           "ignoring unparsable accounts cache"
        //   131: iconst_0       
        //   132: anewarray       Ljava/lang/Object;
        //   135: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   138: pop            
        //   139: aconst_null    
        //   140: astore          4
        //   142: goto            58
        //   145: aload           8
        //   147: getfield        com/android/mail/providers/v.Nc:Lcom/android/mail/providers/Account;
        //   150: astore          11
        //   152: aload_0        
        //   153: getfield        com/android/mail/providers/t.Hb:Landroid/content/ContentResolver;
        //   156: aload           11
        //   158: getfield        com/android/mail/providers/Account.uri:Landroid/net/Uri;
        //   161: invokevirtual   android/content/ContentResolver.acquireContentProviderClient:(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
        //   164: astore          12
        //   166: aload           12
        //   168: ifnull          212
        //   171: aload           12
        //   173: invokevirtual   android/content/ContentProviderClient.release:()Z
        //   176: pop            
        //   177: aload_0        
        //   178: aload           11
        //   180: getfield        com/android/mail/providers/Account.uri:Landroid/net/Uri;
        //   183: aload           8
        //   185: invokespecial   com/android/mail/providers/t.a:(Landroid/net/Uri;Lcom/android/mail/providers/v;)V
        //   188: goto            117
        //   191: astore          9
        //   193: getstatic       com/android/mail/providers/t.mW:Ljava/lang/String;
        //   196: aload           9
        //   198: ldc_w           "Unable to create account object from serialized form"
        //   201: iconst_0       
        //   202: anewarray       Ljava/lang/Object;
        //   205: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   208: pop            
        //   209: goto            117
        //   212: getstatic       com/android/mail/providers/t.mW:Ljava/lang/String;
        //   215: astore          14
        //   217: iconst_1       
        //   218: anewarray       Ljava/lang/Object;
        //   221: astore          15
        //   223: aload           15
        //   225: iconst_0       
        //   226: aload           11
        //   228: invokevirtual   com/android/mail/providers/Account.lw:()Ljava/lang/String;
        //   231: aastore        
        //   232: aload           14
        //   234: ldc_w           "Dropping account without provider: %s"
        //   237: aload           15
        //   239: invokestatic    com/android/mail/utils/E.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   242: pop            
        //   243: goto            117
        //   246: invokestatic    com/android/mail/providers/t.vj:()V
        //   249: aload_0        
        //   250: invokevirtual   com/android/mail/providers/t.getContext:()Landroid/content/Context;
        //   253: invokevirtual   android/content/Context.getResources:()Landroid/content/res/Resources;
        //   256: ldc_w           2131689472
        //   259: invokevirtual   android/content/res/Resources.getStringArray:(I)[Ljava/lang/String;
        //   262: astore          5
        //   264: aload_0        
        //   265: new             Lcom/android/mail/utils/Y;
        //   268: dup            
        //   269: aload           5
        //   271: new             Lcom/android/mail/providers/u;
        //   274: dup            
        //   275: aload_0        
        //   276: invokespecial   com/android/mail/providers/u.<init>:(Lcom/android/mail/providers/t;)V
        //   279: invokespecial   com/android/mail/utils/Y.<init>:([Ljava/lang/Object;Lcom/google/android/mail/common/base/C;)V
        //   282: putfield        com/android/mail/providers/t.aAX:Ljava/util/Comparator;
        //   285: aload           5
        //   287: arraylength    
        //   288: istore          6
        //   290: iload_1        
        //   291: iload           6
        //   293: if_icmpge       313
        //   296: aload_0        
        //   297: aload           5
        //   299: iload_1        
        //   300: aaload         
        //   301: invokestatic    android/net/Uri.parse:(Ljava/lang/String;)Landroid/net/Uri;
        //   304: invokespecial   com/android/mail/providers/t.v:(Landroid/net/Uri;)V
        //   307: iinc            1, 1
        //   310: goto            290
        //   313: iconst_1       
        //   314: ireturn        
        //   315: aconst_null    
        //   316: astore          19
        //   318: goto            54
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  24     38     123    145    Ljava/lang/Exception;
        //  43     54     123    145    Ljava/lang/Exception;
        //  76     117    191    212    Ljava/lang/Exception;
        //  145    166    191    212    Ljava/lang/Exception;
        //  171    188    191    212    Ljava/lang/Exception;
        //  212    243    191    212    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0117:
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
    
    public Cursor query(final Uri uri, final String[] array, final String s, final String[] array2, final String s2) {
        final String[] n = H.n(array);
        final Bundle bundle = new Bundle();
        Label_0191: {
            if (!this.vn()) {
                break Label_0191;
            }
            int n2 = 1;
            while (true) {
                bundle.putInt("accounts_loaded", n2);
                final com.android.mail.utils.H h;
                Label_0231: {
                    String s3;
                    synchronized (this.aAU) {
                        final ArrayList<Object> f = (ArrayList<Object>)Lists.f((Iterable<? extends v>)this.aAU.values());
                        // monitorexit(this.aAU)
                        Collections.sort(f, (Comparator<? super Object>)this.aAX);
                        h = new com.android.mail.utils.H(n, f.size(), bundle);
                        final Iterator<v> iterator = (Iterator<v>)f.iterator();
                        while (iterator.hasNext()) {
                            final Account nc = iterator.next().Nc;
                            final MatrixCursor$RowBuilder row = h.newRow();
                            final Map<String, Object> ul = nc.ul();
                            for (int length = n.length, i = 0; i < length; ++i) {
                                s3 = n[i];
                                if (!ul.containsKey(s3)) {
                                    throw new IllegalStateException("Unexpected column: " + s3);
                                }
                                row.add(ul.get(s3));
                            }
                        }
                        break Label_0231;
                        n2 = 0;
                        continue;
                    }
                    throw new IllegalStateException("Unexpected column: " + s3);
                }
                h.setNotificationUri(this.Hb, vh());
                return (Cursor)h;
            }
        }
    }
    
    public void shutdown() {
        t.aAY = null;
        final Iterator<CursorLoader> iterator = this.aAV.values().iterator();
        while (iterator.hasNext()) {
            iterator.next().stopLoading();
        }
        this.aAV.clear();
        this.aAW.clear();
    }
    
    public int update(final Uri uri, final ContentValues contentValues, final String s, final String[] array) {
        return 0;
    }
    
    public final String vk() {
        return this.vm().getString("lastViewedAccount", (String)null);
    }
    
    public final String vl() {
        return this.vm().getString("lastSendFromAccount", (String)null);
    }
}
