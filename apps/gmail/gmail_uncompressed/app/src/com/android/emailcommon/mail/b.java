package com.android.emailcommon.mail;

import java.io.*;
import android.util.*;
import org.apache.a.a.*;

public final class b implements c
{
    private final InputStream WH;
    private boolean WI;
    
    public b(final InputStream wh) {
        this.WH = wh;
    }
    
    @Override
    public final InputStream getInputStream() {
        return this.WH;
    }
    
    @Override
    public final void writeTo(final OutputStream outputStream) {
        if (this.WI) {
            throw new IllegalStateException("Base64Body can only be written once");
        }
        this.WI = true;
        try {
            a.c(this.WH, (OutputStream)new Base64OutputStream(outputStream, 0));
        }
        finally {
            this.WH.close();
        }
    }
}
