package com.google.android.gms.common.internal;

import android.support.v4.app.*;
import android.app.*;
import android.util.*;
import android.content.*;

public final class e implements DialogInterface$OnClickListener
{
    private final Fragment bEM;
    private final int bEN;
    private final Intent mIntent;
    private final Activity pe;
    
    public e(final Activity pe, final Intent mIntent, final int ben) {
        this.pe = pe;
        this.bEM = null;
        this.mIntent = mIntent;
        this.bEN = ben;
    }
    
    public e(final Fragment bem, final Intent mIntent, final int ben) {
        this.pe = null;
        this.bEM = bem;
        this.mIntent = mIntent;
        this.bEN = ben;
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        try {
            if (this.mIntent != null && this.bEM != null) {
                this.bEM.startActivityForResult(this.mIntent, this.bEN);
            }
            else if (this.mIntent != null) {
                this.pe.startActivityForResult(this.mIntent, this.bEN);
            }
            dialogInterface.dismiss();
        }
        catch (ActivityNotFoundException ex) {
            Log.e("SettingsRedirect", "Can't redirect to app settings for Google Play services");
        }
    }
}
