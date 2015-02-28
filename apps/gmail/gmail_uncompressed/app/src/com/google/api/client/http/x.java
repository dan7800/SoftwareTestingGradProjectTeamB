package com.google.api.client.http;

import com.google.api.client.a.a.a.a.a.*;
import com.google.api.client.util.*;
import java.io.*;

public final class x
{
    String content;
    o cxe;
    String message;
    int statusCode;
    String statusMessage;
    
    public x(final int statusCode, final String statusMessage, final o o) {
        H.cp(statusCode >= 0);
        this.statusCode = statusCode;
        this.statusMessage = statusMessage;
        this.cxe = a.ak(o);
    }
    
    public x(final w w) {
        this(w.getStatusCode(), w.KB(), w.XD());
        while (true) {
            try {
                this.content = w.XQ();
                if (this.content.length() == 0) {
                    this.content = null;
                }
                final StringBuilder c = HttpResponseException.c(w);
                if (this.content != null) {
                    c.append(L.czG).append(this.content);
                }
                this.message = c.toString();
            }
            catch (IOException ex) {
                ex.printStackTrace();
                continue;
            }
            break;
        }
    }
    
    public final x hq(final String message) {
        this.message = message;
        return this;
    }
    
    public final x hr(final String content) {
        this.content = content;
        return this;
    }
}
