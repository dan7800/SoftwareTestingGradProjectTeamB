package com.android.mail.utils;

import android.net.*;
import com.android.mail.compose.*;
import com.android.mail.providers.*;
import android.support.v4.app.*;
import java.util.*;
import android.app.*;
import android.content.*;
import android.widget.*;
import android.database.*;
import android.os.*;

public final class NotificationActionUtils
{
    private static long aPJ;
    public static final X<NotificationActionUtils$NotificationAction> aPK;
    public static final Set<Conversation> aPL;
    public static final Z aPM;
    
    static {
        NotificationActionUtils.aPJ = -1L;
        aPK = new X<NotificationActionUtils$NotificationAction>();
        aPL = new HashSet<Conversation>();
        aPM = new Z();
    }
    
    private static Uri B(final Uri uri) {
        return uri.buildUpon().appendQueryParameter("type", "wear").build();
    }
    
    private static Intent a(final Context context, final Account account, final Uri uri, final boolean b) {
        final Intent a = g.a(context, account, uri, b);
        a.putExtra("notification", true);
        return a;
    }
    
    private static void a(final Context context, final int n, final boolean b) {
        NotificationActionUtils.aPK.delete(n);
        if (b) {
            ((NotificationManager)context.getSystemService("notification")).cancel(n);
        }
    }
    
