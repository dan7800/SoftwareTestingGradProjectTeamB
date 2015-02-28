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

final class aS extends ca
{
    final /* synthetic */ ConversationViewFragment aIi;
    
    aS(final ConversationViewFragment aIi, final String s, final Fragment fragment) {
        this.aIi = aIi;
        super(s, fragment);
    }
    
    @Override
    public final void xe() {
        E.c(ConversationViewFragment.mW, "onProgressDismiss go() - isUserVisible() = %b", this.aIi.isUserVisible());
        if (this.aIi.isUserVisible()) {
            this.aIi.qE();
        }
        this.aIi.alx.qW();
    }
}
