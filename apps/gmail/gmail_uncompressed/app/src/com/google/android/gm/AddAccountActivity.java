package com.google.android.gm;

import android.os.*;
import android.content.*;
import android.app.*;

public class AddAccountActivity extends y
{
    private boolean aWN;
    
    public AddAccountActivity() {
        this.aWN = false;
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
    }
    
    public void onResume() {
        super.onResume();
        if (!this.aWN) {
            new a((Context)this).a(new k(this, this));
        }
    }
}
