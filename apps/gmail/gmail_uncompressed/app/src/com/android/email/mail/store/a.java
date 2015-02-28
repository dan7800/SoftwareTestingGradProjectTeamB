package com.android.email.mail.store;

import com.android.email.mail.transport.*;
import java.util.concurrent.atomic.*;
import com.android.emailcommon.mail.*;
import android.text.*;
import com.android.mail.utils.*;
import java.io.*;
import com.android.email.mail.store.imap.*;
import android.util.*;
import java.util.*;

final class a
{
    b Qb;
    private String Qi;
    private int Qo;
    private ImapResponseParser Qp;
    private ImapStore Qq;
    private String Qr;
    private String Qs;
    private final com.android.email.mail.transport.a Qt;
    private final AtomicInteger Qu;
    
    a(final ImapStore imapStore) {
        this.Qs = null;
        this.Qt = new com.android.email.mail.transport.a();
        this.Qu = new AtomicInteger(0);
        this.a(imapStore);
    }
    
    private String a(final List<String> list, final boolean b) {
        this.open();
        final String string = Integer.toString(this.Qu.incrementAndGet());
        for (int size = list.size(), i = 0; i < size; ++i) {
            String string2 = list.get(i);
            if (i == 0) {
                string2 = string + " " + string2;
            }
            else if (!this.Qp.iR().jx()) {
                throw new MessagingException("Expected continuation request");
            }
            this.Qb.f(string2, null);
            this.Qt.O(string2);
        }
        return string;
    }
    
    private boolean aV(final int n) {
        return (n & this.Qo) != 0x0;
    }
    
    private void ag(final boolean b) {
        if (!b || this.Qq.jg()) {
            goto Label_0160;
        }
        List<g> list = Collections.emptyList();
        while (true) {
            try {
                list = this.d("NAMESPACE", false);
                for (final g g : list) {
                    if (g.c(0, "NAMESPACE")) {
                        final d ay = g.aY(1).aY(0);
                        final String string = ay.aZ(0).getString();
                        if (TextUtils.isEmpty((CharSequence)string)) {
                            continue;
                        }
                        this.Qq.E(ImapStore.d(string, null));
                        this.Qq.D(ay.aZ(1).getString());
                    }
                }
                goto Label_0160;
            }
            catch (ImapStore$ImapException ex) {
                if (com.android.email.b.DEBUG) {
                    E.b(com.android.emailcommon.b.mW, ex, "ImapException", new Object[0]);
                }
                continue;
            }
            catch (IOException ex2) {
                continue;
            }
            break;
        }
    }
    
    private String c(final String s, final boolean b) {
        if (this.Qb == null) {
            throw new IOException("Null transport");
        }
        final String string = Integer.toString(this.Qu.incrementAndGet());
        final String string2 = string + " " + s;
        final b qb = this.Qb;
        String s2;
        if (b) {
            s2 = "[IMAP command redacted]";
        }
        else {
            s2 = null;
        }
        qb.f(string2, s2);
        final com.android.email.mail.transport.a qt = this.Qt;
        String s3;
        if (b) {
            s3 = "[IMAP command redacted]";
        }
        else {
            s3 = string2;
        }
        qt.O(s3);
        return string;
    }
    
    private List<g> d(final String s, final boolean b) {
        this.b(s, b);
        return this.iS();
    }
    
    private String iO() {
        if (this.Qq.jf()) {
            final String g = com.android.email.mail.a.a.iN().g(this.Qq.getContext(), this.Qq.iB());
            if (this.Qr == null || !TextUtils.equals((CharSequence)this.Qi, (CharSequence)g)) {
                this.Qi = g;
                this.Qr = "AUTHENTICATE XOAUTH2 " + Base64.encodeToString(("user=" + this.Qq.getUsername() + '\u0001' + "auth=Bearer " + this.Qi + '\u0001' + '\u0001').getBytes(), 2);
            }
        }
        else if (this.Qr == null && this.Qq.getUsername() != null && this.Qq.getPassword() != null) {
            this.Qr = "LOGIN " + this.Qq.getUsername() + " " + ("\"" + this.Qq.getPassword().replaceAll("\\\\", "\\\\\\\\").replaceAll("\"", "\\\\\"") + "\"");
        }
        return this.Qr;
    }
    
