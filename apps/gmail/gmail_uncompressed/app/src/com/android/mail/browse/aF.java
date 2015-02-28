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

public final class af extends V
{
    private final int As;
    final /* synthetic */ aa aqW;
    private final boolean ari;
    private final int hb;
    
    private af(final aa aqW, final int as, final int hb, final boolean ari) {
        this.aqW = aqW;
        this.As = as;
        this.hb = hb;
        this.ari = ari;
    }
    
    @Override
    public final View c(final LayoutInflater layoutInflater, final ViewGroup viewGroup) {
        final SuperCollapsedBlock superCollapsedBlock = (SuperCollapsedBlock)layoutInflater.inflate(2130968758, viewGroup, false);
        superCollapsedBlock.a(this.aqW.aqP);
        superCollapsedBlock.setOnKeyListener(this.aqW.aqU);
        superCollapsedBlock.setTag((Object)"overlay_item_root");
        this.a(superCollapsedBlock);
        return (View)superCollapsedBlock;
    }
    
    public final int getEnd() {
        return this.hb;
    }
    
    public final int getStart() {
        return this.As;
    }
    
    @Override
    public final int getType() {
        return 4;
    }
    
    @Override
    public final void i(final View agR, final boolean b) {
        ((SuperCollapsedBlock)agR).a(this);
        this.agR = agR;
    }
    
    public final boolean qT() {
        return this.ari;
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
    public final boolean qp() {
        return false;
    }
    
    @Override
    public final boolean qu() {
        return true;
    }
}
