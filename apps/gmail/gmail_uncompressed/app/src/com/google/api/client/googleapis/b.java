package com.google.api.client.googleapis;

import com.google.api.client.http.*;

public final class b implements n, v
{
    private final boolean cvA;
    
    public b() {
        this((byte)0);
    }
    
    private b(final byte b) {
        this.cvA = false;
    }
    
    @Override
    public final void a(final t t) {
        t.a(this);
    }
    
    @Override
    public final void b(final t t) {
        int n = 1;
        final String requestMethod = t.getRequestMethod();
        while (true) {
            Label_0115: {
                if (requestMethod.equals("POST")) {
                    break Label_0115;
                }
                if (requestMethod.equals("GET")) {
                    if (t.Xz().Xn().length() > 2048) {
                        break Label_0041;
                    }
                }
                else if (this.cvA) {
                    break Label_0041;
                }
                if (t.Xy().hs(requestMethod)) {
                    break Label_0115;
                }
                if (n != 0) {
                    final String requestMethod2 = t.getRequestMethod();
                    t.hp("POST");
                    t.XD().m("X-HTTP-Method-Override", requestMethod2);
                    if (requestMethod2.equals("GET")) {
                        t.b(new H(t.Xz()));
                    }
                    else if (t.XA() == null) {
                        t.b(new e());
                        return;
                    }
                }
                return;
            }
            n = 0;
            continue;
        }
    }
}
