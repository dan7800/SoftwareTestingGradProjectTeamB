package com.android.mail.browse;

import android.widget.*;
import com.android.mail.providers.*;
import android.util.*;
import android.view.*;
import android.content.*;
import com.android.mail.utils.*;

public class MessageInviteView extends LinearLayout implements View$OnClickListener
{
    private Message ald;
    private aJ atq;
    private final Context mContext;
    
    public MessageInviteView(final Context context) {
        this(context, null);
    }
    
    public MessageInviteView(final Context mContext, final AttributeSet set) {
        super(mContext, set);
        this.atq = new aJ(this);
        this.mContext = mContext;
    }
    
    public final void d(final Message ald) {
        this.ald = ald;
    }
    
    public void onClick(final View view) {
        final int id = view.getId();
        Integer n;
        if (id == 2131558751) {
            final boolean d = ag.D(this.ald.aBs);
            n = null;
            if (!d) {
                final Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(this.ald.aBs);
                this.mContext.startActivity(intent);
            }
        }
        else if (id == 2131558752) {
            n = 1;
        }
        else if (id == 2131558753) {
            n = 2;
        }
        else {
            n = null;
            if (id == 2131558754) {
                n = 3;
            }
        }
        if (n != null) {
            final ContentValues contentValues = new ContentValues();
            E.e("UnifiedEmail", "SENDING INVITE COMMAND, VALUE=%s", n);
            contentValues.put("respond", n);
            this.atq.b(contentValues);
        }
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.findViewById(2131558751).setOnClickListener((View$OnClickListener)this);
        this.findViewById(2131558752).setOnClickListener((View$OnClickListener)this);
        this.findViewById(2131558753).setOnClickListener((View$OnClickListener)this);
        this.findViewById(2131558754).setOnClickListener((View$OnClickListener)this);
    }
}
