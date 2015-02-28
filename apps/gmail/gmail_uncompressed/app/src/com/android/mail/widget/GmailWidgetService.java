package com.android.mail.widget;

import android.widget.*;
import com.android.mail.providers.*;
import android.net.*;
import java.util.*;
import android.content.*;
import android.os.*;
import android.app.*;
import com.google.android.gm.provider.*;
import com.google.android.gm.*;

public class GmailWidgetService extends g
{
    public static void b(final Context context, final RemoteViews remoteViews, final int n, final Account account, final int n2, final int n3, final Uri uri, final Uri uri2, final String s) {
        if (!account.mimeType.equals("application/gm-email-ls")) {
            final String lastPathSegment = uri.getLastPathSegment();
            final Gmail$Settings p9 = Gmail.P(context, account.lw());
            final HashSet set = new HashSet();
            set.addAll(p9.EA());
            set.addAll(p9.EB());
            if (!set.contains(lastPathSegment)) {
                remoteViews.setViewVisibility(2131559002, 8);
                remoteViews.setViewVisibility(2131559004, 0);
                final Intent intent = new Intent(context, (Class)LabelSynchronizationActivity.class);
                intent.putExtra("account", (Parcelable)account);
                intent.putExtra("folder-type", n2);
                intent.putExtra("folder-uri", (Parcelable)uri);
                intent.putExtra("folder-conversation-list-uri", (Parcelable)uri2);
                intent.putExtra("folder-display-name", s);
                intent.putExtra("update-widgetid-on-sync-change", n);
                intent.putExtra("perform-actions-internally", true);
                intent.setData(Uri.parse(intent.toUri(1)));
                intent.setFlags(1476427776);
                remoteViews.setOnClickPendingIntent(2131559004, PendingIntent.getActivity(context, 0, intent, 134217728));
                g.b(context, remoteViews, n, account, n2, n3, uri, uri2, s, GmailWidgetService.class);
                return;
            }
        }
        remoteViews.setViewVisibility(2131559002, 0);
        remoteViews.setViewVisibility(2131559004, 8);
        g.a(context, remoteViews, n, account, n2, n3, uri, uri2, s, GmailWidgetService.class);
    }
    
    @Override
    protected final void a(final Context context, final RemoteViews remoteViews, final int n, final Account account, final int n2, final int n3, final Uri uri, final Uri uri2, final String s) {
        b(context, remoteViews, n, account, n2, n3, uri, uri2, s);
    }
    
    @Override
    protected final boolean a(final Context context, final Account account) {
        return ay.a(context, account);
    }
}
