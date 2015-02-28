package com.android.emailcommon.a;

import com.android.emailcommon.mail.*;
import com.android.emailcommon.*;
import java.io.*;
import android.util.*;
import org.apache.a.a.*;

public final class a implements c
{
    private File Rq;
    
    @Override
    public final InputStream getInputStream() {
        try {
            return new b(this, new FileInputStream(this.Rq));
        }
        catch (IOException ex) {
            throw new MessagingException("Unable to open body", ex);
        }
    }
    
    public final OutputStream getOutputStream() {
        (this.Rq = File.createTempFile("body", null, e.kM())).deleteOnExit();
        return new FileOutputStream(this.Rq);
    }
    
    @Override
    public final void writeTo(final OutputStream outputStream) {
        final InputStream inputStream = this.getInputStream();
        final Base64OutputStream base64OutputStream = new Base64OutputStream(outputStream, 20);
        org.apache.a.a.a.b(inputStream, (OutputStream)base64OutputStream);
        base64OutputStream.close();
        this.Rq.delete();
    }
}
