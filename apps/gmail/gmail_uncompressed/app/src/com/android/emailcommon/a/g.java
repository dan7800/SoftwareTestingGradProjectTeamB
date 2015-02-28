package com.android.emailcommon.a;

import java.util.*;
import org.apache.james.mime4j.*;
import java.io.*;
import com.android.emailcommon.mail.*;

final class g implements c
{
    private final Stack<Object> Wr;
    final /* synthetic */ f Ws;
    
    public g(final f ws) {
        this.Ws = ws;
        this.Wr = new Stack<Object>();
    }
    
    private void b(final Class<?> clazz) {
        if (!clazz.isInstance(this.Wr.peek())) {
            throw new IllegalStateException("Internal stack error: Expected '" + clazz.getName() + "' found '" + this.Wr.peek().getClass().getName() + "'");
        }
    }
    
    @Override
    public final void a(final a a, final InputStream inputStream) {
        this.b(j.class);
        final com.android.emailcommon.mail.c b = i.b(inputStream, a.Cq());
        try {
            this.Wr.peek().a(b);
        }
        catch (MessagingException ex) {
            throw new Error(ex);
        }
    }
    
    @Override
    public final void ac(final String s) {
        this.b(j.class);
        try {
            final String[] split = s.split(":", 2);
            this.Wr.peek().addHeader(split[0], split[1].trim());
        }
        catch (MessagingException ex) {
            throw new Error(ex);
        }
    }
    
    @Override
    public final void d(final InputStream inputStream) {
        this.b(h.class);
        final StringBuilder sb = new StringBuilder();
        while (true) {
            final int read = inputStream.read();
            if (read == -1) {
                break;
            }
            sb.append((char)read);
        }
    }
    
    @Override
    public final void e(final InputStream inputStream) {
        this.b(h.class);
        final StringBuilder sb = new StringBuilder();
        while (true) {
            final int read = inputStream.read();
            if (read == -1) {
                break;
            }
            sb.append((char)read);
        }
        try {
            this.Wr.peek().ad(sb.toString());
        }
        catch (MessagingException ex) {
            throw new Error(ex);
        }
    }
    
    @Override
    public final void kX() {
        if (this.Wr.isEmpty()) {
            this.Wr.push(this.Ws);
            return;
        }
        this.b(j.class);
        try {
            final f f = new f();
            this.Wr.peek().a(f);
            this.Wr.push(f);
        }
        catch (MessagingException ex) {
            throw new Error(ex);
        }
    }
    
    @Override
    public final void kY() {
        this.b(f.class);
        this.Wr.pop();
    }
    
    @Override
    public final void kZ() {
        this.b(j.class);
    }
    
    @Override
    public final void la() {
        this.b(j.class);
    }
    
    @Override
    public final void lb() {
        this.b(j.class);
        final j j = this.Wr.peek();
        try {
            final h h = new h(j.getContentType());
            j.a(h);
            this.Wr.push(h);
        }
        catch (MessagingException ex) {
            throw new Error(ex);
        }
    }
    
    @Override
    public final void lc() {
        this.Wr.pop();
    }
    
    @Override
    public final void ld() {
        this.b(h.class);
        try {
            final com.android.emailcommon.a.c c = new com.android.emailcommon.a.c();
            this.Wr.peek().a(c);
            this.Wr.push(c);
        }
        catch (MessagingException ex) {
            throw new Error(ex);
        }
    }
    
    @Override
    public final void le() {
        this.b(d.class);
        this.Wr.pop();
    }
    
    @Override
    public final void lf() {
        throw new UnsupportedOperationException("Not supported");
    }
}
