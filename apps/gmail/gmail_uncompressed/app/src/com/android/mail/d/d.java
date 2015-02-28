package com.android.mail.d;

import com.android.mail.providers.*;
import com.android.mail.ui.*;
import com.android.a.*;
import com.android.mail.b.*;
import com.android.mail.utils.*;
import android.view.*;

public abstract class d
{
    public final Account Nc;
    protected final as aob;
    public final Folder aqp;
    public final int axc;
    protected final LayoutInflater wC;
    
    protected d(final as aob, final Folder aqp, final int axc, final Account nc) {
        this.aob = aob;
        this.aqp = aqp;
        this.axc = axc;
        this.Nc = nc;
        this.wC = LayoutInflater.from(aob.xg());
    }
    
    public static d a(final as as) {
        return new b(as);
    }
    
    public static d a(final as as, final int n) {
        return new g(as, n);
    }
    
    public static d a(final as as, final Account account, final bG bg) {
        return new h(as, account, bg);
    }
    
    public static d a(final as as, final Account account, final boolean b, final a a, final j j) {
        return new com.android.mail.d.a(as, account, b, a, j);
    }
    
    public static d a(final as as, final Folder folder, final int n) {
        return new e(as, folder, n);
    }
    
    public static d b(final as as) {
        return new c(as);
    }
    
    public static d b(final as as, final Account account, final bG bg) {
        return new i(as, account, bg);
    }
    
    public static d c(final as as) {
        return new com.android.mail.d.j(as);
    }
    
    public abstract boolean a(final p p0, final int p1);
    
    public abstract int getType();
    
    public abstract View getView(final View p0, final ViewGroup p1);
    
    public void onClick(final View view) {
    }
    
    public abstract boolean ta();
}
