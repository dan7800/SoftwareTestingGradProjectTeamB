package com.google.api.client.http;

import com.google.api.client.util.*;
import com.google.api.client.util.a.*;
import java.util.*;
import java.net.*;

public final class j extends GenericData
{
    private static final b cwK;
    private String cwL;
    private String cwM;
    private String cwN;
    private List<String> cwO;
    private String fragment;
    private int port;
    
    static {
        cwK = new c("=&-_.!~*'()@:$,;/?:", false);
    }
    
    public j() {
        this.port = -1;
    }
    
    public j(final String s) {
        this(hg(s));
    }
    
    private j(final String s, final String cwM, final int port, final String s2, final String s3, final String s4, final String s5) {
        this.port = -1;
        this.cwL = s.toLowerCase();
        this.cwM = cwM;
        this.port = port;
        this.cwO = hf(s2);
        String hz;
        if (s3 != null) {
            hz = a.hz(s3);
        }
        else {
            hz = null;
        }
        this.fragment = hz;
        if (s4 != null) {
            I.n(s4, this);
        }
        String hz2 = null;
        if (s5 != null) {
            hz2 = a.hz(s5);
        }
        this.cwN = hz2;
    }
    
    private j(final URI uri) {
        this(uri.getScheme(), uri.getHost(), uri.getPort(), uri.getRawPath(), uri.getRawFragment(), uri.getRawQuery(), uri.getRawUserInfo());
    }
    
    public j(final URL url) {
        this(url.getProtocol(), url.getHost(), url.getPort(), url.getPath(), url.getRef(), url.getQuery(), url.getUserInfo());
    }
    
    private j Xm() {
        final j j = (j)super.WT();
        if (this.cwO != null) {
            j.cwO = new ArrayList<String>(this.cwO);
        }
        return j;
    }
    
    static void a(final Set<Entry<String, Object>> set, final StringBuilder sb) {
        final Iterator<Entry<String, Object>> iterator = set.iterator();
        boolean b = true;
        while (iterator.hasNext()) {
            final Map.Entry<String, Object> entry = iterator.next();
            final Collection<Object> value = entry.getValue();
            boolean a2;
            if (value != null) {
                final String hc = a.hC(entry.getKey());
                if (value instanceof Collection) {
                    final Iterator<Object> iterator2 = value.iterator();
                    boolean a = b;
                    while (iterator2.hasNext()) {
                        a = a(a, sb, hc, iterator2.next());
                    }
                    b = a;
                    continue;
                }
                a2 = a(b, sb, hc, value);
            }
            else {
                a2 = b;
            }
            b = a2;
        }
    }
    
    private static boolean a(boolean b, final StringBuilder sb, final String s, final Object o) {
        if (b) {
            b = false;
            sb.append('?');
        }
        else {
            sb.append('&');
        }
        sb.append(s);
        final String hc = a.hC(o.toString());
        if (hc.length() != 0) {
            sb.append('=').append(hc);
        }
        return b;
    }
    
    private void d(final StringBuilder sb) {
        for (int size = this.cwO.size(), i = 0; i < size; ++i) {
            final String s = this.cwO.get(i);
            if (i != 0) {
                sb.append('/');
            }
            if (s.length() != 0) {
                sb.append(a.hA(s));
            }
        }
    }
    
    private static List<String> hf(final String s) {
        if (s == null || s.length() == 0) {
            return null;
        }
        final ArrayList<String> list = new ArrayList<String>();
        int i = 1;
        int n = 0;
        while (i != 0) {
            final int index = s.indexOf(47, n);
            if (index != -1) {
                i = 1;
            }
            else {
                i = 0;
            }
            String s2;
            if (i != 0) {
                s2 = s.substring(n, index);
            }
            else {
                s2 = s.substring(n);
            }
            list.add(a.hz(s2));
            n = index + 1;
        }
        return list;
    }
    
    private static URI hg(final String s) {
        try {
            return new URI(s);
        }
        catch (URISyntaxException ex) {
            throw new IllegalArgumentException(ex);
        }
    }
    
    private URL toURL() {
        try {
            return new URL(this.Xn());
        }
        catch (MalformedURLException ex) {
            throw new IllegalArgumentException(ex);
        }
    }
    
    public final String Xn() {
        final StringBuilder sb = new StringBuilder();
        final StringBuilder sb2 = new StringBuilder();
        sb2.append(com.google.api.client.a.a.a.a.a.a.ak(this.cwL));
        sb2.append("://");
        if (this.cwN != null) {
            sb2.append(a.hB(this.cwN)).append('@');
        }
        sb2.append(com.google.api.client.a.a.a.a.a.a.ak(this.cwM));
        final int port = this.port;
        if (port != -1) {
            sb2.append(':').append(port);
        }
        final StringBuilder append = sb.append(sb2.toString());
        final StringBuilder sb3 = new StringBuilder();
        if (this.cwO != null) {
            this.d(sb3);
        }
        a(this.entrySet(), sb3);
        final String fragment = this.fragment;
        if (fragment != null) {
            sb3.append('#').append(j.cwK.gF(fragment));
        }
        return append.append(sb3.toString()).toString();
    }
    
    public final void Xo() {
        this.cwO = hf(null);
    }
    
    @Override
    public final boolean equals(final Object o) {
        return this == o || (super.equals(o) && o instanceof j && this.Xn().equals(((j)o).toString()));
    }
    
    @Override
    public final int hashCode() {
        return this.Xn().hashCode();
    }
    
    public final URL hd(final String s) {
        try {
            return new URL(this.toURL(), s);
        }
        catch (MalformedURLException ex) {
            throw new IllegalArgumentException(ex);
        }
    }
    
    public final Object he(final String s) {
        Object o = this.get(s);
        if (o instanceof Collection) {
            final Iterator<Collection> iterator = ((Collection<Collection>)o).iterator();
            if (!iterator.hasNext()) {
                return null;
            }
            o = iterator.next();
        }
        return o;
    }
    
    @Override
    public final String toString() {
        return this.Xn();
    }
}
