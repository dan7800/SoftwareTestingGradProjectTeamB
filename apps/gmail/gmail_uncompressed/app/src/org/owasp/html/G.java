package org.owasp.html;

import java.util.*;
import com.google.common.collect.*;

public final class G
{
    public static final ImmutableSet<String> cJb;
    private static final Set<String> cJj;
    private final Map<String, p> cJc;
    private final Map<String, Map<String, b>> cJd;
    private final Map<String, b> cJe;
    private final Set<String> cJf;
    private final Set<String> cJg;
    private final Map<String, Boolean> cJh;
    private boolean cJi;
    private transient ImmutableMap<String, n> cJk;
    
    static {
        cJb = ImmutableSet.a("a", "font", "img", "input", "span");
        cJj = ImmutableSet.a("action", "archive", "background", "cite", "classid", "codebase", "data", "dsync", "formaction", "href", "icon", "longdesc", "manifest", "poster", "profile", "src", "srcset", "usemap");
    }
    
    public G() {
        this.cJc = (Map<String, p>)Maps.aao();
        this.cJd = (Map<String, Map<String, b>>)Maps.aao();
        this.cJe = (Map<String, b>)Maps.aao();
        this.cJf = new LinkedHashSet<String>();
        this.cJg = (Set<String>)Sets.h((Iterable<?>)G.cJb);
        this.cJh = (Map<String, Boolean>)Maps.aao();
    }
    
    private G a(final b b, final List<String> list) {
        this.cJk = null;
        for (final String s : list) {
            this.cJe.put(s, e.a(this.cJe.get(s), b));
        }
        return this;
    }
    
    private ImmutableMap<String, n> acf() {
        if (this.cJk != null) {
            return this.cJk;
        }
        final LinkedHashMap<Object, Object> s = Maps.s((Map<?, ?>)this.cJc);
        final LinkedHashMap<Object, Object> s2 = Maps.s((Map<?, ?>)this.cJd);
        for (final Map.Entry<Object, Map<? extends K, ? extends V>> entry : s2.entrySet()) {
            entry.setValue((Map<? extends K, ? extends V>)Maps.s((Map<?, ?>)entry.getValue()));
        }
        final LinkedHashMap<Object, Object> s3 = Maps.s((Map<?, ?>)this.cJe);
        final ImmutableSet<? extends String> l = (ImmutableSet<? extends String>)ImmutableSet.L((Collection<?>)this.cJf);
        if (this.cJi) {
            p chy = s.get("a");
            if (chy == null) {
                chy = p.cHY;
            }
            s.put("a", org.owasp.html.s.a(chy, new H(this)));
        }
        b cKb;
        if (l.size() == 3 && l.contains("mailto") && l.contains("http") && l.contains("https")) {
            cKb = V.cKb;
        }
        else {
            cKb = new v(l);
        }
        final LinkedHashSet<Object> h = Sets.h((Iterable<?>)G.cJj);
        for (final String s4 : G.cJj) {
            if (s3.containsKey(s4)) {
                h.remove(s4);
                s3.put(s4, e.a(cKb, s3.get(s4)));
            }
        }
        final Iterator<Map.Entry<Object, Object>> iterator3 = s2.entrySet().iterator();
        while (iterator3.hasNext()) {
            final Map<? extends K, ? extends V> map = iterator3.next().getValue();
            for (final String s5 : h) {
                if (map.containsKey(s5)) {
                    map.put((K)s5, e.a(cKb, (b)map.get(s5)));
                }
            }
        }
        final y<String, n> zv = ImmutableMap.Zv();
        for (final Map.Entry<String, p> entry2 : s.entrySet()) {
            final String s6 = entry2.getKey();
            final p p = entry2.getValue();
            if (!org.owasp.html.p.cHY.equals(p)) {
                final Map<? extends K, ? extends V> map2 = s2.get(s6);
                Object zu;
                if (map2 == null) {
                    zu = ImmutableMap.Zu();
                }
                else {
                    zu = map2;
                }
                final y<String, b> zv2 = ImmutableMap.Zv();
                for (final Map.Entry<String, V> entry3 : ((Map<String, V>)zu).entrySet()) {
                    final String s7 = entry3.getKey();
                    if (!s3.containsKey(s7)) {
                        final b b = (b)entry3.getValue();
                        if (org.owasp.html.b.cGF.equals(b)) {
                            continue;
                        }
                        zv2.p(s7, b);
                    }
                }
                for (final Map.Entry<String, b> entry4 : s3.entrySet()) {
                    final String s8 = entry4.getKey();
                    final b a = e.a((b)((Map<String, V>)zu).get(s8), entry4.getValue());
                    if (!b.cGF.equals(a)) {
                        zv2.p(s8, a);
                    }
                }
                zv.p(s6, new n(s6, p, zv2.Zo(), this.cJg.contains(s6)));
            }
        }
        return this.cJk = zv.Zo();
    }
    
    public final G H(final String... array) {
        return this.a(p.cHX, array);
    }
    
    public final G I(final String... array) {
        this.cJk = null;
        for (int length = array.length, i = 0; i < length; ++i) {
            this.cJh.put(HtmlLexer.iu(array[i]), false);
        }
        return this;
    }
    
    public final I J(final String... array) {
        final x<String> zs = ImmutableList.Zs();
        for (int length = array.length, i = 0; i < length; ++i) {
            zs.aF(HtmlLexer.iu(array[i]));
        }
        return new I(zs.Zt());
    }
    
    public final G K(final String... array) {
        this.cJk = null;
        for (int length = array.length, i = 0; i < length; ++i) {
            this.cJf.add(W.hL(array[i]));
        }
        return this;
    }
    
    public final G a(final i i) {
        this.cJk = null;
        this.a(new X(i), ImmutableList.aE("style"));
        return this;
    }
    
    public final G a(final p p2, final String... array) {
        this.cJk = null;
        for (int length = array.length, i = 0; i < length; ++i) {
            final String iu = HtmlLexer.iu(array[i]);
            this.cJc.put(iu, s.a(this.cJc.get(iu), p2));
            if (!this.cJh.containsKey(iu) && TagBalancingHtmlStreamEventReceiver.iD(iu)) {
                this.cJh.put(iu, true);
            }
        }
        return this;
    }
    
    public final U ace() {
        final z<K> zx = ImmutableSet.Zx();
        for (final Map.Entry<String, Boolean> entry : this.cJh.entrySet()) {
            if (Boolean.TRUE.equals(entry.getValue())) {
                zx.aH((K)entry.getKey());
            }
        }
        return new U(this.acf(), (ImmutableSet<String>)zx.Zy(), ImmutableMap.q((Map<? extends String, ? extends b>)this.cJe));
    }
}
