package com.android.mail.browse;

import com.google.common.collect.*;
import android.app.*;
import android.content.*;
import android.text.*;
import com.android.mail.providers.*;
import android.net.*;
import java.util.*;
import com.android.mail.utils.*;
import android.os.*;
import android.database.*;

final class x implements Runnable
{
    final /* synthetic */ u amq;
    
    x(final u amq) {
        this.amq = amq;
    }
    
    @Override
    public final void run() {
        final X<NotificationActionUtils$NotificationAction> apk = NotificationActionUtils.aPK;
        final Set<Conversation> apl = NotificationActionUtils.aPL;
        final HashSet<Object> fs = Sets.fs(apk.size());
        int i = 0;
        boolean b = false;
        while (i < apk.size()) {
            final NotificationActionUtils$NotificationAction notificationActionUtils$NotificationAction = apk.get(apk.keyAt(i));
            final Folder vt = notificationActionUtils$NotificationAction.vT();
            boolean b2;
            if (notificationActionUtils$NotificationAction.AV() == NotificationActionUtils$NotificationActionType.aPV) {
                b2 = true;
            }
            else {
                b2 = false;
            }
            if ((vt.aAc.equals((Object)this.amq.aml) || b2) && notificationActionUtils$NotificationAction.AV().Ba()) {
                final Conversation pg = notificationActionUtils$NotificationAction.pg();
                fs.add(pg);
                if (!this.amq.ame.contains(pg)) {
                    u.alT.a(pg.uri, this.amq, null);
                    this.amq.ame.add(pg);
                    b = true;
                }
            }
            ++i;
        }
        final Iterator<Conversation> iterator = (Iterator<Conversation>)this.amq.ame.iterator();
        while (iterator.hasNext()) {
            final Conversation conversation = iterator.next();
            if (!fs.contains(conversation)) {
                if (apl.contains(conversation)) {
                    final A alT = u.alT;
                    A.a(conversation.uri, this.amq);
                    apl.remove(conversation);
                }
                iterator.remove();
                b = true;
            }
        }
        if (b) {
            this.amq.pd();
        }
    }
}
