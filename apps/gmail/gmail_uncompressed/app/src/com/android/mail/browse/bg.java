package com.android.mail.browse;

import android.view.*;
import com.android.mail.a.*;

abstract class bg implements MenuItem$OnMenuItemClickListener
{
    private final String auL;
    final /* synthetic */ WebViewContextMenu auM;
    
    public bg(final WebViewContextMenu auM, final String auL) {
        this.auM = auM;
        this.auL = auL;
    }
    
    public final boolean onMenuItemClick(final MenuItem menuItem) {
        a.oq().a("web_context_menu", "menu_clicked", this.auL, 0L);
        return this.sb();
    }
    
    public abstract boolean sb();
}
