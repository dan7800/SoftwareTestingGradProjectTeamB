package com.android.email.mail.store;

import com.android.emailcommon.a.*;
import com.android.emailcommon.mail.*;
import java.io.*;

public final class g extends f
{
    public g(final String xk, final com.android.email.mail.store.e xn) {
        this.Xk = xk;
        this.Xn = xn;
        this.gO = -1;
    }
    
    @Override
    public final void a(final Flag flag, final boolean b) {
        super.a(flag, b);
        this.Xn.a(new Message[] { this }, new Flag[] { flag }, b);
    }
    
    public final void b(final InputStream inputStream) {
        super.b(inputStream);
    }
    
    public final void setSize(final int go) {
        this.gO = go;
    }
}