    public static void a(final Context context, final Intent intent, final ab ab, final ao ao, final Account account, final Conversation conversation, final Message message, final Folder folder, final int n, final long n2, final Set<String> set) {
        final ArrayList list = new ArrayList<NotificationActionUtils$NotificationActionType>(set.size());
        final Iterator<String> iterator = (Iterator<String>)set.iterator();
        while (iterator.hasNext()) {
            list.add(NotificationActionUtils$NotificationActionType.cB(iterator.next()));
        }
        final ArrayList list2 = new ArrayList<Object>(list.size());
        if (folder.uR()) {
            if (list.contains(NotificationActionUtils$NotificationActionType.aPU)) {
                list2.add(NotificationActionUtils$NotificationActionType.aPU);
            }
            if (list.contains(NotificationActionUtils$NotificationActionType.aPV)) {
                list2.add(NotificationActionUtils$NotificationActionType.aPV);
            }
            if (list.contains(NotificationActionUtils$NotificationActionType.aPW)) {
                list2.add(NotificationActionUtils$NotificationActionType.aPW);
            }
            if (list.contains(NotificationActionUtils$NotificationActionType.aPX)) {
                list2.add(NotificationActionUtils$NotificationActionType.aPX);
            }
        }
        else if (folder.uQ()) {
            if (list.contains(NotificationActionUtils$NotificationActionType.aPV)) {
                list2.add(NotificationActionUtils$NotificationActionType.aPV);
            }
            if (list.contains(NotificationActionUtils$NotificationActionType.aPW)) {
                list2.add(NotificationActionUtils$NotificationActionType.aPW);
            }
            if (list.contains(NotificationActionUtils$NotificationActionType.aPX)) {
                list2.add(NotificationActionUtils$NotificationActionType.aPX);
            }
        }
        else {
            if (list.contains(NotificationActionUtils$NotificationActionType.aPU)) {
                list2.add(NotificationActionUtils$NotificationActionType.aPU);
            }
            if (list.contains(NotificationActionUtils$NotificationActionType.aPV)) {
                list2.add(NotificationActionUtils$NotificationActionType.aPV);
            }
            if (list.contains(NotificationActionUtils$NotificationActionType.aPW)) {
                list2.add(NotificationActionUtils$NotificationActionType.aPW);
            }
            if (list.contains(NotificationActionUtils$NotificationActionType.aPX)) {
                list2.add(NotificationActionUtils$NotificationActionType.aPX);
            }
        }
        for (final NotificationActionUtils$NotificationActionType notificationActionUtils$NotificationActionType : list2) {
            final Uri uri = message.uri;
            final NotificationActionUtils$NotificationAction notificationActionUtils$NotificationAction = new NotificationActionUtils$NotificationAction(notificationActionUtils$NotificationActionType, account, conversation, message, folder, conversation.id, message.aBd, message.id, n2, 0, n);
            PendingIntent pendingIntent = null;
            switch (J.aPN[notificationActionUtils$NotificationActionType.ordinal()]) {
                default: {
                    throw new IllegalArgumentException("Invalid NotificationActionType");
                }
                case 1: {
                    final aY c = aY.c(context);
                    final Intent a = a(context, account, uri, false);
                    a.setPackage(context.getPackageName());
                    a.setData(conversation.uri);
                    a.putExtra("extra-notification-folder", (Parcelable)folder);
                    c.a(intent).a(a);
                    pendingIntent = c.m(n);
                    break;
                }
                case 2: {
                    final aY c2 = aY.c(context);
                    final Intent a2 = a(context, account, uri, true);
                    a2.setPackage(context.getPackageName());
                    a2.setData(conversation.uri);
                    a2.putExtra("extra-notification-folder", (Parcelable)folder);
                    c2.a(intent).a(a2);
                    pendingIntent = c2.m(n);
                    break;
                }
                case 3: {
                    final Intent intent2 = new Intent("com.android.mail.action.notification.ARCHIVE");
                    intent2.setPackage(context.getPackageName());
                    intent2.setData(conversation.uri);
                    a(intent2, notificationActionUtils$NotificationAction);
                    pendingIntent = PendingIntent.getService(context, n, intent2, 134217728);
                    break;
                }
                case 4: {
                    final Intent intent3 = new Intent("com.android.mail.action.notification.DELETE");
                    intent3.setPackage(context.getPackageName());
                    intent3.setData(conversation.uri);
                    a(intent3, notificationActionUtils$NotificationAction);
                    pendingIntent = PendingIntent.getService(context, n, intent3, 134217728);
                    break;
                }
            }
            final int q = notificationActionUtils$NotificationActionType.q(folder);
            final String string = context.getString(notificationActionUtils$NotificationActionType.r(folder));
            ab.a(q, string, pendingIntent);
            final Uri uri2 = message.uri;
            final NotificationActionUtils$NotificationAction notificationActionUtils$NotificationAction2 = new NotificationActionUtils$NotificationAction(notificationActionUtils$NotificationActionType, account, conversation, message, folder, conversation.id, message.aBd, message.id, n2, 1, n);
            PendingIntent pendingIntent2 = null;
            switch (J.aPN[notificationActionUtils$NotificationActionType.ordinal()]) {
                default: {
                    throw new IllegalArgumentException("Invalid NotificationActionType");
                }
                case 1:
                case 2: {
                    final aY c3 = aY.c(context);
                    final Intent a3 = a(context, account, uri2, notificationActionUtils$NotificationActionType == NotificationActionUtils$NotificationActionType.aPX);
                    a3.setPackage(context.getPackageName());
                    a3.setData(B(conversation.uri));
                    a3.putExtra("extra-notification-folder", (Parcelable)folder);
                    a3.putExtra("extra-notification-conversation", (Parcelable)conversation.uri);
                    c3.a(intent).a(a3);
                    pendingIntent2 = c3.m(n);
                    break;
                }
                case 3:
                case 4: {
                    String s;
                    if (notificationActionUtils$NotificationActionType == NotificationActionUtils$NotificationActionType.aPU) {
                        s = "com.android.mail.action.notification.ARCHIVE";
                    }
                    else {
                        s = "com.android.mail.action.notification.DELETE";
                    }
                    final Intent intent4 = new Intent(s);
                    intent4.setPackage(context.getPackageName());
                    intent4.setData(B(conversation.uri));
                    a(intent4, notificationActionUtils$NotificationAction2);
                    pendingIntent2 = PendingIntent.getService(context, n, intent4, 134217728);
                    break;
                }
            }
            int n3 = 0;
            switch (J.aPN[notificationActionUtils$NotificationActionType.ordinal()]) {
                default: {
                    n3 = q;
                    break;
                }
                case 1: {
                    n3 = 2130837766;
                    break;
                }
                case 2: {
                    n3 = 2130837767;
                    break;
                }
                case 3: {
                    n3 = 2130837764;
                    break;
                }
                case 4: {
                    n3 = 2130837765;
                    break;
                }
            }
            final Y y = new Y(n3, string, pendingIntent2);
            if (notificationActionUtils$NotificationActionType == NotificationActionUtils$NotificationActionType.aPW || notificationActionUtils$NotificationActionType == NotificationActionUtils$NotificationActionType.aPX) {
                y.a(new aN("wear_reply").h(string).a(context.getResources().getStringArray(2131689482)).ar());
            }
            ao.a(y.al());
            E.c("NotifActionUtils", "Adding wearable action!!", new Object[0]);
        }
    }
    
