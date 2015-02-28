package com.google.android.gm.provider;

final class n
{
    final long bde;
    final long bdf;
    final int bdg;
    final int bdh;
    
    n(final long bde, final long bdf, final int bdg, final int bdh) {
        this.bde = bde;
        this.bdf = bdf;
        this.bdg = bdg;
        this.bdh = bdh;
    }
    
    @Override
    public final String toString() {
        return String.format("id: %d, status: %d, size: %d", this.bde, this.bdg, this.bdf);
    }
}
