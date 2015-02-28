package android.support.v4.app;

import android.app.*;
import android.content.*;

final class ak extends ah
{
    @Override
    public final Notification b(final ab ab) {
        final Context mContext = ab.mContext;
        final Notification df = ab.dF;
        return new Notification$Builder(mContext).setWhen(df.when).setSmallIcon(df.icon, df.iconLevel).setContent(df.contentView).setTicker(df.tickerText, ab.dk).setSound(df.sound, df.audioStreamType).setVibrate(df.vibrate).setLights(df.ledARGB, df.ledOnMS, df.ledOffMS).setOngoing((0x2 & df.flags) != 0x0).setOnlyAlertOnce((0x8 & df.flags) != 0x0).setAutoCancel((0x10 & df.flags) != 0x0).setDefaults(df.defaults).setContentTitle(ab.dg).setContentText(ab.dh).setContentInfo(ab.dm).setContentIntent(ab.di).setDeleteIntent(df.deleteIntent).setFullScreenIntent(ab.dj, (0x80 & df.flags) != 0x0).setLargeIcon(ab.dl).setNumber(ab.dn).setProgress(ab.dt, ab.du, ab.dv).getNotification();
    }
}
