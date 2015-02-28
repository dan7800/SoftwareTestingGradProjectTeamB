package com.google.android.common.http;

import org.apache.http.params.*;
import android.net.http.*;
import android.content.*;
import org.apache.http.conn.scheme.*;
import java.util.*;
import org.apache.http.client.methods.*;
import org.apache.http.protocol.*;
import com.google.android.gsf.*;
import android.os.*;
import android.net.*;
import android.util.*;
import org.apache.http.impl.client.*;
import org.apache.http.*;
import org.apache.http.client.*;
import java.net.*;
import org.apache.http.conn.*;

class c implements SocketFactory
{
    final /* synthetic */ GoogleHttpClient aVT;
    private SocketFactory aVU;
    
    private c(final GoogleHttpClient avt, final SocketFactory avu) {
        this.aVT = avt;
        this.aVU = avu;
    }
    
    public final Socket connectSocket(final Socket socket, final String s, final int n, final InetAddress inetAddress, final int n2, final HttpParams httpParams) {
        this.aVT.aVR.set(Boolean.TRUE);
        return this.aVU.connectSocket(socket, s, n, inetAddress, n2, httpParams);
    }
    
    public final Socket createSocket() {
        return this.aVU.createSocket();
    }
    
    public final boolean isSecure(final Socket socket) {
        return this.aVU.isSecure(socket);
    }
}
