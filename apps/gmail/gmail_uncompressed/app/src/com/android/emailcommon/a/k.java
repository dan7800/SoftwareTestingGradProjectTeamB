package com.android.emailcommon.a;

import com.android.emailcommon.mail.*;
import java.io.*;
import android.util.*;

public final class k implements c
{
    String Wz;
    
    public k(final String wz) {
        this.Wz = wz;
    }
    
    @Override
    public final InputStream getInputStream() {
        try {
            return new ByteArrayInputStream(this.Wz.getBytes("UTF-8"));
        }
        catch (UnsupportedEncodingException ex) {
            return null;
        }
    }
    
    @Override
    public final void writeTo(final OutputStream outputStream) {
        outputStream.write(Base64.encode(this.Wz.getBytes("UTF-8"), 4));
    }
}
