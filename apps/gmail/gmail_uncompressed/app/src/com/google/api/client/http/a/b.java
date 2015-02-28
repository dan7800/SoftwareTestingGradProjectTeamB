package com.google.api.client.http.a;

import java.net.*;
import java.util.*;
import java.io.*;
import com.google.api.client.http.*;

final class b extends E
{
    private final HttpURLConnection cxU;
    private final ArrayList<String> cxV;
    private final ArrayList<String> cxW;
    private final int responseCode;
    private final String responseMessage;
    
    b(final HttpURLConnection cxU) {
        this.cxV = new ArrayList<String>();
        this.cxW = new ArrayList<String>();
        this.cxU = cxU;
        int responseCode = cxU.getResponseCode();
        if (responseCode == -1) {
            responseCode = 0;
        }
        this.responseCode = responseCode;
        this.responseMessage = cxU.getResponseMessage();
        final ArrayList<String> cxV = this.cxV;
        final ArrayList<String> cxW = this.cxW;
        for (final Map.Entry<String, List<String>> entry : cxU.getHeaderFields().entrySet()) {
            final String s = entry.getKey();
            if (s != null) {
                for (final String s2 : entry.getValue()) {
                    if (s2 != null) {
                        cxV.add(s);
                        cxW.add(s2);
                    }
                }
            }
        }
    }
    
    @Override
    public final String XW() {
        final String headerField = this.cxU.getHeaderField(0);
        if (headerField != null && headerField.startsWith("HTTP/1.")) {
            return headerField;
        }
        return null;
    }
    
    @Override
    public final int XX() {
        return this.cxV.size();
    }
    
    @Override
    public final void disconnect() {
        this.cxU.disconnect();
    }
    
    @Override
    public final String fc(final int n) {
        return this.cxV.get(n);
    }
    
    @Override
    public final String fd(final int n) {
        return this.cxW.get(n);
    }
    
    @Override
    public final InputStream getContent() {
        final HttpURLConnection cxU = this.cxU;
        if (z.fb(this.responseCode)) {
            return cxU.getInputStream();
        }
        return cxU.getErrorStream();
    }
    
    @Override
    public final String getContentEncoding() {
        return this.cxU.getContentEncoding();
    }
    
    @Override
    public final String getContentType() {
        return this.cxU.getHeaderField("Content-Type");
    }
    
    @Override
    public final String getReasonPhrase() {
        return this.responseMessage;
    }
    
    @Override
    public final int getStatusCode() {
        return this.responseCode;
    }
}
