package com.android.mail.ui;

import android.database.*;
import android.support.v4.e.*;
import com.google.common.collect.*;
import android.os.*;
import com.android.mail.a.*;
import android.text.*;
import com.android.emailcommon.mail.*;
import com.android.mail.providers.*;
import java.util.*;
import com.android.mail.*;
import android.graphics.*;
import android.content.*;
import android.content.res.*;
import com.android.mail.browse.*;
import android.webkit.*;
import android.view.*;
import com.android.mail.utils.*;
import com.android.mail.compose.*;
import android.app.*;

final class ba extends ca
{
    final /* synthetic */ ConversationViewFragment$MailJsBridge aIm;
    final /* synthetic */ String[] aIn;
    final /* synthetic */ String[] aIo;
    
    ba(final ConversationViewFragment$MailJsBridge aIm, final String s, final Fragment fragment, final String[] aIn, final String[] aIo) {
        this.aIm = aIm;
        this.aIn = aIn;
        this.aIo = aIo;
        super(s, fragment);
    }
    
    @Override
    public final void xe() {
        try {
            for (int length = this.aIn.length, i = 0; i < length; ++i) {
                this.aIm.aIi.aIh.put(this.aIn[i], this.aIo[i]);
            }
        }
        catch (ArrayIndexOutOfBoundsException ex) {
            E.e(ConversationViewFragment.mW, ex, "Number of urls does not match number of message ids - %s:%s", this.aIn.length, this.aIo.length);
        }
    }
}
