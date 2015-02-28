package com.android.mail.utils;

import android.text.*;
import java.util.*;
import android.graphics.*;
import android.text.style.*;
import com.google.android.mail.common.html.parser.*;

public class y implements s<Spanned>
{
    private int aPA;
    protected final SpannableStringBuilder aPx;
    private final LinkedList<z> aPy;
    private final u aPz;
    
    public y() {
        this.aPx = new SpannableStringBuilder();
        this.aPy = new LinkedList<z>();
        this.aPz = new u();
        this.aPA = 0;
    }
    
    private void a(final z z) {
        final int apc = z.aPC;
        final int length = this.aPx.length();
        final j a = z.aPB.a(b.csm);
        if (a != null) {
            final int color = Color.parseColor(a.getValue());
            if (color != -1) {
                this.aPx.setSpan((Object)new ForegroundColorSpan(color | 0xFF000000), apc, length, 33);
            }
        }
        final j a2 = z.aPB.a(b.ctH);
        if (a2 != null) {
            final int int1 = Integer.parseInt(a2.getValue());
            if (int1 != -1) {
                this.aPx.setSpan((Object)new AbsoluteSizeSpan(int1 * 6, true), apc, length, 33);
            }
        }
        final j a3 = z.aPB.a(b.csz);
        if (a3 != null) {
            final String[] split = a3.getValue().split(",");
            for (int length2 = split.length, i = 0; i < length2; ++i) {
                this.aPx.setSpan((Object)new TypefaceSpan(split[i].trim()), apc, length, 33);
            }
        }
    }
    
    @Override
    public final int AS() {
        return this.aPx.length();
    }
    
    protected void a(final HtmlDocument$Tag htmlDocument$Tag) {
        if (!htmlDocument$Tag.Wh()) {
            this.aPy.push(new z(htmlDocument$Tag, this.aPx.length()));
        }
    }
    
    protected void a(final g g) {
        final HTML$Element wf = g.Wf();
        z z;
        do {
            z = this.aPy.poll();
        } while (z != null && z.aPB.Wf() != null && !z.aPB.Wf().equals(wf));
        if (z != null) {
            Object o;
            if (b.cqf.equals(wf)) {
                o = new StyleSpan(1);
            }
            else if (b.cqQ.equals(wf)) {
                o = new StyleSpan(2);
            }
            else if (b.crJ.equals(wf)) {
                o = new UnderlineSpan();
            }
            else if (b.cpZ.equals(wf)) {
                final j a = z.aPB.a(b.csF);
                if (a == null) {
                    return;
                }
                o = new URLSpan(a.getValue());
            }
            else if (b.cqk.equals(wf)) {
                o = new QuoteSpan();
            }
            else {
                final boolean equals = b.cqD.equals(wf);
                o = null;
                if (equals) {
                    this.a(z);
                    o = null;
                }
            }
            final int apc = z.aPC;
            final int length = this.aPx.length();
            if (o != null && apc != length) {
                this.aPx.setSpan(o, apc, length, 33);
            }
        }
    }
    
    @Override
    public void a(final i i, final int n, final int n2) {
        this.aPz.a(i, n, n2);
        if (i instanceof HtmlDocument$Tag) {
            this.a((HtmlDocument$Tag)i);
        }
        else if (i instanceof g) {
            this.a((g)i);
        }
        final String wo = this.aPz.Wo();
        if (wo.length() > this.aPA) {
            this.aPx.append((CharSequence)wo.substring(this.aPA));
            this.aPA = wo.length();
        }
    }
}
