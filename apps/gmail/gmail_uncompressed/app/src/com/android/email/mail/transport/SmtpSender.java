package com.android.email.mail.transport;

import com.android.email.mail.*;
import android.content.*;
import android.util.*;
import com.android.emailcommon.provider.*;
import com.android.emailcommon.b.*;
import com.android.emailcommon.a.*;
import java.io.*;
import com.android.mail.utils.*;
import com.android.emailcommon.mail.*;
import javax.net.ssl.*;
import java.net.*;

public class SmtpSender extends a
{
    private Account Ml;
    private boolean Pc;
    private b Qb;
    private String Qc;
    private String Qd;
    private final Context mContext;
    
    private SmtpSender(final Context mContext, final Account ml) {
        this.mContext = mContext;
        this.Ml = ml;
        final HostAuth y = ml.Y(mContext);
        this.Qb = new b(mContext, "SMTP", y);
        final String[] lq = y.lQ();
        this.Qc = lq[0];
        this.Qd = lq[1];
        if (y.af(mContext) != null) {
            this.Pc = true;
        }
    }
    
    private String P(final String s) {
        return this.e(s, null);
    }
    
    private String e(final String s, final String s2) {
        if (s != null) {
            this.Qb.f(s, s2);
        }
        String s3;
        String string;
        for (string = (s3 = this.Qb.ah(1 != 0)); s3.length() >= 4 && s3.charAt(3) == '-'; s3 = this.Qb.ah(true), string += s3.substring(3)) {}
        if (string.length() > 0) {
            final char char1 = string.charAt(0);
            if (char1 == '4' || char1 == '5') {
                throw new MessagingException(string);
            }
        }
        return string;
    }
    
    private void g(final String s, final String s2) {
        final byte[] encode = Base64.encode(("user=" + s + '\u0001' + "auth=Bearer " + s2 + '\u0001' + '\u0001').getBytes(), 2);
        try {
            this.e("AUTH XOAUTH2 " + new String(encode), "AUTH XOAUTH2 /redacted/");
        }
        catch (MessagingException ex) {
            if (ex.getMessage().length() > 1 && ex.getMessage().charAt(1) == '3') {
                throw new AuthenticationFailedException(ex.getMessage());
            }
            throw ex;
        }
    }
    
    public static a newInstance(final Account account, final Context context) {
        return new SmtpSender(context, account);
    }
    
    @Override
    public final void close() {
        this.Qb.close();
    }
    
    @Override
    public final void o(final long n) {
        int i = 0;
        this.Qb.close();
        this.open();
        final g t = g.t(this.mContext, n);
        if (t == null) {
            throw new MessagingException("Trying to send non-existent message id=" + Long.toString(n));
        }
        final Address am = Address.am(t.YT);
        final Address[] ao = Address.ao(t.YU);
        final Address[] ao2 = Address.ao(t.YV);
        final Address[] ao3 = Address.ao(t.YW);
        try {
            this.P("MAIL FROM:<" + am.getAddress() + ">");
            for (int length = ao.length, j = 0; j < length; ++j) {
                this.P("RCPT TO:<" + ao[j].getAddress().trim() + ">");
            }
            for (int length2 = ao2.length, k = 0; k < length2; ++k) {
                this.P("RCPT TO:<" + ao2[k].getAddress().trim() + ">");
            }
            while (i < ao3.length) {
                this.P("RCPT TO:<" + ao3[i].getAddress().trim() + ">");
                ++i;
            }
            this.P("DATA");
            j.a(this.mContext, t, new f(this.Qb.getOutputStream()));
            this.P("\r\n.");
        }
        catch (IOException ex) {
            throw new MessagingException("Unable to send message", ex);
        }
    }
    
    @Override
    public final void open() {
        boolean matches = false;
        boolean matches2 = false;
        Label_0388: {
            while (true) {
                while (true) {
                    Label_0682: {
                        try {
                            this.Qb.open();
                            this.e(null, null);
                            final InetAddress localAddress = this.Qb.getLocalAddress();
                            if (localAddress == null) {
                                break Label_0682;
                            }
                            final StringBuilder sb = new StringBuilder();
                            sb.append('[');
                            if (localAddress instanceof Inet6Address) {
                                sb.append("IPv6:");
                            }
                            sb.append(localAddress.getHostAddress());
                            sb.append(']');
                            final String string = sb.toString();
                            String s = this.P("EHLO " + string);
                            if (this.Qb.jW()) {
                                if (!s.contains("STARTTLS")) {
                                    goto Label_0267;
                                }
                                this.P("STARTTLS");
                                this.Qb.jY();
                                s = this.P("EHLO " + string);
                            }
                            matches = s.matches(".*AUTH.*LOGIN.*$");
                            matches2 = s.matches(".*AUTH.*PLAIN.*$");
                            final boolean matches3 = s.matches(".*AUTH.*XOAUTH2.*$");
                            if (!this.Pc) {
                                break Label_0388;
                            }
                            if (!matches3) {
                                E.e(com.android.emailcommon.b.mW, "OAuth requested, but not supported.", new Object[0]);
                                throw new MessagingException(18);
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
                        break;
                    }
                    final String string = "localhost";
                    continue;
                }
            }
            final String qc = this.Qc;
            final com.android.email.mail.a.a in = com.android.email.mail.a.a.iN();
            final String g = in.g(this.mContext, this.Ml);
            try {
                this.g(qc, g);
                return;
            }
            catch (AuthenticationFailedException ex5) {
                this.g(qc, in.h(this.mContext, this.Ml));
                return;
            }
        }
        if (this.Qc != null && this.Qc.length() > 0 && this.Qd != null && this.Qd.length() > 0) {
            if (matches2) {
                final byte[] encode = Base64.encode(("\u0000" + this.Qc + "\u0000" + this.Qd).getBytes(), 2);
                try {
                    this.e("AUTH PLAIN " + new String(encode), "AUTH PLAIN /redacted/");
                    return;
                }
                catch (MessagingException ex3) {
                    if (ex3.getMessage().length() > 1 && ex3.getMessage().charAt(1) == '3') {
                        throw new AuthenticationFailedException(ex3.getMessage());
                    }
                    throw ex3;
                }
            }
            if (matches) {
                final String qc2 = this.Qc;
                final String qd = this.Qd;
                try {
                    this.P("AUTH LOGIN");
                    this.e(Base64.encodeToString(qc2.getBytes(), 2), "/username redacted/");
                    this.e(Base64.encodeToString(qd.getBytes(), 2), "/password redacted/");
                    return;
                }
                catch (MessagingException ex4) {
                    if (ex4.getMessage().length() > 1 && ex4.getMessage().charAt(1) == '3') {
                        throw new AuthenticationFailedException(ex4.getMessage());
                    }
                    throw ex4;
                }
            }
            E.e(com.android.emailcommon.b.mW, "No valid authentication mechanism found.", new Object[0]);
            throw new MessagingException(3);
        }
    }
}
