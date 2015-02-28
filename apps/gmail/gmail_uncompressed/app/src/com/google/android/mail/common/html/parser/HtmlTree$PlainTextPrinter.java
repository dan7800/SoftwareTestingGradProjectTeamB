package com.google.android.mail.common.html.parser;

import com.google.android.mail.common.base.*;
import java.io.*;

final class HtmlTree$PlainTextPrinter
{
    private final StringBuilder ajV;
    private int cvb;
    private int cvc;
    private HtmlTree$PlainTextPrinter$Separator cvd;
    
    HtmlTree$PlainTextPrinter() {
        this.ajV = new StringBuilder();
        this.cvb = 0;
        this.cvc = 2;
        this.cvd = HtmlTree$PlainTextPrinter$Separator.cve;
    }
    
    private void Wt() {
        switch (r.cuW[this.cvd.ordinal()]) {
            case 1: {
                if (this.cvc == 0) {
                    this.ajV.append(" ");
                    break;
                }
                break;
            }
            case 2: {
                while (this.cvc <= 0) {
                    this.Wu();
                }
                break;
            }
            case 3: {
                while (this.cvc < 2) {
                    this.Wu();
                }
                break;
            }
        }
        this.cvd = HtmlTree$PlainTextPrinter$Separator.cve;
    }
    
    private void Wu() {
        this.cl(false);
        this.ajV.append('\n');
        ++this.cvc;
    }
    
    private void cl(final boolean b) {
        if (this.cvc > 0 && this.cvb > 0) {
            for (int i = 0; i < this.cvb; ++i) {
                this.ajV.append('>');
            }
            if (b) {
                this.ajV.append(' ');
            }
        }
    }
    
    private void gR(final String s) {
        if (s.length() == 0) {
            return;
        }
        G.c(s.indexOf(10) < 0, "text must not contain newlines.");
        this.Wt();
        this.cl(true);
        this.ajV.append(s);
        this.cvc = 0;
    }
    
    private static boolean k(final char c) {
        return " \n\r\t\f".indexOf(c) >= 0;
    }
    
    final int Wp() {
        return this.ajV.length();
    }
    
    final void Wq() {
        ++this.cvb;
    }
    
    final void Wr() {
        this.cvb = Math.max(0, -1 + this.cvb);
    }
    
    final void Ws() {
        this.Wt();
        this.Wu();
    }
    
    final void a(final HtmlTree$PlainTextPrinter$Separator cvd) {
        if (cvd.ordinal() > this.cvd.ordinal()) {
            this.cvd = cvd;
        }
    }
    
    final void gP(final String s) {
        if (s.length() != 0) {
            final boolean k = k(s.charAt(0));
            final boolean i = k(s.charAt(-1 + s.length()));
            final String b = j.x(" \n\r\t\f").B(j.x(" \n\r\t\f").A(s));
            if (k) {
                this.a(HtmlTree$PlainTextPrinter$Separator.cvf);
            }
            this.gR(b);
            if (i) {
                this.a(HtmlTree$PlainTextPrinter$Separator.cvf);
            }
        }
    }
    
    final void gQ(final String s) {
        final String[] split = s.split("[\\r\\n]", -1);
        this.gR(split[0]);
        for (int i = 1; i < split.length; ++i) {
            this.Wu();
            this.gR(split[i]);
        }
    }
    
    final String getText() {
        return this.ajV.toString();
    }
}