    private void iP() {
        this.iQ();
        this.Qp = new ImapResponseParser(this.Qb.getInputStream(), this.Qt);
    }
    
    private List<g> iS() {
        final ArrayList<g> list = new ArrayList<g>();
        g ir;
        do {
            ir = this.Qp.iR();
            list.add(ir);
        } while (!ir.jw());
        if (ir.jz()) {
            return list;
        }
        final String string = ir.toString();
        final String string2 = ir.jF().getString();
        final String string3 = ir.jD().getString();
        final String string4 = ir.jC().getString();
        this.iQ();
        if ("UNAVAILABLE".equals(string4)) {
            throw new MessagingException(19, string3);
        }
        throw new ImapStore$ImapException(string, string2, string3, string4);
    }
    
    private g iT() {
        while (true) {
            for (final g g : this.d("CAPABILITY", false)) {
                if (g.H("CAPABILITY")) {
                    if (g == null) {
                        throw new MessagingException("Invalid CAPABILITY response received");
                    }
                    return g;
                }
            }
            g g = null;
            continue;
        }
    }
    
    private g iU() {
        this.c(this.iO(), true);
        g g;
        do {
            g = this.Qp.iR();
        } while (!g.jw() && !g.jx());
        if (g.jx()) {
            this.c("", true);
            g = this.Qp.iR();
        }
        if ("UNAVAILABLE".equals(g.jC().getString())) {
            throw new MessagingException(19, g.jD().getString());
        }
        return g;
    }
    
    private void iV() {
        if (!this.Qq.jg()) {
            goto Label_0111;
        }
        List<g> list = Collections.emptyList();
        while (true) {
            try {
                list = this.d("LIST \"\" \"\"", false);
                for (final g g : list) {
                    if (g.c(0, "LIST")) {
                        this.Qq.D(g.aZ(2).getString());
                    }
                }
                goto Label_0111;
            }
            catch (ImapStore$ImapException ex) {
                if (com.android.email.b.DEBUG) {
                    E.b(com.android.emailcommon.b.mW, ex, "ImapException", new Object[0]);
                }
                continue;
            }
            catch (IOException ex2) {
                continue;
            }
            break;
        }
    }
    
    final void a(final ImapStore qq) {
        this.Qq = qq;
        this.Qr = null;
    }
    
    final String b(final String s, final boolean b) {
        final String mw = com.android.emailcommon.b.mW;
        final Object[] array = { null };
        String s2;
        if (b) {
            s2 = "[IMAP command redacted]";
        }
        else {
            s2 = s;
        }
        array[0] = s2;
        E.c(mw, "sendCommand %s", array);
        this.open();
        return this.c(s, b);
    }
    
    final void close() {
        if (this.Qb != null) {
            this.Qb.close();
            this.Qb = null;
        }
        this.iQ();
        this.Qp = null;
        this.Qq = null;
    }
    
    final List<g> e(final List<String> list) {
        this.a(list, false);
        return this.iS();
    }
    
    final void iQ() {
        if (this.Qp != null) {
            this.Qp.iQ();
        }
    }
    
    final g iR() {
        return this.Qp.iR();
    }
    
    final void iW() {
        this.Qt.iW();
    }
    
