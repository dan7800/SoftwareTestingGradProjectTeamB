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

public final class ad extends V
{
    private final aa aqX;
    private final ae aqY;
    
    private ad(final aa aqX, final ae aqY) {
        this.aqX = aqX;
        this.aqY = aqY;
    }
    
    @Override
    public final View c(final LayoutInflater layoutInflater, final ViewGroup viewGroup) {
        final MessageFooterView messageFooterView = (MessageFooterView)layoutInflater.inflate(2130968662, viewGroup, false);
        messageFooterView.a(this.aqX.aqI, this.aqX.c, this.aqX.alu, this.aqX.aqK);
        messageFooterView.setTag((Object)"overlay_item_root");
        this.a(messageFooterView, messageFooterView.findViewById(2131558733));
        return (View)messageFooterView;
    }
    
    @Override
    public final int getGravity() {
        return 48;
    }
    
    @Override
    public final int getHeight() {
        if (!this.aqY.qp()) {
            return 0;
        }
        return super.getHeight();
    }
    
    @Override
    public final int getType() {
        return 3;
    }
    
    @Override
    public final void i(final View agR, final boolean b) {
        ((MessageFooterView)agR).a(this.aqY, b);
        this.agR = agR;
    }
    
    @Override
    public final boolean qn() {
        return true;
    }
    
    @Override
    public final View$OnKeyListener qo() {
        return this.aqX.qo();
    }
    
    @Override
    public final boolean qp() {
        return this.aqY.qp();
    }
}
