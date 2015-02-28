package com.android.emailcommon.mail;

import java.io.*;

public interface j extends e
{
    String[] Y(String p0);
    
    boolean Z(String p0);
    
    void a(c p0);
    
    void addHeader(String p0, String p1);
    
    String getContentType();
    
    String getMimeType();
    
    int getSize();
    
    c kO();
    
    String kP();
    
    String kQ();
    
    void setHeader(String p0, String p1);
    
    void writeTo(OutputStream p0);
}
