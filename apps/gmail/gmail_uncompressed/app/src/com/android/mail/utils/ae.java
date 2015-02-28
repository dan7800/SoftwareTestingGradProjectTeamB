package com.android.mail.utils;

import java.util.*;
import android.os.*;

final class ae extends TimerTask
{
    final /* synthetic */ ad aQH;
    private boolean yt;
    
    private ae(final ad aqh) {
        this.aQH = aqh;
    }
    
    @Override
    public final boolean cancel() {
        this.yt = true;
        return super.cancel();
    }
    
    @Override
    public final void run() {
        this.aQH.mHandler.post((Runnable)new af(this, (byte)0));
    }
}
