package android.support.v4.app;

import android.content.*;
import android.app.*;

final class ai extends ah
{
    @Override
    public final Notification b(final ab ab) {
        final Notification df = ab.dF;
        df.setLatestEventInfo(ab.mContext, ab.dg, ab.dh, ab.di);
        final Context mContext = ab.mContext;
        final CharSequence dg = ab.dg;
        final CharSequence dh = ab.dh;
        final PendingIntent di = ab.di;
        final PendingIntent dj = ab.dj;
        df.setLatestEventInfo(mContext, dg, dh, di);
        df.fullScreenIntent = dj;
        if (ab.do > 0) {
            df.flags |= 0x80;
        }
        return df;
    }
}
