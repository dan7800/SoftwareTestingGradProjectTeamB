package com.google.api.client.googleapis.a.a;

import com.google.api.client.googleapis.a.*;
import com.google.api.client.http.*;
import java.io.*;
import com.google.api.client.googleapis.json.*;
import com.google.api.client.util.*;

public abstract class c<T> extends com.google.api.client.googleapis.a.c<T>
{
    private final Object cwC;
    
    protected c(final a a, final String s, final String s2, final Object cwC, final Class<T> clazz) {
        k hu;
        if (cwC == null) {
            hu = null;
        }
        else {
            final com.google.api.client.http.b.a a2 = new com.google.api.client.http.b.a(a.Xg(), cwC);
            final boolean empty = a.Xf().Yd().isEmpty();
            String s3 = null;
            if (!empty) {
                s3 = "data";
            }
            hu = a2.hu(s3);
        }
        super(a, s, s2, hu, clazz);
        this.cwC = cwC;
    }
    
    public a Xh() {
        return (a)super.Xc();
    }
    
    public c<T> l(final String s, final Object o) {
        return (c)super.k(s, o);
    }
}
