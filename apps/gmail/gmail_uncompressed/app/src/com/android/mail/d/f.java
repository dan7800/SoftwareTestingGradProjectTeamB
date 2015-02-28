package com.android.mail.d;

import com.android.mail.ui.*;
import com.android.mail.providers.*;
import android.view.*;
import android.widget.*;

public abstract class f extends d implements View$OnClickListener
{
    private final bG axd;
    private final int axe;
    private final int axf;
    
    f(final as as, final Account account, final bG axd, final int axe, final int axf) {
        super(as, null, 0, account);
        this.axd = axd;
        this.axe = axe;
        this.axf = axf;
    }
    
    @Override
    public final View getView(final View view, final ViewGroup viewGroup) {
        ViewGroup viewGroup2;
        if (view != null) {
            viewGroup2 = (ViewGroup)view;
        }
        else {
            viewGroup2 = (ViewGroup)this.wC.inflate(2130968688, viewGroup, false);
        }
        ((TextView)viewGroup2.findViewById(2131558807)).setText(this.axf);
        ((ImageView)viewGroup2.findViewById(2131558806)).setImageResource(this.axe);
        return (View)viewGroup2;
    }
    
    @Override
    public final void onClick(final View view) {
        if (this.aob.wC().wL()) {
            this.aob.yd().a(false, null, null);
            this.axd.a(this);
            return;
        }
        this.tb();
    }
    
    public abstract void tb();
    
    protected final String tc() {
        return "drawer_footer/" + this.aob.xX().AA();
    }
}
