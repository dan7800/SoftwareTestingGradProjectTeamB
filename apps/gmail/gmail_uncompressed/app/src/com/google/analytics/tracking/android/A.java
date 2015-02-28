package com.google.analytics.tracking.android;

final class a
{
    private boolean aRY;
    
    a() {
        try {
            this.aRY = (Class.forName("com.google.ads.AdRequest") != null);
        }
        catch (ClassNotFoundException ex) {
            this.aRY = false;
        }
    }
    
    final int Bv() {
        if (!this.aRY) {
            return 0;
        }
        return AdMobInfo.Bw().Bx();
    }
}
