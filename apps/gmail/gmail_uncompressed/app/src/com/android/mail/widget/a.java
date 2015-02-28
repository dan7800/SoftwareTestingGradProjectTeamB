package com.android.mail.widget;

import android.widget.*;
import android.net.*;
import android.appwidget.*;
import com.google.common.primitives.*;
import android.text.*;
import com.google.android.gm.provider.*;
import android.content.*;
import com.android.mail.providers.*;

public class a extends b
{
    @Override
    protected final void a(final Context context, final RemoteViews remoteViews, final int n, final Account account, final int n2, final int n3, final Uri uri, final Uri uri2, final String s) {
        GmailWidgetService.b(context, remoteViews, n, account, n2, n3, uri, uri2, s);
    }
    
    @Override
    protected final int[] aO(final Context context) {
        final AppWidgetManager instance = AppWidgetManager.getInstance(context);
        return Ints.a(new int[][] { instance.getAppWidgetIds(new ComponentName(context, "com.google.android.gm.widget.GmailWidgetProvider")), instance.getAppWidgetIds(new ComponentName(context, "com.google.android.gm.widget.GoogleMailWidgetProvider")) });
    }
    
    @Override
    protected final void d(final Context context, final int n) {
        com.google.android.gm.persistence.b.DD();
        final SharedPreferences br = com.google.android.gm.persistence.b.br(context);
        final SharedPreferences$Editor edit = br.edit();
        final String string = "widget-account-" + n;
        String string2 = br.getString(string, (String)null);
        if (string2 != null) {
            final String[] split = TextUtils.split(string2, " ");
            String i;
            if (split.length == 2) {
                string2 = split[0];
                i = split[1];
            }
            else {
                i = com.google.android.gm.persistence.b.I(context, string2);
            }
            final Account g = GmailProvider.g(context, string2);
            final Folder u = GmailProvider.u(context, string2, i);
            if (g != null && u != null) {
                com.android.mail.widget.g.a(context, n, g, u.azZ.aPj.toString());
                this.b(context, n, g, u.type, u.ayg, u.azZ.aPj, u.aAc, u.name);
                edit.remove(string);
            }
        }
        edit.apply();
    }
    
    @Override
    public void onDeleted(final Context context, final int[] array) {
        super.onDeleted(context, array);
        com.google.android.gm.persistence.b.DD();
        final SharedPreferences$Editor edit = com.google.android.gm.persistence.b.br(context).edit();
        for (int i = 0; i < array.length; ++i) {
            edit.remove("widget-account-" + array[i]);
        }
        edit.apply();
    }
}
