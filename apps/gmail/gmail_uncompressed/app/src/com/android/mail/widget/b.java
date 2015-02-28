package com.android.mail.widget;

import com.android.mail.providers.*;
import android.net.*;
import java.lang.reflect.*;
import com.android.mail.i.*;
import android.text.*;
import android.database.*;
import android.widget.*;
import com.android.mail.utils.*;
import android.appwidget.*;
import android.content.*;
import com.android.mail.ui.*;
import android.app.*;
import com.google.common.primitives.*;
import java.util.*;
import android.os.*;

public abstract class b extends AppWidgetProvider
{
    private static final String mW;
    
    static {
        mW = D.AU();
    }
    
    public static void a(final Context context, final int n, final Account account, final int n2, final int n3, final Uri uri, final Uri uri2, final String s) {
        if (account == null || uri == null) {
            E.f(b.mW, "Missing account or folder.  account: %s folder %s", account, uri);
            return;
        }
        final Intent intent = new Intent("com.android.mail.ACTION_UPDATE_WIDGET");
        intent.setType(account.mimeType);
        intent.putExtra("widgetId", n);
        intent.putExtra("account", account.ud());
        intent.putExtra("folder-type", n2);
        intent.putExtra("folder-capabilities", n3);
        intent.putExtra("folder-uri", (Parcelable)uri);
        intent.putExtra("folder-conversation-list-uri", (Parcelable)uri2);
        intent.putExtra("folder-display-name", s);
        context.sendBroadcast(intent);
    }
    
    public static String[][] a(final Context context, final int[] array) {
        final String[][] array2 = (String[][])Array.newInstance(String.class, array.length, 2);
        for (int i = 0; i < array.length; ++i) {
            final String ct = g.ao(context).ct(array[i]);
            if (ct != null) {
                array2[i] = TextUtils.split(ct, " ");
            }
        }
        return array2;
    }
    
    public static String aP(final Context context) {
        return context.getString(2131296677);
    }
    
    private void b(final Context context, final int[] array) {
        for (final int n : array) {
            if (!g.ao(context).cs(n)) {
                this.d(context, n);
            }
        }
    }
    
    private static boolean e(final Context context, final Uri uri) {
        if (ag.D(uri)) {
            return false;
        }
        final Cursor query = context.getContentResolver().query(uri, com.android.mail.providers.E.aCv, (String)null, (String[])null, (String)null);
        try {
            if (query.moveToFirst()) {
                return true;
            }
            return false;
        }
        finally {
            query.close();
        }
    }
    
    public static void v(final Context context, final String type) {
        final Intent intent = new Intent("com.android.mail.ACTION_VALIDATE_ALL_WIDGETS");
        intent.setType(type);
        context.sendBroadcast(intent);
    }
    
    protected void a(final Context context, final RemoteViews remoteViews, final int n, final Account account, final int n2, final int n3, final Uri uri, final Uri uri2, final String s) {
        com.android.mail.widget.g.a(context, remoteViews, n, account, n2, n3, uri, uri2, s, com.android.mail.widget.g.class);
    }
    
    protected boolean a(final Context context, final Account account) {
        boolean b = false;
        if (account != null) {
            final Account[] aw = a.aw(context);
            final int length = aw.length;
            int n = 0;
            while (true) {
                b = false;
                if (n >= length) {
                    break;
                }
                final Account account2 = aw[n];
                if (account2 != null && account.uri.equals((Object)account2.uri)) {
                    b = true;
                    break;
                }
                ++n;
            }
        }
        return b;
    }
    
    protected int[] aO(final Context context) {
        return AppWidgetManager.getInstance(context).getAppWidgetIds(new ComponentName(context, context.getString(2131296677)));
    }
    
    protected final void b(final Context context, final int n, final Account account, final int n2, final int n3, final Uri uri, final Uri uri2, final String s) {
        final RemoteViews remoteViews = new RemoteViews(context.getPackageName(), 2130968782);
        if (!this.a(context, account) || !e(context, uri)) {
            remoteViews.setViewVisibility(2131558999, 8);
            remoteViews.setViewVisibility(2131559000, 8);
            remoteViews.setViewVisibility(2131559002, 8);
            remoteViews.setViewVisibility(2131559003, 8);
            remoteViews.setViewVisibility(2131559004, 8);
            remoteViews.setViewVisibility(2131559001, 0);
            remoteViews.setTextViewText(2131559003, (CharSequence)context.getString(2131296508));
            final Intent intent = new Intent(context, (Class)MailboxSelectionActivity.class);
            intent.putExtra("appWidgetId", n);
            intent.setData(Uri.parse(intent.toUri(1)));
            intent.setFlags(1073741824);
            remoteViews.setOnClickPendingIntent(2131559001, PendingIntent.getActivity(context, 0, intent, 134217728));
        }
        else {
            String s2;
            if (s == null) {
                s2 = " ";
            }
            else {
                s2 = s;
            }
            this.a(context, remoteViews, n, account, n2, n3, uri, uri2, s2);
        }
        AppWidgetManager.getInstance(context).updateAppWidget(n, remoteViews);
    }
    
    protected abstract void d(final Context p0, final int p1);
    
