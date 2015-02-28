package com.android.emailcommon.a;

import java.text.*;
import java.util.regex.*;
import android.content.*;
import com.android.emailcommon.provider.*;
import android.text.*;
import android.net.*;
import com.android.mail.utils.*;
import org.apache.a.a.*;
import java.util.*;
import java.io.*;
import android.util.*;
import com.android.emailcommon.mail.*;

public class j
{
    private static final SimpleDateFormat Wq;
    private static final Pattern Wx;
    static byte Wy;
    
    static {
        Wq = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss Z", Locale.US);
        Wx = Pattern.compile("(?:<\\s*body[^>]*>)(.*)(?:<\\s*/\\s*body\\s*>)", 34);
    }
    
    public static void a(final Context context, final g g, final OutputStream outputStream) {
        if (g == null) {
            return;
        }
        final BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(outputStream, 1024);
        final OutputStreamWriter outputStreamWriter = new OutputStreamWriter(bufferedOutputStream);
        a(outputStreamWriter, "Date", j.Wq.format(new Date(g.YK)));
        final String yl = g.YL;
        if (yl != null && yl.length() > 0) {
            outputStreamWriter.append((CharSequence)"Subject");
            outputStreamWriter.append((CharSequence)": ");
            outputStreamWriter.append((CharSequence)i.a(yl, 2 + "Subject".length()));
            outputStreamWriter.append((CharSequence)"\r\n");
        }
        a(outputStreamWriter, "Message-ID", g.YQ);
        b(outputStreamWriter, "From", g.YT);
        b(outputStreamWriter, "To", g.YU);
        b(outputStreamWriter, "Cc", g.YV);
        b(outputStreamWriter, "Reply-To", g.YX);
        a(outputStreamWriter, "MIME-Version", "1.0");
        final e q = e.q(context, g.Ln);
        String[] array;
        if (q == null) {
            array = new String[2];
        }
        else {
            final String[] array2 = { q.Yz, q.Yy };
            final int ya = q.YA;
            array = array2;
        }
        final List<EmailContent$Attachment> list = Arrays.asList(EmailContent$Attachment.p(context, g.Ln));
        int n;
        if (list.size() > 0) {
            n = 1;
        }
        else {
            n = 0;
        }
        if (n == 0) {
            a(outputStreamWriter, bufferedOutputStream, array);
        }
        else {
            final String lh = lh();
            String s;
            if (list.size() == 1 && (0x1 & list.get(0).dM) != 0x0) {
                s = "alternative";
            }
            else {
                s = "mixed";
            }
            a(outputStreamWriter, "Content-Type", "multipart/" + s + "; boundary=\"" + lh + "\"");
            outputStreamWriter.write("\r\n");
            if (array[0] != null || array[1] != null) {
                a(outputStreamWriter, lh, false);
                a(outputStreamWriter, bufferedOutputStream, array);
            }
        Label_0808:
            for (final EmailContent$Attachment emailContent$Attachment : list) {
                a(outputStreamWriter, lh, false);
                a(outputStreamWriter, "Content-Type", emailContent$Attachment.Ym + ";\n name=\"" + emailContent$Attachment.Yl + "\"");
                a(outputStreamWriter, "Content-Transfer-Encoding", "base64");
                if ((0x1 & emailContent$Attachment.dM) == 0x0) {
                    a(outputStreamWriter, "Content-Disposition", "attachment;\n filename=\"" + emailContent$Attachment.Yl + "\";\n size=" + Long.toString(emailContent$Attachment.Lo));
                }
                if (emailContent$Attachment.Yn != null) {
                    a(outputStreamWriter, "Content-ID", emailContent$Attachment.Yn);
                }
            Label_0599_Outer:
                while (true) {
                    outputStreamWriter.append((CharSequence)"\r\n");
                Label_0599:
                    while (true) {
                        InputStream openInputStream = null;
                        Label_0819: {
                            while (true) {
                                try {
                                    if (emailContent$Attachment.Yu == null) {
                                        final String lk = emailContent$Attachment.lK();
                                        while (true) {
                                            Label_0750: {
                                                if (TextUtils.isEmpty((CharSequence)lk)) {
                                                    break Label_0750;
                                                }
                                                final Uri parse = Uri.parse(lk);
                                                try {
                                                    openInputStream = context.getContentResolver().openInputStream(parse);
                                                    if (openInputStream == null) {
                                                        final InputStream openInputStream2 = context.getContentResolver().openInputStream(Uri.parse(emailContent$Attachment.lL()));
                                                        break Label_0599;
                                                    }
                                                    break Label_0819;
                                                }
                                                catch (FileNotFoundException ex3) {
                                                    E.c("Email", "Rfc822Output#writeOneAttachment(), failed to loadcached file, falling back to: %s", emailContent$Attachment.lL());
                                                }
                                            }
                                            openInputStream = null;
                                            continue Label_0599_Outer;
                                        }
                                    }
                                    final InputStream openInputStream2 = new ByteArrayInputStream(emailContent$Attachment.Yu);
                                    outputStreamWriter.flush();
                                    final Base64OutputStream base64OutputStream = new Base64OutputStream((OutputStream)bufferedOutputStream, 20);
                                    a.b(openInputStream2, (OutputStream)base64OutputStream);
                                    base64OutputStream.close();
                                    bufferedOutputStream.write(13);
                                    bufferedOutputStream.write(10);
                                    bufferedOutputStream.flush();
                                    outputStreamWriter.write("\r\n");
                                    break;
                                }
                                catch (FileNotFoundException ex) {
                                    E.e("Email", ex, "Rfc822Output#writeOneAttachment(), FileNotFoundExceptionwhen sending attachment", new Object[0]);
                                    continue;
                                }
                                catch (IOException ex2) {
                                    E.e("Email", ex2, "Rfc822Output#writeOneAttachment(), IOExceptionwhen sending attachment", new Object[0]);
                                    throw new MessagingException("Invalid attachment.", ex2);
                                }
                                break;
                            }
                            break Label_0808;
                        }
                        final InputStream openInputStream2 = openInputStream;
                        continue Label_0599;
                    }
                }
            }
            a(outputStreamWriter, lh, true);
        }
        outputStreamWriter.flush();
        outputStream.flush();
    }
    
