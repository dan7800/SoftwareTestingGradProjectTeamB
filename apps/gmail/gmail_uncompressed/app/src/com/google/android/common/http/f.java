package com.google.android.common.http;

import java.io.*;
import android.os.*;
import android.net.*;
import android.util.*;
import org.apache.http.entity.*;
import org.apache.http.*;

final class f extends FilterInputStream
{
    final /* synthetic */ e aWf;
    
    public f(final e aWf, final InputStream inputStream) {
        this.aWf = aWf;
        super(inputStream);
    }
    
    @Override
    public final void close() {
        try {
            super.close();
        }
        finally {
            EventLog.writeEvent(52001, new Object[] { this.aWf.aVZ, this.aWf.aWd, SystemClock.elapsedRealtime() - this.aWf.aWe, TrafficStats.getUidTxBytes(this.aWf.aWa) - this.aWf.aWb, TrafficStats.getUidRxBytes(this.aWf.aWa) - this.aWf.aWc });
        }
    }
}
