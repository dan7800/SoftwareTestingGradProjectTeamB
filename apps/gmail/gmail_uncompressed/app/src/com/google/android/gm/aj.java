package com.google.android.gm;

final class aj implements Runnable
{
    final /* synthetic */ ah aYN;
    final /* synthetic */ String[] aYO;
    
    aj(final ah ayn, final String[] ayo) {
        this.aYN = ayn;
        this.aYO = ayo;
    }
    
    @Override
    public final void run() {
        final String[] ayo = this.aYO;
        for (int length = ayo.length, i = 0; i < length; ++i) {
            this.aYN.dB(ayo[i]);
        }
    }
}
