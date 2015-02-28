package com.google.api.client.googleapis.media;

import com.google.api.client.a.a.a.a.a.*;
import com.google.api.client.http.*;
import java.util.logging.*;
import java.io.*;

class b implements B, r
{
    static final Logger cwd;
    private final MediaHttpUploader cwe;
    private final r cwf;
    private final B cwg;
    
    static {
        cwd = Logger.getLogger(b.class.getName());
    }
    
    public b(final MediaHttpUploader mediaHttpUploader, final t t) {
        this.cwe = a.ak(mediaHttpUploader);
        this.cwf = t.XG();
        this.cwg = t.XF();
        t.a((r)this);
        t.a((B)this);
    }
    
    @Override
    public final boolean a(final t t, final w w, final boolean b) {
        Label_0055: {
            if (this.cwg == null || !this.cwg.a(t, w, b)) {
                break Label_0055;
            }
            boolean b2 = true;
            while (true) {
                if (!b2 || !b || w.getStatusCode() / 100 != 5) {
                    return b2;
                }
                try {
                    this.cwe.WW();
                    return b2;
                    b2 = false;
                    continue;
                }
                catch (IOException ex) {
                    b.cwd.log(Level.WARNING, "exception thrown while calling server callback", ex);
                    return b2;
                }
                break;
            }
        }
    }
    
    @Override
    public final boolean a(final t t, final boolean b) {
        Label_0036: {
            if (this.cwf == null || !this.cwf.a(t, b)) {
                break Label_0036;
            }
            boolean b2 = true;
            while (true) {
                if (!b2) {
                    return b2;
                }
                try {
                    this.cwe.WW();
                    return b2;
                    b2 = false;
                    continue;
                }
                catch (IOException ex) {
                    b.cwd.log(Level.WARNING, "exception thrown while calling server callback", ex);
                    return b2;
                }
                break;
            }
        }
    }
}
