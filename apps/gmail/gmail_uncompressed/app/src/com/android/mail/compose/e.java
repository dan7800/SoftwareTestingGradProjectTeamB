package com.android.mail.compose;

import android.os.*;

public class e extends g
{
    private boolean avg;
    
    public e() {
        this.avg = false;
    }
    
    @Override
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        if (!(this.avg = this.getIntent().getBooleanExtra("dontSendOrSave", false))) {
            this.c(false, true, true);
        }
    }
    
    @Override
    protected final boolean sj() {
        return false;
    }
    
    @Override
    protected final boolean sk() {
        return false;
    }
}
