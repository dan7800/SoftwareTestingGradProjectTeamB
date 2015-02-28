package com.android.mail.browse;

import android.widget.*;
import android.view.*;
import android.net.*;
import android.content.*;
import android.util.*;
import com.android.mail.providers.*;
import android.os.*;

public final class ConversationListFooterView extends LinearLayout implements View$OnClickListener
{
    private View aqc;
    private View aqd;
    private Uri aqe;
    private T aqf;
    
    public ConversationListFooterView(final Context context, final AttributeSet set) {
        super(context, set);
    }
    
    public final void a(final T aqf) {
        this.aqf = aqf;
    }
    
    public final void d(final Folder tag) {
        this.aqd.setTag((Object)tag);
        this.aqe = tag.aAo;
    }
    
    public final boolean n(final u u) {
        if (u == null) {
            this.aqc.setVisibility(8);
            this.aqd.setVisibility(8);
            return false;
        }
        boolean b = true;
        final Bundle extras = u.getExtras();
        final int int1 = extras.getInt("cursor_status");
        final int int2 = extras.getInt("cursor_total_count");
        if (G.cG(int1)) {
            if (u.getCount() != 0) {
                this.aqc.setVisibility(0);
                this.aqd.setVisibility(8);
            }
            else {
                b = false;
            }
        }
        else if (this.aqe != null && u.getCount() < int2) {
            this.aqc.setVisibility(8);
            this.aqd.setVisibility(0);
        }
        else {
            b = false;
        }
        return b;
    }
    
    public final void onClick(final View view) {
        final int id = view.getId();
        final Folder folder = (Folder)view.getTag();
        if (id == 2131558721) {
            this.aqf.e(folder);
        }
    }
    
    protected final void onFinishInflate() {
        super.onFinishInflate();
        this.aqc = this.findViewById(2131558720);
        (this.aqd = this.findViewById(2131558721)).setOnClickListener((View$OnClickListener)this);
    }
}
