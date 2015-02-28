package com.google.android.gm.browse;

import com.android.mail.browse.*;
import com.android.mail.utils.*;
import com.android.mail.providers.*;
import android.app.*;

public final class e extends c
{
    private static final String mW;
    
    static {
        mW = D.AU();
    }
    
    @Override
    public final void a(final String s, final Message message, final Attachment attachment, final FragmentManager fragmentManager) {
        f.a(s, message, attachment).show(fragmentManager, (String)null);
    }
    
    @Override
    public final boolean y(final String s, final String s2) {
        return "com.google".equals(s) && !"application/ics".equals(s2) && !"text/calendar".equals(s2);
    }
}
