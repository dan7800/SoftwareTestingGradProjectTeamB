package com.google.api.client.http;

import java.io.*;

public class HttpResponseException extends IOException
{
    private static final long serialVersionUID = -1875819453475890043L;
    private final String content;
    private final transient o cxe;
    private final int statusCode;
    private final String statusMessage;
    
    public HttpResponseException(final w w) {
        this(new x(w));
    }
    
    protected HttpResponseException(final x x) {
        super(x.message);
        this.statusCode = x.statusCode;
        this.statusMessage = x.statusMessage;
        this.cxe = x.cxe;
        this.content = x.content;
    }
    
    public static StringBuilder c(final w w) {
        final StringBuilder sb = new StringBuilder();
        final int statusCode = w.getStatusCode();
        if (statusCode != 0) {
            sb.append(statusCode);
        }
        final String kb = w.KB();
        if (kb != null) {
            if (statusCode != 0) {
                sb.append(' ');
            }
            sb.append(kb);
        }
        return sb;
    }
}
