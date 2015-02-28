package com.android.mail;

import android.app.*;
import android.os.*;
import com.android.mail.a.*;
import android.support.v4.app.*;
import com.android.mail.utils.*;
import com.android.mail.providers.*;
import android.content.*;
import android.net.*;

public class NotificationActionIntentService extends IntentService
{
    public NotificationActionIntentService() {
        super("NotificationActionIntentService");
    }
    
    protected void onHandleIntent(final Intent intent) {
        final String action = intent.getAction();
        final byte[] byteArrayExtra = intent.getByteArrayExtra("com.android.mail.extra.EXTRA_NOTIFICATION_ACTION");
        if (byteArrayExtra == null) {
            E.g("NotifActionIS", "data was null trying to unparcel the NotificationAction", new Object[0]);
            return;
        }
        final Parcel obtain = Parcel.obtain();
        obtain.unmarshall(byteArrayExtra, 0, byteArrayExtra.length);
        obtain.setDataPosition(0);
        final NotificationActionUtils$NotificationAction notificationActionUtils$NotificationAction = (NotificationActionUtils$NotificationAction)NotificationActionUtils$NotificationAction.CREATOR.createFromParcel(obtain, NotificationActionUtils$NotificationAction.class.getClassLoader());
        final Message aw = notificationActionUtils$NotificationAction.AW();
        final ContentResolver contentResolver = this.getContentResolver();
        E.d("NotifActionIS", "Handling %s", action);
        String s;
        String va;
        if ("com.android.mail.action.notification.ARCHIVE".equals(action)) {
            s = "archive_remove_label";
            va = notificationActionUtils$NotificationAction.vT().va();
        }
        else if ("com.android.mail.action.notification.DELETE".equals(action)) {
            s = "delete";
            va = null;
        }
        else {
            s = action;
            va = null;
        }
        a.oq().a("notification_action", s, va, 0L);
        if (notificationActionUtils$NotificationAction.getSource() == 1) {
            E.c("NotifActionIS", "Canceling %s", notificationActionUtils$NotificationAction.AX());
            aA.a((Context)this).cancel(notificationActionUtils$NotificationAction.AX());
            NotificationActionUtils.d((Context)this, notificationActionUtils$NotificationAction);
            NotificationActionUtils.a((Context)this, notificationActionUtils$NotificationAction.oN(), notificationActionUtils$NotificationAction.vT());
            return;
        }
        if ("com.android.mail.action.notification.UNDO".equals(action)) {
            NotificationActionUtils.b((Context)this, notificationActionUtils$NotificationAction);
            NotificationActionUtils.f((Context)this, notificationActionUtils$NotificationAction);
            return;
        }
        if ("com.android.mail.action.notification.ARCHIVE".equals(action) || "com.android.mail.action.notification.DELETE".equals(action)) {
            NotificationActionUtils.e((Context)this, notificationActionUtils$NotificationAction);
            NotificationActionUtils.a((Context)this, notificationActionUtils$NotificationAction);
            return;
        }
        if ("com.android.mail.action.notification.UNDO_TIMEOUT".equals(action) || "com.android.mail.action.notification.DESTRUCT".equals(action)) {
            NotificationActionUtils.b((Context)this, notificationActionUtils$NotificationAction);
            NotificationActionUtils.g((Context)this, notificationActionUtils$NotificationAction);
        }
        else if ("com.android.mail.action.notification.MARK_READ".equals(action)) {
            final Uri uri = aw.uri;
            final ContentValues contentValues = new ContentValues(1);
            contentValues.put("read", 1);
            contentResolver.update(uri, contentValues, (String)null, (String[])null);
        }
        NotificationActionUtils.a((Context)this, notificationActionUtils$NotificationAction.oN(), notificationActionUtils$NotificationAction.vT());
    }
}
