package com.android.mail.browse;

import android.widget.*;
import android.content.*;
import android.util.*;
import android.view.*;
import com.android.mail.utils.*;
import com.android.mail.compose.*;
import com.android.mail.providers.*;
import com.android.mail.a.*;

public class ConversationFooterView extends LinearLayout implements View$OnClickListener
{
    private static final String mW;
    private m alu;
    private ab amR;
    private K amS;
    private View amT;
    
    static {
        mW = D.AU();
    }
    
    public ConversationFooterView(final Context context) {
        super(context);
    }
    
    public ConversationFooterView(final Context context, final AttributeSet set) {
        super(context, set);
    }
    
    public ConversationFooterView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
    }
    
    private Account oN() {
        if (this.alu != null) {
            return this.alu.oN();
        }
        return null;
    }
    
    public final void a(final K amS) {
        this.amS = amS;
    }
    
    public final void a(final ab amR) {
        this.amR = amR;
        if (this.amR == null) {
            E.d(ConversationFooterView.mW, "ignoring conversation footer tap on unbound view", new Object[0]);
            return;
        }
        final ae qk = this.amR.qK();
        if (qk == null) {
            E.d(ConversationFooterView.mW, "ignoring conversation footer tap on null header item", new Object[0]);
            return;
        }
        final ConversationMessage ql = qk.qL();
        if (ql == null) {
            E.d(ConversationFooterView.mW, "ignoring conversation footer tap on null message", new Object[0]);
            return;
        }
        final View amT = this.amT;
        final boolean uv = ql.uV();
        int visibility = 0;
        if (uv) {
            visibility = 8;
        }
        amT.setVisibility(visibility);
    }
    
    public final void a(final m alu) {
        this.alu = alu;
    }
    
    public final void b(final ab ab) {
        this.a(ab);
        if (this.amR != null) {
            final ViewGroup viewGroup = (ViewGroup)this.getParent();
            int n;
            if (viewGroup == null) {
                E.f(ConversationFooterView.mW, "Unable to measure height of conversation header", new Object[0]);
                n = this.getHeight();
            }
            else {
                n = ag.a((View)this, viewGroup);
            }
            if (this.amR.ca(n)) {
                this.amS.bV(n);
            }
        }
    }
    
    public void onClick(final View view) {
        if (this.amR == null) {
            E.d(ConversationFooterView.mW, "ignoring conversation footer tap on unbound view", new Object[0]);
            return;
        }
        final ae qk = this.amR.qK();
        if (qk == null) {
            E.d(ConversationFooterView.mW, "ignoring conversation footer tap on null header item", new Object[0]);
            return;
        }
        final ConversationMessage ql = qk.qL();
        if (ql == null) {
            E.d(ConversationFooterView.mW, "ignoring conversation footer tap on null message", new Object[0]);
            return;
        }
        final int id = view.getId();
        String s;
        if (id == 2131558699) {
            g.b(this.getContext(), this.oN(), ql);
            s = "reply";
        }
        else if (id == 2131558700) {
            g.c(this.getContext(), this.oN(), ql);
            s = "reply_all";
        }
        else if (id == 2131558701) {
            g.d(this.getContext(), this.oN(), ql);
            s = "forward";
        }
        else {
            s = "lolwut";
        }
        a.oq().a("conversation_footer_click", s, null, 0L);
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.amT = this.findViewById(2131558698);
        this.findViewById(2131558699).setOnClickListener((View$OnClickListener)this);
        this.findViewById(2131558700).setOnClickListener((View$OnClickListener)this);
        this.findViewById(2131558701).setOnClickListener((View$OnClickListener)this);
    }
}
