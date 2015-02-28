package android.support.v4.app;

import android.os.*;
import android.content.*;
import android.widget.*;
import android.app.*;
import android.graphics.*;
import java.util.*;

public final class aq implements T, U
{
    private Bundle cV;
    private Notification$Builder dW;
    
    public aq(final Context context, final Notification notification, final CharSequence contentTitle, final CharSequence contentText, final CharSequence contentInfo, final RemoteViews remoteViews, final int number, final PendingIntent contentIntent, final PendingIntent pendingIntent, final Bitmap largeIcon, final int n, final int n2, final boolean b, final boolean showWhen, final boolean usesChronometer, final int priority, final CharSequence subText, final boolean localOnly, final ArrayList<String> list, final Bundle bundle, final String group, final boolean groupSummary, final String sortKey) {
        this.dW = new Notification$Builder(context).setWhen(notification.when).setShowWhen(showWhen).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteViews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((0x2 & notification.flags) != 0x0).setOnlyAlertOnce((0x8 & notification.flags) != 0x0).setAutoCancel((0x10 & notification.flags) != 0x0).setDefaults(notification.defaults).setContentTitle(contentTitle).setContentText(contentText).setSubText(subText).setContentInfo(contentInfo).setContentIntent(contentIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(pendingIntent, (0x80 & notification.flags) != 0x0).setLargeIcon(largeIcon).setNumber(number).setUsesChronometer(usesChronometer).setPriority(priority).setProgress(n, n2, b).setLocalOnly(localOnly).setGroup(group).setGroupSummary(groupSummary).setSortKey(sortKey);
        this.cV = new Bundle();
        if (bundle != null) {
            this.cV.putAll(bundle);
        }
        if (list != null && !list.isEmpty()) {
            this.cV.putStringArray("android.people", (String[])list.toArray(new String[list.size()]));
        }
    }
    
    @Override
    public final void a(final au au) {
        ap.a(this.dW, au);
    }
    
    @Override
    public final Notification$Builder ah() {
        return this.dW;
    }
    
    public final Notification build() {
        this.dW.setExtras(this.cV);
        return this.dW.build();
    }
}
