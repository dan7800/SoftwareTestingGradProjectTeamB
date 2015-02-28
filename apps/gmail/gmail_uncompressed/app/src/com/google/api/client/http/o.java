package com.google.api.client.http;

import java.lang.reflect.*;
import com.google.api.client.a.a.a.a.a.*;
import java.util.*;
import java.util.logging.*;
import com.google.api.client.util.*;
import java.io.*;

public final class o extends GenericData
{
    @x(Yz = "Accept")
    private List<String> accept;
    @x(Yz = "Accept-Encoding")
    private List<String> acceptEncoding;
    @x(Yz = "Age")
    private List<Long> age;
    @x(Yz = "WWW-Authenticate")
    private List<String> authenticate;
    @x(Yz = "Authorization")
    private List<String> authorization;
    @x(Yz = "Cache-Control")
    private List<String> cacheControl;
    @x(Yz = "Content-Encoding")
    private List<String> contentEncoding;
    @x(Yz = "Content-Length")
    private List<Long> contentLength;
    @x(Yz = "Content-MD5")
    private List<String> contentMD5;
    @x(Yz = "Content-Range")
    private List<String> contentRange;
    @x(Yz = "Content-Type")
    private List<String> contentType;
    @x(Yz = "Cookie")
    private List<String> cookie;
    @x(Yz = "Date")
    private List<String> date;
    @x(Yz = "ETag")
    private List<String> etag;
    @x(Yz = "Expires")
    private List<String> expires;
    @x(Yz = "If-Match")
    private List<String> ifMatch;
    @x(Yz = "If-Modified-Since")
    private List<String> ifModifiedSince;
    @x(Yz = "If-None-Match")
    private List<String> ifNoneMatch;
    @x(Yz = "If-Range")
    private List<String> ifRange;
    @x(Yz = "If-Unmodified-Since")
    private List<String> ifUnmodifiedSince;
    @x(Yz = "Last-Modified")
    private List<String> lastModified;
    @x(Yz = "Location")
    private List<String> location;
    @x(Yz = "MIME-Version")
    private List<String> mimeVersion;
    @x(Yz = "Range")
    private List<String> range;
    @x(Yz = "Retry-After")
    private List<String> retryAfter;
    @x(Yz = "User-Agent")
    private List<String> userAgent;
    
    public o() {
        super(EnumSet.of(GenericData$Flags.czx));
        this.acceptEncoding = new ArrayList<String>(Collections.singleton("gzip"));
    }
    
    private static <T> T U(final List<T> list) {
        if (list == null) {
            return null;
        }
        return list.get(0);
    }
    
    private static Object a(final Type type, final List<Type> list, final String s) {
        return m.a(m.a(list, type), s);
    }
    
    public static void a(final o o, final Writer writer) {
        a(o, null, null, null, null, writer);
    }
    
    static void a(final o o, final StringBuilder sb, final StringBuilder sb2, final Logger logger, final D d) {
        a(o, sb, sb2, logger, d, null);
    }
    
    private static void a(final o o, final StringBuilder sb, final StringBuilder sb2, final Logger logger, final D d, final Writer writer) {
        final HashSet<String> set = new HashSet<String>();
        for (final Map.Entry<String, Object> entry : o.entrySet()) {
            final String s = entry.getKey();
            a.a(set.add(s), "multiple headers of the same name (headers are case insensitive): %s", s);
            final Object value = entry.getValue();
            if (value != null) {
                final t hw = o.Yy().hw(s);
                String name;
                if (hw != null) {
                    name = hw.getName();
                }
                else {
                    name = s;
                }
                final Class<?> class1 = value.getClass();
                if (value instanceof Iterable || class1.isArray()) {
                    final Iterator<Object> iterator2 = O.au(value).iterator();
                    while (iterator2.hasNext()) {
                        a(logger, sb, sb2, d, name, iterator2.next(), writer);
                    }
                }
                else {
                    a(logger, sb, sb2, d, name, value, writer);
                }
            }
        }
        if (writer != null) {
            writer.flush();
        }
    }
    
