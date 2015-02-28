package com.google.android.gms.internal;

import android.app.*;
import android.content.*;

public final class w extends MutableContextWrapper
{
    private Activity bSZ;
    private Context bxq;
    
    public final void setBaseContext(final Context context) {
        this.bxq = context.getApplicationContext();
        Activity bsz;
        if (context instanceof Activity) {
            bsz = (Activity)context;
        }
        else {
            bsz = null;
        }
        this.bSZ = bsz;
        super.setBaseContext(this.bxq);
    }
    
    public final void startActivity(final Intent intent) {
        if (this.bSZ != null) {
            this.bSZ.startActivity(intent);
            return;
        }
        intent.setFlags(268435456);
        this.bxq.startActivity(intent);
    }
}
