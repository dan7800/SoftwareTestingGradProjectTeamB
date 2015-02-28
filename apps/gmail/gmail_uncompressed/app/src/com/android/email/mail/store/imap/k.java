package com.android.email.mail.store.imap;

import com.android.email.*;
import org.apache.a.a.*;
import com.android.emailcommon.*;
import com.android.mail.utils.*;
import com.android.emailcommon.b.*;
import java.io.*;

public final class k extends i
{
    final File Rq;
    private final int gO;
    
    k(final com.android.email.k k) {
        this.gO = k.getLength();
        this.Rq = File.createTempFile("imap", ".tmp", e.kM());
        final FileOutputStream fileOutputStream = new FileOutputStream(this.Rq);
        a.b(k, fileOutputStream);
        fileOutputStream.close();
    }
    
    @Override
    public final void destroy() {
        while (true) {
            try {
                if (!this.isDestroyed() && this.Rq.exists()) {
                    this.Rq.delete();
                }
                super.destroy();
            }
            catch (RuntimeException ex) {
                E.e(com.android.emailcommon.b.mW, "Failed to remove temp file: " + ex.getMessage(), new Object[0]);
                continue;
            }
            break;
        }
    }
    
    @Override
    protected final void finalize() {
        try {
            this.destroy();
        }
        finally {
            super.finalize();
        }
    }
    
    @Override
    public final String getString() {
        this.ju();
        byte[] h;
        try {
            h = a.h(this.jv());
            if (h.length > 2097152) {
                throw new IOException();
            }
        }
        catch (IOException ex) {
            E.e(com.android.emailcommon.b.mW, "ImapTempFileLiteral: Error while reading temp file", ex);
            return "";
        }
        return s.a(h);
    }
    
    @Override
    public final InputStream jv() {
        this.ju();
        try {
            return new FileInputStream(this.Rq);
        }
        catch (FileNotFoundException ex) {
            E.e(com.android.emailcommon.b.mW, "ImapTempFileLiteral: Temp file not found", new Object[0]);
            return new ByteArrayInputStream(new byte[0]);
        }
    }
    
    @Override
    public final String toString() {
        return String.format("{%d byte literal(file)}", this.gO);
    }
}
