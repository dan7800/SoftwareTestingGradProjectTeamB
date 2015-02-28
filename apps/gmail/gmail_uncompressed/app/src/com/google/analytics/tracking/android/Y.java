package com.google.analytics.tracking.android;

import android.content.*;
import java.util.concurrent.*;
import com.google.android.gms.analytics.internal.*;
import java.util.*;

final class y implements Runnable
{
    final /* synthetic */ GAServiceProxy aTh;
    
    y(final GAServiceProxy aTh) {
        this.aTh = aTh;
    }
    
    @Override
    public final void run() {
        this.aTh.BN();
    }
}
