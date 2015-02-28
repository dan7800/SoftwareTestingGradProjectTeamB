package android.support.v4.app;

import android.content.*;
import android.app.*;

final class bc implements ba
{
    @Override
    public final PendingIntent a(final Context context, final Intent[] array, final int n, final int n2) {
        array[0] = new Intent(array[0]).addFlags(268484608);
        return PendingIntent.getActivities(context, n, array, 134217728);
    }
}
