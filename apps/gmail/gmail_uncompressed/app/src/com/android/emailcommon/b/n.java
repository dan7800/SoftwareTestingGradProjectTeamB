package com.android.emailcommon.b;

import java.util.*;
import java.security.*;
import com.android.mail.utils.*;
import javax.net.ssl.*;
import java.net.*;

public final class n extends SSLSocketFactory
{
    private final String[] abA;
    private final String[] abB;
    private final SSLSocketFactory abx;
    private final boolean aby;
    private final int abz;
    
    private n(final SSLSocketFactory abx, final boolean aby, final int n) {
        int i = 0;
        this.abB = new String[] { "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", "SSL_RSA_WITH_3DES_EDE_CBC_SHA", "SSL_RSA_WITH_RC4_128_MD5", "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", "TLS_ECDH_ECDSA_WITH_RC4_128_SHA", "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", "TLS_ECDH_RSA_WITH_RC4_128_SHA", "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", "SSL_RSA_EXPORT_WITH_RC4_40_MD5", "SSL_DHE_DSS_WITH_DES_CBC_SHA", "SSL_DHE_RSA_WITH_DES_CBC_SHA", "SSL_RSA_WITH_DES_CBC_SHA" };
        this.abx = abx;
        this.aby = aby;
        this.abz = 30000;
        this.abx.getDefaultCipherSuites();
        final ArrayList<String> list = new ArrayList<String>(Arrays.asList(this.abx.getDefaultCipherSuites()));
        final HashSet set = new HashSet(list);
        this.abx.getSupportedCipherSuites();
        final HashSet set2 = new HashSet((Collection<? extends E>)Arrays.asList(this.abx.getSupportedCipherSuites()));
        for (String[] abB = this.abB; i < abB.length; ++i) {
            final String s = abB[i];
            if (set2.contains(s) && !set.contains(s)) {
                list.add(s);
            }
        }
        list.toArray(this.abA = new String[list.size()]);
    }
    
    public static SSLSocketFactory a(final KeyManager[] array) {
        final SSLContext instance = SSLContext.getInstance("TLS");
        instance.init(null, null, null);
        return new n(instance.getSocketFactory(), true, 30000);
    }
    
    public static SSLSocketFactory a(final KeyManager[] array, final TrustManager[] array2) {
        final SSLContext instance = SSLContext.getInstance("TLS");
        instance.init(null, array2, null);
        return new n(instance.getSocketFactory(), false, 30000);
    }
    
    private static void a(final Socket socket, final String s) {
        if (!(socket instanceof SSLSocket)) {
            throw new IllegalArgumentException("Attempt to verify non-SSL socket");
        }
        final SSLSocket sslSocket = (SSLSocket)socket;
        sslSocket.startHandshake();
        final SSLSession session = sslSocket.getSession();
        if (session == null) {
            throw new SSLException("Cannot verify SSL socket without session");
        }
        E.c(E.TAG, "using cipherSuite %s", session.getCipherSuite());
        if (!HttpsURLConnection.getDefaultHostnameVerifier().verify(s, session)) {
            throw new SSLPeerUnverifiedException("Cannot verify hostname: " + s);
        }
    }
    
    private static void a(final SSLSocket sslSocket, final int n) {
        try {
            sslSocket.getClass().getMethod("setHandshakeTimeout", Integer.TYPE).invoke(sslSocket, n);
        }
        catch (Exception ex) {
            E.d(E.TAG, ex, "unable to set handshake timeout", new Object[0]);
        }
    }
    
    @Override
    public final Socket createSocket() {
        return this.abx.createSocket();
    }
    
    @Override
    public final Socket createSocket(final String s, final int n) {
        final SSLSocket sslSocket = (SSLSocket)this.abx.createSocket(s, n);
        a(sslSocket, this.abz);
        sslSocket.setEnabledCipherSuites(this.abA);
        if (this.aby) {
            a(sslSocket, s);
        }
        return sslSocket;
    }
    
    @Override
    public final Socket createSocket(final String s, final int n, final InetAddress inetAddress, final int n2) {
        final SSLSocket sslSocket = (SSLSocket)this.abx.createSocket(s, n, inetAddress, n2);
        a(sslSocket, this.abz);
        sslSocket.setEnabledCipherSuites(this.abA);
        if (this.aby) {
            a(sslSocket, s);
        }
        return sslSocket;
    }
    
    @Override
    public final Socket createSocket(final InetAddress inetAddress, final int n) {
        final SSLSocket sslSocket = (SSLSocket)this.abx.createSocket(inetAddress, n);
        a(sslSocket, this.abz);
        sslSocket.setEnabledCipherSuites(this.abA);
        return sslSocket;
    }
    
    @Override
    public final Socket createSocket(final InetAddress inetAddress, final int n, final InetAddress inetAddress2, final int n2) {
        final SSLSocket sslSocket = (SSLSocket)this.abx.createSocket(inetAddress, n, inetAddress2, n2);
        a(sslSocket, this.abz);
        sslSocket.setEnabledCipherSuites(this.abA);
        return sslSocket;
    }
    
    @Override
    public final Socket createSocket(final Socket socket, final String s, final int n, final boolean b) {
        final SSLSocket sslSocket = (SSLSocket)this.abx.createSocket(socket, s, n, b);
        a(sslSocket, this.abz);
        sslSocket.setEnabledCipherSuites(this.abA);
        if (this.aby) {
            a(sslSocket, s);
        }
        return sslSocket;
    }
    
    @Override
    public final String[] getDefaultCipherSuites() {
        return this.abA.clone();
    }
    
    @Override
    public final String[] getSupportedCipherSuites() {
        return this.abx.getSupportedCipherSuites();
    }
}
