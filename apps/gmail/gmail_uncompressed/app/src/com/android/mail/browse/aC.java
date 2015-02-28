package com.android.mail.browse;

import com.android.mail.providers.*;
import android.widget.*;
import com.android.mail.*;
import com.android.emailcommon.mail.*;
import android.support.v4.e.*;
import android.app.*;
import android.content.*;
import com.android.mail.ui.*;
import android.view.*;
import java.util.*;
import com.android.mail.utils.*;

public final class ac extends V
{
    public final Conversation amr;
    final /* synthetic */ aa aqW;
    
    private ac(final aa aqW, final Conversation amr) {
        this.aqW = aqW;
        this.amr = amr;
    }
    
    @Override
    public final View c(final LayoutInflater layoutInflater, final ViewGroup viewGroup) {
        final ConversationViewHeader conversationViewHeader = (ConversationViewHeader)layoutInflater.inflate(2130968677, viewGroup, false);
        conversationViewHeader.a(this.aqW.aqM, this.aqW.alu, this.aqW.aqO);
        conversationViewHeader.setSubject(this.amr.ayV);
        if (this.aqW.alu.oN().cy(8192)) {
            conversationViewHeader.e(this.amr);
        }
        conversationViewHeader.aD(this.amr.azc);
        conversationViewHeader.setTag((Object)"overlay_item_root");
        return (View)conversationViewHeader;
    }
    
    @Override
    public final int getType() {
        return 0;
    }
    
    @Override
    public final void i(final View view, final boolean b) {
        ((ConversationViewHeader)view).a(this);
    }
    
    @Override
    public final boolean qn() {
        return true;
    }
    
    @Override
    public final View$OnKeyListener qo() {
        return this.aqW.aqU;
    }
}
