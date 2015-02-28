package com.google.api.client.json;

import com.google.api.client.util.*;
import java.nio.charset.*;
import java.io.*;

public abstract class d
{
    private String l(final Object o, final boolean b) {
        final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        final e a = this.a(byteArrayOutputStream, j.UTF_8);
        if (b) {
            a.WE();
        }
        a.ao(o);
        a.flush();
        return byteArrayOutputStream.toString("UTF-8");
    }
    
    public abstract e a(final OutputStream p0, final Charset p1);
    
    public abstract h a(final InputStream p0, final Charset p1);
    
    public final String an(final Object o) {
        return this.l(o, true);
    }
    
    public abstract h g(final InputStream p0);
    
    public abstract h gS(final String p0);
    
    public final String toString(final Object o) {
        return this.l(o, false);
    }
}
