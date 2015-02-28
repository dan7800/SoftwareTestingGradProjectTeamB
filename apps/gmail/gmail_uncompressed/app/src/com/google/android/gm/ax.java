package com.google.android.gm;

import java.util.concurrent.atomic.*;
import android.os.*;
import com.android.mail.utils.*;

final class ax implements Runnable
{
    final /* synthetic */ Runnable aZa;
    final /* synthetic */ aw aZb;
    
    ax(final aw aZb, final Runnable aZa) {
        this.aZb = aZb;
        this.aZa = aZa;
    }
    
    @Override
    public final void run() {
        this.aZb.fh.decrementAndGet();
        this.aZa.run();
    }
}
