package com.google.api.client.http.b;

import com.google.api.client.http.*;
import java.io.*;
import com.google.api.client.json.*;

public final class a extends com.google.api.client.http.a
{
    private final d cxZ;
    private String cya;
    private final Object data;
    
    public a(final d d, final Object o) {
        super(c.MEDIA_TYPE);
        this.cxZ = com.google.api.client.a.a.a.a.a.a.ak(d);
        this.data = com.google.api.client.a.a.a.a.a.a.ak(o);
    }
    
    public final a hu(final String cya) {
        this.cya = cya;
        return this;
    }
    
    @Override
    public final void writeTo(final OutputStream outputStream) {
        final e a = this.cxZ.a(outputStream, this.Xj());
        if (this.cya != null) {
            a.WD();
            a.gT(this.cya);
        }
        a.ao(this.data);
        if (this.cya != null) {
            a.WA();
        }
        a.flush();
    }
}
