package com.android.email.mail.store;

import java.io.*;

final class h extends InputStream
{
    private final InputStream LP;
    final /* synthetic */ Pop3Store QM;
    private boolean QW;
    private boolean vn;
    
    public h(final Pop3Store qm, final InputStream lp) {
        this.QM = qm;
        this.QW = true;
        this.LP = lp;
    }
    
    @Override
    public final int read() {
        boolean b = true;
        if (this.vn) {
            return -1;
        }
        int n = this.LP.read();
        if (this.QW && n == 46) {
            n = this.LP.read();
            if (n == 13) {
                this.vn = b;
                this.LP.read();
                return -1;
            }
        }
        final int n2 = n;
        if (n2 != 10) {
            b = false;
        }
        this.QW = b;
        return n2;
    }
}
