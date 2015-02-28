package com.android.email.mail.transport;

import android.content.*;
import com.android.emailcommon.provider.*;
import com.android.email.*;
import com.android.mail.utils.*;
import com.android.emailcommon.b.*;
import com.android.mail.a.*;
import javax.net.ssl.*;
import com.android.emailcommon.mail.*;
import java.io.*;
import java.net.*;

public final class b
{
    private static final HostnameVerifier Ru;
    private InputStream LP;
    private final String Rv;
    private Socket Rw;
    private OutputStream Rx;
    private final Context mContext;
    protected final HostAuth mHostAuth;
    
    static {
        Ru = HttpsURLConnection.getDefaultHostnameVerifier();
    }
    
    public b(final Context mContext, final String rv, final HostAuth mHostAuth) {
        this.mContext = mContext;
        this.Rv = rv;
        this.mHostAuth = mHostAuth;
    }
    
    private boolean jV() {
        return (0x1 & this.mHostAuth.dM) != 0x0;
    }
    
    private boolean jX() {
        return (0x8 & this.mHostAuth.dM) != 0x0;
    }
    
    public final String ah(final boolean b) {
        final StringBuffer sb = new StringBuffer();
        final InputStream lp = this.LP;
        int read;
        while (true) {
            read = lp.read();
            if (read == -1) {
                break;
            }
            if ((char)read == '\r') {
                continue;
            }
            if ((char)read == '\n') {
                break;
            }
            sb.append((char)read);
        }
        if (read == -1 && b.DEBUG) {
            E.c(com.android.emailcommon.b.mW, "End of stream reached while trying to read line.", new Object[0]);
        }
        final String string = sb.toString();
        if (b && b.DEBUG) {
            E.c(com.android.emailcommon.b.mW, "<<< " + string, new Object[0]);
        }
        return string;
    }
    
    public final void close() {
        while (true) {
            try {
                this.LP.close();
                try {
                    this.Rx.close();
                    try {
                        this.Rw.close();
                        this.LP = null;
                        this.Rx = null;
                        this.Rw = null;
                    }
                    catch (Exception ex) {}
                }
                catch (Exception ex2) {}
            }
            catch (Exception ex3) {
                continue;
            }
            break;
        }
    }
    
    public final void f(final String s, final String s2) {
        if (com.android.email.b.DEBUG) {
            if (s2 != null && !com.android.emailcommon.b.VK) {
                E.c(com.android.emailcommon.b.mW, ">>> " + s2, new Object[0]);
            }
            else {
                E.c(com.android.emailcommon.b.mW, ">>> " + s, new Object[0]);
            }
        }
        final OutputStream rx = this.Rx;
        rx.write(s.getBytes());
        rx.write(13);
        rx.write(10);
        rx.flush();
    }
    
    public final String getHost() {
        return this.mHostAuth.WA;
    }
    
    public final InputStream getInputStream() {
        return this.LP;
    }
    
    public final InetAddress getLocalAddress() {
        if (this.isOpen()) {
            return this.Rw.getLocalAddress();
        }
        return null;
    }
    
    public final OutputStream getOutputStream() {
        return this.Rx;
    }
    
    public final int getSoTimeout() {
        return this.Rw.getSoTimeout();
    }
    
    public final boolean isOpen() {
        return this.LP != null && this.Rx != null && this.Rw != null && this.Rw.isConnected() && !this.Rw.isClosed();
    }
    
    public final b jU() {
        return new b(this.mContext, this.Rv, this.mHostAuth);
    }
    
    public final boolean jW() {
        return (0x2 & this.mHostAuth.dM) != 0x0;
    }
    
    public final void jY() {
        try {
            (this.Rw = o.a(this.mContext, this.mHostAuth, this.jX()).createSocket(this.Rw, this.mHostAuth.WA, this.mHostAuth.Zi, true)).setSoTimeout(60000);
            this.LP = new BufferedInputStream(this.Rw.getInputStream(), 1024);
            this.Rx = new BufferedOutputStream(this.Rw.getOutputStream(), 512);
            a.oq().a("socket_certificates", "reopenTls", Boolean.toString(this.jX()), 0L);
            final SSLSocket sslSocket = (SSLSocket)this.Rw;
            if (sslSocket.getSession() != null) {
                a.oq().a("cipher_suite", sslSocket.getSession().getProtocol(), sslSocket.getSession().getCipherSuite(), 0L);
            }
        }
        catch (SSLException ex) {
            if (com.android.email.b.DEBUG) {
                E.c(com.android.emailcommon.b.mW, ex.toString(), new Object[0]);
            }
            throw new CertificateValidationException(ex.getMessage(), ex);
        }
        catch (IOException ex2) {
            if (com.android.email.b.DEBUG) {
                E.c(com.android.emailcommon.b.mW, ex2.toString(), new Object[0]);
            }
            throw new MessagingException(1, ex2.toString());
        }
    }
    
    public final void open() {
        if (com.android.email.b.DEBUG) {
            E.c(com.android.emailcommon.b.mW, "*** " + this.Rv + " open " + this.mHostAuth.WA + ":" + String.valueOf(this.mHostAuth.Zi), new Object[0]);
        }
        try {
            final InetSocketAddress inetSocketAddress = new InetSocketAddress(this.mHostAuth.WA, this.mHostAuth.Zi);
            if (!this.jV()) {
                goto Label_0237;
            }
            (this.Rw = o.a(this.mContext, this.mHostAuth, this.jX()).createSocket()).connect(inetSocketAddress, 10000);
            if (this.jV() && !this.jX()) {
                final Socket rw = this.Rw;
                final String wa = this.mHostAuth.WA;
                final SSLSocket sslSocket = (SSLSocket)rw;
                sslSocket.startHandshake();
                if (sslSocket.getSession() == null) {
                    throw new SSLException("Cannot verify SSL socket without session");
                }
                goto Label_0289;
            }
        }
        catch (SSLException ex) {
            if (com.android.email.b.DEBUG) {
                E.c(com.android.emailcommon.b.mW, ex.toString(), new Object[0]);
            }
            throw new CertificateValidationException(ex.getMessage(), ex);
        }
        catch (IOException ex2) {
            if (com.android.email.b.DEBUG) {
                E.c(com.android.emailcommon.b.mW, ex2.toString(), new Object[0]);
            }
            throw new MessagingException(1, ex2.toString());
        }
        catch (IllegalArgumentException ex3) {
            if (com.android.email.b.DEBUG) {
                E.c(com.android.emailcommon.b.mW, ex3.toString(), new Object[0]);
            }
            throw new MessagingException(0, ex3.toString());
        }
        a.oq().a("socket_certificates", "open", Boolean.toString(this.jX()), 0L);
        if (this.Rw instanceof SSLSocket) {
            final SSLSocket sslSocket2 = (SSLSocket)this.Rw;
            if (sslSocket2.getSession() != null) {
                a.oq().a("cipher_suite", sslSocket2.getSession().getProtocol(), sslSocket2.getSession().getCipherSuite(), 0L);
            }
        }
        this.LP = new BufferedInputStream(this.Rw.getInputStream(), 1024);
        this.Rx = new BufferedOutputStream(this.Rw.getOutputStream(), 512);
        this.Rw.setSoTimeout(60000);
    }
    
    public final void setSoTimeout(final int soTimeout) {
        this.Rw.setSoTimeout(soTimeout);
    }
}
