package com.android.emailcommon.a;

import java.util.regex.*;
import java.text.*;
import java.util.*;
import com.android.emailcommon.mail.*;
import org.apache.james.mime4j.*;
import java.io.*;

public class f extends Message
{
    private static final Pattern Wd;
    private static final Pattern We;
    private static final Random Wp;
    private static final SimpleDateFormat Wq;
    private d Wb;
    private c Wc;
    private Address[] Wh;
    private Address[] Wi;
    private Address[] Wj;
    private Address[] Wk;
    private Address[] Wl;
    private Date Wm;
    private boolean Wn;
    private boolean Wo;
    protected int gO;
    
    static {
        Wp = new Random();
        Wq = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss Z", Locale.US);
        Wd = Pattern.compile("^<?([^>]+)>?$");
        We = Pattern.compile("\r?\n");
    }
    
    public f() {
        this.Wn = false;
        this.Wo = true;
        this.Wb = null;
    }
    
    public f(final InputStream inputStream) {
        this.Wn = false;
        this.Wo = true;
        this.b(inputStream);
    }
    
    private String X(final String s) {
        return this.kS().X(s);
    }
    
    private void aa(final String s) {
        this.kS().aa(s);
        if ("Message-ID".equalsIgnoreCase(s)) {
            this.Wn = true;
        }
    }
    
    private h kR() {
        this.kS().clear();
        this.Wn = true;
        this.Wh = null;
        this.Wi = null;
        this.Wj = null;
        this.Wk = null;
        this.Wl = null;
        this.Wm = null;
        this.Wc = null;
        final h h = new h();
        h.a(new g(this));
        return h;
    }
    
    private d kS() {
        if (this.Wb == null) {
            this.Wb = new d();
        }
        return this.Wb;
    }
    
    @Override
    public final String[] Y(final String s) {
        return this.kS().Y(s);
    }
    
    public final void a(final Address address) {
        if (address != null) {
            this.setHeader("From", i.b(address.lk(), 6));
            this.Wh = new Address[] { address };
            return;
        }
        this.Wh = null;
    }
    
    public final void a(final Message$RecipientType message$RecipientType, final Address[] wk) {
        if (message$RecipientType == Message$RecipientType.Xo) {
            if (wk == null || wk.length == 0) {
                this.aa("To");
                this.Wi = null;
                return;
            }
            this.setHeader("To", i.b(Address.c(wk), 4));
            this.Wi = wk;
        }
        else if (message$RecipientType == Message$RecipientType.Xp) {
            if (wk == null || wk.length == 0) {
                this.aa("CC");
                this.Wj = null;
                return;
            }
            this.setHeader("CC", i.b(Address.c(wk), 4));
            this.Wj = wk;
        }
        else {
            if (message$RecipientType != Message$RecipientType.Xq) {
                throw new MessagingException("Unrecognized recipient type.");
            }
            if (wk == null || wk.length == 0) {
                this.aa("BCC");
                this.Wk = null;
                return;
            }
            this.setHeader("BCC", i.b(Address.c(wk), 5));
            this.Wk = wk;
        }
    }
    
    @Override
    public final void a(final c wc) {
        this.Wc = wc;
        if (wc instanceof com.android.emailcommon.mail.h) {
            final com.android.emailcommon.mail.h h = (com.android.emailcommon.mail.h)wc;
            h.c(this);
            this.setHeader("Content-Type", h.getContentType());
            this.setHeader("MIME-Version", "1.0");
        }
        else if (wc instanceof k) {
            this.setHeader("Content-Type", String.format("%s;\n charset=utf-8", this.getMimeType()));
            this.setHeader("Content-Transfer-Encoding", "base64");
        }
    }
    
    public final void a(final InputStream inputStream, final org.apache.james.mime4j.e e) {
        final h kr = this.kR();
        kr.b(new org.apache.james.mime4j.d(inputStream, this.gO, e));
        this.Wo = !kr.aaF();
    }
    
