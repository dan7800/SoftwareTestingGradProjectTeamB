package com.android.mail.browse;

import com.android.emailcommon.mail.*;
import android.widget.*;
import com.android.mail.*;
import android.support.v4.e.*;
import android.app.*;
import android.content.*;
import com.android.mail.ui.*;
import android.view.*;
import java.util.*;
import com.android.mail.providers.*;
import com.android.mail.utils.*;

public final class ae extends V
{
    private final e aqH;
    private final aa aqX;
    private ConversationMessage aqZ;
    private boolean ara;
    public boolean arb;
    private boolean arc;
    private CharSequence ard;
    private CharSequence are;
    private CharSequence arf;
    private long arg;
    public CharSequence arh;
    
    ae(final aa aqX, final e aqH, final ConversationMessage aqZ, final boolean ara, final boolean arc) {
        this.aqX = aqX;
        this.aqH = aqH;
        this.aqZ = aqZ;
        this.ara = ara;
        this.arc = arc;
        this.arb = false;
    }
    
    private void qR() {
        if (this.aqZ.aBf != this.arg) {
            this.arg = this.aqZ.aBf;
            this.ard = this.aqH.I(this.arg);
            this.are = this.aqH.J(this.arg);
            this.arf = this.aqH.K(this.arg);
        }
    }
    
    @Override
    public final boolean a(final ConversationMessage conversationMessage) {
        return com.google.common.base.e.b(this.aqZ, conversationMessage);
    }
    
    public final void aC(final boolean ara) {
        if (this.ara != ara) {
            this.ara = ara;
        }
    }
    
    @Override
    public final void au(final View view) {
        ((MessageHeaderView)view).refresh();
    }
    
    @Override
    public final void av(final View agR) {
        ((MessageHeaderView)agR).d(this);
        this.agR = agR;
    }
    
    @Override
    public final void b(final ConversationMessage aqZ) {
        this.aqZ = aqZ;
        this.arh = null;
    }
    
    @Override
    public final View c(final LayoutInflater layoutInflater, final ViewGroup viewGroup) {
        final MessageHeaderView messageHeaderView = (MessageHeaderView)layoutInflater.inflate(2130968663, viewGroup, false);
        messageHeaderView.a(this.aqX.alu, this.aqX.aqQ);
        messageHeaderView.a(this.aqX.aqJ);
        messageHeaderView.a(this.aqX.aqL);
        messageHeaderView.a(this.aqX.aqS);
        messageHeaderView.setTag((Object)"overlay_item_root");
        this.a(messageHeaderView, messageHeaderView.findViewById(2131558735), messageHeaderView.findViewById(2131558769), messageHeaderView.findViewById(2131558760), messageHeaderView.findViewById(2131558761), messageHeaderView.findViewById(2131558762), messageHeaderView.findViewById(2131558727), messageHeaderView.findViewById(2131558768));
        return (View)messageHeaderView;
    }
    
    @Override
    public final int getType() {
        return 2;
    }
    
    @Override
    public final void i(final View agR, final boolean b) {
        ((MessageHeaderView)agR).a(this, b);
        this.agR = agR;
    }
    
    public final ConversationMessage qL() {
        return this.aqZ;
    }
    
    public final boolean qM() {
        return this.arc;
    }
    
    public final void qN() {
        this.arc = true;
    }
    
    public final CharSequence qO() {
        this.qR();
        return this.ard;
    }
    
    public final CharSequence qP() {
        this.qR();
        return this.are;
    }
    
    public final CharSequence qQ() {
        this.qR();
        return this.arf;
    }
    
    public final aa qS() {
        return this.aqX;
    }
    
    @Override
    public final boolean qn() {
        return !this.ara;
    }
    
    @Override
    public final View$OnKeyListener qo() {
        return this.aqX.qo();
    }
    
    @Override
    public final boolean qp() {
        return this.ara;
    }
    
    @Override
    public final boolean qt() {
        return this.ara;
    }
    
    @Override
    public final boolean qu() {
        return true;
    }
    
    @Override
    public final View qv() {
        return this.agR.findViewById(2131558735);
    }
}
