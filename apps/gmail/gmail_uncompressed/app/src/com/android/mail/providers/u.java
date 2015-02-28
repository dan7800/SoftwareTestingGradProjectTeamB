package com.android.mail.providers;

import com.google.android.mail.common.base.*;

final class u implements C<v, String>
{
    final /* synthetic */ t aBa;
    
    u(final t aBa) {
        this.aBa = aBa;
    }
    
    @Override
    public final String apply(final v v) {
        if (v == null) {
            return null;
        }
        return v.aBb.toString();
    }
}