    protected Account g(final Context p0, final String p1) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: invokevirtual   android/content/Context.getContentResolver:()Landroid/content/ContentResolver;
        //     4: astore_3       
        //     5: aload_3        
        //     6: aload_2        
        //     7: invokestatic    android/net/Uri.parse:(Ljava/lang/String;)Landroid/net/Uri;
        //    10: getstatic       com/android/mail/providers/E.aCr:[Ljava/lang/String;
        //    13: aconst_null    
        //    14: aconst_null    
        //    15: aconst_null    
        //    16: invokevirtual   android/content/ContentResolver.query:(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
        //    19: astore          6
        //    21: aload           6
        //    23: astore          5
        //    25: aconst_null    
        //    26: astore          7
        //    28: aload           5
        //    30: ifnull          65
        //    33: aload           5
        //    35: invokeinterface android/database/Cursor.moveToFirst:()Z
        //    40: istore          8
        //    42: aconst_null    
        //    43: astore          7
        //    45: iload           8
        //    47: ifeq            65
        //    50: invokestatic    com/android/mail/providers/Account.ue:()Lcom/android/mail/providers/c;
        //    53: pop            
        //    54: aload           5
        //    56: invokestatic    com/android/mail/providers/c.j:(Landroid/database/Cursor;)Lcom/android/mail/providers/Account;
        //    59: astore          10
        //    61: aload           10
        //    63: astore          7
        //    65: aload           5
        //    67: ifnull          77
        //    70: aload           5
        //    72: invokeinterface android/database/Cursor.close:()V
        //    77: aload           7
        //    79: areturn        
        //    80: astore          4
        //    82: aconst_null    
        //    83: astore          5
        //    85: aload           5
        //    87: ifnull          97
        //    90: aload           5
        //    92: invokeinterface android/database/Cursor.close:()V
        //    97: aload           4
        //    99: athrow         
        //   100: astore          4
        //   102: goto            85
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type
        //  -----  -----  -----  -----  ----
        //  5      21     80     85     Any
        //  33     42     100    105    Any
        //  50     61     100    105    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0065:
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
    
    public void onDeleted(final Context context, final int[] array) {
        super.onDeleted(context, array);
        g.ao(context).f(array);
    }
    
    public void onReceive(final Context context, final Intent intent) {
        this.b(context, this.aO(context));
        super.onReceive(context, intent);
        E.c(b.mW, "BaseWidgetProvider.onReceive: %s", intent);
        final String action = intent.getAction();
        if ("com.android.mail.ACTION_UPDATE_WIDGET".equals(action)) {
            final int intExtra = intent.getIntExtra("widgetId", -1);
            final Account bh = Account.bH(intent.getStringExtra("account"));
            final int intExtra2 = intent.getIntExtra("folder-type", 1);
            final int intExtra3 = intent.getIntExtra("folder-capabilities", 0);
            final Uri uri = (Uri)intent.getParcelableExtra("folder-uri");
            final Uri uri2 = (Uri)intent.getParcelableExtra("folder-conversation-list-uri");
            final String stringExtra = intent.getStringExtra("folder-display-name");
            if (intExtra != -1 && bh != null && uri != null) {
                this.b(context, intExtra, bh, intExtra2, intExtra3, uri, uri2, stringExtra);
            }
        }
        else if ("com.android.mail.ACTION_VALIDATE_ALL_WIDGETS".equals(action)) {
            for (final int n : this.aO(context)) {
                String ct = g.ao(context).ct(n);
                Uri uri3;
                if (!TextUtils.isEmpty((CharSequence)ct)) {
                    final String[] split = TextUtils.split(ct, " ");
                    if (split.length == 2) {
                        ct = split[0];
                        uri3 = Uri.parse(split[1]);
                    }
                    else {
                        uri3 = Uri.EMPTY;
                    }
                }
                else {
                    uri3 = null;
                    ct = null;
                }
                Account g;
                if (!TextUtils.isEmpty((CharSequence)ct)) {
                    g = this.g(context, ct);
                }
                else {
                    g = null;
                }
                if (!this.a(context, g) || !e(context, uri3)) {
                    this.b(context, n, null, 1, 0, null, null, null);
                }
            }
        }
        else if ("com.android.mail.ACTION_NOTIFY_DATASET_CHANGED".equals(action)) {
            final Bundle extras = intent.getExtras();
            final Uri uri4 = (Uri)extras.getParcelable("accountUri");
            final Uri uri5 = (Uri)extras.getParcelable("folderUri");
            final boolean boolean1 = extras.getBoolean("update-all-widgets", false);
            if (uri4 != null || !ag.D(uri5) || boolean1) {
                final HashSet<Integer> set = new HashSet<Integer>();
                for (final int n2 : this.aO(context)) {
                    final String ct2 = g.ao(context).ct(n2);
                    Label_0487: {
                        if (ct2 != null) {
                            final String[] split2 = TextUtils.split(ct2, " ");
                            while (true) {
                                Label_0548: {
                                    if (boolean1) {
                                        break Label_0548;
                                    }
                                    int n3;
                                    if (uri4 != null && TextUtils.equals((CharSequence)uri4.toString(), (CharSequence)split2[0])) {
                                        n3 = 1;
                                    }
                                    else {
                                        if (uri5 == null || !TextUtils.equals((CharSequence)uri5.toString(), (CharSequence)split2[1])) {
                                            break Label_0548;
                                        }
                                        n3 = 1;
                                    }
                                    if (n3 != 0) {
                                        set.add(n2);
                                    }
                                    break Label_0487;
                                }
                                int n3 = boolean1 ? 1 : 0;
                                continue;
                            }
                        }
                    }
                }
                if (set.size() > 0) {
                    AppWidgetManager.getInstance(context).notifyAppWidgetViewDataChanged(Ints.O(set), 2131559002);
                }
            }
        }
    }
    
    public void onUpdate(final Context context, final AppWidgetManager appWidgetManager, final int[] array) {
        this.b(context, array);
        super.onUpdate(context, appWidgetManager, array);
        new c(this, context, array).execute((Object[])null);
    }
}
