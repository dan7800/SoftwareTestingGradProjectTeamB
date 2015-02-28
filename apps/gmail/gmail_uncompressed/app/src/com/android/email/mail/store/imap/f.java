package com.android.email.mail.store.imap;

import com.android.email.*;
import com.android.emailcommon.*;
import com.android.mail.utils.*;
import com.android.emailcommon.b.*;
import java.io.*;

public final class f extends i
{
    private byte[] Rb;
    
    f(final k k) {
        this.Rb = new byte[k.getLength()];
        int i;
        int read;
        for (i = 0; i < this.Rb.length; i += read) {
            read = k.read(this.Rb, i, this.Rb.length - i);
            if (read < 0) {
                break;
            }
        }
        if (i != this.Rb.length) {
            E.e(com.android.emailcommon.b.mW, "", new Object[0]);
        }
    }
    
    @Override
    public final void destroy() {
        this.Rb = null;
        super.destroy();
    }
    
    @Override
    public final String getString() {
        return s.a(this.Rb);
    }
    
    @Override
    public final InputStream jv() {
        return new ByteArrayInputStream(this.Rb);
    }
    
    @Override
    public final String toString() {
        return String.format("{%d byte literal(memory)}", this.Rb.length);
    }
}
