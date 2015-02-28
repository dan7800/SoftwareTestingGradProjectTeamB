package com.android.mail.d;

import com.android.mail.ui.*;
import com.android.mail.providers.*;
import com.android.mail.utils.*;
import android.view.*;

final class c extends d
{
    c(final as as) {
        super(as, null, 0, null);
    }
    
    @Override
    public final boolean a(final p p2, final int n) {
        return false;
    }
    
    @Override
    public final int getType() {
        return 3;
    }
    
    @Override
    public final View getView(final View view, final ViewGroup viewGroup) {
        if (view != null) {
            return view;
        }
        return this.wC.inflate(2130968699, viewGroup, false);
    }
    
    @Override
    public final boolean ta() {
        return false;
    }
    
    @Override
    public final String toString() {
        return "[DrawerItem VIEW_BOTTOM_SPACE]";
    }
}
