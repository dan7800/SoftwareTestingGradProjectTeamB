package com.google.android.mail.common.html.parser;

import java.util.logging.*;
import java.util.*;
import com.google.android.mail.common.base.*;

public class v implements m
{
    private static final Logger cuU;
    private final List<HTML$Element> cvj;
    private final w cvk;
    private HtmlTree cvl;
    private boolean cvm;
    
    static {
        cuU = Logger.getLogger(v.class.getName());
    }
    
    public v() {
        this.cvj = new ArrayList<HTML$Element>();
        this.cvk = new w(this);
        this.cvm = false;
    }
    
    private void Ww() {
        final g a = HtmlDocument.a(this.Wx(), null);
        this.cvk.d(a);
        this.cvl.c(a);
    }
    
    private HTML$Element Wx() {
        return this.cvj.remove(-1 + this.cvj.size());
    }
    
    private void a(final HTML$Element html$Element) {
        this.cvj.add(html$Element);
    }
    
    public final HtmlTree Wv() {
        M.assertTrue(this.cvm);
        return this.cvl;
    }
    
    @Override
    public final void a(final e e) {
    }
    
    @Override
    public final void a(final k k) {
        this.cvk.c(k);
        this.cvl.b(k);
    }
    
    @Override
    public final void b(final HtmlDocument$Tag htmlDocument$Tag) {
        this.cvk.e(htmlDocument$Tag);
        final HTML$Element wf = htmlDocument$Tag.Wf();
        if (wf.isEmpty()) {
            this.cvl.d(htmlDocument$Tag);
            return;
        }
        if (htmlDocument$Tag.Wh()) {
            this.cvl.c(HtmlDocument.a(wf, htmlDocument$Tag.Wg(), htmlDocument$Tag.Wi(), htmlDocument$Tag.Wj()));
            final g a = HtmlDocument.a(wf, null);
            this.cvk.d(a);
            this.cvl.c(a);
            return;
        }
        this.cvl.c(htmlDocument$Tag);
        this.a(wf);
    }
    
    @Override
    public final void b(final g g) {
        final HTML$Element wf = g.Wf();
        int i = -1 + this.cvj.size();
        while (true) {
            while (i >= 0) {
                if (this.cvj.get(i) == wf) {
                    final int j = i;
                    if (j >= 0) {
                        while (j < -1 + this.cvj.size()) {
                            this.Ww();
                        }
                        this.Wx();
                        this.cvk.d(g);
                        this.cvl.c(g);
                        return;
                    }
                    v.cuU.finest("Ignoring end tag: " + wf.getName());
                    return;
                }
                else {
                    --i;
                }
            }
            final int j = -1;
            continue;
        }
    }
    
    @Override
    public final void finish() {
        while (this.cvj.size() > 0) {
            this.Ww();
        }
        this.cvk.finish();
        this.cvl.finish();
        this.cvm = true;
    }
    
    @Override
    public final void start() {
        (this.cvl = new HtmlTree()).start();
    }
}
