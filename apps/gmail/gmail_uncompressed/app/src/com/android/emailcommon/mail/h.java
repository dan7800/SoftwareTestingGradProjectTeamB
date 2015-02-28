package com.android.emailcommon.mail;

import java.util.*;

public abstract class h implements c
{
    protected String Lp;
    protected j Xs;
    protected ArrayList<d> Xt;
    
    public h() {
        this.Xt = new ArrayList<d>();
    }
    
    public final void a(final d d) {
        this.Xt.add(d);
    }
    
    public final d bg(final int n) {
        return this.Xt.get(n);
    }
    
    public final void c(final j xs) {
        this.Xs = xs;
    }
    
    public String getContentType() {
        return this.Lp;
    }
    
    public final int getCount() {
        return this.Xt.size();
    }
}
