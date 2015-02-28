package org.owasp.html;

import com.google.common.collect.*;
import java.util.*;

final class o implements M
{
    static final ImmutableSet<String> cHW;
    final ImmutableMap<String, n> cHR;
    final ImmutableSet<String> cHS;
    private final N cHT;
    transient boolean cHU;
    private final List<String> cHV;
    
    static {
        cHW = ImmutableSet.a("script", "style", "noscript", "nostyle", "noembed", "noframes", "iframe", "object", "frame", "frameset", "title");
    }
    
    o(final N cht, final ImmutableMap<String, n> chr, final ImmutableSet<String> chs) {
        this.cHU = true;
        this.cHV = new ArrayList<String>();
        this.cHT = cht;
        this.cHR = chr;
        this.cHS = chs;
    }
    
    @Override
    public final void abZ() {
        this.cHU = false;
        this.cHV.clear();
        this.cHT.abZ();
    }
    
    @Override
    public final void aca() {
        for (int i = -1 + this.cHV.size(); i >= 0; i -= 2) {
            final String s = this.cHV.get(i);
            if (s != null) {
                this.cHT.ip(s);
            }
        }
        this.cHV.clear();
        this.cHU = true;
        this.cHT.aca();
    }
    
    @Override
    public final void b(final String s, final List<String> list) {
        final n n = this.cHR.get(s);
        String apply2;
        if (n != null) {
            final ListIterator<String> listIterator = list.listIterator();
            while (listIterator.hasNext()) {
                final String s2 = listIterator.next();
                final b b = n.cHP.get(s2);
                if (b == null) {
                    listIterator.remove();
                    listIterator.next();
                    listIterator.remove();
                }
                else {
                    final String apply = b.apply(s, s2, listIterator.next());
                    if (apply == null) {
                        listIterator.remove();
                        listIterator.previous();
                        listIterator.remove();
                    }
                    else {
                        listIterator.set(apply);
                    }
                }
            }
            apply2 = n.cHO.apply(s, list);
        }
        else {
            apply2 = null;
        }
        if (apply2 != null && (!list.isEmpty() || !n.cHQ)) {
            if (!n.cHN) {
                this.cHV.add(n.cHM);
                this.cHV.add(apply2);
                this.cHU = !this.cHS.contains(apply2);
            }
            this.cHT.b(apply2, list);
            return;
        }
        if (HtmlTextEscapingMode.iA(s)) {
            this.cHV.add(s);
            this.cHV.add(null);
        }
        this.cHU = o.cHW.contains(s);
    }
    
    @Override
    public final void io(final String s) {
        if (!this.cHU) {
            this.cHT.io(s);
        }
    }
    
    @Override
    public final void ip(final String s) {
        int i;
        int n2;
        for (int n = i = this.cHV.size(); i > 0; i = n2) {
            n2 = i - 2;
            if (s.equals(this.cHV.get(n2))) {
                for (int j = n - 1; j > n2; j -= 2) {
                    final String s2 = this.cHV.get(j);
                    if (s2 != null) {
                        this.cHT.ip(s2);
                    }
                }
                this.cHV.subList(n2, n).clear();
                break;
            }
        }
        this.cHU = false;
        for (int k = -1 + this.cHV.size(); k >= 0; k -= 2) {
            final String s3 = this.cHV.get(k);
            if (s3 != null) {
                this.cHU = !this.cHS.contains(s3);
                break;
            }
        }
    }
}
