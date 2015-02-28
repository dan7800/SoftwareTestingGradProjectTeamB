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

final class bk extends bj
{
    final /* synthetic */ WebViewContextMenu auM;
    
    public bk(final WebViewContextMenu auM, final String s, final String s2) {
        this.auM = auM;
        super(auM, s2);
        final Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", s);
        this.setIntent(Intent.createChooser(intent, auM.pe.getText(WebViewContextMenu.b(WebViewContextMenu$MenuType.auP))));
    }
}
