package com.google.android.gm.provider;

import com.google.android.common.http.*;
import java.io.*;

final class bn implements i
{
    InputStream aiF;
    final /* synthetic */ MailSync blx;
    long blz;
    private final String bmi;
    private final byte[] bmj;
    
    public bn(final MailSync blx, final String bmi, final long blz, final byte[] bmj) {
        this.blx = blx;
        this.bmi = bmi;
        this.bmj = bmj;
        this.blz = blz;
        this.aiF = this.HC();
    }
    
    private InputStream HC() {
        return new ByteArrayInputStream(this.bmj);
    }
    
    @Override
    public final InputStream fW() {
        if (this.aiF != null) {
            final InputStream aiF = this.aiF;
            this.aiF = null;
            return aiF;
        }
        return this.HC();
    }
    
    @Override
    public final String getFileName() {
        return this.bmi;
    }
    
    @Override
    public final long getLength() {
        return this.blz;
    }
}