    final void open() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/android/email/mail/store/a.Qb:Lcom/android/email/mail/transport/b;
        //     4: ifnull          18
        //     7: aload_0        
        //     8: getfield        com/android/email/mail/store/a.Qb:Lcom/android/email/mail/transport/b;
        //    11: invokevirtual   com/android/email/mail/transport/b.isOpen:()Z
        //    14: ifeq            18
        //    17: return         
        //    18: aload_0        
        //    19: getfield        com/android/email/mail/store/a.Qb:Lcom/android/email/mail/transport/b;
        //    22: ifnonnull       36
        //    25: aload_0        
        //    26: aload_0        
        //    27: getfield        com/android/email/mail/store/a.Qq:Lcom/android/email/mail/store/ImapStore;
        //    30: invokevirtual   com/android/email/mail/store/ImapStore.jh:()Lcom/android/email/mail/transport/b;
        //    33: putfield        com/android/email/mail/store/a.Qb:Lcom/android/email/mail/transport/b;
        //    36: aload_0        
        //    37: getfield        com/android/email/mail/store/a.Qb:Lcom/android/email/mail/transport/b;
        //    40: invokevirtual   com/android/email/mail/transport/b.open:()V
        //    43: aload_0        
        //    44: invokespecial   com/android/email/mail/store/a.iP:()V
        //    47: aload_0        
        //    48: getfield        com/android/email/mail/store/a.Qp:Lcom/android/email/mail/store/imap/ImapResponseParser;
        //    51: invokevirtual   com/android/email/mail/store/imap/ImapResponseParser.iR:()Lcom/android/email/mail/store/imap/g;
        //    54: pop            
        //    55: aload_0        
        //    56: invokespecial   com/android/email/mail/store/a.iT:()Lcom/android/email/mail/store/imap/g;
        //    59: astore          7
        //    61: aload           7
        //    63: ldc_w           "STARTTLS"
        //    66: invokevirtual   com/android/email/mail/store/imap/g.contains:(Ljava/lang/String;)Z
        //    69: istore          8
        //    71: aload_0        
        //    72: getfield        com/android/email/mail/store/a.Qb:Lcom/android/email/mail/transport/b;
        //    75: invokevirtual   com/android/email/mail/transport/b.jW:()Z
        //    78: istore          9
        //    80: aconst_null    
        //    81: astore          10
        //    83: iload           9
        //    85: ifeq            717
        //    88: iload           8
        //    90: ifeq            579
        //    93: aload_0        
        //    94: ldc_w           "STARTTLS"
        //    97: iconst_0       
        //    98: invokespecial   com/android/email/mail/store/a.d:(Ljava/lang/String;Z)Ljava/util/List;
        //   101: pop            
        //   102: aload_0        
        //   103: getfield        com/android/email/mail/store/a.Qb:Lcom/android/email/mail/transport/b;
        //   106: invokevirtual   com/android/email/mail/transport/b.jY:()V
        //   109: aload_0        
        //   110: invokespecial   com/android/email/mail/store/a.iP:()V
        //   113: aload_0        
        //   114: invokespecial   com/android/email/mail/store/a.iT:()Lcom/android/email/mail/store/imap/g;
        //   117: astore          10
        //   119: goto            717
        //   122: aload           10
        //   124: ldc_w           "ID"
        //   127: invokevirtual   com/android/email/mail/store/imap/g.contains:(Ljava/lang/String;)Z
        //   130: ifeq            143
        //   133: aload_0        
        //   134: iconst_1       
        //   135: aload_0        
        //   136: getfield        com/android/email/mail/store/a.Qo:I
        //   139: ior            
        //   140: putfield        com/android/email/mail/store/a.Qo:I
        //   143: aload           10
        //   145: ldc             "NAMESPACE"
        //   147: invokevirtual   com/android/email/mail/store/imap/g.contains:(Ljava/lang/String;)Z
        //   150: ifeq            163
        //   153: aload_0        
        //   154: iconst_2       
        //   155: aload_0        
        //   156: getfield        com/android/email/mail/store/a.Qo:I
        //   159: ior            
        //   160: putfield        com/android/email/mail/store/a.Qo:I
        //   163: aload           10
        //   165: ldc_w           "UIDPLUS"
        //   168: invokevirtual   com/android/email/mail/store/imap/g.contains:(Ljava/lang/String;)Z
        //   171: ifeq            185
        //   174: aload_0        
        //   175: bipush          8
        //   177: aload_0        
        //   178: getfield        com/android/email/mail/store/a.Qo:I
        //   181: ior            
        //   182: putfield        com/android/email/mail/store/a.Qo:I
        //   185: aload           10
        //   187: ldc_w           "STARTTLS"
        //   190: invokevirtual   com/android/email/mail/store/imap/g.contains:(Ljava/lang/String;)Z
        //   193: ifeq            206
        //   196: aload_0        
        //   197: iconst_4       
        //   198: aload_0        
        //   199: getfield        com/android/email/mail/store/a.Qo:I
        //   202: ior            
        //   203: putfield        com/android/email/mail/store/a.Qo:I
        //   206: aload           10
        //   208: invokevirtual   com/android/email/mail/store/imap/g.flatten:()Ljava/lang/String;
        //   211: astore          11
        //   213: aload_0        
        //   214: iconst_1       
        //   215: invokespecial   com/android/email/mail/store/a.aV:(I)Z
        //   218: ifeq            321
        //   221: aload_0        
        //   222: getfield        com/android/email/mail/store/a.Qb:Lcom/android/email/mail/transport/b;
        //   225: invokevirtual   com/android/email/mail/transport/b.getHost:()Ljava/lang/String;
        //   228: astore          21
        //   230: aload           21
        //   232: invokevirtual   java/lang/String.toLowerCase:()Ljava/lang/String;
        //   235: ldc_w           ".secureserver.net"
        //   238: invokevirtual   java/lang/String.endsWith:(Ljava/lang/String;)Z
        //   241: ifne            321
        //   244: aload_0        
        //   245: getfield        com/android/email/mail/store/a.Qq:Lcom/android/email/mail/store/ImapStore;
        //   248: invokevirtual   com/android/email/mail/store/ImapStore.getContext:()Landroid/content/Context;
        //   251: aload_0        
        //   252: getfield        com/android/email/mail/store/a.Qq:Lcom/android/email/mail/store/ImapStore;
        //   255: invokevirtual   com/android/email/mail/store/ImapStore.getUsername:()Ljava/lang/String;
        //   258: aload           21
        //   260: aload           11
        //   262: invokestatic    com/android/email/mail/store/ImapStore.a:(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //   265: astore          22
        //   267: aload           22
        //   269: ifnull          300
        //   272: aload_0        
        //   273: new             Ljava/lang/StringBuilder;
        //   276: dup            
        //   277: ldc_w           "ID ("
        //   280: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   283: aload           22
        //   285: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   288: ldc_w           ")"
        //   291: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   294: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   297: putfield        com/android/email/mail/store/a.Qs:Ljava/lang/String;
        //   300: aload_0        
        //   301: getfield        com/android/email/mail/store/a.Qs:Ljava/lang/String;
        //   304: astore          23
        //   306: aload           23
        //   308: ifnull          321
        //   311: aload_0        
        //   312: aload_0        
        //   313: getfield        com/android/email/mail/store/a.Qs:Ljava/lang/String;
        //   316: iconst_0       
        //   317: invokespecial   com/android/email/mail/store/a.d:(Ljava/lang/String;Z)Ljava/util/List;
        //   320: pop            
        //   321: aload_0        
        //   322: getfield        com/android/email/mail/store/a.Qq:Lcom/android/email/mail/store/ImapStore;
        //   325: invokevirtual   com/android/email/mail/store/ImapStore.jf:()Z
        //   328: ifeq            658
        //   331: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   334: ldc_w           "doSASLAuth"
        //   337: iconst_0       
        //   338: anewarray       Ljava/lang/Object;
        //   341: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   344: pop            
        //   345: aload_0        
        //   346: invokespecial   com/android/email/mail/store/a.iU:()Lcom/android/email/mail/store/imap/g;
        //   349: invokevirtual   com/android/email/mail/store/imap/g.jz:()Z
        //   352: ifne            668
        //   355: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   358: ldc_w           "failed to authenticate, retrying"
        //   361: iconst_0       
        //   362: anewarray       Ljava/lang/Object;
        //   365: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   368: pop            
        //   369: aload_0        
        //   370: invokevirtual   com/android/email/mail/store/a.iQ:()V
        //   373: aload_0        
        //   374: aconst_null    
        //   375: putfield        com/android/email/mail/store/a.Qr:Ljava/lang/String;
        //   378: aload_0        
        //   379: getfield        com/android/email/mail/store/a.Qb:Lcom/android/email/mail/transport/b;
        //   382: ifnull          397
        //   385: aload_0        
        //   386: getfield        com/android/email/mail/store/a.Qb:Lcom/android/email/mail/transport/b;
        //   389: invokevirtual   com/android/email/mail/transport/b.close:()V
        //   392: aload_0        
        //   393: aconst_null    
        //   394: putfield        com/android/email/mail/store/a.Qb:Lcom/android/email/mail/transport/b;
        //   397: aload_0        
        //   398: invokespecial   com/android/email/mail/store/a.iU:()Lcom/android/email/mail/store/imap/g;
        //   401: invokevirtual   com/android/email/mail/store/imap/g.jz:()Z
        //   404: ifne            668
        //   407: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   410: ldc_w           "failed to authenticate, giving up"
        //   413: iconst_0       
        //   414: anewarray       Ljava/lang/Object;
        //   417: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   420: pop            
        //   421: aload_0        
        //   422: invokevirtual   com/android/email/mail/store/a.iQ:()V
        //   425: new             Lcom/android/emailcommon/mail/AuthenticationFailedException;
        //   428: dup            
        //   429: ldc_w           "OAuth failed after refresh"
        //   432: invokespecial   com/android/emailcommon/mail/AuthenticationFailedException.<init>:(Ljava/lang/String;)V
        //   435: athrow         
        //   436: astore          12
        //   438: getstatic       com/android/email/b.DEBUG:Z
        //   441: ifeq            459
        //   444: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   447: aload           12
        //   449: ldc             "ImapException"
        //   451: iconst_0       
        //   452: anewarray       Ljava/lang/Object;
        //   455: invokestatic    com/android/mail/utils/E.b:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   458: pop            
        //   459: aload           12
        //   461: invokevirtual   com/android/email/mail/store/ImapStore$ImapException.jk:()Ljava/lang/String;
        //   464: astore          13
        //   466: aload           12
        //   468: invokevirtual   com/android/email/mail/store/ImapStore$ImapException.jm:()Ljava/lang/String;
        //   471: astore          14
        //   473: aload           12
        //   475: invokevirtual   com/android/email/mail/store/ImapStore$ImapException.jl:()Ljava/lang/String;
        //   478: astore          15
        //   480: ldc_w           "AUTHENTICATIONFAILED"
        //   483: aload           14
        //   485: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   488: ifne            521
        //   491: ldc_w           "EXPIRED"
        //   494: aload           14
        //   496: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   499: ifne            521
        //   502: ldc_w           "NO"
        //   505: aload           13
        //   507: invokevirtual   java/lang/String.equals:(Ljava/lang/Object;)Z
        //   510: ifeq            693
        //   513: aload           14
        //   515: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //   518: ifeq            693
        //   521: new             Lcom/android/emailcommon/mail/AuthenticationFailedException;
        //   524: dup            
        //   525: aload           15
        //   527: aload           12
        //   529: invokespecial   com/android/emailcommon/mail/AuthenticationFailedException.<init>:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //   532: athrow         
        //   533: astore          4
        //   535: getstatic       com/android/email/b.DEBUG:Z
        //   538: ifeq            557
        //   541: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   544: aload           4
        //   546: ldc_w           "SSLException"
        //   549: iconst_0       
        //   550: anewarray       Ljava/lang/Object;
        //   553: invokestatic    com/android/mail/utils/E.b:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   556: pop            
        //   557: new             Lcom/android/emailcommon/mail/CertificateValidationException;
        //   560: dup            
        //   561: aload           4
        //   563: invokevirtual   javax/net/ssl/SSLException.getMessage:()Ljava/lang/String;
        //   566: aload           4
        //   568: invokespecial   com/android/emailcommon/mail/CertificateValidationException.<init>:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //   571: athrow         
        //   572: astore_2       
        //   573: aload_0        
        //   574: invokevirtual   com/android/email/mail/store/a.iQ:()V
        //   577: aload_2        
        //   578: athrow         
        //   579: getstatic       com/android/email/b.DEBUG:Z
        //   582: ifeq            599
        //   585: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   588: ldc_w           "TLS not supported but required"
        //   591: iconst_0       
        //   592: anewarray       Ljava/lang/Object;
        //   595: invokestatic    com/android/mail/utils/E.c:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   598: pop            
        //   599: new             Lcom/android/emailcommon/mail/MessagingException;
        //   602: dup            
        //   603: iconst_2       
        //   604: invokespecial   com/android/emailcommon/mail/MessagingException.<init>:(I)V
        //   607: athrow         
        //   608: astore_1       
        //   609: getstatic       com/android/email/b.DEBUG:Z
        //   612: ifeq            630
        //   615: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   618: aload_1        
        //   619: ldc_w           "IOException"
        //   622: iconst_0       
        //   623: anewarray       Ljava/lang/Object;
        //   626: invokestatic    com/android/mail/utils/E.b:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   629: pop            
        //   630: aload_1        
        //   631: athrow         
        //   632: astore          25
        //   634: getstatic       com/android/email/b.DEBUG:Z
        //   637: ifeq            321
        //   640: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   643: aload           25
        //   645: ldc             "ImapException"
        //   647: iconst_0       
        //   648: anewarray       Ljava/lang/Object;
        //   651: invokestatic    com/android/mail/utils/E.b:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   654: pop            
        //   655: goto            321
        //   658: aload_0        
        //   659: aload_0        
        //   660: invokespecial   com/android/email/mail/store/a.iO:()Ljava/lang/String;
        //   663: iconst_1       
        //   664: invokespecial   com/android/email/mail/store/a.d:(Ljava/lang/String;Z)Ljava/util/List;
        //   667: pop            
        //   668: aload_0        
        //   669: aload_0        
        //   670: iconst_2       
        //   671: invokespecial   com/android/email/mail/store/a.aV:(I)Z
        //   674: invokespecial   com/android/email/mail/store/a.ag:(Z)V
        //   677: aload_0        
        //   678: invokespecial   com/android/email/mail/store/a.iV:()V
        //   681: aload_0        
        //   682: getfield        com/android/email/mail/store/a.Qq:Lcom/android/email/mail/store/ImapStore;
        //   685: invokevirtual   com/android/email/mail/store/ImapStore.ji:()V
        //   688: aload_0        
        //   689: invokevirtual   com/android/email/mail/store/a.iQ:()V
        //   692: return         
        //   693: new             Lcom/android/emailcommon/mail/MessagingException;
        //   696: dup            
        //   697: aload           15
        //   699: aload           12
        //   701: invokespecial   com/android/emailcommon/mail/MessagingException.<init>:(Ljava/lang/String;Ljava/lang/Throwable;)V
        //   704: athrow         
        //   705: astore          24
        //   707: goto            321
        //   710: aload           7
        //   712: astore          10
        //   714: goto            122
        //   717: aload           10
        //   719: ifnull          710
        //   722: goto            122
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                                  
        //  -----  -----  -----  -----  ------------------------------------------------------
        //  18     36     533    572    Ljavax/net/ssl/SSLException;
        //  18     36     608    632    Ljava/io/IOException;
        //  18     36     572    579    Any
        //  36     80     533    572    Ljavax/net/ssl/SSLException;
        //  36     80     608    632    Ljava/io/IOException;
        //  36     80     572    579    Any
        //  93     119    533    572    Ljavax/net/ssl/SSLException;
        //  93     119    608    632    Ljava/io/IOException;
        //  93     119    572    579    Any
        //  122    143    533    572    Ljavax/net/ssl/SSLException;
        //  122    143    608    632    Ljava/io/IOException;
        //  122    143    572    579    Any
        //  143    163    533    572    Ljavax/net/ssl/SSLException;
        //  143    163    608    632    Ljava/io/IOException;
        //  143    163    572    579    Any
        //  163    185    533    572    Ljavax/net/ssl/SSLException;
        //  163    185    608    632    Ljava/io/IOException;
        //  163    185    572    579    Any
        //  185    206    533    572    Ljavax/net/ssl/SSLException;
        //  185    206    608    632    Ljava/io/IOException;
        //  185    206    572    579    Any
        //  206    267    533    572    Ljavax/net/ssl/SSLException;
        //  206    267    608    632    Ljava/io/IOException;
        //  206    267    572    579    Any
        //  272    300    533    572    Ljavax/net/ssl/SSLException;
        //  272    300    608    632    Ljava/io/IOException;
        //  272    300    572    579    Any
        //  300    306    533    572    Ljavax/net/ssl/SSLException;
        //  300    306    608    632    Ljava/io/IOException;
        //  300    306    572    579    Any
        //  311    321    632    658    Lcom/android/email/mail/store/ImapStore$ImapException;
        //  311    321    705    710    Ljava/io/IOException;
        //  311    321    533    572    Ljavax/net/ssl/SSLException;
        //  311    321    572    579    Any
        //  321    397    436    533    Lcom/android/email/mail/store/ImapStore$ImapException;
        //  321    397    533    572    Ljavax/net/ssl/SSLException;
        //  321    397    608    632    Ljava/io/IOException;
        //  321    397    572    579    Any
        //  397    436    436    533    Lcom/android/email/mail/store/ImapStore$ImapException;
        //  397    436    533    572    Ljavax/net/ssl/SSLException;
        //  397    436    608    632    Ljava/io/IOException;
        //  397    436    572    579    Any
        //  438    459    533    572    Ljavax/net/ssl/SSLException;
        //  438    459    608    632    Ljava/io/IOException;
        //  438    459    572    579    Any
        //  459    521    533    572    Ljavax/net/ssl/SSLException;
        //  459    521    608    632    Ljava/io/IOException;
        //  459    521    572    579    Any
        //  521    533    533    572    Ljavax/net/ssl/SSLException;
        //  521    533    608    632    Ljava/io/IOException;
        //  521    533    572    579    Any
        //  535    557    572    579    Any
        //  557    572    572    579    Any
        //  579    599    533    572    Ljavax/net/ssl/SSLException;
        //  579    599    608    632    Ljava/io/IOException;
        //  579    599    572    579    Any
        //  599    608    533    572    Ljavax/net/ssl/SSLException;
        //  599    608    608    632    Ljava/io/IOException;
        //  599    608    572    579    Any
        //  609    630    572    579    Any
        //  630    632    572    579    Any
        //  634    655    533    572    Ljavax/net/ssl/SSLException;
        //  634    655    608    632    Ljava/io/IOException;
        //  634    655    572    579    Any
        //  658    668    436    533    Lcom/android/email/mail/store/ImapStore$ImapException;
        //  658    668    533    572    Ljavax/net/ssl/SSLException;
        //  658    668    608    632    Ljava/io/IOException;
        //  658    668    572    579    Any
        //  668    688    533    572    Ljavax/net/ssl/SSLException;
        //  668    688    608    632    Ljava/io/IOException;
        //  668    688    572    579    Any
        //  693    705    533    572    Ljavax/net/ssl/SSLException;
        //  693    705    608    632    Ljava/io/IOException;
        //  693    705    572    579    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 328, Size: 328
        //     at java.util.ArrayList.rangeCheck(Unknown Source)
        //     at java.util.ArrayList.get(Unknown Source)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3553)
        //     at com.strobel.decompiler.ast.AstBuilder.build(AstBuilder.java:114)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:210)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:99)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethodBody(AstBuilder.java:757)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createMethod(AstBuilder.java:655)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addTypeMembers(AstBuilder.java:532)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeCore(AstBuilder.java:499)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createTypeNoCache(AstBuilder.java:141)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.createType(AstBuilder.java:130)
        //     at com.strobel.decompiler.languages.java.ast.AstBuilder.addType(AstBuilder.java:105)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.buildAst(JavaLanguage.java:71)
        //     at com.strobel.decompiler.languages.java.JavaLanguage.decompileType(JavaLanguage.java:59)
        //     at com.strobel.decompiler.DecompilerDriver.decompileType(DecompilerDriver.java:304)
        //     at com.strobel.decompiler.DecompilerDriver.decompileJar(DecompilerDriver.java:225)
        //     at com.strobel.decompiler.DecompilerDriver.main(DecompilerDriver.java:110)
        // 
        throw new IllegalStateException("An error occurred while decompiling this method.");
    }
    
    final List<g> z(final String s) {
        return this.d(s, false);
    }
}
