package com.google.android.gm.ui;

import com.android.mail.ui.*;
import com.android.mail.providers.*;
import android.content.*;
import com.google.android.gm.*;
import com.android.mail.a.*;
import android.view.*;
import com.android.mail.utils.*;
import android.widget.*;
import android.content.res.*;
import android.text.*;
import com.google.android.gm.provider.*;

public final class a extends ConversationTipView
{
    private Account Nc;
    private boolean aHp;
    private ae bdv;
    
    public a(final Context context) {
        super(context);
    }
    
    @Override
    public final void dismiss() {
        if (this.aHp) {
            this.bdv.FE();
            this.aHp = false;
            com.android.mail.a.a.oq().a("list_swipe", "always_show_images_tip", null, 0L);
        }
        super.dismiss();
    }
    
    public final boolean yE() {
        return this.aHp;
    }
    
    @Override
    protected final int yO() {
        return 2130968632;
    }
    
    @Override
    protected final void yP() {
        this.aHy = this.findViewById(2131558627);
        this.findViewById(2131558633).setOnClickListener((View$OnClickListener)new b(this));
        final Resources resources = this.getResources();
        final String string = resources.getString(2131297182);
        final Spanned a = ag.a(this.getContext(), resources.getString(2131297189, new Object[] { string }), string, 2131231145);
        final TextView textView = (TextView)this.findViewById(2131558634);
        textView.setText((CharSequence)a);
        textView.setOnClickListener((View$OnClickListener)new c(this));
        final String string2 = resources.getString(2131296442);
        final Spanned a2 = ag.a(this.getContext(), resources.getString(2131297190, new Object[] { resources.getString(2131297105), string2 }), string2, 2131231145);
        final TextView textView2 = (TextView)this.findViewById(2131558635);
        textView2.setText((CharSequence)a2);
        textView2.setOnClickListener((View$OnClickListener)new d(this));
    }
    
    public final void z(final Account nc) {
        this.Nc = nc;
        final MailEngine eo = MailEngine.eO(nc.lw());
        ae fz;
        if (eo != null) {
            fz = eo.FZ();
        }
        else {
            fz = null;
        }
        this.bdv = fz;
        this.aHp = (this.bdv != null && this.bdv.FB() && this.bdv.FC() && !this.bdv.FD());
    }
}
