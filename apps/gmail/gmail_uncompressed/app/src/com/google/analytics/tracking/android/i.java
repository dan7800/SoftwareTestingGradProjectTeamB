package com.google.analytics.tracking.android;

import java.util.concurrent.*;
import com.google.android.gms.analytics.internal.*;
import android.content.*;
import java.io.*;
import android.text.*;
import java.util.*;

final class I implements Runnable
{
    final /* synthetic */ E aTG;
    final /* synthetic */ j aTI;
    
    I(final E atg, final j ati) {
        this.aTG = atg;
        this.aTI = ati;
    }
    
    @Override
    public final void run() {
        this.aTI.cN(this.aTG.aTB);
    }
}
