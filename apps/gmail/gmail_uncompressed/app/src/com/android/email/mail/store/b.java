package com.android.email.mail.store;

import com.android.emailcommon.provider.*;
import com.android.email.*;
import com.android.mail.utils.*;
import com.android.email.service.*;
import android.util.*;
import java.text.*;
import com.android.emailcommon.a.*;
import android.text.*;
import android.content.*;
import com.android.emailcommon.b.*;
import com.android.emailcommon.mail.*;
import java.util.*;
import com.android.email.mail.store.imap.*;
import com.android.emailcommon.service.*;
import java.io.*;

final class b extends Folder
{
    private static final Flag[] Qv;
    Mailbox Pv;
    private boolean QA;
    Object[] QB;
    private final ImapStore Qw;
    private int Qx;
    private a Qy;
    private Folder$OpenMode Qz;
    private final String mName;
    
    static {
        Qv = new Flag[] { Flag.WP, Flag.WQ, Flag.WS, Flag.WR };
    }
    
    b(final ImapStore qw, final String mName) {
        this.Qx = -1;
        this.Qw = qw;
        this.mName = mName;
    }
    
    private static boolean B(final String s) {
        for (int length = s.length(), i = 0; i < length; ++i) {
            if (s.charAt(i) >= '\u0080') {
                return false;
            }
        }
        return true;
    }
    
    private MessagingException a(final a a, final IOException ex) {
        if (com.android.email.b.DEBUG) {
            E.c(com.android.emailcommon.b.mW, "IO Exception detected: ", ex);
        }
        a.close();
        if (a == this.Qy) {
            this.Qy = null;
            this.iY();
        }
        return new MessagingException(1, "IO Error", ex);
    }
    
    private static c a(final InputStream inputStream, final String s, final int n, final f f) {
        int n2 = 0;
        final InputStream a = i.a(inputStream, s);
        final com.android.emailcommon.a.a a2 = new com.android.emailcommon.a.a();
        final OutputStream outputStream = a2.getOutputStream();
        while (true) {
            Label_0133: {
                try {
                    final byte[] array = new byte[16384];
                    while (true) {
                        final int read = a.read(array);
                        if (-1 == read) {
                            break;
                        }
                        outputStream.write(array, 0, read);
                        n2 += read;
                        if (f == null) {
                            continue;
                        }
                        if (n != 0) {
                            break Label_0133;
                        }
                        f.be((int)Math.ceil(100.0 * (1.0 - 1.0 / n2)));
                    }
                }
                catch (Base64DataException ex) {
                    outputStream.write(("\n\n" + ImapService.kF()).getBytes());
                    return a2;
                    f.be(n2 * 100 / n);
                    continue;
                }
                finally {
                    outputStream.close();
                }
            }
            break;
        }
        outputStream.close();
        return a2;
    }
    
    private static String a(final long n, final long n2, final boolean b) {
        final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-LLL-yyyy", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
        final String format = simpleDateFormat.format(n2);
        final StringBuilder sb = new StringBuilder();
        sb.append("1:* ");
        if (n != 0L) {
            final String format2 = simpleDateFormat.format(n);
            if (n < n2) {
                throw new MessagingException(String.format("Invalid date range: %s - %s", format, format2));
            }
            sb.append("BEFORE ");
            if (b) {
                sb.append('\"');
            }
            sb.append(format2);
            if (b) {
                sb.append('\"');
            }
            sb.append(" ");
        }
        sb.append("SINCE ");
        if (b) {
            sb.append('\"');
        }
        sb.append(format);
        if (b) {
            sb.append('\"');
        }
        return sb.toString();
    }
    
    private static void a(final d d, final j j, final String s) {
        if (d.aX(0).js()) {
            final h h = new h();
            int i = 0;
            while (i < d.size()) {
                final com.android.email.mail.store.imap.b ax = d.aX(i);
                if (ax.js()) {
                    final com.android.emailcommon.a.c c = new com.android.emailcommon.a.c();
                    if (s.equals("TEXT")) {
                        a(d.aY(i), c, Integer.toString(i + 1));
                    }
                    else {
                        a(d.aY(i), c, s + "." + (i + 1));
                    }
                    h.a(c);
                    ++i;
                }
                else {
                    if (ax.jt()) {
                        h.ae(d.aZ(i).getString().toLowerCase(Locale.US));
                        break;
                    }
                    break;
                }
            }
            j.a(h);
            return;
        }
        final com.android.email.mail.store.imap.i az = d.aZ(0);
        final String lowerCase = (az.getString() + "/" + d.aZ(1).getString()).toLowerCase(Locale.US);
        final d ay = d.aY(2);
        final com.android.email.mail.store.imap.i az2 = d.aZ(3);
        final com.android.email.mail.store.imap.i az3 = d.aZ(5);
        final int jn = d.aZ(6).jN();
        if (i.s(lowerCase, "message/rfc822")) {
            throw new MessagingException("BODYSTRUCTURE message/rfc822 not yet supported.");
        }
        final StringBuilder sb = new StringBuilder(lowerCase);
        for (int k = 1; k < ay.size(); k += 2) {
            sb.append(String.format(";\n %s=\"%s\"", ay.aZ(k - 1).getString(), ay.aZ(k).getString()));
        }
        j.setHeader("Content-Type", sb.toString());
        d d2;
        if (az.K("TEXT") && d.aX(9).js()) {
            d2 = d.aY(9);
        }
        else {
            d2 = d.aY(8);
        }
        final StringBuilder sb2 = new StringBuilder();
        if (d2.size() > 0) {
            final String lowerCase2 = d2.aZ(0).getString().toLowerCase(Locale.US);
            if (!TextUtils.isEmpty((CharSequence)lowerCase2)) {
                sb2.append(lowerCase2);
            }
            final d ay2 = d2.aY(1);
            if (!ay2.isEmpty()) {
                for (int l = 1; l < ay2.size(); l += 2) {
                    sb2.append(String.format(Locale.US, ";\n %s=\"%s\"", ay2.aZ(l - 1).getString().toLowerCase(Locale.US), ay2.aZ(l).getString()));
                }
            }
        }
        if (jn > 0 && i.r(sb2.toString(), "size") == null) {
            sb2.append(String.format(Locale.US, ";\n size=%d", jn));
        }
        if (sb2.length() > 0) {
            j.setHeader("Content-Disposition", sb2.toString());
        }
        if (!az3.isEmpty()) {
            j.setHeader("Content-Transfer-Encoding", az3.getString());
        }
        if (!az2.isEmpty()) {
            j.setHeader("Content-ID", az2.getString());
        }
        if (jn > 0) {
            if (j instanceof com.android.email.mail.store.c) {
                ((com.android.email.mail.store.c)j).setSize(jn);
            }
            else {
                if (!(j instanceof com.android.emailcommon.a.c)) {
                    throw new MessagingException("Unknown part type " + j.toString());
                }
                ((com.android.emailcommon.a.c)j).setSize(jn);
            }
        }
        j.setHeader("X-Android-Attachment-StoreData", s);
    }
    
    private void a(final g g) {
        if (g.c(1, "EXISTS")) {
            this.Qx = g.aZ(0).jN();
        }
    }
    
    private Message[] a(final String[] array, final f f) {
        final ArrayList<com.android.email.mail.store.c> list = new ArrayList<com.android.email.mail.store.c>(array.length);
        for (int i = 0; i < array.length; ++i) {
            list.add(new com.android.email.mail.store.c(array[i], this));
        }
        return list.toArray(Message.Xj);
    }
    
