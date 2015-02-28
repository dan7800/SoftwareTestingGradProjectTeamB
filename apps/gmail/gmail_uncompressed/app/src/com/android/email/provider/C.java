package com.android.email.provider;

public final class c
{
    private final String RH;
    private boolean RI;
    
    @Override
    public final boolean equals(final Object o) {
        return o instanceof c && ((c)o).RH.equals(this.RH);
    }
    
    @Override
    public final int hashCode() {
        return this.RH.hashCode();
    }
    
    final void invalidate() {
        this.RI = false;
    }
}
