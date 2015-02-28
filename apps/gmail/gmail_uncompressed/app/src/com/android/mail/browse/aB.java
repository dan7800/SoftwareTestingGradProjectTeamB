package com.android.mail.browse;

import android.widget.*;
import com.android.mail.*;
import com.android.emailcommon.mail.*;
import android.support.v4.e.*;
import android.app.*;
import android.content.*;
import com.android.mail.ui.*;
import android.view.*;
import java.util.*;
import com.android.mail.providers.*;
import com.android.mail.utils.*;

public final class ab extends V
{
    private ae aqV;
    final /* synthetic */ aa aqW;
    
    public ab(final aa aqW, final ae aqV) {
        this.aqW = aqW;
        this.aqV = aqV;
    }
    
    @Override
    public final void av(final View agR) {
        ((ConversationFooterView)agR).b(this);
        this.agR = agR;
    }
    
    @Override
    public final View c(final LayoutInflater layoutInflater, final ViewGroup viewGroup) {
        final ConversationFooterView conversationFooterView = (ConversationFooterView)layoutInflater.inflate(2130968652, viewGroup, false);
        conversationFooterView.a(this.aqW.alu);
        conversationFooterView.a(this.aqW.aqN);
        conversationFooterView.setTag((Object)"overlay_item_root");
        this.a(conversationFooterView, conversationFooterView.findViewById(2131558699), conversationFooterView.findViewById(2131558700), conversationFooterView.findViewById(2131558701));
        return (View)conversationFooterView;
    }
    
    public final void c(final ae aqV) {
        this.aqV = aqV;
    }
    
    @Override
    public final int getType() {
        return 1;
    }
    
    @Override
    public final void i(final View agR, final boolean b) {
        ((ConversationFooterView)agR).a(this);
        this.agR = agR;
    }
    
    public final ae qK() {
        return this.aqV;
    }
    
    @Override
    public final boolean qn() {
        return true;
    }
    
    @Override
    public final View$OnKeyListener qo() {
        return this.aqW.aqU;
    }
    
    @Override
    public final View qv() {
        return this.agR.findViewById(2131558699);
    }
}