    private String[] e(final String s, final boolean b) {
        this.je();
        try {
            final String[] f = f(this.Qy.z("UID SEARCH " + s));
            E.c(com.android.emailcommon.b.mW, "searchForUids '" + s + "' results: " + f.length, new Object[0]);
            return f;
        }
        catch (ImapStore$ImapException ex) {
            E.b(com.android.emailcommon.b.mW, ex, "ImapException in search: " + s, new Object[0]);
            if (b) {
                return s.abJ;
            }
            throw ex;
        }
        catch (IOException ex2) {
            E.b(com.android.emailcommon.b.mW, ex2, "IOException in search: " + s, new Object[0]);
            throw this.a(this.Qy, ex2);
        }
        finally {
            this.iQ();
        }
    }
    
    private static String[] f(final List<g> list) {
        final ArrayList<String> list2 = new ArrayList<String>();
        for (final g g : list) {
            if (g.c(0, "SEARCH")) {
                for (int i = 1; i < g.size(); ++i) {
                    final com.android.email.mail.store.imap.i az = g.aZ(i);
                    if (az.jt()) {
                        list2.add(az.getString());
                    }
                }
            }
        }
        return list2.toArray(s.abJ);
    }
    
    private String[] g(final List<String> list) {
        this.je();
        try {
            return f(this.Qy.e(list));
        }
        catch (ImapStore$ImapException ex2) {
            return s.abJ;
        }
        catch (IOException ex) {
            throw this.a(this.Qy, ex);
        }
        finally {
            this.iQ();
        }
    }
    
    private void iQ() {
        if (this.Qy != null) {
            this.Qy.iQ();
        }
    }
    
    private boolean isOpen() {
        return this.QA && this.Qy != null;
    }
    
    private void jd() {
        final List<g> z = this.Qy.z(String.format(Locale.US, "SELECT \"%s\"", ImapStore.c(this.mName, this.Qw.QE)));
        this.Qz = Folder$OpenMode.Xg;
        final Iterator<g> iterator = z.iterator();
        int jn = -1;
        while (iterator.hasNext()) {
            final g g = iterator.next();
            if (g.c(1, "EXISTS")) {
                jn = g.aZ(0).jN();
            }
            else if (g.jz()) {
                final com.android.email.mail.store.imap.i jc = g.jC();
                if (jc.K("READ-ONLY")) {
                    this.Qz = Folder$OpenMode.Xh;
                }
                else {
                    if (!jc.K("READ-WRITE")) {
                        continue;
                    }
                    this.Qz = Folder$OpenMode.Xg;
                }
            }
            else {
                if (g.jw()) {
                    throw new MessagingException("Can't open mailbox: " + g.jE());
                }
                continue;
            }
        }
        if (jn == -1) {
            throw new MessagingException("Did not find message count during select");
        }
        this.Qx = jn;
        this.QA = true;
    }
    
    private void je() {
        if (!this.isOpen()) {
            throw new MessagingException("Folder " + this.mName + " is not open.");
        }
    }
    
    @Override
    public final Message A(final String s) {
        this.je();
        final String[] e = this.e("UID " + s, true);
        for (int i = 0; i < e.length; ++i) {
            if (e[i].equals(s)) {
                return new com.android.email.mail.store.c(s, this);
            }
        }
        return null;
    }
    
    @Override
    public final Message C(final String s) {
        return new com.android.email.mail.store.c(s, this);
    }
    
    final void C(final Context context) {
        final Mailbox pv = this.Pv;
        if (!pv.lF()) {
            pv.ac(context);
            this.QB = pv.lS();
        }
        else {
            final Object[] ls = pv.lS();
            if (!Arrays.equals(this.QB, ls)) {
                pv.a(context, pv.lB());
                this.QB = ls;
            }
        }
    }
    
    @Override
    public final void a(final Context context, final Message message, final boolean b) {
        File tempFile = null;
        e e = null;
        String substring = null;
        while (true) {
            int n = 0;
            this.je();
            StringBuilder sb = null;
        Label_0208:
            while (true) {
                Label_0607: {
                    try {
                        tempFile = File.createTempFile("IMAPupsync", ".eml", context.getExternalCacheDir());
                        if (!tempFile.delete()) {
                            E.e(E.TAG, "Could not delete temp file %s", tempFile.getAbsolutePath());
                        }
                        e = new e(new FileOutputStream(tempFile));
                        final com.android.emailcommon.b.f f = new com.android.emailcommon.b.f(e);
                        message.writeTo(f);
                        f.flush();
                        substring = "";
                        final Flag[] lq = message.lq();
                        if (lq.length <= 0) {
                            break;
                        }
                        sb = new StringBuilder();
                        final int length = lq.length;
                        if (n < length) {
                            final Flag flag = lq[n];
                            if (flag == Flag.WQ) {
                                sb.append(" \\SEEN");
                                break Label_0607;
                            }
                            if (flag == Flag.WS) {
                                sb.append(" \\FLAGGED");
                            }
                            break Label_0607;
                        }
                    }
                    catch (IOException ex) {
                        throw this.a(this.Qy, ex);
                    }
                    finally {
                        this.iQ();
                    }
                    break Label_0208;
                }
                ++n;
                continue;
            }
            if (sb.length() > 0) {
                substring = sb.substring(1);
                break;
            }
            break;
        }
        this.Qy.b(String.format(Locale.US, "APPEND \"%s\" (%s) {%d}", ImapStore.c(this.mName, this.Qw.QE), substring, e.getCount()), false);
    Label_0321_Outer:
        while (true) {
            final int soTimeout = this.Qy.Qb.getSoTimeout();
            while (true) {
                if (b) {
                    try {
                        this.Qy.Qb.setSoTimeout(0);
                        final g ir = this.Qy.iR();
                        if (ir.jx()) {
                            final OutputStream outputStream = this.Qy.Qb.getOutputStream();
                            org.apache.a.a.a.c(new FileInputStream(tempFile), outputStream);
                            outputStream.write(13);
                            outputStream.write(10);
                            outputStream.flush();
                        }
                        else if (!ir.jw()) {
                            this.a(ir);
                        }
                        this.Qy.Qb.setSoTimeout(soTimeout);
                        if (!ir.jw()) {
                            continue Label_0321_Outer;
                        }
                        final d ay = ir.aY(1);
                        if (ay.size() >= 3 && ay.H("APPENDUID")) {
                            final String string = ay.aZ(2).getString();
                            if (!TextUtils.isEmpty((CharSequence)string)) {
                                message.ap(string);
                                this.iQ();
                                return;
                            }
                        }
                    }
                    finally {
                        this.Qy.Qb.setSoTimeout(soTimeout);
                    }
                    break;
                }
                continue;
            }
        }
        final String kw = message.kW();
        if (kw == null || kw.length() == 0) {
            this.iQ();
            return;
        }
        final String[] e2 = this.e(String.format(Locale.US, "HEADER MESSAGE-ID %s", kw), true);
        if (e2.length > 0) {
            message.ap(e2[0]);
        }
        final String[] e3 = this.e(String.format(Locale.US, "(HEADER MESSAGE-ID %s)", kw), true);
        if (e3.length > 0) {
            message.ap(e3[0]);
        }
        this.iQ();
    }
    
