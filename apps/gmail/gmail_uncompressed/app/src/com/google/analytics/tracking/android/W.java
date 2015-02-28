package com.google.analytics.tracking.android;

import android.os.*;
import android.content.*;

final class w implements Handler$Callback
{
    final /* synthetic */ u aSU;
    
    w(final u asu) {
        this.aSU = asu;
    }
    
    public final boolean handleMessage(final Message message) {
        if (1 == message.what && u.aSJ.equals(message.obj)) {
            GAUsage.BX().bK(true);
            this.aSU.BB();
            GAUsage.BX().bK(false);
            if (this.aSU.aSN > 0 && !this.aSU.aSS) {
                this.aSU.handler.sendMessageDelayed(this.aSU.handler.obtainMessage(1, u.aSJ), (long)(1000 * this.aSU.aSN));
            }
        }
        return true;
    }
}
