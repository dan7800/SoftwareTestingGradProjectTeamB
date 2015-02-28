package com.android.mail.browse;

import android.text.*;
import android.net.*;
import android.content.*;
import android.view.*;

public final class aj implements View$OnCreateContextMenuListener
{
    private CharSequence arz;
    private final Context mContext;
    
    public aj(final Context mContext) {
        this.mContext = mContext;
    }
    
    public final void onCreateContextMenu(final ContextMenu contextMenu, final View view, final ContextMenu$ContextMenuInfo contextMenu$ContextMenuInfo) {
        if (!TextUtils.isEmpty(this.arz)) {
            new MenuInflater(this.mContext).inflate(2131755017, (Menu)contextMenu);
            contextMenu.setHeaderTitle(this.arz);
            contextMenu.findItem(2131559056).setIntent(new Intent("android.intent.action.VIEW", Uri.parse("mailto:" + (Object)this.arz)));
            contextMenu.findItem(2131559057).setOnMenuItemClickListener((MenuItem$OnMenuItemClickListener)new ak(this, this.arz));
        }
    }
    
    public final void r(final CharSequence arz) {
        this.arz = arz;
    }
}
