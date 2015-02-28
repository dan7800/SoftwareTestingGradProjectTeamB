package com.google.android.mail.common.html.parser;

import java.util.*;
import com.google.common.collect.*;

public class u implements s<String>
{
    private static final Set<HTML$Element> cuX;
    private final HtmlTree$PlainTextPrinter cuY;
    private int cuZ;
    private int cva;
    
    static {
        cuX = ImmutableSet.b(b.crk, b.cqk, b.crm);
    }
    
    public u() {
        this.cuY = new HtmlTree$PlainTextPrinter();
        this.cuZ = 0;
        this.cva = 0;
    }
    
    @Override
    public final int AS() {
        return this.cuY.Wp();
    }
    
    public final String Wo() {
        return this.cuY.getText();
    }
    
    @Override
    public void a(final i i, final int n, final int n2) {
        if (i instanceof k) {
            final String text = ((k)i).getText();
            if (this.cuZ > 0) {
                this.cuY.gQ(text);
            }
            else if (this.cva <= 0) {
                this.cuY.gP(text);
            }
        }
        else if (i instanceof HtmlDocument$Tag) {
            final HTML$Element wf = ((HtmlDocument$Tag)i).Wf();
            if (u.cuX.contains(wf)) {
                this.cuY.a(HtmlTree$PlainTextPrinter$Separator.cvh);
            }
            else if (b.cqm.equals(wf)) {
                this.cuY.Ws();
            }
            else if (wf.Wc()) {
                this.cuY.a(HtmlTree$PlainTextPrinter$Separator.cvg);
                if (b.cqO.equals(wf)) {
                    this.cuY.gP("________________________________");
                    this.cuY.a(HtmlTree$PlainTextPrinter$Separator.cvg);
                }
            }
            if (b.cqk.equals(wf)) {
                this.cuY.Wq();
                return;
            }
            if (b.crm.equals(wf)) {
                ++this.cuZ;
                return;
            }
            if (b.crw.equals(wf)) {
                ++this.cva;
            }
        }
        else if (i instanceof g) {
            final HTML$Element wf2 = ((g)i).Wf();
            if (u.cuX.contains(wf2)) {
                this.cuY.a(HtmlTree$PlainTextPrinter$Separator.cvh);
            }
            else if (wf2.Wc()) {
                this.cuY.a(HtmlTree$PlainTextPrinter$Separator.cvg);
            }
            if (b.cqk.equals(wf2)) {
                this.cuY.Wr();
                return;
            }
            if (b.crm.equals(wf2)) {
                --this.cuZ;
                return;
            }
            if (b.crw.equals(wf2)) {
                --this.cva;
            }
        }
    }
}
