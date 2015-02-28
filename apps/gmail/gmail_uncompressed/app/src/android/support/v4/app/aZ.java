package android.support.v4.app;

import android.os.*;
import android.content.*;
import android.widget.*;
import android.app.*;
import android.graphics.*;
import java.util.*;
import android.util.*;

public final class az implements T, U
{
    private Bundle cV;
    private Notification$Builder dW;
    private List<Bundle> eb;
    
    public az(final Context context, final Notification notification, final CharSequence contentTitle, final CharSequence contentText, final CharSequence contentInfo, final RemoteViews remoteViews, final int number, final PendingIntent contentIntent, final PendingIntent pendingIntent, final Bitmap largeIcon, final int n, final int n2, final boolean b, final boolean showWhen, final boolean usesChronometer, final int priority, final CharSequence subText, final boolean b2, final ArrayList<String> list, final Bundle bundle, final String s, final boolean b3, final String s2) {
        this.eb = new ArrayList<Bundle>();
        this.dW = new Notification$Builder(context).setWhen(notification.when).setShowWhen(showWhen).setSmallIcon(notification.icon, notification.iconLevel).setContent(notification.contentView).setTicker(notification.tickerText, remoteViews).setSound(notification.sound, notification.audioStreamType).setVibrate(notification.vibrate).setLights(notification.ledARGB, notification.ledOnMS, notification.ledOffMS).setOngoing((0x2 & notification.flags) != 0x0).setOnlyAlertOnce((0x8 & notification.flags) != 0x0).setAutoCancel((0x10 & notification.flags) != 0x0).setDefaults(notification.defaults).setContentTitle(contentTitle).setContentText(contentText).setSubText(subText).setContentInfo(contentInfo).setContentIntent(contentIntent).setDeleteIntent(notification.deleteIntent).setFullScreenIntent(pendingIntent, (0x80 & notification.flags) != 0x0).setLargeIcon(largeIcon).setNumber(number).setUsesChronometer(usesChronometer).setPriority(priority).setProgress(n, n2, b);
        this.cV = new Bundle();
        if (bundle != null) {
            this.cV.putAll(bundle);
        }
        if (list != null && !list.isEmpty()) {
            this.cV.putStringArray("android.people", (String[])list.toArray(new String[list.size()]));
        }
        if (b2) {
            this.cV.putBoolean("android.support.localOnly", true);
        }
        if (s != null) {
            this.cV.putString("android.support.groupKey", s);
            if (b3) {
                this.cV.putBoolean("android.support.isGroupSummary", true);
            }
            else {
                this.cV.putBoolean("android.support.useSideChannel", true);
            }
        }
        if (s2 != null) {
            this.cV.putString("android.support.sortKey", s2);
        }
    }
    
    @Override
    public final void a(final au au) {
        this.eb.add(aw.b(this.dW, au));
    }
    
    @Override
    public final Notification$Builder ah() {
        return this.dW;
    }
    
    public final Notification build() {
        final SparseArray<Bundle> a = aw.a(this.eb);
        if (a != null) {
            this.cV.putSparseParcelableArray("android.support.actionExtras", (SparseArray)a);
        }
        this.dW.setExtras(this.cV);
        return this.dW.build();
    }
}
