package android.support.v4.app;

import android.content.*;
import android.app.*;

final class bb implements ba
{
    @Override
    public final PendingIntent a(final Context context, final Intent[] array, final int n, final int n2) {
        final Intent intent = new Intent(array[-1 + array.length]);
        intent.addFlags(268435456);
        return PendingIntent.getActivity(context, n, intent, 134217728);
    }
}