    public final void a(final Date wm) {
        this.setHeader("Date", f.Wq.format(wm));
        this.Wm = wm;
    }
    
    public final void a(final Address[] wl) {
        if (wl == null || wl.length == 0) {
            this.aa("Reply-to");
            this.Wl = null;
            return;
        }
        this.setHeader("Reply-to", i.b(Address.c(wl), 10));
        this.Wl = wl;
    }
    
    @Override
    public final Address[] a(final Message$RecipientType message$RecipientType) {
        if (message$RecipientType == Message$RecipientType.Xo) {
            if (this.Wi == null) {
                this.Wi = Address.ak(i.af(this.X("To")));
            }
            return this.Wi;
        }
        if (message$RecipientType == Message$RecipientType.Xp) {
            if (this.Wj == null) {
                this.Wj = Address.ak(i.af(this.X("CC")));
            }
            return this.Wj;
        }
        if (message$RecipientType == Message$RecipientType.Xq) {
            if (this.Wk == null) {
                this.Wk = Address.ak(i.af(this.X("BCC")));
            }
            return this.Wk;
        }
        throw new MessagingException("Unrecognized recipient type.");
    }
    
    @Override
    public final void ab(final String s) {
        this.setHeader("Message-ID", s);
    }
    
    @Override
    public final void addHeader(final String s, final String s2) {
        this.kS().addHeader(s, s2);
    }
    
    protected void b(final InputStream inputStream) {
        final h kr = this.kR();
        kr.b(new org.apache.james.mime4j.d(inputStream));
        this.Wo = !kr.aaF();
    }
    
    @Override
    public final String getContentType() {
        String x = this.X("Content-Type");
        if (x == null) {
            x = "text/plain";
        }
        return x;
    }
    
    @Override
    public final InputStream getInputStream() {
        return null;
    }
    
    @Override
    public final String getMimeType() {
        return i.r(this.getContentType(), null);
    }
    
    @Override
    public final int getSize() {
        return this.gO;
    }
    
    @Override
    public final String getSubject() {
        return i.ag(this.X("Subject"));
    }
    
    public final boolean isComplete() {
        return this.Wo;
    }
    
    @Override
    public final c kO() {
        return this.Wc;
    }
    
    @Override
    public final String kP() {
        return this.X("Content-Disposition");
    }
    
    @Override
    public final String kQ() {
        final String x = this.X("Content-ID");
        if (x == null) {
            return null;
        }
        return f.Wd.matcher(x).replaceAll("$1");
    }
    
