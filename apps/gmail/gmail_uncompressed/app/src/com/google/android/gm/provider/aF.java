package com.google.android.gm.provider;

public final class af
{
    public String bhU;
    public long id;
    
    public af(final long id, final String bhU) {
        this.id = id;
        this.bhU = bhU;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (o instanceof af) {
            final af af = (af)o;
            if (this.id == af.id && this.bhU.equals(af.bhU)) {
                return true;
            }
        }
        return false;
    }
    
    @Override
    public final int hashCode() {
        return (int)this.id;
    }
    
    @Override
    public final String toString() {
        return this.id + "/" + this.bhU;
    }
}
