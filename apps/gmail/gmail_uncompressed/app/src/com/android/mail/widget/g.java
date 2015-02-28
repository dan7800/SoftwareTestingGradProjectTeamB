package com.android.mail.widget;

import com.android.mail.providers.*;
import com.android.mail.i.*;
import android.net.*;
import android.text.*;
import android.content.*;
import android.os.*;
import android.app.*;
import android.support.v4.app.*;
import com.android.mail.utils.*;
import android.widget.*;

public class g extends RemoteViewsService
{
    private static final Object aRh;
    private static final String mW;
    
    static {
        aRh = new Object();
        mW = D.AU();
    }
    
    public static void a(final Context context, final int n, final Account account, final String s) {
        com.android.mail.i.g.ao(context).a(n, account, s);
    }
    
    public static void a(final Context context, final RemoteViews remoteViews, final int n, final Account account, final int n2, final int n3, final Uri uri, final Uri uri2, final String s, final Class<?> clazz) {
        remoteViews.setViewVisibility(2131558999, 0);
        if (TextUtils.isEmpty((CharSequence)s) || TextUtils.isEmpty((CharSequence)account.getDisplayName())) {
            E.e(g.mW, new Error(), "Empty folder or account name.  account: %s, folder: %s", account.lw(), s);
        }
        if (!TextUtils.isEmpty((CharSequence)s)) {
            remoteViews.setTextViewText(2131558999, (CharSequence)s);
        }
        remoteViews.setViewVisibility(2131559000, 0);
        remoteViews.setViewVisibility(2131559002, 0);
        remoteViews.setViewVisibility(2131559003, 0);
        remoteViews.setViewVisibility(2131559004, 8);
        remoteViews.setViewVisibility(2131559001, 8);
        remoteViews.setEmptyView(2131559002, 2131559003);
        b(context, remoteViews, n, account, n2, n3, uri, uri2, s, clazz);
    }
    
    public static void b(final Context context, final RemoteViews remoteViews, final int n, final Account account, final int n2, final int n3, final Uri uri, final Uri uri2, final String s, final Class<?> clazz) {
        remoteViews.setViewVisibility(2131559001, 8);
        final Intent intent = new Intent(context, (Class)clazz);
        intent.putExtra("appWidgetId", n);
        intent.putExtra("account", account.ud());
        intent.putExtra("folder-type", n2);
        intent.putExtra("folder-capabilities", n3);
        intent.putExtra("folder-uri", (Parcelable)uri);
        intent.putExtra("folder-conversation-list-uri", (Parcelable)uri2);
        intent.putExtra("folder-display-name", s);
        intent.setData(Uri.parse(intent.toUri(1)));
        remoteViews.setRemoteAdapter(2131559002, intent);
        final Intent a = ag.a(context, uri, account);
        a.setPackage(context.getPackageName());
        remoteViews.setOnClickPendingIntent(2131558998, PendingIntent.getActivity(context, 0, a, 134217728));
        final Intent intent2 = new Intent();
        intent2.setPackage(context.getPackageName());
        intent2.setAction("android.intent.action.SEND");
        intent2.putExtra("account", account.ud());
        intent2.setData(account.ayt);
        intent2.putExtra("fromemail", true);
        if (account.ayt != null) {
            intent2.putExtra("composeUri", (Parcelable)account.ayt);
        }
        remoteViews.setOnClickPendingIntent(2131559000, aY.c(context).a(a).a(intent2).m(0));
        final Intent intent3 = new Intent();
        intent3.setPackage(context.getPackageName());
        intent3.setAction("android.intent.action.VIEW");
        remoteViews.setPendingIntentTemplate(2131559002, PendingIntent.getActivity(context, 0, intent3, 134217728));
    }
    
    protected void a(final Context context, final RemoteViews remoteViews, final int n, final Account account, final int n2, final int n3, final Uri uri, final Uri uri2, final String s) {
        a(context, remoteViews, n, account, n2, n3, uri, uri2, s, g.class);
    }
    
    public final boolean a(final Context context, final int n, final Account account) {
        return this.a(context, account) && com.android.mail.i.g.ao(context).cs(n);
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
    
    public RemoteViewsService$RemoteViewsFactory onGetViewFactory(final Intent intent) {
        return (RemoteViewsService$RemoteViewsFactory)new h(this.getApplicationContext(), intent, this);
    }
}
