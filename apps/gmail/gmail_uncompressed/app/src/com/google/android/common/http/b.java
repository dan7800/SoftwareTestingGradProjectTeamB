package com.google.android.common.http;

import org.apache.http.conn.scheme.*;
import java.net.*;

final class b extends c implements LayeredSocketFactory
{
    private LayeredSocketFactory aVS;
    final /* synthetic */ GoogleHttpClient aVT;
    
    private b(final GoogleHttpClient avt, final LayeredSocketFactory avs) {
        this.aVT = avt;
        super(avt, (SocketFactory)avs, (byte)0);
        this.aVS = avs;
    }
    
    public final Socket createSocket(final Socket socket, final String s, final int n, final boolean b) {
        return this.aVS.createSocket(socket, s, n, b);
    }
}
