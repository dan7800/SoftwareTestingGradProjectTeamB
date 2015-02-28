package com.google.analytics.tracking.android;

import org.apache.http.client.*;
import org.apache.http.impl.client.*;

final class ab implements P
{
    final /* synthetic */ Z aVq;
    
    ab(final Z aVq) {
        this.aVq = aVq;
    }
    
    @Override
    public final HttpClient Ce() {
        return (HttpClient)new DefaultHttpClient();
    }
}
