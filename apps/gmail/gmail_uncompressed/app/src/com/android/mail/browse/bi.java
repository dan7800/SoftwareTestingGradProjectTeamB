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

final class bi extends bg
{
    final /* synthetic */ WebViewContextMenu auM;
    private final CharSequence vi;
    
    public bi(final WebViewContextMenu auM, final CharSequence vi, final String s) {
        this.auM = auM;
        super(auM, s);
        this.vi = vi;
    }
    
    @Override
    public final boolean sb() {
        ((ClipboardManager)this.auM.pe.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText((CharSequence)null, this.vi));
        return true;
    }
}
