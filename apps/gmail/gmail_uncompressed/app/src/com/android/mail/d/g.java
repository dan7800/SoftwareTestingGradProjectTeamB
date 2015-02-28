package com.android.mail.d;

import com.android.mail.ui.*;
import com.android.mail.providers.*;
import com.android.mail.utils.*;
import android.view.*;
import android.widget.*;

final class g extends d
{
    private final int axg;
    
    g(final as as, final int axg) {
        super(as, null, 0, null);
        this.axg = axg;
    }
    
    @Override
    public final boolean a(final p p2, final int n) {
        return false;
    }
    
    @Override
    public final int getType() {
        return 1;
    }
    
    @Override
    public final View getView(View inflate, final ViewGroup viewGroup) {
        if (inflate == null) {
            inflate = this.wC.inflate(2130968700, viewGroup, false);
        }
        ((TextView)inflate.findViewById(2131558835)).setText(this.axg);
        return inflate;
    }
    
    @Override
    public final boolean ta() {
        return false;
    }
    
    @Override
    public final String toString() {
        return "[DrawerItem VIEW_HEADER, mResource=" + this.axg + "]";
    }
}