    private static void a(final Logger logger, final StringBuilder sb, final StringBuilder sb2, final D d, final String s, final Object o, final Writer writer) {
        if (o != null && !m.aq(o)) {
            String s2;
            if (o instanceof Enum) {
                s2 = t.a((Enum<?>)o).getName();
            }
            else {
                s2 = o.toString();
            }
            String s3;
            if (("Authorization".equalsIgnoreCase(s) || "Cookie".equalsIgnoreCase(s)) && (logger == null || !logger.isLoggable(Level.ALL))) {
                s3 = "<Not Logged>";
            }
            else {
                s3 = s2;
            }
            if (sb != null) {
                sb.append(s).append(": ");
                sb.append(s3);
                sb.append(L.czG);
            }
            if (sb2 != null) {
                sb2.append(" -H '").append(s).append(": ").append(s3).append("'");
            }
            if (d != null) {
                d.addHeader(s, s2);
            }
            if (writer != null) {
                writer.write(s);
                writer.write(": ");
                writer.write(s2);
                writer.write("\r\n");
            }
        }
    }
    
    private static <T> List<T> al(final T t) {
        if (t == null) {
            return null;
        }
        final ArrayList<T> list = new ArrayList<T>();
        list.add(t);
        return list;
    }
    
    public final o Xp() {
        this.acceptEncoding = al((String)null);
        return this;
    }
    
    public final o Xq() {
        this.ifModifiedSince = al((String)null);
        return this;
    }
    
    public final o Xr() {
        this.ifNoneMatch = al((String)null);
        return this;
    }
    
    public final o Xs() {
        this.ifUnmodifiedSince = al((String)null);
        return this;
    }
    
    public final o Xt() {
        this.ifRange = al((String)null);
        return this;
    }
    
    public final String Xu() {
        return U(this.range);
    }
    
    public final String Xv() {
        return U(this.userAgent);
    }
    
    public final void a(final E e, final StringBuilder sb) {
        this.clear();
        final q q = new q(this, sb);
        for (int xx = e.XX(), i = 0; i < xx; ++i) {
            this.a(e.fc(i), e.fd(i), q);
        }
        q.cwT.Ym();
    }
    
    final void a(final String s, final String s2, final q q) {
        final List<Type> buv = q.buv;
        final k cwV = q.cwV;
        final e cwT = q.cwT;
        final StringBuilder cwU = q.cwU;
        if (cwU != null) {
            cwU.append(s + ": " + s2).append(L.czG);
        }
        final t hw = cwV.hw(s);
        if (hw == null) {
            ArrayList<String> list = (ArrayList<String>)this.get(s);
            if (list == null) {
                list = new ArrayList<String>();
                this.m(s, list);
            }
            list.add(s2);
            return;
        }
        final Type a = m.a(buv, hw.getGenericType());
        if (O.d(a)) {
            final Class<?> b = O.b(buv, O.e(a));
            cwT.a(hw.Yv(), b, a(b, buv, s2));
            return;
        }
        if (O.b(O.b(buv, a), Iterable.class)) {
            Collection<Object> c = (Collection<Object>)hw.at(this);
            if (c == null) {
                c = m.c(a);
                hw.k(this, c);
            }
            Type f;
            if (a == Object.class) {
                f = null;
            }
            else {
                f = O.f(a);
            }
            c.add(a(f, buv, s2));
            return;
        }
        hw.k(this, a(a, buv, s2));
    }
    
    public final void b(final o o) {
        try {
            final q q = new q(this, null);
            a(o, null, null, null, new p(this, q));
            q.cwT.Ym();
        }
        catch (IOException ex) {
            throw N.c(ex);
        }
    }
    
    public final o d(final Long n) {
        this.contentLength = al(n);
        return this;
    }
    
    public final String getContentType() {
        return U(this.contentType);
    }
    
    public final String getLocation() {
        return U(this.location);
    }
    
    public final o hh(final String s) {
        this.authorization = al(s);
        return this;
    }
    
    public final o hi(final String s) {
        this.contentEncoding = al(s);
        return this;
    }
    
    public final o hj(final String s) {
        this.contentRange = al(s);
        return this;
    }
    
    public final o hk(final String s) {
        this.contentType = al(s);
        return this;
    }
    
    public final o hl(final String s) {
        this.ifMatch = al(s);
        return this;
    }
    
    public final o hm(final String s) {
        this.userAgent = al(s);
        return this;
    }
    
    public final o m(final String s, final Object o) {
        return (o)super.i(s, o);
    }
}
