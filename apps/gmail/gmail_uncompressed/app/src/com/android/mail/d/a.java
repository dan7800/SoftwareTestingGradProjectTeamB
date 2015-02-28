package com.android.mail.d;

import com.android.mail.b.*;
import com.android.a.*;
import com.android.mail.providers.*;
import com.android.mail.utils.*;
import android.view.*;
import com.android.mail.ui.*;

final class a extends d
{
    private final j akh;
    private final boolean axa;
    private final com.android.a.a axb;
    
    a(final as as, final Account account, final boolean axa, final com.android.a.a axb, final j akh) {
        super(as, null, 0, account);
        this.axa = axa;
        this.axb = axb;
        this.akh = akh;
    }
    
    @Override
    public final boolean a(final p p2, final int n) {
        return false;
    }
    
    @Override
    public final int getType() {
        return 4;
    }
    
    @Override
    public final View getView(final View view, final ViewGroup viewGroup) {
        AccountItemView accountItemView;
        if (view != null) {
            accountItemView = (AccountItemView)view;
        }
        else {
            accountItemView = (AccountItemView)this.wC.inflate(2130968604, viewGroup, false);
        }
        accountItemView.a(this.aob.xg(), this.Nc, this.axa, this.axb, this.akh);
        return (View)accountItemView;
    }
    
    @Override
    public final boolean ta() {
        return true;
    }
    
    @Override
    public final String toString() {
        return "[DrawerItem VIEW_ACCOUNT, mAccount=" + this.Nc + "]";
    }
}
