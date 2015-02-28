package com.android.mail.d;

import com.android.mail.providers.*;
import com.android.mail.ui.*;
import com.android.mail.utils.*;
import com.android.mail.a.*;

final class h extends f
{
    h(final as as, final Account account, final bG bg) {
        super(as, account, bg, 2130837653, 2131296703);
    }
    
    @Override
    public final boolean a(final p p2, final int n) {
        return false;
    }
    
    @Override
    public final int getType() {
        return 6;
    }
    
    @Override
    public final boolean ta() {
        return false;
    }
    
    @Override
    public final void tb() {
        a.oq().b("menu_item", 2131559021, this.tc());
        this.aob.a(this.Nc, 2);
    }
    
    public final String toString() {
        return "[FooterItem VIEW_HELP_ITEM]";
    }
}
