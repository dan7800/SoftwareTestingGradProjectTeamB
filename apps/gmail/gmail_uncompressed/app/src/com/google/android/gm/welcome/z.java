package com.google.android.gm.welcome;

import android.annotation.*;
import android.text.*;
import android.app.*;
import android.widget.*;
import com.android.mail.utils.*;
import java.io.*;
import android.media.*;
import com.android.mail.a.*;
import android.content.res.*;
import com.google.android.gsf.*;
import android.os.*;
import java.util.*;
import android.content.*;
import android.net.*;
import android.view.*;

@TargetApi(16)
final class z implements MediaPlayer$OnTimedTextListener
{
    final /* synthetic */ WelcomeVideoActivity btc;
    
    private z(final WelcomeVideoActivity btc) {
        this.btc = btc;
    }
    
    public final void onTimedText(final MediaPlayer mediaPlayer, final TimedText timedText) {
        if (timedText == null || TextUtils.isEmpty((CharSequence)timedText.getText())) {
            this.btc.FO.setVisibility(8);
            return;
        }
        this.btc.FO.setText((CharSequence)Html.fromHtml(timedText.getText()));
        this.btc.FO.setVisibility(0);
    }
}
