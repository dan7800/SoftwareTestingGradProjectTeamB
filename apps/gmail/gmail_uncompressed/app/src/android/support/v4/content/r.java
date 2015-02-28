package android.support.v4.content;

import android.os.*;
import java.util.concurrent.atomic.*;
import java.util.concurrent.*;

final class r extends Handler
{
    public final void handleMessage(final Message message) {
        final q q = (q)message.obj;
        switch (message.what) {
            default: {}
            case 1: {
                ModernAsyncTask.c(q.fk, q.fl[0]);
            }
            case 2: {
                final ModernAsyncTask fk = q.fk;
                final Object[] fl = q.fl;
                ModernAsyncTask.av();
            }
        }
    }
}
