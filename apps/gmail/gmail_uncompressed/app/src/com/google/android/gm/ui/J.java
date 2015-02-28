package com.google.android.gm.ui;

import com.android.mail.utils.*;
import android.content.*;
import android.text.*;
import com.google.android.mail.common.html.parser.*;

public final class j extends y
{
    private int bpT;
    private boolean bpU;
    private String bpV;
    private String bpW;
    private String bpX;
    private String bpY;
    private final Context mContext;
    
    public j(final Context mContext) {
        this.bpT = 0;
        this.bpU = false;
        this.mContext = mContext;
    }
    
    @Override
    protected final void a(final HtmlDocument$Tag htmlDocument$Tag) {
        boolean b = true;
        final HTML$Element wf = htmlDocument$Tag.Wf();
        Label_0081: {
            if (com.google.android.mail.common.html.parser.b.cqy.equals(wf)) {
                final com.google.android.mail.common.html.parser.j a = htmlDocument$Tag.a(com.google.android.mail.common.html.parser.b.csg);
                if (a != null) {
                    final String value = a.getValue();
                    int n = 0;
                    Label_0046: {
                        if (value == null) {
                            n = 0;
                        }
                        else {
                            final String[] split = TextUtils.split(value, " ");
                            for (int length = split.length, i = 0; i < length; ++i) {
                                if ("gmail_drive_chip".equals(split[i])) {
                                    n = (b ? 1 : 0);
                                    break Label_0046;
                                }
                            }
                            n = 0;
                        }
                    }
                    if (n != 0) {
                        this.bpT = (b ? 1 : 0);
                        this.bpU = false;
                        this.bpY = null;
                        this.bpX = null;
                        this.bpW = null;
                        this.bpV = null;
                        break Label_0081;
                    }
                }
                if (this.bpT > 0) {
                    ++this.bpT;
                }
                else {
                    b = false;
                }
            }
            else if (this.bpT > 0 && com.google.android.mail.common.html.parser.b.cpZ.equals(wf)) {
                this.bpW = htmlDocument$Tag.a(com.google.android.mail.common.html.parser.b.csF).getValue();
                final com.google.android.mail.common.html.parser.j a2 = htmlDocument$Tag.a(com.google.android.mail.common.html.parser.b.ctx);
                if (a2 != null) {
                    this.bpV = a2.getValue();
                }
                else {
                    this.bpV = Html.escapeHtml((CharSequence)this.bpW);
                }
            }
            else if (this.bpT > 0 && com.google.android.mail.common.html.parser.b.cqS.equals(wf)) {
                if (this.bpY == null) {
                    final com.google.android.mail.common.html.parser.j a3 = htmlDocument$Tag.a(com.google.android.mail.common.html.parser.b.ctJ);
                    if (a3 != null) {
                        this.bpY = a3.getValue();
                    }
                }
            }
            else if (this.bpT > 0 && com.google.android.mail.common.html.parser.b.crt.equals(wf)) {
                this.bpU = b;
            }
            else {
                b = false;
            }
        }
        if (!b) {
            super.a(htmlDocument$Tag);
        }
    }
    
    @Override
    protected final void a(final g g) {
        final HTML$Element wf = g.Wf();
        int n;
        if (b.cqy.equals(wf)) {
            final int bpT = this.bpT;
            n = 0;
            if (bpT > 0) {
                --this.bpT;
                if (this.bpT == 0) {
                    this.aPx.append((CharSequence)new e(this.mContext, this.bpV, this.bpX, this.bpW, null, this.bpY));
                    n = 1;
                }
                else {
                    n = 1;
                }
            }
        }
        else {
            final int bpT2 = this.bpT;
            n = 0;
            if (bpT2 > 0) {
                final boolean equals = b.crt.equals(wf);
                n = 0;
                if (equals) {
                    this.bpU = false;
                    n = 1;
                }
            }
        }
        if (n == 0) {
            super.a(g);
        }
    }
    
    @Override
    public final void a(final i i, final int n, final int n2) {
        if (this.bpU && i instanceof k) {
            this.bpX = ((k)i).getText();
            return;
        }
        super.a(i, n, n2);
    }
}