    @Override
    public final void a(final Folder$OpenMode p0) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: invokespecial   com/android/email/mail/store/b.isOpen:()Z
        //     4: ifeq            52
        //     7: aload_0        
        //     8: getfield        com/android/email/mail/store/b.Qz:Lcom/android/emailcommon/mail/Folder$OpenMode;
        //    11: astore          7
        //    13: aload           7
        //    15: aload_1        
        //    16: if_acmpne       109
        //    19: aload_0        
        //    20: getfield        com/android/email/mail/store/b.Qy:Lcom/android/email/mail/store/a;
        //    23: ldc_w           "NOOP"
        //    26: invokevirtual   com/android/email/mail/store/a.z:(Ljava/lang/String;)Ljava/util/List;
        //    29: pop            
        //    30: aload_0        
        //    31: invokespecial   com/android/email/mail/store/b.iQ:()V
        //    34: return         
        //    35: astore          9
        //    37: aload_0        
        //    38: aload_0        
        //    39: getfield        com/android/email/mail/store/b.Qy:Lcom/android/email/mail/store/a;
        //    42: aload           9
        //    44: invokespecial   com/android/email/mail/store/b.a:(Lcom/android/email/mail/store/a;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;
        //    47: pop            
        //    48: aload_0        
        //    49: invokespecial   com/android/email/mail/store/b.iQ:()V
        //    52: aload_0        
        //    53: monitorenter   
        //    54: aload_0        
        //    55: aload_0        
        //    56: getfield        com/android/email/mail/store/b.Qw:Lcom/android/email/mail/store/ImapStore;
        //    59: invokevirtual   com/android/email/mail/store/ImapStore.jj:()Lcom/android/email/mail/store/a;
        //    62: putfield        com/android/email/mail/store/b.Qy:Lcom/android/email/mail/store/a;
        //    65: aload_0        
        //    66: monitorexit    
        //    67: aload_0        
        //    68: invokespecial   com/android/email/mail/store/b.jd:()V
        //    71: aload_0        
        //    72: invokespecial   com/android/email/mail/store/b.iQ:()V
        //    75: return         
        //    76: astore_3       
        //    77: aload_0        
        //    78: aconst_null    
        //    79: putfield        com/android/email/mail/store/b.Qy:Lcom/android/email/mail/store/a;
        //    82: aload_0        
        //    83: invokevirtual   com/android/email/mail/store/b.iY:()V
        //    86: aload_3        
        //    87: athrow         
        //    88: astore          8
        //    90: aload_0        
        //    91: invokespecial   com/android/email/mail/store/b.iQ:()V
        //    94: aload           8
        //    96: athrow         
        //    97: astore_2       
        //    98: aload_0        
        //    99: iconst_0       
        //   100: putfield        com/android/email/mail/store/b.QA:Z
        //   103: aload_0        
        //   104: invokevirtual   com/android/email/mail/store/b.iY:()V
        //   107: aload_2        
        //   108: athrow         
        //   109: aload_0        
        //   110: invokevirtual   com/android/email/mail/store/b.iY:()V
        //   113: goto            52
        //   116: astore          4
        //   118: aload_0        
        //   119: monitorexit    
        //   120: aload           4
        //   122: athrow         
        //   123: astore          6
        //   125: aload_0        
        //   126: aload_0        
        //   127: getfield        com/android/email/mail/store/b.Qy:Lcom/android/email/mail/store/a;
        //   130: aload           6
        //   132: invokespecial   com/android/email/mail/store/b.a:(Lcom/android/email/mail/store/a;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;
        //   135: athrow         
        //   136: astore          5
        //   138: aload_0        
        //   139: invokespecial   com/android/email/mail/store/b.iQ:()V
        //   142: aload           5
        //   144: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                                        
        //  -----  -----  -----  -----  ------------------------------------------------------------
        //  0      13     76     88     Lcom/android/emailcommon/mail/AuthenticationFailedException;
        //  0      13     97     109    Lcom/android/emailcommon/mail/MessagingException;
        //  19     30     35     52     Ljava/io/IOException;
        //  19     30     88     97     Any
        //  30     34     76     88     Lcom/android/emailcommon/mail/AuthenticationFailedException;
        //  30     34     97     109    Lcom/android/emailcommon/mail/MessagingException;
        //  37     48     88     97     Any
        //  48     52     76     88     Lcom/android/emailcommon/mail/AuthenticationFailedException;
        //  48     52     97     109    Lcom/android/emailcommon/mail/MessagingException;
        //  52     54     76     88     Lcom/android/emailcommon/mail/AuthenticationFailedException;
        //  52     54     97     109    Lcom/android/emailcommon/mail/MessagingException;
        //  54     67     116    123    Any
        //  67     71     123    136    Ljava/io/IOException;
        //  67     71     136    145    Any
        //  71     75     76     88     Lcom/android/emailcommon/mail/AuthenticationFailedException;
        //  71     75     97     109    Lcom/android/emailcommon/mail/MessagingException;
        //  90     97     76     88     Lcom/android/emailcommon/mail/AuthenticationFailedException;
        //  90     97     97     109    Lcom/android/emailcommon/mail/MessagingException;
        //  109    113    76     88     Lcom/android/emailcommon/mail/AuthenticationFailedException;
        //  109    113    97     109    Lcom/android/emailcommon/mail/MessagingException;
        //  118    123    76     88     Lcom/android/emailcommon/mail/AuthenticationFailedException;
        //  118    123    97     109    Lcom/android/emailcommon/mail/MessagingException;
        //  125    136    136    145    Any
        //  138    145    76     88     Lcom/android/emailcommon/mail/AuthenticationFailedException;
        //  138    145    97     109    Lcom/android/emailcommon/mail/MessagingException;
        // 
        // The error that occurred was:
        // 
        // java.lang.IndexOutOfBoundsException: Index: 81, Size: 81
        //     at java.util.ArrayList.rangeCheck(Unknown Source)
        //     at java.util.ArrayList.get(Unknown Source)
        //     at com.strobel.decompiler.ast.AstBuilder.convertToAst(AstBuilder.java:3305)
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
    
