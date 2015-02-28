package com.google.android.mail.common.html.parser;

import com.google.android.mail.common.base.*;
import java.util.logging.*;
import java.util.*;

final class w
{
    private int cvn;
    final /* synthetic */ v cvo;
    private int state;
    
    w(final v cvo) {
        this.cvo = cvo;
        this.cvn = 0;
    }
    
    private void Wy() {
        if (this.state != 1) {
            this.cvo.a(b.crB);
            this.cvo.cvl.c(HtmlDocument.a(b.crB, null, null, null));
            this.state = 1;
        }
    }
    
    final void c(final k k) {
        if (this.cvn > 0 && this.state == 0) {
            final String text = k.getText();
            final int length = text.length();
            int i = 0;
            while (true) {
                while (i < length) {
                    final boolean whitespace = Character.isWhitespace(text.charAt(i));
                    final int n = 0;
                    if (!whitespace) {
                        if (n == 0) {
                            this.Wy();
                        }
                        return;
                    }
                    else {
                        ++i;
                    }
                }
                final int n = 1;
                continue;
            }
        }
    }
    
    final void d(final g g) {
        boolean state = true;
        final HTML$Element wf = g.Wf();
        if (this.cvn > 0 && wf.getType() == (state ? 1 : 0)) {
            Label_0054: {
                if (!b.crB.equals(wf) && !b.crH.equals(wf) && !b.crE.equals(wf) && !b.cqo.equals(wf)) {
                    if (!b.crz.equals(wf)) {
                        return;
                    }
                    M.assertTrue(this.cvn > 0 && state);
                    --this.cvn;
                    if (this.cvn > 0) {
                        break Label_0054;
                    }
                }
                state = false;
            }
            this.state = (state ? 1 : 0);
        }
    }
    
    final void e(final HtmlDocument$Tag htmlDocument$Tag) {
        final HTML$Element wf = htmlDocument$Tag.Wf();
        if (wf.getType() == 1) {
            if (b.crz.equals(wf)) {
                if (this.cvn > 0) {
                    this.Wy();
                }
                ++this.cvn;
                this.state = 0;
            }
            else {
                if (this.cvn == 0) {
                    this.cvo.a(b.crz);
                    this.cvo.cvl.c(HtmlDocument.a(b.crz, null, null, null));
                    ++this.cvn;
                }
                if (b.crB.equals(wf) || b.crE.equals(wf)) {
                    this.state = 1;
                    return;
                }
                if (b.cqo.equals(wf)) {
                    this.state = 2;
                }
            }
        }
        else if (this.cvn > 0 && !b.cqE.equals(wf)) {
            this.Wy();
        }
    }
    
    final void finish() {
        boolean b = true;
        M.assertTrue(this.cvn == 0 && b);
        if (this.state != 0) {
            b = false;
        }
        M.assertTrue(b);
    }
}
