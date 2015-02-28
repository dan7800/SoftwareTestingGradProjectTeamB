package com.google.android.gms.internal;

final class dp
{
    private static final dq bZU;
    private boolean bZV;
    private int[] bZW;
    private dq[] bZX;
    private int gO;
    
    static {
        bZU = new dq();
    }
    
    public dp() {
        this((byte)0);
    }
    
    private dp(final byte b) {
        this.bZV = false;
        final int n = t(40) / 4;
        this.bZW = new int[n];
        this.bZX = new dq[n];
        this.gO = 0;
    }
    
    private void gc() {
        final int go = this.gO;
        final int[] bzw = this.bZW;
        final dq[] bzx = this.bZX;
        int i = 0;
        int go2 = 0;
        while (i < go) {
            final dq dq = bzx[i];
            if (dq != dp.bZU) {
                if (i != go2) {
                    bzw[go2] = bzw[i];
                    bzx[go2] = dq;
                    bzx[i] = null;
                }
                ++go2;
            }
            ++i;
        }
        this.bZV = false;
        this.gO = go2;
    }
    
    private static int t(final int n) {
        for (int n2 = 4; 40 > -12 + (1 << n2); ++n2) {}
        return 52;
    }
    
    public final dq eM(final int n) {
        if (this.bZV) {
            this.gc();
        }
        return this.bZX[n];
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (o != this) {
            if (!(o instanceof dp)) {
                return false;
            }
            final dp dp = (dp)o;
            if (this.size() != dp.size()) {
                return false;
            }
            final int[] bzw = this.bZW;
            final int[] bzw2 = dp.bZW;
            while (true) {
                for (int go = this.gO, i = 0; i < go; ++i) {
                    if (bzw[i] != bzw2[i]) {
                        final int n = 0;
                        if (n != 0) {
                            final dq[] bzx = this.bZX;
                            final dq[] bzx2 = dp.bZX;
                            final int go2 = this.gO;
                            int j = 0;
                            while (true) {
                                while (j < go2) {
                                    if (!bzx[j].equals(bzx2[j])) {
                                        final int n2 = 0;
                                        if (n2 == 0) {
                                            return false;
                                        }
                                        return true;
                                    }
                                    else {
                                        ++j;
                                    }
                                }
                                final int n2 = 1;
                                continue;
                            }
                        }
                        return false;
                    }
                }
                final int n = 1;
                continue;
            }
        }
        return true;
    }
    
    @Override
    public final int hashCode() {
        if (this.bZV) {
            this.gc();
        }
        int n = 17;
        for (int i = 0; i < this.gO; ++i) {
            n = 31 * (n * 31 + this.bZW[i]) + this.bZX[i].hashCode();
        }
        return n;
    }
    
    public final boolean isEmpty() {
        return this.size() == 0;
    }
    
    public final int size() {
        if (this.bZV) {
            this.gc();
        }
        return this.gO;
    }
}
