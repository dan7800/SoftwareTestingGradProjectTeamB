package com.google.api.client.http;

import java.io.*;

final class i extends FilterOutputStream
{
    final /* synthetic */ h cwJ;
    
    i(final h cwJ, final OutputStream outputStream) {
        this.cwJ = cwJ;
        super(outputStream);
    }
    
    @Override
    public final void close() {
        try {
            this.flush();
        }
        catch (IOException ex) {}
    }
}
