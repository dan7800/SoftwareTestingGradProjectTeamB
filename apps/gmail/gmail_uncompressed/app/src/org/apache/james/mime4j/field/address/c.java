package org.apache.james.mime4j.field.address;

import java.util.*;
import org.apache.james.mime4j.field.address.parser.*;
import org.apache.james.mime4j.a.*;

final class c
{
    private static c cEs;
    
    static {
        c.cEs = new c();
    }
    
    private String a(final t t, final boolean b) {
        u u = t.cFy;
        final u cFz = t.cFz;
        final StringBuffer sb = new StringBuffer();
        while (u != cFz) {
            sb.append(u.cGa);
            u = u.cGb;
            if (!b) {
                this.a(sb, u.cGc);
            }
        }
        sb.append(cFz.cGa);
        return sb.toString();
    }
    
    private g a(final e e, final a a) {
        final d d = new d(a);
        return new g(e, this.a((t)d.aaK(), true), this.a((t)d.aaK(), true));
    }
    
    private g a(final org.apache.james.mime4j.field.address.parser.d d) {
        final d d2 = new d(d);
        r r = d2.aaK();
        e e;
        if (r instanceof k) {
            final k k = (k)r;
            final ArrayList list = new ArrayList<String>(k.abm());
            final d d3 = new d(k);
            while (d3.hasNext()) {
                final r aaK = d3.aaK();
                if (!(aaK instanceof org.apache.james.mime4j.field.address.parser.e)) {
                    throw new IllegalStateException();
                }
                list.add(this.a((t)aaK, true));
            }
            e = new e((ArrayList<String>)list);
            r = d2.aaK();
        }
        else {
            final boolean b = r instanceof a;
            e = null;
            if (!b) {
                throw new IllegalStateException();
            }
        }
        if (r instanceof a) {
            return this.a(e, (a)r);
        }
        throw new IllegalStateException();
    }
    
    private h a(final f f) {
        final ArrayList<org.apache.james.mime4j.field.address.a> list = new ArrayList<org.apache.james.mime4j.field.address.a>();
        final d d = new d(f);
        while (d.hasNext()) {
            final r aaK = d.aaK();
            if (!(aaK instanceof org.apache.james.mime4j.field.address.parser.h)) {
                throw new IllegalStateException();
            }
            final r aaK2 = new d((t)aaK).aaK();
            g g;
            if (aaK2 instanceof a) {
                g = this.a(null, (a)aaK2);
            }
            else if (aaK2 instanceof org.apache.james.mime4j.field.address.parser.d) {
                g = this.a((org.apache.james.mime4j.field.address.parser.d)aaK2);
            }
            else {
                if (!(aaK2 instanceof i)) {
                    throw new IllegalStateException();
                }
                final d d2 = new d((t)aaK2);
                final r aaK3 = d2.aaK();
                if (!(aaK3 instanceof j)) {
                    throw new IllegalStateException();
                }
                final String a = this.a((t)aaK3, false);
                final r aaK4 = d2.aaK();
                if (!(aaK4 instanceof org.apache.james.mime4j.field.address.parser.d)) {
                    throw new IllegalStateException();
                }
                g = new org.apache.james.mime4j.field.address.i(org.apache.james.mime4j.a.c.hV(a), this.a((org.apache.james.mime4j.field.address.parser.d)aaK4));
            }
            list.add(g);
        }
        return new h(list, true);
    }
    
    private void a(final StringBuffer sb, final u u) {
        if (u != null) {
            this.a(sb, u.cGc);
            sb.append(u.cGa);
        }
    }
    
    public static c aaJ() {
        return c.cEs;
    }
    
    public final b a(final org.apache.james.mime4j.field.address.parser.c c) {
        final ArrayList<g> list = new ArrayList<g>();
        for (int i = 0; i < c.abm(); ++i) {
            final d d = new d((t)c.fZ(i));
            final r aaK = d.aaK();
            org.apache.james.mime4j.field.address.a a;
            if (aaK instanceof a) {
                a = this.a(null, (a)aaK);
            }
            else if (aaK instanceof org.apache.james.mime4j.field.address.parser.d) {
                a = this.a((org.apache.james.mime4j.field.address.parser.d)aaK);
            }
            else {
                if (!(aaK instanceof j)) {
                    throw new IllegalStateException();
                }
                final String a2 = this.a((t)aaK, false);
                final r aaK2 = d.aaK();
                if (aaK2 instanceof f) {
                    a = new org.apache.james.mime4j.field.address.f(a2, this.a((f)aaK2));
                }
                else {
                    if (!(aaK2 instanceof org.apache.james.mime4j.field.address.parser.d)) {
                        throw new IllegalStateException();
                    }
                    a = new org.apache.james.mime4j.field.address.i(c.hV(a2), this.a((org.apache.james.mime4j.field.address.parser.d)aaK2));
                }
            }
            list.add((g)a);
        }
        return new b((ArrayList<org.apache.james.mime4j.field.address.a>)list);
    }
}
