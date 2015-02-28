package com.google.api.client.util;

import java.util.logging.*;
import java.io.*;

public final class B implements K
{
    private final Logger cuU;
    private final K cwP;
    private final int cxh;
    private final Level czC;
    
    public B(final K cwP, final Logger cuU, final Level czC, final int cxh) {
        this.cwP = cwP;
        this.cuU = cuU;
        this.czC = czC;
        this.cxh = cxh;
    }
    
    @Override
    public final void writeTo(final OutputStream outputStream) {
        final A a = new A(outputStream, this.cuU, this.czC, this.cxh);
        try {
            this.cwP.writeTo(a);
            a.YA().close();
            outputStream.flush();
        }
        finally {
            a.YA().close();
        }
    }
}
