package com.google.android.mail.common.html.parser;

public abstract class k extends i
{
    private final String cue;
    
    protected k(final String cue) {
        this.cue = cue;
    }
    
    public final String Wl() {
        return this.cue;
    }
    
    @Override
    public final void a(final m m) {
        m.a(this);
    }
    
    @Override
    public boolean equals(final Object o) {
        if (o != this) {
            if (!(o instanceof k)) {
                return false;
            }
            final k k = (k)o;
            if (this.cue != null) {
                return this.cue.equals(k.cue);
            }
            if (k.cue != null) {
                return false;
            }
        }
        return true;
    }
    
    public abstract String getText();
    
    @Override
    public int hashCode() {
        if (this.cue == null) {
            return 0;
        }
        return this.cue.hashCode();
    }
    
    @Override
    public String toString() {
        return this.getText();
    }
}
