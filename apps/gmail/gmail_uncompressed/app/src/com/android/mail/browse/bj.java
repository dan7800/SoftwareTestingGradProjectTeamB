package com.android.mail.browse;

import android.app.*;
import android.net.*;
import android.content.pm.*;
import android.content.*;
import android.view.*;
import com.android.mail.a.*;
import java.nio.charset.*;
import java.io.*;
import java.net.*;
import android.webkit.*;

class bj extends bg
{
    final /* synthetic */ WebViewContextMenu auM;
    private Intent mIntent;
    
    public bj(final WebViewContextMenu auM, final Intent mIntent, final String s) {
        this.auM = auM;
        super(auM, s);
        this.mIntent = mIntent;
    }
    
    public bj(final WebViewContextMenu auM, final String s) {
        this.auM = auM;
        super(auM, s);
    }
    
    @Override
    public final boolean sb() {
        try {
            this.auM.pe.startActivity(this.mIntent);
            return true;
        }
        catch (ActivityNotFoundException ex) {
            return true;
        }
    }
    
    final void setIntent(final Intent mIntent) {
        this.mIntent = mIntent;
    }
}
