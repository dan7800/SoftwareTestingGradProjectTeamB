package com.google.android.gm.provider;

import java.util.concurrent.*;
import com.android.mail.utils.*;

final class as implements Runnable
{
    final /* synthetic */ MailEngine bjA;
    final /* synthetic */ Semaphore bjI;
    
    as(final MailEngine bjA, final Semaphore bjI) {
        this.bjA = bjA;
        this.bjI = bjI;
    }
    
    @Override
    public final void run() {
        E.d(MailEngine.TAG, "blockUntilBackgroundTasksComplete: finished", new Object[0]);
        this.bjI.release();
    }
}
