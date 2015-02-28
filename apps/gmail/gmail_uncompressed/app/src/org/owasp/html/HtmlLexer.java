package org.owasp.html;

import java.util.*;
import com.google.common.collect.*;

final class HtmlLexer extends a
{
    private static final Set<String> cIU;
    private final HtmlInputSplitter cIR;
    private HtmlLexer$State cIS;
    private final LinkedList<R> cIT;
    private final String cIr;
    
    static {
        cIU = ImmutableSet.a("checked", "compact", "declare", "defer", "disabled", "ismap", "multiple", "nohref", "noresize", "noshade", "nowrap", "readonly", "selected");
    }
    
    public HtmlLexer(final String cIr) {
        this.cIS = HtmlLexer$State.cIW;
        this.cIT = new LinkedList<R>();
        this.cIr = cIr;
        this.cIR = new HtmlInputSplitter(cIr);
    }
    
    private R acd() {
        if (!this.cIT.isEmpty()) {
            return this.cIT.remove();
        }
        if (this.cIR.hasNext()) {
            return this.cIR.aby();
        }
        return null;
    }
    
    private R gg(final int n) {
        while (this.cIT.size() <= n && this.cIR.hasNext()) {
            this.cIT.add(this.cIR.aby());
        }
        if (this.cIT.size() > n) {
            return this.cIT.get(n);
        }
        return null;
    }
    
    static String iu(final String s) {
        if (s.indexOf(58) >= 0) {
            return s;
        }
        return W.hL(s);
    }
    
    @Override
    protected final R abz() {
        R r = null;
    Label_0011:
        while (true) {
            r = this.acd();
            if (r == null) {
                r = null;
                break;
            }
            switch (F.cIx[r.cJH.ordinal()]) {
                case 3: {
                    continue;
                }
                default: {
                    switch (F.cIV[this.cIS.ordinal()]) {
                        default: {
                            return r;
                        }
                        case 1: {
                            if (HtmlTokenType.cJR == r.cJH || HtmlTokenType.cJN == r.cJH) {
                                R a = r;
                                while (true) {
                                    final R gg = this.gg(0);
                                    if (gg == null || gg.cJH != r.cJH) {
                                        break;
                                    }
                                    a = R.a(a.start, gg.end, a.cJH);
                                    this.acd();
                                }
                                return a;
                            }
                            break Label_0011;
                        }
                        case 2: {
                            if (HtmlTokenType.cJR == r.cJH && !r.aC(this.cIr, "=")) {
                                final R a2 = HtmlInputSplitter.a(r, HtmlTokenType.cJI);
                                this.cIS = HtmlLexer$State.cIY;
                                return a2;
                            }
                            break Label_0011;
                        }
                        case 3: {
                            if (HtmlTokenType.cJR != r.cJH) {
                                this.cIS = HtmlLexer$State.cIX;
                                return r;
                            }
                            if (r.aC(this.cIr, "=")) {
                                this.cIS = HtmlLexer$State.cIZ;
                                continue;
                            }
                            return HtmlInputSplitter.a(r, HtmlTokenType.cJI);
                        }
                        case 4: {
                            if (HtmlTokenType.cJR == r.cJH || HtmlTokenType.cJO == r.cJH) {
                                if (HtmlTokenType.cJR == r.cJH) {
                                    int n = 0;
                                    while (true) {
                                        final R gg2 = this.gg(n);
                                        if (gg2 == null) {
                                            break;
                                        }
                                        if (gg2.cJH == HtmlTokenType.cJS) {
                                            final R gg3 = this.gg(n + 1);
                                            if (gg3 == null || gg3.cJH != HtmlTokenType.cJR || HtmlLexer.cIU.contains(W.hL(this.cIr.substring(gg3.start, gg3.end)))) {
                                                break;
                                            }
                                            R r2 = this.gg(n + 2);
                                            if (r2 != null && r2.cJH == HtmlTokenType.cJS) {
                                                r2 = this.gg(n + 3);
                                            }
                                            if (r2 == null || r2.aC(this.cIr, "=")) {
                                                break;
                                            }
                                        }
                                        else if (gg2.cJH != HtmlTokenType.cJR) {
                                            break;
                                        }
                                        ++n;
                                    }
                                    if (n != 0) {
                                        final int end = r.end;
                                        int end2;
                                        do {
                                            end2 = this.acd().end;
                                        } while (--n > 0);
                                        r = R.a(r.start, end2, HtmlTokenType.cJR);
                                    }
                                }
                                final R a3 = HtmlInputSplitter.a(r, HtmlTokenType.cJJ);
                                this.cIS = HtmlLexer$State.cIX;
                                return a3;
                            }
                            break Label_0011;
                        }
                    }
                    break;
                }
                case 1: {
                    this.cIS = HtmlLexer$State.cIX;
                    return r;
                }
                case 2: {
                    if (this.cIS == HtmlLexer$State.cIZ && HtmlTokenType.cJQ == r.cJH) {
                        this.cIT.addFirst(r);
                        this.cIS = HtmlLexer$State.cIX;
                        return R.a(r.start, r.start, HtmlTokenType.cJJ);
                    }
                    this.cIS = HtmlLexer$State.cIW;
                    return r;
                }
            }
        }
        return r;
    }
}
