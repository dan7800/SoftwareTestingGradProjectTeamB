package com.google.android.gm.ads;

import com.android.mail.browse.*;
import com.google.android.gm.provider.*;
import android.view.*;

public final class b extends V
{
    public final Advertisement aZl;
    
    public b(final Advertisement aZl) {
        this.aZl = aZl;
    }
    
    @Override
    public final View c(final LayoutInflater layoutInflater, final ViewGroup viewGroup) {
        final AdHeaderView adHeaderView = (AdHeaderView)layoutInflater.inflate(2130968627, viewGroup, false);
        adHeaderView.dD(this.aZl.bcf);
        return (View)adHeaderView;
    }
    
    @Override
    public final int getType() {
        return 5;
    }
    
    @Override
    public final void i(final View view, final boolean b) {
    }
    
    @Override
    public final boolean qn() {
        return true;
    }
}