    public static void a(final Context context, final Account account, final Folder folder) {
        final Object[] array = new Object[2];
        Object b;
        if (account == null) {
            b = null;
        }
        else {
            b = E.B("NotifActionUtils", account.lw());
        }
        array[0] = b;
        Object b2 = null;
        if (folder != null) {
            b2 = E.B("NotifActionUtils", folder.name);
        }
        array[1] = b2;
        E.d("NotifActionUtils", "resendNotifications account: %s, folder: %s", array);
        final Intent intent = new Intent("com.android.mail.action.RESEND_NOTIFICATIONS");
        intent.setPackage(context.getPackageName());
        if (account != null) {
            intent.putExtra("accountUri", (Parcelable)account.uri);
        }
        if (folder != null) {
            intent.putExtra("folderUri", (Parcelable)folder.azZ.aPj);
        }
        context.startService(intent);
    }
    
    public static void a(final Context context, final NotificationActionUtils$NotificationAction notificationActionUtils$NotificationAction) {
        E.d("NotifActionUtils", "registerUndoTimeout for %s", notificationActionUtils$NotificationAction.AV());
        if (NotificationActionUtils.aPJ == -1L) {
            NotificationActionUtils.aPJ = context.getResources().getInteger(2131427381);
        }
        ((AlarmManager)context.getSystemService("alarm")).set(3, SystemClock.elapsedRealtime() + NotificationActionUtils.aPJ, c(context, notificationActionUtils$NotificationAction));
    }
    
    private static void a(final Intent intent, final NotificationActionUtils$NotificationAction notificationActionUtils$NotificationAction) {
        final Parcel obtain = Parcel.obtain();
        notificationActionUtils$NotificationAction.writeToParcel(obtain, 0);
        obtain.setDataPosition(0);
        intent.putExtra("com.android.mail.extra.EXTRA_NOTIFICATION_ACTION", obtain.marshall());
    }
    
    public static void b(final Context context, final NotificationActionUtils$NotificationAction notificationActionUtils$NotificationAction) {
        E.d("NotifActionUtils", "cancelUndoTimeout for %s", notificationActionUtils$NotificationAction.AV());
        ((AlarmManager)context.getSystemService("alarm")).cancel(c(context, notificationActionUtils$NotificationAction));
    }
    
    private static PendingIntent c(final Context context, final NotificationActionUtils$NotificationAction notificationActionUtils$NotificationAction) {
        final Intent intent = new Intent("com.android.mail.action.notification.UNDO_TIMEOUT");
        intent.setPackage(context.getPackageName());
        intent.setData(notificationActionUtils$NotificationAction.amr.uri);
        a(intent, notificationActionUtils$NotificationAction);
        return PendingIntent.getService(context, notificationActionUtils$NotificationAction.oN().hashCode() ^ notificationActionUtils$NotificationAction.vT().hashCode(), intent, 0);
    }
    