    @Override
    public final Date kT() {
        // 
        // This method could not be decompiled.
        // 
        // Original Bytecode:
        // 
        //     0: aload_0        
        //     1: getfield        com/android/emailcommon/a/f.Wm:Ljava/util/Date;
        //     4: ifnonnull       45
        //     7: aload_0        
        //     8: new             Ljava/lang/StringBuilder;
        //    11: dup            
        //    12: ldc_w           "Date: "
        //    15: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    18: aload_0        
        //    19: ldc             "Date"
        //    21: invokespecial   com/android/emailcommon/a/f.X:(Ljava/lang/String;)Ljava/lang/String;
        //    24: invokestatic    com/android/emailcommon/a/i.ag:(Ljava/lang/String;)Ljava/lang/String;
        //    27: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    30: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    33: invokestatic    org/apache/james/mime4j/field/k.hW:(Ljava/lang/String;)Lorg/apache/james/mime4j/field/k;
        //    36: checkcast       Lorg/apache/james/mime4j/field/g;
        //    39: invokevirtual   org/apache/james/mime4j/field/g.getDate:()Ljava/util/Date;
        //    42: putfield        com/android/emailcommon/a/f.Wm:Ljava/util/Date;
        //    45: aload_0        
        //    46: getfield        com/android/emailcommon/a/f.Wm:Ljava/util/Date;
        //    49: ifnonnull       91
        //    52: aload_0        
        //    53: new             Ljava/lang/StringBuilder;
        //    56: dup            
        //    57: ldc_w           "Date: "
        //    60: invokespecial   java/lang/StringBuilder.<init>:(Ljava/lang/String;)V
        //    63: aload_0        
        //    64: ldc_w           "Delivery-date"
        //    67: invokespecial   com/android/emailcommon/a/f.X:(Ljava/lang/String;)Ljava/lang/String;
        //    70: invokestatic    com/android/emailcommon/a/i.ag:(Ljava/lang/String;)Ljava/lang/String;
        //    73: invokevirtual   java/lang/StringBuilder.append:(Ljava/lang/String;)Ljava/lang/StringBuilder;
        //    76: invokevirtual   java/lang/StringBuilder.toString:()Ljava/lang/String;
        //    79: invokestatic    org/apache/james/mime4j/field/k.hW:(Ljava/lang/String;)Lorg/apache/james/mime4j/field/k;
        //    82: checkcast       Lorg/apache/james/mime4j/field/g;
        //    85: invokevirtual   org/apache/james/mime4j/field/g.getDate:()Ljava/util/Date;
        //    88: putfield        com/android/emailcommon/a/f.Wm:Ljava/util/Date;
        //    91: aload_0        
        //    92: getfield        com/android/emailcommon/a/f.Wm:Ljava/util/Date;
        //    95: areturn        
        //    96: astore_3       
        //    97: getstatic       com/android/mail/utils/E.TAG:Ljava/lang/String;
        //   100: ldc_w           "Message missing Date header"
        //   103: iconst_0       
        //   104: anewarray       Ljava/lang/Object;
        //   107: invokestatic    com/android/mail/utils/E.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   110: pop            
        //   111: goto            45
        //   114: astore_1       
        //   115: getstatic       com/android/mail/utils/E.TAG:Ljava/lang/String;
        //   118: ldc_w           "Message also missing Delivery-Date header"
        //   121: iconst_0       
        //   122: anewarray       Ljava/lang/Object;
        //   125: invokestatic    com/android/mail/utils/E.b:(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
        //   128: pop            
        //   129: goto            91
        //    Exceptions:
        //  Try           Handler
        //  Start  End    Start  End    Type                 
        //  -----  -----  -----  -----  ---------------------
        //  7      45     96     114    Ljava/lang/Exception;
        //  52     91     114    132    Ljava/lang/Exception;
        // 
        // The error that occurred was:
        // 
        // java.lang.IllegalStateException: Expression is linked from several locations: Label_0091:
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
    public final Address[] kU() {
        if (this.Wh == null) {
            String s = i.af(this.X("From"));
            if (s == null || s.length() == 0) {
                s = i.af(this.X("Sender"));
            }
            this.Wh = Address.ak(s);
        }
        return this.Wh;
    }
    
    @Override
    public final Address[] kV() {
        if (this.Wl == null) {
            this.Wl = Address.ak(i.af(this.X("Reply-to")));
        }
        return this.Wl;
    }
    
    @Override
    public final String kW() {
        String s = this.X("Message-ID");
        if (s == null && !this.Wn) {
            final StringBuilder sb = new StringBuilder();
            sb.append("<");
            for (int i = 0; i < 24; ++i) {
                sb.append("0123456789abcdefghijklmnopqrstuv".charAt(0x1F & f.Wp.nextInt()));
            }
            sb.append(".");
            sb.append(Long.toString(System.currentTimeMillis()));
            sb.append("@email.android.com>");
            s = sb.toString();
            this.setHeader("Message-ID", s);
        }
        return s;
    }
    
    @Override
    public final void setHeader(final String s, final String s2) {
        this.kS().setHeader(s, s2);
    }
    
    public final void setSubject(final String s) {
        this.setHeader("Subject", i.a(s, 9));
    }
    
    @Override
    public final void writeTo(final OutputStream outputStream) {
        final BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream), 1024);
        this.kW();
        this.kS().writeTo(outputStream);
        bufferedWriter.write("\r\n");
        bufferedWriter.flush();
        if (this.Wc != null) {
            this.Wc.writeTo(outputStream);
        }
    }
}
