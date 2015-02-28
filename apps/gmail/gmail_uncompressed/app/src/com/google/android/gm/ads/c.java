package com.google.android.gm.ads;

import com.android.mail.browse.*;
import com.android.mail.providers.*;
import com.google.android.gm.provider.*;
import android.view.*;

public final class c extends V
{
    private final Account Nc;
    private Advertisement aZp;
    
    public c(final Account nc, final Advertisement aZp) {
        this.Nc = nc;
        this.aZp = aZp;
    }
    
    public final Advertisement Dg() {
        return this.aZp;
    }
    
    public final void a(final Advertisement aZp) {
        this.aZp = aZp;
    }
    
    @Override
    public final View c(final LayoutInflater layoutInflater, final ViewGroup viewGroup) {
        return layoutInflater.inflate(2130968628, viewGroup, false);
    }
    
    @Override
    public final int getType() {
        return 6;
    }
    
    @Override
    public final void i(final View view, final boolean b) {
        ((AdSenderHeaderView)view).a(this);
    }
    
    public final Account oN() {
        return this.Nc;
    }
    
    @Override
    public final boolean qn() {
        return false;
    }
    
    @Override
    public final boolean qt() {
        return true;
    }
    
    @Override
    public final boolean qu() {
        return true;
    }
}
