package com.google.api.client.googleapis.a;

import java.util.logging.*;
import com.google.api.client.http.*;
import com.google.api.client.util.*;

public abstract class a
{
    static final Logger cwd;
    private final u cvE;
    private final e cwh;
    private final String cwi;
    private final String cwj;
    private final String cwk;
    private final F cwl;
    private boolean cwm;
    private boolean cwn;
    
    static {
        cwd = Logger.getLogger(a.class.getName());
    }
    
    protected a(final b b) {
        this.cwh = b.cwh;
        this.cwi = gU(b.cwi);
        this.cwj = gV(b.cwj);
        if (M.gK(b.cwk)) {
            a.cwd.warning("Application name is not set. Call Builder#setApplicationName.");
        }
        this.cwk = b.cwk;
        u cvE;
        if (b.cwp == null) {
            cvE = b.cwo.XS();
        }
        else {
            cvE = b.cwo.a(b.cwp);
        }
        this.cvE = cvE;
        this.cwl = b.cwl;
        this.cwm = b.cwm;
        this.cwn = b.cwn;
    }
    
    static String gU(String string) {
        H.i(string, "root URL cannot be null.");
        if (!string.endsWith("/")) {
            string += "/";
        }
        return string;
    }
    
    static String gV(String string) {
        H.i(string, "service path cannot be null");
        if (string.length() == 1) {
            H.c("/".equals(string), "service path must equal \"/\" if it is of length 1.");
            string = "";
        }
        else if (string.length() > 0) {
            if (!string.endsWith("/")) {
                string += "/";
            }
            if (string.startsWith("/")) {
                return string.substring(1);
            }
        }
        return string;
    }
    
    public final String WY() {
        return this.cwi + this.cwj;
    }
    
    public final String WZ() {
        return this.cwk;
    }
    
    public final u Xa() {
        return this.cvE;
    }
    
    public F Xb() {
        return this.cwl;
    }
    
    protected void a(final c<?> c) {
        if (this.cwh != null) {
            final e cwh = this.cwh;
        }
    }
}
