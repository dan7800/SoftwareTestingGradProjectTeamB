package com.android.mail.d;

import com.android.mail.providers.*;
import com.android.mail.ui.*;
import com.android.mail.a.*;
import com.android.mail.utils.*;

final class i extends f
{
    i(final as as, final Account account, final bG bg) {
        super(as, account, bg, 2130837664, 2131296442);
    }
    
    @Override
    public final boolean a(final p p2, final int n) {
        return false;
    }
    
    @Override
    public final int getType() {
        return 7;
    }
    
    @Override
    public final boolean ta() {
        return false;
    }
    
    @Override
    public final void tb() {
        a.oq().b("menu_item", 2131559020, this.tc());
        ag.e(this.aob.xg(), this.Nc);
    }
    
    public final String toString() {
        return "[FooterItem VIEW_SETTINGS_ITEM]";
    }
}
