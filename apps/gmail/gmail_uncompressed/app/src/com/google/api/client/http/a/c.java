package com.google.api.client.http.a;

import java.util.*;
import com.google.api.client.http.*;
import com.google.api.client.a.a.a.a.a.*;
import javax.net.ssl.*;
import java.net.*;

public final class c extends A
{
    private static final String[] cxD;
    private final Proxy cxX;
    private final SSLSocketFactory cxY;
    private final HostnameVerifier hostnameVerifier;
    
    static {
        Arrays.sort(cxD = new String[] { "DELETE", "GET", "HEAD", "OPTIONS", "POST", "PUT", "TRACE" });
    }
    
    public c() {
        this((byte)0);
    }
    
    private c(final byte b) {
        this.cxX = null;
        this.cxY = null;
        this.hostnameVerifier = null;
    }
    
    @Override
    public final boolean hs(final String s) {
        return Arrays.binarySearch(c.cxD, s) >= 0;
    }
}
