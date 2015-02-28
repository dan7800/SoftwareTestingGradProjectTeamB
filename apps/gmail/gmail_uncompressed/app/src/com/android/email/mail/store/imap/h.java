package com.android.email.mail.store.imap;

import com.android.emailcommon.b.*;
import java.io.*;

public final class h extends i
{
    private String Rj;
    
    h(String rj) {
        if (rj == null) {
            rj = "";
        }
        this.Rj = rj;
    }
    
    @Override
    public final void destroy() {
        this.Rj = null;
        super.destroy();
    }
    
    @Override
    public final String getString() {
        return this.Rj;
    }
    
    @Override
    public final InputStream jv() {
        return new ByteArrayInputStream(s.aG(this.Rj));
    }
    
    @Override
    public final String toString() {
        return "\"" + this.Rj + "\"";
    }
}
