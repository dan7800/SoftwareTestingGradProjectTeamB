package com.google.android.common.http;

import org.apache.http.entity.*;
import org.apache.http.*;
import java.io.*;

public final class e extends HttpEntityWrapper
{
    private final String aVZ;
    private final int aWa;
    private final long aWb;
    private final long aWc;
    private final long aWd;
    private final long aWe;
    
    public e(final HttpEntity httpEntity, final String avz, final int aWa, final long aWb, final long aWc, final long aWd, final long aWe) {
        super(httpEntity);
        this.aVZ = avz;
        this.aWa = aWa;
        this.aWb = aWb;
        this.aWc = aWc;
        this.aWd = aWd;
        this.aWe = aWe;
    }
    
    public final InputStream getContent() {
        return new f(this, super.getContent());
    }
}
