package com.android.ex.photo.views;

import android.widget.*;

public final class e
{
    private final ProgressBar ajL;
    private final ProgressBar ajM;
    private boolean ajN;
    
    public e(final ProgressBar ajL, final ProgressBar ajM) {
        this.ajL = ajL;
        this.ajM = ajM;
        this.setIndeterminate(true);
    }
    
    private void ao(final boolean b) {
        int visibility = 8;
        final ProgressBar ajM = this.ajM;
        int visibility2;
        if (b) {
            visibility2 = 0;
        }
        else {
            visibility2 = visibility;
        }
        ajM.setVisibility(visibility2);
        final ProgressBar ajL = this.ajL;
        if (!b) {
            visibility = 0;
        }
        ajL.setVisibility(visibility);
    }
    
    public final void setIndeterminate(final boolean ajN) {
        this.ao(this.ajN = ajN);
    }
    
    public final void setMax(final int max) {
        this.ajL.setMax(max);
    }
    
    public final void setProgress(final int progress) {
        this.ajL.setProgress(progress);
    }
    
    public final void setVisibility(final int n) {
        if (n == 4 || n == 8) {
            this.ajM.setVisibility(n);
            this.ajL.setVisibility(n);
            return;
        }
        this.ao(this.ajN);
    }
}