    public static void d(final Context context, final NotificationActionUtils$NotificationAction notificationActionUtils$NotificationAction) {
        E.d("NotifActionUtils", "processDestructiveAction: %s", notificationActionUtils$NotificationAction.AV());
        final NotificationActionUtils$NotificationActionType av = notificationActionUtils$NotificationAction.AV();
        final Conversation pg = notificationActionUtils$NotificationAction.pg();
        final Folder vt = notificationActionUtils$NotificationAction.vT();
        final ContentResolver contentResolver = context.getContentResolver();
        final Uri build = pg.uri.buildUpon().appendQueryParameter("forceUiNotifications", Boolean.TRUE.toString()).build();
        switch (J.aPN[av.ordinal()]) {
            default: {
                throw new IllegalArgumentException("The specified NotificationActionType is not a destructive action.");
            }
            case 3: {
                if (vt.uR()) {
                    final ContentValues contentValues = new ContentValues(1);
                    contentValues.put("operation", "archive");
                    contentResolver.update(build, contentValues, (String)null, (String[])null);
                    return;
                }
                final ContentValues contentValues2 = new ContentValues(1);
                contentValues2.put("folders_updated", vt.azZ.aPj.buildUpon().appendPath(Boolean.FALSE.toString()).toString());
                contentResolver.update(build, contentValues2, (String)null, (String[])null);
            }
            case 4: {
                contentResolver.delete(build, (String)null, (String[])null);
            }
        }
    }
    
    public static void e(final Context context, final NotificationActionUtils$NotificationAction notificationActionUtils$NotificationAction) {
        E.d("NotifActionUtils", "createUndoNotification for %s", notificationActionUtils$NotificationAction.AV());
        final int a = N.a(notificationActionUtils$NotificationAction.oN().uf(), notificationActionUtils$NotificationAction.vT());
        E.d("NotifActionUtils", "createUndoNotification for %s", notificationActionUtils$NotificationAction.AV());
        final ab ab = new ab(context);
        ab.h(2130837727);
        ab.a(notificationActionUtils$NotificationAction.getWhen());
        ab.d("email");
        final RemoteViews remoteViews = new RemoteViews(context.getPackageName(), 2130968771);
        remoteViews.setTextViewText(2131558777, (CharSequence)context.getString(notificationActionUtils$NotificationAction.AY()));
        final String packageName = context.getPackageName();
        final Intent intent = new Intent("com.android.mail.action.notification.UNDO");
        intent.setPackage(packageName);
        intent.setData(notificationActionUtils$NotificationAction.amr.uri);
        a(intent, notificationActionUtils$NotificationAction);
        remoteViews.setOnClickPendingIntent(2131558969, PendingIntent.getService(context, a, intent, 268435456));
        ab.a(remoteViews);
        final Intent intent2 = new Intent("com.android.mail.action.notification.DESTRUCT");
        intent2.setPackage(packageName);
        intent2.setData(notificationActionUtils$NotificationAction.amr.uri);
        a(intent2, notificationActionUtils$NotificationAction);
        ab.b(PendingIntent.getService(context, a, intent2, 268435456));
        ((NotificationManager)context.getSystemService("notification")).notify(a, ab.build());
        NotificationActionUtils.aPK.put(a, notificationActionUtils$NotificationAction);
        NotificationActionUtils.aPM.put(a, notificationActionUtils$NotificationAction.getWhen());
    }
    
    public static void f(final Context context, final NotificationActionUtils$NotificationAction notificationActionUtils$NotificationAction) {
        E.d("NotifActionUtils", "cancelUndoNotification for %s", notificationActionUtils$NotificationAction.AV());
        final Account on = notificationActionUtils$NotificationAction.oN();
        final Folder vt = notificationActionUtils$NotificationAction.vT();
        final Conversation pg = notificationActionUtils$NotificationAction.pg();
        final int a = N.a(on.uf(), vt);
        NotificationActionUtils.aPL.add(pg);
        a(context, a, false);
        a(context, on, vt);
    }
    
    public static void g(final Context context, final NotificationActionUtils$NotificationAction notificationActionUtils$NotificationAction) {
        E.d("NotifActionUtils", "processUndoNotification, %s", notificationActionUtils$NotificationAction.AV());
        final int a = N.a(notificationActionUtils$NotificationAction.oN().uf(), notificationActionUtils$NotificationAction.vT());
        a(context, a, true);
        NotificationActionUtils.aPM.delete(a);
        d(context, notificationActionUtils$NotificationAction);
    }
    
    public static void q(final DataSetObserver dataSetObserver) {
        NotificationActionUtils.aPK.Bb().registerObserver((Object)dataSetObserver);
    }
    
    public static void r(final DataSetObserver dataSetObserver) {
        NotificationActionUtils.aPK.Bb().unregisterObserver((Object)dataSetObserver);
    }
}
