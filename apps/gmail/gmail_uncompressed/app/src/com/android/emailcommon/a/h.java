package com.android.emailcommon.a;

import java.io.*;
import com.android.emailcommon.mail.*;

public class h extends com.android.emailcommon.mail.h
{
    protected String Lp;
    protected String Wt;
    protected String Wu;
    protected String Wv;
    
    public h() {
        final StringBuffer sb = new StringBuffer();
        sb.append("----");
        for (int i = 0; i < 30; ++i) {
            sb.append(Integer.toString((int)(35.0 * Math.random()), 36));
        }
        this.Wu = sb.toString().toUpperCase();
        this.ae("mixed");
    }
    
    public h(final String lp) {
        this.Lp = lp;
        try {
            this.Wv = i.r(lp, null).split("/")[1];
            this.Wu = i.r(lp, "boundary");
            if (this.Wu == null) {
                throw new MessagingException("MultiPart does not contain boundary: " + lp);
            }
        }
        catch (Exception ex) {
            throw new MessagingException("Invalid MultiPart Content-Type; must contain subtype and boundary. (" + lp + ")", ex);
        }
    }
    
    public final void ad(final String wt) {
        this.Wt = wt;
    }
    
    public final void ae(final String wv) {
        this.Wv = wv;
        this.Lp = String.format("multipart/%s; boundary=\"%s\"", wv, this.Wu);
    }
    
    @Override
    public final String getContentType() {
        return this.Lp;
    }
    
    @Override
    public final InputStream getInputStream() {
        return null;
    }
    
    public final String lg() {
        return this.Wv;
    }
    
    @Override
    public final void writeTo(final OutputStream outputStream) {
        final BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream), 1024);
        if (this.Wt != null) {
            bufferedWriter.write(this.Wt + "\r\n");
        }
        for (int size = this.Xt.size(), i = 0; i < size; ++i) {
            final d d = this.Xt.get(i);
            bufferedWriter.write("--" + this.Wu + "\r\n");
            bufferedWriter.flush();
            d.writeTo(outputStream);
            bufferedWriter.write("\r\n");
        }
        bufferedWriter.write("--" + this.Wu + "--\r\n");
        bufferedWriter.flush();
    }
}