    private static void a(final Writer writer, final OutputStream outputStream, final String[] array) {
        int n = 1;
        String s = array[0];
        if (TextUtils.isEmpty((CharSequence)s)) {
            s = array[n];
        }
        else {
            n = 0;
        }
        if (TextUtils.isEmpty((CharSequence)s)) {
            writer.write("\r\n");
            return;
        }
        final StringBuilder sb = new StringBuilder("text/");
        String s2;
        if (n != 0) {
            s2 = "html";
        }
        else {
            s2 = "plain";
        }
        a(writer, "Content-Type", sb.append(s2).toString() + "; charset=utf-8");
        a(writer, "Content-Transfer-Encoding", "base64");
        writer.write("\r\n");
        final byte[] bytes = s.getBytes("UTF-8");
        writer.flush();
        outputStream.write(Base64.encode(bytes, 4));
    }
    
    private static void a(final Writer writer, final String s, final String s2) {
        if (s2 != null && s2.length() > 0) {
            writer.append((CharSequence)s);
            writer.append((CharSequence)": ");
            writer.append((CharSequence)s2);
            writer.append((CharSequence)"\r\n");
        }
    }
    
    private static void a(final Writer writer, final String s, final boolean b) {
        writer.append((CharSequence)"--");
        writer.append((CharSequence)s);
        if (b) {
            writer.append((CharSequence)"--");
        }
        writer.append((CharSequence)"\r\n");
    }
    
    private static void b(final Writer writer, final String s, final String s2) {
        if (s2 != null && s2.length() > 0) {
            writer.append((CharSequence)s);
            writer.append((CharSequence)": ");
            writer.append((CharSequence)i.b(Address.an(s2), 2 + s.length()));
            writer.append((CharSequence)"\r\n");
        }
    }
    
    private static String lh() {
        final StringBuilder sb = new StringBuilder();
        sb.append("--_com.android.email_").append(System.nanoTime());
        synchronized (j.class) {
            sb.append(j.Wy);
            j.Wy = (byte)((1 + j.Wy) % 10);
            // monitorexit(j.class)
            return sb.toString();
        }
    }
}
