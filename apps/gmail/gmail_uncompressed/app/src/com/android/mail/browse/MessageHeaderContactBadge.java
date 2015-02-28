package com.android.mail.browse;

import android.widget.*;
import android.graphics.drawable.*;
import android.content.*;
import android.util.*;
import android.net.*;
import android.view.*;
import com.android.mail.a.*;

public class MessageHeaderContactBadge extends ImageView implements View$OnClickListener
{
    private QuickContactBadge asn;
    private Drawable aso;
    
    public MessageHeaderContactBadge(final Context context) {
        this(context, null);
    }
    
    public MessageHeaderContactBadge(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public MessageHeaderContactBadge(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.setOnClickListener((View$OnClickListener)this);
    }
    
    public final void a(final QuickContactBadge asn) {
        this.asn = asn;
    }
    
    public final void assignContactUri(final Uri uri) {
        if (this.asn != null) {
            this.asn.assignContactUri(uri);
        }
    }
    
    public final void bj(final String s) {
        if (this.asn != null) {
            this.asn.assignContactFromEmail(s, true);
        }
    }
    
    public void onClick(final View view) {
        a.oq().a("quick_contact", "clicked", null, 0L);
        if (this.asn != null) {
            this.asn.onClick(view);
        }
    }
    
    public final void setImageToDefault() {
        if (this.aso == null) {
            this.aso = this.getResources().getDrawable(2130837644);
        }
        this.setImageDrawable(this.aso);
    }
}
