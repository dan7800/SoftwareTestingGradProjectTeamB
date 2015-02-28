package com.android.email.mail.store.imap;

public abstract class b
{
    public static final b QY;
    private boolean bQ;
    
    static {
        QY = new c();
    }
    
    public b() {
        this.bQ = false;
    }
    
    public void destroy() {
        this.bQ = true;
    }
    
    protected final boolean isDestroyed() {
        return this.bQ;
    }
    
    public abstract boolean js();
    
    public abstract boolean jt();
    
    protected final void ju() {
        if (this.bQ) {
            throw new RuntimeException("Already destroyed");
        }
    }
}
