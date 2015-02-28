package com.android.mail.ui;

import android.text.*;
import com.android.emailcommon.mail.*;
import android.database.*;
import android.support.v4.e.*;
import com.google.common.collect.*;
import android.os.*;
import com.android.mail.a.*;
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

class ConversationViewFragment$MailJsBridge
{
    final /* synthetic */ ConversationViewFragment aIi;
    
    private ConversationViewFragment$MailJsBridge(final ConversationViewFragment aIi) {
        this.aIi = aIi;
    }
    
    @JavascriptInterface
    public String getMessageBody(final String s) {
    Label_0027_Outer:
        while (true) {
            while (true) {
                Label_0104: {
                    try {
                        final aC rb = this.aIi.rB();
                        if (!this.aIi.aHS) {
                            break;
                        }
                        if (rb == null) {
                            break;
                        }
                        break Label_0104;
                        Label_0080: {
                            return "";
                        }
                        while (true) {
                            final ConversationMessage ql = rb.qL();
                            final cg ahq = this.aIi.aHQ;
                            return cg.cn(ql.vF());
                            int n = 0;
                            ++n;
                            continue Label_0027_Outer;
                        }
                    }
                    // iftrue(Label_0027:, !TextUtils.equals((CharSequence)s, (CharSequence)cg.a((ch)ql)))
                    // iftrue(Label_0080:, !rb.moveToPosition(n))
                    catch (Throwable t) {
                        E.e(ConversationViewFragment.mW, t, "Error in MailJsBridge.getMessageBody", new Object[0]);
                        return "";
                    }
                    break;
                }
                int n = -1;
                continue;
            }
        }
        return "";
    }
    
    @JavascriptInterface
    public String getMessageSender(final String s) {
    Label_0027_Outer:
        while (true) {
            while (true) {
                Label_0120: {
                    try {
                        final aC rb = this.aIi.rB();
                        if (!this.aIi.aHS) {
                            break;
                        }
                        if (rb == null) {
                            break;
                        }
                        break Label_0120;
                        // iftrue(Label_0027:, !TextUtils.equals((CharSequence)s, (CharSequence)cg.a((ch)ql)))
                        // iftrue(Label_0096:, cl == null)
                        // iftrue(Label_0096:, !rb.moveToPosition(n))
                        while (true) {
                            final ConversationMessage ql = rb.qL();
                            final cg ahq = this.aIi.aHQ;
                            final Address cl = this.aIi.cl(ql.vq());
                            return cl.getAddress();
                            int n = 0;
                            ++n;
                            continue Label_0027_Outer;
                        }
                        Label_0096: {
                            return "";
                        }
                    }
                    catch (Throwable t) {
                        E.e(ConversationViewFragment.mW, t, "Error in MailJsBridge.getMessageSender", new Object[0]);
                        return "";
                    }
                    break;
                }
                int n = -1;
                continue;
            }
        }
        return "";
    }
    
    @JavascriptInterface
    public float getScrollYPercent() {
        try {
            return this.aIi.aIa;
        }
        catch (Throwable t) {
            E.e(ConversationViewFragment.mW, t, "Error in MailJsBridge.getScrollYPercent", new Object[0]);
            return 0.0f;
        }
    }
    
    @JavascriptInterface
    public String getTempMessageBodies() {
        try {
            if (!this.aIi.aHS) {
                return "";
            }
            final String j = this.aIi.aHU;
            this.aIi.aHU = null;
            return j;
        }
        catch (Throwable t) {
            E.e(ConversationViewFragment.mW, t, "Error in MailJsBridge.getTempMessageBodies", new Object[0]);
            return "";
        }
    }
    
    @JavascriptInterface
    public void onContentReady() {
        try {
            this.aIi.getHandler().post((Runnable)new aZ(this, "onContentReady", this.aIi));
        }
        catch (Throwable t) {
            E.e(ConversationViewFragment.mW, t, "Error in MailJsBridge.onContentReady", new Object[0]);
        }
    }
    
    @JavascriptInterface
    public void onInlineAttachmentsParsed(final String[] array, final String[] array2) {
        try {
            this.aIi.getHandler().post((Runnable)new ba(this, "onInlineAttachmentsParsed", this.aIi, array, array2));
        }
        catch (Throwable t) {
            E.e(ConversationViewFragment.mW, t, "Error in MailJsBridge.onInlineAttachmentsParsed", new Object[0]);
        }
    }
    
    @JavascriptInterface
    public void onMessageTransform(final String s, final String s2) {
        try {
            E.d(ConversationViewFragment.mW, "TRANSFORM: (%s) %s", s, s2);
            this.aIi.aId.put(s, s2);
            this.aIi.wX();
        }
        catch (Throwable t) {
            E.e(ConversationViewFragment.mW, t, "Error in MailJsBridge.onMessageTransform", new Object[0]);
        }
    }
    
    @JavascriptInterface
    public void onWebContentGeometryChange(final int[] array, final int[] array2) {
        try {
            this.aIi.getHandler().post((Runnable)new aY(this, "onWebContentGeometryChange", this.aIi, array, array2));
        }
        catch (Throwable t) {
            E.e(ConversationViewFragment.mW, t, "Error in MailJsBridge.onWebContentGeometryChange", new Object[0]);
        }
    }
}
