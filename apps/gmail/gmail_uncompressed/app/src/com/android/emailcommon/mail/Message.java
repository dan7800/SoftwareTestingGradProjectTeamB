package com.android.emailcommon.mail;

import java.util.*;

public abstract class Message implements c, j
{
    public static final Message[] Xj;
    protected String Xk;
    private HashSet<Flag> Xl;
    protected Date Xm;
    protected Folder Xn;
    
    static {
        Xj = new Message[0];
    }
    
    public Message() {
        this.Xl = null;
    }
    
    private HashSet<Flag> lp() {
        if (this.Xl == null) {
            this.Xl = new HashSet<Flag>();
        }
        return this.Xl;
    }
    
    @Override
    public final boolean Z(final String s) {
        return this.getContentType().startsWith(s);
    }
    
    public void a(final Flag flag, final boolean b) {
        if (b) {
            this.lp().add(flag);
            return;
        }
        this.lp().remove(flag);
    }
    
    public abstract Address[] a(final Message$RecipientType p0);
    
    public abstract void ab(final String p0);
    
    public final void ap(final String xk) {
        this.Xk = xk;
    }
    
    public final void b(final Date xm) {
        this.Xm = xm;
    }
    
    public final boolean b(final Flag flag) {
        return this.lp().contains(flag);
    }
    
    public abstract String getSubject();
    
    public abstract Date kT();
    
    public abstract Address[] kU();
    
    public abstract Address[] kV();
    
    public abstract String kW();
    
    public final String ln() {
        return this.Xk;
    }
    
    public final Date lo() {
        return this.Xm;
    }
    
    public final Flag[] lq() {
        return this.lp().toArray(new Flag[0]);
    }
    
    @Override
    public String toString() {
        return this.getClass().getSimpleName() + ':' + this.Xk;
    }
}