    @Override
    public final void a(final Message[] p0, final FetchProfile p1, final f p2) {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_1        
        //     1: arraylength    
        //     2: ifeq            351
        //     5: aload_0        
        //     6: invokespecial   com/android/email/mail/store/b.je:()V
        //     9: new             Ljava/util/HashMap;
        //    12: dup            
        //    13: invokespecial   java/util/HashMap.<init>:()V
        //    16: astore          6
        //    18: aload_1        
        //    19: arraylength    
        //    20: istore          7
        //    22: iconst_0       
        //    23: istore          8
        //    25: iload           8
        //    27: iload           7
        //    29: if_icmpge       57
        //    32: aload_1        
        //    33: iload           8
        //    35: aaload         
        //    36: astore          9
        //    38: aload           6
        //    40: aload           9
        //    42: invokevirtual   com/android/emailcommon/mail/Message.ln:()Ljava/lang/String;
        //    45: aload           9
        //    47: invokevirtual   java/util/HashMap.put:(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
        //    50: pop            
        //    51: iinc            8, 1
        //    54: goto            25
        //    57: new             Ljava/util/LinkedHashSet;
        //    60: dup            
        //    61: invokespecial   java/util/LinkedHashSet.<init>:()V
        //    64: astore          11
        //    66: aload           11
        //    68: ldc_w           "UID"
        //    71: invokevirtual   java/util/LinkedHashSet.add:(Ljava/lang/Object;)Z
        //    74: pop            
        //    75: aload_2        
        //    76: getstatic       com/android/emailcommon/mail/FetchProfile$Item.WJ:Lcom/android/emailcommon/mail/FetchProfile$Item;
        //    79: invokevirtual   com/android/emailcommon/mail/FetchProfile.contains:(Ljava/lang/Object;)Z
        //    82: ifeq            94
        //    85: aload           11
        //    87: ldc_w           "FLAGS"
        //    90: invokevirtual   java/util/LinkedHashSet.add:(Ljava/lang/Object;)Z
        //    93: pop            
        //    94: aload_2        
        //    95: getstatic       com/android/emailcommon/mail/FetchProfile$Item.WK:Lcom/android/emailcommon/mail/FetchProfile$Item;
        //    98: invokevirtual   com/android/emailcommon/mail/FetchProfile.contains:(Ljava/lang/Object;)Z
        //   101: ifeq            131
        //   104: aload           11
        //   106: ldc_w           "INTERNALDATE"
        //   109: invokevirtual   java/util/LinkedHashSet.add:(Ljava/lang/Object;)Z
        //   112: pop            
        //   113: aload           11
        //   115: ldc_w           "RFC822.SIZE"
        //   118: invokevirtual   java/util/LinkedHashSet.add:(Ljava/lang/Object;)Z
        //   121: pop            
        //   122: aload           11
        //   124: ldc_w           "BODY.PEEK[HEADER.FIELDS (date subject from content-type to cc message-id)]"
        //   127: invokevirtual   java/util/LinkedHashSet.add:(Ljava/lang/Object;)Z
        //   130: pop            
        //   131: aload_2        
        //   132: getstatic       com/android/emailcommon/mail/FetchProfile$Item.WL:Lcom/android/emailcommon/mail/FetchProfile$Item;
        //   135: invokevirtual   com/android/emailcommon/mail/FetchProfile.contains:(Ljava/lang/Object;)Z
        //   138: ifeq            150
        //   141: aload           11
        //   143: ldc_w           "BODYSTRUCTURE"
        //   146: invokevirtual   java/util/LinkedHashSet.add:(Ljava/lang/Object;)Z
        //   149: pop            
        //   150: aload_2        
        //   151: getstatic       com/android/emailcommon/mail/FetchProfile$Item.WM:Lcom/android/emailcommon/mail/FetchProfile$Item;
        //   154: invokevirtual   com/android/emailcommon/mail/FetchProfile.contains:(Ljava/lang/Object;)Z
        //   157: ifeq            169
        //   160: aload           11
        //   162: getstatic       com/android/email/mail/store/imap/a.QX:Ljava/lang/String;
        //   165: invokevirtual   java/util/LinkedHashSet.add:(Ljava/lang/Object;)Z
        //   168: pop            
        //   169: aload_2        
        //   170: getstatic       com/android/emailcommon/mail/FetchProfile$Item.WN:Lcom/android/emailcommon/mail/FetchProfile$Item;
        //   173: invokevirtual   com/android/emailcommon/mail/FetchProfile.contains:(Ljava/lang/Object;)Z
        //   176: ifeq            188
        //   179: aload           11
        //   181: ldc_w           "BODY.PEEK[]"
        //   184: invokevirtual   java/util/LinkedHashSet.add:(Ljava/lang/Object;)Z
        //   187: pop            
        //   188: aload_2        
        //   189: invokevirtual   com/android/emailcommon/mail/FetchProfile.lm:()Lcom/android/emailcommon/mail/j;
        //   192: astore          13
        //   194: aload           13
        //   196: ifnull          248
        //   199: aload           13
        //   201: ldc_w           "X-Android-Attachment-StoreData"
        //   204: invokeinterface com/android/emailcommon/mail/j.Y:(Ljava/lang/String;)[Ljava/lang/String;
        //   209: astore          14
        //   211: aload           14
        //   213: ifnull          248
        //   216: aload           11
        //   218: new             Ljava/lang/StringBuilder;
        //   221: dup            
        //   222: ldc_w           "BODY.PEEK["
        //   225: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   228: aload           14
        //   230: iconst_0       
        //   231: aaload         
        //   232: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   235: ldc_w           "]"
        //   238: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   241: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   244: invokevirtual   java/util/LinkedHashSet.add:(Ljava/lang/Object;)Z
        //   247: pop            
        //   248: aload_0        
        //   249: getfield        com/android/email/mail/store/b.Qy:Lcom/android/email/mail/store/a;
        //   252: astore          17
        //   254: getstatic       java/util/Locale.US:Ljava/util/Locale;
        //   257: astore          18
        //   259: iconst_2       
        //   260: anewarray       Ljava/lang/Object;
        //   263: astore          19
        //   265: aload           19
        //   267: iconst_0       
        //   268: aload_1        
        //   269: invokestatic    com/android/email/mail/store/ImapStore.a:([Lcom/android/emailcommon/mail/Message;)Ljava/lang/String;
        //   272: aastore        
        //   273: aload           19
        //   275: iconst_1       
        //   276: aload           11
        //   278: aload           11
        //   280: invokevirtual   java/util/LinkedHashSet.size:()I
        //   283: anewarray       Ljava/lang/String;
        //   286: invokevirtual   java/util/LinkedHashSet.toArray:([Ljava/lang/Object;)[Ljava/lang/Object;
        //   289: invokestatic    com/android/emailcommon/b/s.b:([Ljava/lang/Object;)Ljava/lang/String;
        //   292: aastore        
        //   293: aload           17
        //   295: aload           18
        //   297: ldc_w           "UID FETCH %s (%s)"
        //   300: aload           19
        //   302: invokestatic    java/lang/String.format:(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //   305: iconst_0       
        //   306: invokevirtual   com/android/email/mail/store/a.b:(Ljava/lang/String;Z)Ljava/lang/String;
        //   309: pop            
        //   310: aload_0        
        //   311: getfield        com/android/email/mail/store/b.Qy:Lcom/android/email/mail/store/a;
        //   314: invokevirtual   com/android/email/mail/store/a.iR:()Lcom/android/email/mail/store/imap/g;
        //   317: astore          22
        //   319: aload           22
        //   321: iconst_1       
        //   322: ldc_w           "FETCH"
        //   325: invokevirtual   com/android/email/mail/store/imap/g.c:(ILjava/lang/String;)Z
        //   328: istore          23
        //   330: iload           23
        //   332: ifne            352
        //   335: aload_0        
        //   336: invokespecial   com/android/email/mail/store/b.iQ:()V
        //   339: aload           22
        //   341: invokevirtual   com/android/email/mail/store/imap/g.jw:()Z
        //   344: istore          33
        //   346: iload           33
        //   348: ifeq            310
        //   351: return         
        //   352: aload           22
        //   354: iconst_2       
        //   355: invokevirtual   com/android/email/mail/store/imap/g.aY:(I)Lcom/android/email/mail/store/imap/d;
        //   358: astore          24
        //   360: aload           24
        //   362: ldc_w           "UID"
        //   365: invokevirtual   com/android/email/mail/store/imap/d.J:(Ljava/lang/String;)Lcom/android/email/mail/store/imap/i;
        //   368: invokevirtual   com/android/email/mail/store/imap/i.getString:()Ljava/lang/String;
        //   371: astore          25
        //   373: aload           25
        //   375: invokestatic    android/text/TextUtils.isEmpty:(Ljava/lang/CharSequence;)Z
        //   378: istore          26
        //   380: iload           26
        //   382: ifeq            456
        //   385: aload_0        
        //   386: invokespecial   com/android/email/mail/store/b.iQ:()V
        //   389: goto            339
        //   392: astore          16
        //   394: aload_0        
        //   395: aload_0        
        //   396: getfield        com/android/email/mail/store/b.Qy:Lcom/android/email/mail/store/a;
        //   399: aload           16
        //   401: invokespecial   com/android/email/mail/store/b.a:(Lcom/android/email/mail/store/a;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;
        //   404: athrow         
        //   405: astore          4
        //   407: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   410: new             Ljava/lang/StringBuilder;
        //   413: dup            
        //   414: ldc_w           "Exception detected: "
        //   417: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //   420: aload           4
        //   422: invokevirtual   java/lang/RuntimeException.getMessage:()Ljava/lang/String;
        //   425: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //   428: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //   431: iconst_0       
        //   432: anewarray       Ljava/lang/Object;
        //   435: invokestatic    com/android/mail/utils/E.e:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   438: pop            
        //   439: aload_0        
        //   440: getfield        com/android/email/mail/store/b.Qy:Lcom/android/email/mail/store/a;
        //   443: ifnull          453
        //   446: aload_0        
        //   447: getfield        com/android/email/mail/store/b.Qy:Lcom/android/email/mail/store/a;
        //   450: invokevirtual   com/android/email/mail/store/a.iW:()V
        //   453: aload           4
        //   455: athrow         
        //   456: aload           6
        //   458: aload           25
        //   460: invokevirtual   java/util/HashMap.get:(Ljava/lang/Object;)Ljava/lang/Object;
        //   463: checkcast       Lcom/android/email/mail/store/c;
        //   466: astore          27
        //   468: aload           27
        //   470: ifnonnull       480
        //   473: aload_0        
        //   474: invokespecial   com/android/email/mail/store/b.iQ:()V
        //   477: goto            339
        //   480: aload_2        
        //   481: getstatic       com/android/emailcommon/mail/FetchProfile$Item.WJ:Lcom/android/emailcommon/mail/FetchProfile$Item;
        //   484: invokevirtual   com/android/emailcommon/mail/FetchProfile.contains:(Ljava/lang/Object;)Z
        //   487: ifeq            623
        //   490: aload           24
        //   492: ldc_w           "FLAGS"
        //   495: invokevirtual   com/android/email/mail/store/imap/d.I:(Ljava/lang/String;)Lcom/android/email/mail/store/imap/d;
        //   498: astore          41
        //   500: aload           41
        //   502: invokevirtual   com/android/email/mail/store/imap/d.size:()I
        //   505: istore          42
        //   507: iconst_0       
        //   508: istore          43
        //   510: iload           43
        //   512: iload           42
        //   514: if_icmpge       623
        //   517: aload           41
        //   519: iload           43
        //   521: invokevirtual   com/android/email/mail/store/imap/d.aZ:(I)Lcom/android/email/mail/store/imap/i;
        //   524: astore          44
        //   526: aload           44
        //   528: ldc_w           "\\DELETED"
        //   531: invokevirtual   com/android/email/mail/store/imap/i.K:(Ljava/lang/String;)Z
        //   534: ifeq            548
        //   537: aload           27
        //   539: getstatic       com/android/emailcommon/mail/Flag.WP:Lcom/android/emailcommon/mail/Flag;
        //   542: invokevirtual   com/android/email/mail/store/c.a:(Lcom/android/emailcommon/mail/Flag;)V
        //   545: goto            921
        //   548: aload           44
        //   550: ldc_w           "\\ANSWERED"
        //   553: invokevirtual   com/android/email/mail/store/imap/i.K:(Ljava/lang/String;)Z
        //   556: ifeq            579
        //   559: aload           27
        //   561: getstatic       com/android/emailcommon/mail/Flag.WR:Lcom/android/emailcommon/mail/Flag;
        //   564: invokevirtual   com/android/email/mail/store/c.a:(Lcom/android/emailcommon/mail/Flag;)V
        //   567: goto            921
        //   570: astore          21
        //   572: aload_0        
        //   573: invokespecial   com/android/email/mail/store/b.iQ:()V
        //   576: aload           21
        //   578: athrow         
        //   579: aload           44
        //   581: ldc_w           "\\SEEN"
        //   584: invokevirtual   com/android/email/mail/store/imap/i.K:(Ljava/lang/String;)Z
        //   587: ifeq            601
        //   590: aload           27
        //   592: getstatic       com/android/emailcommon/mail/Flag.WQ:Lcom/android/emailcommon/mail/Flag;
        //   595: invokevirtual   com/android/email/mail/store/c.a:(Lcom/android/emailcommon/mail/Flag;)V
        //   598: goto            921
        //   601: aload           44
        //   603: ldc_w           "\\FLAGGED"
        //   606: invokevirtual   com/android/email/mail/store/imap/i.K:(Ljava/lang/String;)Z
        //   609: ifeq            921
        //   612: aload           27
        //   614: getstatic       com/android/emailcommon/mail/Flag.WS:Lcom/android/emailcommon/mail/Flag;
        //   617: invokevirtual   com/android/email/mail/store/c.a:(Lcom/android/emailcommon/mail/Flag;)V
        //   620: goto            921
        //   623: aload_2        
        //   624: getstatic       com/android/emailcommon/mail/FetchProfile$Item.WK:Lcom/android/emailcommon/mail/FetchProfile$Item;
        //   627: invokevirtual   com/android/emailcommon/mail/FetchProfile.contains:(Ljava/lang/Object;)Z
        //   630: ifeq            697
        //   633: aload           24
        //   635: ldc_w           "INTERNALDATE"
        //   638: invokevirtual   com/android/email/mail/store/imap/d.J:(Ljava/lang/String;)Lcom/android/email/mail/store/imap/i;
        //   641: invokevirtual   com/android/email/mail/store/imap/i.jP:()Ljava/util/Date;
        //   644: astore          38
        //   646: aload           24
        //   648: ldc_w           "RFC822.SIZE"
        //   651: invokevirtual   com/android/email/mail/store/imap/d.J:(Ljava/lang/String;)Lcom/android/email/mail/store/imap/i;
        //   654: invokevirtual   com/android/email/mail/store/imap/i.jN:()I
        //   657: istore          39
        //   659: aload           24
        //   661: ldc_w           "BODY[HEADER"
        //   664: iconst_1       
        //   665: invokevirtual   com/android/email/mail/store/imap/d.g:(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/i;
        //   668: invokevirtual   com/android/email/mail/store/imap/i.getString:()Ljava/lang/String;
        //   671: astore          40
        //   673: aload           27
        //   675: aload           38
        //   677: invokevirtual   com/android/email/mail/store/c.b:(Ljava/util/Date;)V
        //   680: aload           27
        //   682: iload           39
        //   684: invokevirtual   com/android/email/mail/store/c.setSize:(I)V
        //   687: aload           27
        //   689: aload           40
        //   691: invokestatic    com/android/emailcommon/b/s.aI:(Ljava/lang/String;)Ljava/io/ByteArrayInputStream;
        //   694: invokevirtual   com/android/email/mail/store/c.b:(Ljava/io/InputStream;)V
        //   697: aload_2        
        //   698: getstatic       com/android/emailcommon/mail/FetchProfile$Item.WL:Lcom/android/emailcommon/mail/FetchProfile$Item;
        //   701: invokevirtual   com/android/emailcommon/mail/FetchProfile.contains:(Ljava/lang/Object;)Z
        //   704: ifeq            738
        //   707: aload           24
        //   709: ldc_w           "BODYSTRUCTURE"
        //   712: invokevirtual   com/android/email/mail/store/imap/d.I:(Ljava/lang/String;)Lcom/android/email/mail/store/imap/d;
        //   715: astore          34
        //   717: aload           34
        //   719: invokevirtual   com/android/email/mail/store/imap/d.isEmpty:()Z
        //   722: istore          35
        //   724: iload           35
        //   726: ifne            738
        //   729: aload           34
        //   731: aload           27
        //   733: ldc             "TEXT"
        //   735: invokestatic    com/android/email/mail/store/b.a:(Lcom/android/email/mail/store/imap/d;Lcom/android/emailcommon/mail/j;Ljava/lang/String;)V
        //   738: aload_2        
        //   739: getstatic       com/android/emailcommon/mail/FetchProfile$Item.WN:Lcom/android/emailcommon/mail/FetchProfile$Item;
        //   742: invokevirtual   com/android/emailcommon/mail/FetchProfile.contains:(Ljava/lang/Object;)Z
        //   745: ifne            758
        //   748: aload_2        
        //   749: getstatic       com/android/emailcommon/mail/FetchProfile$Item.WM:Lcom/android/emailcommon/mail/FetchProfile$Item;
        //   752: invokevirtual   com/android/emailcommon/mail/FetchProfile.contains:(Ljava/lang/Object;)Z
        //   755: ifeq            775
        //   758: aload           27
        //   760: aload           24
        //   762: ldc_w           "BODY[]"
        //   765: iconst_1       
        //   766: invokevirtual   com/android/email/mail/store/imap/d.g:(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/i;
        //   769: invokevirtual   com/android/email/mail/store/imap/i.jv:()Ljava/io/InputStream;
        //   772: invokevirtual   com/android/email/mail/store/c.b:(Ljava/io/InputStream;)V
        //   775: aload           13
        //   777: ifnull          845
        //   780: aload           24
        //   782: ldc_w           "BODY["
        //   785: iconst_1       
        //   786: invokevirtual   com/android/email/mail/store/imap/d.g:(Ljava/lang/String;Z)Lcom/android/email/mail/store/imap/i;
        //   789: invokevirtual   com/android/email/mail/store/imap/i.jv:()Ljava/io/InputStream;
        //   792: astore          28
        //   794: aload           13
        //   796: ldc_w           "Content-Transfer-Encoding"
        //   799: invokeinterface com/android/emailcommon/mail/j.Y:(Ljava/lang/String;)[Ljava/lang/String;
        //   804: astore          29
        //   806: aload           29
        //   808: ifnull          927
        //   811: aload           29
        //   813: arraylength    
        //   814: ifle            927
        //   817: aload           29
        //   819: iconst_0       
        //   820: aaload         
        //   821: astore          30
        //   823: aload           13
        //   825: aload           28
        //   827: aload           30
        //   829: aload           13
        //   831: invokeinterface com/android/emailcommon/mail/j.getSize:()I
        //   836: aload_3        
        //   837: invokestatic    com/android/email/mail/store/b.a:(Ljava/io/InputStream;Ljava/lang/String;ILcom/android/emailcommon/mail/f;)Lcom/android/emailcommon/mail/c;
        //   840: invokeinterface com/android/emailcommon/mail/j.a:(Lcom/android/emailcommon/mail/c;)V
        //   845: aload_3        
        //   846: ifnull          857
        //   849: aload_3        
        //   850: aload           27
        //   852: invokeinterface com/android/emailcommon/mail/f.b:(Lcom/android/emailcommon/mail/Message;)V
        //   857: aload_0        
        //   858: invokespecial   com/android/email/mail/store/b.iQ:()V
        //   861: goto            339
        //   864: astore          36
        //   866: getstatic       com/android/emailcommon/b.LOGD:Z
        //   869: ifeq            888
        //   872: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   875: aload           36
        //   877: ldc_w           "Error handling message"
        //   880: iconst_0       
        //   881: anewarray       Ljava/lang/Object;
        //   884: invokestatic    com/android/mail/utils/E.a:(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
        //   887: pop            
        //   888: aload           27
        //   890: aconst_null    
        //   891: invokevirtual   com/android/email/mail/store/c.a:(Lcom/android/emailcommon/mail/c;)V
        //   894: goto            738
        //   897: astore          31
        //   899: getstatic       com/android/emailcommon/b.mW:Ljava/lang/String;
        //   902: ldc_w           "Error fetching body %s"
        //   905: iconst_1       
        //   906: anewarray       Ljava/lang/Object;
        //   909: dup            
        //   910: iconst_0       
        //   911: aload           31
        //   913: aastore        
        //   914: invokestatic    com/android/mail/utils/E.f:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   917: pop            
        //   918: goto            845
        //   921: iinc            43, 1
        //   924: goto            510
        //   927: ldc_w           "7bit"
        //   930: astore          30
        //   932: goto            823
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                             
        //  -----  -----  -----  -----  -------------------------------------------------
        //  0      22     405    456    Ljava/lang/RuntimeException;
        //  32     51     405    456    Ljava/lang/RuntimeException;
        //  57     94     405    456    Ljava/lang/RuntimeException;
        //  94     131    405    456    Ljava/lang/RuntimeException;
        //  131    150    405    456    Ljava/lang/RuntimeException;
        //  150    169    405    456    Ljava/lang/RuntimeException;
        //  169    188    405    456    Ljava/lang/RuntimeException;
        //  188    194    405    456    Ljava/lang/RuntimeException;
        //  199    211    405    456    Ljava/lang/RuntimeException;
        //  216    248    405    456    Ljava/lang/RuntimeException;
        //  248    310    392    405    Ljava/io/IOException;
        //  248    310    405    456    Ljava/lang/RuntimeException;
        //  310    330    570    579    Any
        //  335    339    392    405    Ljava/io/IOException;
        //  335    339    405    456    Ljava/lang/RuntimeException;
        //  339    346    392    405    Ljava/io/IOException;
        //  339    346    405    456    Ljava/lang/RuntimeException;
        //  352    380    570    579    Any
        //  385    389    392    405    Ljava/io/IOException;
        //  385    389    405    456    Ljava/lang/RuntimeException;
        //  394    405    405    456    Ljava/lang/RuntimeException;
        //  456    468    570    579    Any
        //  473    477    392    405    Ljava/io/IOException;
        //  473    477    405    456    Ljava/lang/RuntimeException;
        //  480    507    570    579    Any
        //  517    545    570    579    Any
        //  548    567    570    579    Any
        //  572    579    392    405    Ljava/io/IOException;
        //  572    579    405    456    Ljava/lang/RuntimeException;
        //  579    598    570    579    Any
        //  601    620    570    579    Any
        //  623    697    570    579    Any
        //  697    724    570    579    Any
        //  729    738    864    897    Lcom/android/emailcommon/mail/MessagingException;
        //  729    738    570    579    Any
        //  738    758    570    579    Any
        //  758    775    570    579    Any
        //  780    806    570    579    Any
        //  811    823    570    579    Any
        //  823    845    897    921    Ljava/lang/Exception;
        //  823    845    570    579    Any
        //  849    857    570    579    Any
        //  857    861    392    405    Ljava/io/IOException;
        //  857    861    405    456    Ljava/lang/RuntimeException;
        //  866    888    570    579    Any
        //  888    894    570    579    Any
        //  899    918    570    579    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0310:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
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
    
    @Override
    public final void a(final Message[] array, final Folder folder, final com.android.emailcommon.mail.g g) {
        String string;
        String string2;
        while (true) {
            this.je();
            while (true) {
                int n2 = 0;
                Label_0548: {
                    int n = 0;
                    Label_0526: {
                        Label_0372: {
                            HashMap<String, Message> hashMap;
                            g g2;
                            try {
                                final List<g> z = this.Qy.z(String.format(Locale.US, "UID COPY %s \"%s\"", ImapStore.a(array), ImapStore.c(folder.getName(), this.Qw.QE)));
                                hashMap = new HashMap<String, Message>();
                                for (final Message message : array) {
                                    hashMap.put(message.ln(), message);
                                }
                                final Iterator<g> iterator = z.iterator();
                                n = 0;
                                if (!iterator.hasNext()) {
                                    break Label_0372;
                                }
                                g2 = iterator.next();
                                if (g2.jA() || (g2.jB() && g2.jw())) {
                                    throw new MessagingException(g2.jE().getString());
                                }
                            }
                            catch (IOException ex) {
                                try {
                                    throw this.a(this.Qy, ex);
                                }
                                finally {
                                    this.iQ();
                                }
                            }
                            if (!g2.jw() || g == null) {
                                continue;
                            }
                            final d ay = g2.aY(1);
                            if (!"COPYUID".equals(ay.aZ(0).getString())) {
                                break Label_0526;
                            }
                            string = ay.aZ(2).getString();
                            string2 = ay.aZ(3).getString();
                            final String[] l = com.android.email.mail.store.imap.l.L(string);
                            final String[] j = com.android.email.mail.store.imap.l.L(string2);
                            if (l.length != j.length) {
                                break;
                            }
                            for (int k = 0; k < l.length; ++k) {
                                if (hashMap.get(l[k]) != null) {
                                    g.S(j[k]);
                                }
                            }
                            n2 = 1;
                            break Label_0548;
                        }
                        Label_0482: {
                            if (g == null || n != 0) {
                                break Label_0482;
                            }
                            final b b = (b)folder;
                            while (true) {
                                try {
                                    b.a(Folder$OpenMode.Xg);
                                    for (int length2 = array.length, n3 = 0; n3 < length2; ++n3) {
                                        final String[] e = b.e("HEADER Message-Id \"" + array[n3].kW() + "\"", true);
                                        if (e.length == 1) {
                                            g.S(e[0]);
                                        }
                                    }
                                    b.iY();
                                    this.jd();
                                    this.iQ();
                                    return;
                                }
                                catch (MessagingException ex2) {
                                    E.c(com.android.emailcommon.b.mW, "Failed to find message", ex2);
                                    b.iY();
                                    continue;
                                }
                                finally {
                                    b.iY();
                                }
                                break;
                            }
                        }
                    }
                    n2 = n;
                }
                int n = n2;
                continue;
            }
        }
        throw new MessagingException("Set length mis-match; orig IDs \"" + string + "\"  new IDs \"" + string2 + "\"");
    }
    
    @Override
    public final void a(final Message[] array, final Flag[] array2, final boolean b) {
        this.je();
        while (true) {
            Label_0226: {
                if (array2.length <= 0) {
                    break Label_0226;
                }
                final StringBuilder sb = new StringBuilder();
                for (final Flag flag : array2) {
                    if (flag == Flag.WQ) {
                        sb.append(" \\SEEN");
                    }
                    else if (flag == Flag.WP) {
                        sb.append(" \\DELETED");
                    }
                    else if (flag == Flag.WS) {
                        sb.append(" \\FLAGGED");
                    }
                    else if (flag == Flag.WR) {
                        sb.append(" \\ANSWERED");
                    }
                }
                final String substring = sb.substring(1);
                try {
                    final a qy = this.Qy;
                    final Locale us = Locale.US;
                    final Object[] array3 = { ImapStore.a(array), null, null };
                    String s;
                    if (b) {
                        s = "+";
                    }
                    else {
                        s = "-";
                    }
                    array3[1] = s;
                    array3[2] = substring;
                    qy.z(String.format(us, "UID STORE %s %sFLAGS.SILENT (%s)", array3));
                    return;
                }
                catch (IOException ex) {
                    throw this.a(this.Qy, ex);
                }
                finally {
                    this.iQ();
                }
            }
            final String substring = "";
            continue;
        }
    }
    
    @Override
    public final Message[] a(final long n, final long n2) {
        final String a = a(n, n2, false);
        E.c(com.android.emailcommon.b.mW, "getMessages dateRange " + a.toString(), new Object[0]);
        try {
            final String[] array = this.e(a.toString(), false);
            return this.a(array, null);
        }
        catch (ImapStore$ImapException ex) {
            E.b(com.android.emailcommon.b.mW, ex, "query failed %s, trying alternate", a.toString());
            final String a2 = a(n, n2, true);
            String[] array;
            try {
                array = this.e(a2, true);
            }
            catch (ImapStore$ImapException ex2) {
                E.d(com.android.emailcommon.b.mW, ex2, "query failed %s, fatal", a2);
                array = null;
            }
            return this.a(array, null);
        }
    }
    
    @Override
    public final Message[] a(final SearchParams searchParams) {
        final ArrayList<String> list = new ArrayList<String>();
        final String aaI = searchParams.aaI;
        String s = "US-ASCII";
        if (!B(aaI)) {
            s = "UTF-8";
        }
        final String string = "{" + aaI.getBytes().length + "}";
        list.add("UID SEARCH CHARSET " + s + " OR FROM " + string);
        list.add(aaI + " (OR TO " + string);
        list.add(aaI + " (OR CC " + string);
        list.add(aaI + " (OR SUBJECT " + string);
        list.add(aaI + " BODY " + string);
        list.add(aaI + ")))");
        return this.a(this.g(list), null);
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (o instanceof b) {
            return ((b)o).mName.equals(this.mName);
        }
        return super.equals(o);
    }
    
    @Override
    public final boolean exists() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/android/email/mail/store/b.QA:Z
        //     4: ifeq            9
        //     7: iconst_1       
        //     8: ireturn        
        //     9: aload_0        
        //    10: monitorenter   
        //    11: aload_0        
        //    12: getfield        com/android/email/mail/store/b.Qy:Lcom/android/email/mail/store/a;
        //    15: ifnonnull       98
        //    18: aload_0        
        //    19: getfield        com/android/email/mail/store/b.Qw:Lcom/android/email/mail/store/ImapStore;
        //    22: invokevirtual   com/android/email/mail/store/ImapStore.jj:()Lcom/android/email/mail/store/a;
        //    25: astore_3       
        //    26: aload_0        
        //    27: monitorexit    
        //    28: getstatic       java/util/Locale.US:Ljava/util/Locale;
        //    31: astore          7
        //    33: iconst_1       
        //    34: anewarray       Ljava/lang/Object;
        //    37: astore          8
        //    39: aload           8
        //    41: iconst_0       
        //    42: aload_0        
        //    43: getfield        com/android/email/mail/store/b.mName:Ljava/lang/String;
        //    46: aload_0        
        //    47: getfield        com/android/email/mail/store/b.Qw:Lcom/android/email/mail/store/ImapStore;
        //    50: getfield        com/android/email/mail/store/ImapStore.QE:Ljava/lang/String;
        //    53: invokestatic    com/android/email/mail/store/ImapStore.c:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //    56: aastore        
        //    57: aload_3        
        //    58: aload           7
        //    60: ldc_w           "STATUS \"%s\" (UIDVALIDITY)"
        //    63: aload           8
        //    65: invokestatic    java/lang/String.format:(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //    68: invokevirtual   com/android/email/mail/store/a.z:(Ljava/lang/String;)Ljava/util/List;
        //    71: pop            
        //    72: aload_0        
        //    73: iconst_1       
        //    74: putfield        com/android/email/mail/store/b.QA:Z
        //    77: aload_3        
        //    78: invokevirtual   com/android/email/mail/store/a.iQ:()V
        //    81: aload_0        
        //    82: getfield        com/android/email/mail/store/b.Qy:Lcom/android/email/mail/store/a;
        //    85: ifnonnull       7
        //    88: aload_0        
        //    89: getfield        com/android/email/mail/store/b.Qw:Lcom/android/email/mail/store/ImapStore;
        //    92: aload_3        
        //    93: invokevirtual   com/android/email/mail/store/ImapStore.a:(Lcom/android/email/mail/store/a;)V
        //    96: iconst_1       
        //    97: ireturn        
        //    98: aload_0        
        //    99: getfield        com/android/email/mail/store/b.Qy:Lcom/android/email/mail/store/a;
        //   102: astore_2       
        //   103: aload_2        
        //   104: astore_3       
        //   105: goto            26
        //   108: astore_1       
        //   109: aload_0        
        //   110: monitorexit    
        //   111: aload_1        
        //   112: athrow         
        //   113: astore          6
        //   115: aload           6
        //   117: invokevirtual   com/android/emailcommon/mail/MessagingException.lr:()I
        //   120: iconst_1       
        //   121: if_icmpne       151
        //   124: aload           6
        //   126: athrow         
        //   127: astore          5
        //   129: aload_3        
        //   130: invokevirtual   com/android/email/mail/store/a.iQ:()V
        //   133: aload_0        
        //   134: getfield        com/android/email/mail/store/b.Qy:Lcom/android/email/mail/store/a;
        //   137: ifnonnull       148
        //   140: aload_0        
        //   141: getfield        com/android/email/mail/store/b.Qw:Lcom/android/email/mail/store/ImapStore;
        //   144: aload_3        
        //   145: invokevirtual   com/android/email/mail/store/ImapStore.a:(Lcom/android/email/mail/store/a;)V
        //   148: aload           5
        //   150: athrow         
        //   151: aload_3        
        //   152: invokevirtual   com/android/email/mail/store/a.iQ:()V
        //   155: aload_0        
        //   156: getfield        com/android/email/mail/store/b.Qy:Lcom/android/email/mail/store/a;
        //   159: ifnonnull       170
        //   162: aload_0        
        //   163: getfield        com/android/email/mail/store/b.Qw:Lcom/android/email/mail/store/ImapStore;
        //   166: aload_3        
        //   167: invokevirtual   com/android/email/mail/store/ImapStore.a:(Lcom/android/email/mail/store/a;)V
        //   170: iconst_0       
        //   171: ireturn        
        //   172: astore          4
        //   174: aload_0        
        //   175: aload_3        
        //   176: aload           4
        //   178: invokespecial   com/android/email/mail/store/b.a:(Lcom/android/email/mail/store/a;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;
        //   181: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                             
        //  -----  -----  -----  -----  -------------------------------------------------
        //  11     26     108    113    Any
        //  26     28     108    113    Any
        //  28     77     113    172    Lcom/android/emailcommon/mail/MessagingException;
        //  28     77     172    182    Ljava/io/IOException;
        //  28     77     127    151    Any
        //  98     103    108    113    Any
        //  115    127    127    151    Any
        //  174    182    127    151    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0098:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
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
    
    @Override
    public final String getName() {
        return this.mName;
    }
    
    @Override
    public final Folder$OpenMode iX() {
        return this.Qz;
    }
    
    @Override
    public final void iY() {
        this.Qx = -1;
        synchronized (this) {
            this.Qw.a(this.Qy);
            this.Qy = null;
        }
    }
    
    @Override
    public final boolean iZ() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: monitorenter   
        //     2: aload_0        
        //     3: getfield        com/android/email/mail/store/b.Qy:Lcom/android/email/mail/store/a;
        //     6: ifnonnull       84
        //     9: aload_0        
        //    10: getfield        com/android/email/mail/store/b.Qw:Lcom/android/email/mail/store/ImapStore;
        //    13: invokevirtual   com/android/email/mail/store/ImapStore.jj:()Lcom/android/email/mail/store/a;
        //    16: astore_2       
        //    17: aload_0        
        //    18: monitorexit    
        //    19: getstatic       java/util/Locale.US:Ljava/util/Locale;
        //    22: astore          6
        //    24: iconst_1       
        //    25: anewarray       Ljava/lang/Object;
        //    28: astore          7
        //    30: aload           7
        //    32: iconst_0       
        //    33: aload_0        
        //    34: getfield        com/android/email/mail/store/b.mName:Ljava/lang/String;
        //    37: aload_0        
        //    38: getfield        com/android/email/mail/store/b.Qw:Lcom/android/email/mail/store/ImapStore;
        //    41: getfield        com/android/email/mail/store/ImapStore.QE:Ljava/lang/String;
        //    44: invokestatic    com/android/email/mail/store/ImapStore.c:(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
        //    47: aastore        
        //    48: aload_2        
        //    49: aload           6
        //    51: ldc_w           "CREATE \"%s\""
        //    54: aload           7
        //    56: invokestatic    java/lang/String.format:(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
        //    59: invokevirtual   com/android/email/mail/store/a.z:(Ljava/lang/String;)Ljava/util/List;
        //    62: pop            
        //    63: aload_2        
        //    64: invokevirtual   com/android/email/mail/store/a.iQ:()V
        //    67: aload_0        
        //    68: getfield        com/android/email/mail/store/b.Qy:Lcom/android/email/mail/store/a;
        //    71: ifnonnull       82
        //    74: aload_0        
        //    75: getfield        com/android/email/mail/store/b.Qw:Lcom/android/email/mail/store/ImapStore;
        //    78: aload_2        
        //    79: invokevirtual   com/android/email/mail/store/ImapStore.a:(Lcom/android/email/mail/store/a;)V
        //    82: iconst_1       
        //    83: ireturn        
        //    84: aload_0        
        //    85: getfield        com/android/email/mail/store/b.Qy:Lcom/android/email/mail/store/a;
        //    88: astore_2       
        //    89: goto            17
        //    92: astore_1       
        //    93: aload_0        
        //    94: monitorexit    
        //    95: aload_1        
        //    96: athrow         
        //    97: astore          5
        //    99: aload_2        
        //   100: invokevirtual   com/android/email/mail/store/a.iQ:()V
        //   103: aload_0        
        //   104: getfield        com/android/email/mail/store/b.Qy:Lcom/android/email/mail/store/a;
        //   107: ifnonnull       118
        //   110: aload_0        
        //   111: getfield        com/android/email/mail/store/b.Qw:Lcom/android/email/mail/store/ImapStore;
        //   114: aload_2        
        //   115: invokevirtual   com/android/email/mail/store/ImapStore.a:(Lcom/android/email/mail/store/a;)V
        //   118: iconst_0       
        //   119: ireturn        
        //   120: astore          4
        //   122: aload_0        
        //   123: aload_2        
        //   124: aload           4
        //   126: invokespecial   com/android/email/mail/store/b.a:(Lcom/android/email/mail/store/a;Ljava/io/IOException;)Lcom/android/emailcommon/mail/MessagingException;
        //   129: athrow         
        //   130: astore_3       
        //   131: aload_2        
        //   132: invokevirtual   com/android/email/mail/store/a.iQ:()V
        //   135: aload_0        
        //   136: getfield        com/android/email/mail/store/b.Qy:Lcom/android/email/mail/store/a;
        //   139: ifnonnull       150
        //   142: aload_0        
        //   143: getfield        com/android/email/mail/store/b.Qw:Lcom/android/email/mail/store/ImapStore;
        //   146: aload_2        
        //   147: invokevirtual   com/android/email/mail/store/ImapStore.a:(Lcom/android/email/mail/store/a;)V
        //   150: aload_3        
        //   151: athrow         
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                                             
        //  -----  -----  -----  -----  -------------------------------------------------
        //  2      17     92     97     Any
        //  17     19     92     97     Any
        //  19     63     97     120    Lcom/android/emailcommon/mail/MessagingException;
        //  19     63     120    130    Ljava/io/IOException;
        //  19     63     130    152    Any
        //  84     89     92     97     Any
        //  122    130    130    152    Any
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0084:
        //     at com.strobel.decompiler.ast.Error.expressionLinkedFromMultipleLocations(Error.java:27)
        //     at com.strobel.decompiler.ast.AstOptimizer.mergeDisparateObjectInitializations(AstOptimizer.java:2592)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:235)
        //     at com.strobel.decompiler.ast.AstOptimizer.optimize(AstOptimizer.java:42)
        //     at com.strobel.decompiler.languages.java.ast.AstMethodBodyBuilder.createMethodBody(AstMethodBodyBuilder.java:214)
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
    
    @Override
    public final int ja() {
        return this.Qx;
    }
    
    @Override
    public final Flag[] jb() {
        return b.Qv;
    }
    
    @Override
    public final Message[] jc() {
        this.je();
        try {
            final Iterator<g> iterator = this.Qy.z("EXPUNGE").iterator();
            while (iterator.hasNext()) {
                this.a(iterator.next());
            }
        }
        catch (IOException ex) {
            throw this.a(this.Qy, ex);
        }
        finally {
            this.iQ();
        }
        this.iQ();
        return null;
    }
}
