package com.android.mail.browse;

import android.widget.*;
import com.android.mail.providers.*;
import com.android.mail.ui.*;
import android.content.*;
import android.util.*;
import com.android.mail.utils.*;
import android.view.*;

public class ConversationViewHeader extends LinearLayout implements View$OnClickListener, View$OnLongClickListener
{
    private static final String mW;
    private m alu;
    private Conversation amr;
    private aP aqO;
    private SubjectAndFolderView arj;
    private StarView ark;
    private ag arl;
    private ac arm;
    
    static {
        mW = D.AU();
    }
    
    public ConversationViewHeader(final Context context) {
        this(context, null);
    }
    
    public ConversationViewHeader(final Context context, final AttributeSet set) {
        super(context, set);
    }
    
    public final void a(final ac arm) {
        this.arm = arm;
        this.amr = this.arm.amr;
        if (this.arj != null) {
            this.arj.a(arm);
        }
        this.aD(this.amr.azc);
    }
    
    public final void a(final ag arl, final m alu, final aP aqO) {
        this.arl = arl;
        this.alu = alu;
        this.aqO = aqO;
    }
    
    public final void aD(final boolean b) {
        this.ark.aD(b);
        int n;
        if (this.amr != null && !this.amr.uL()) {
            n = 1;
        }
        else {
            n = 0;
        }
        this.ark.aD(b);
        final StarView ark = this.ark;
        int visibility = 0;
        if (n == 0) {
            visibility = 4;
        }
        ark.setVisibility(visibility);
    }
    
    public final void e(final Conversation conversation) {
        this.arj.a(this.arl, this.alu.oN(), conversation);
    }
    
    public final void f(final Conversation amr) {
        this.amr = amr;
        this.setSubject(amr.ayV);
        this.e(amr);
        this.aD(amr.azc);
        if (this.arm != null) {
            final ViewGroup viewGroup = (ViewGroup)this.getParent();
            int n;
            if (viewGroup == null) {
                E.f(ConversationViewHeader.mW, "Unable to measure height of conversation header", new Object[0]);
                n = this.getHeight();
            }
            else {
                n = com.android.mail.utils.ag.a((View)this, viewGroup);
            }
            if (this.arm.ca(n)) {
                this.arl.ce(n);
            }
        }
    }
    
    public void onClick(final View view) {
        final int id = view.getId();
        if (this.amr != null && id == 2131558786) {
            this.aD(this.amr.azc = !this.amr.azc);
            this.aqO.b(Conversation.g(this.amr), "starred", this.amr.azc);
        }
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        (this.arj = (SubjectAndFolderView)this.findViewById(2131558785)).setOnLongClickListener((View$OnLongClickListener)this);
        (this.ark = (StarView)this.findViewById(2131558786)).setOnClickListener((View$OnClickListener)this);
    }
    
    public boolean onLongClick(final View view) {
        ah.bi(this.arj.getSubject()).show(this.arl.getActivity().getFragmentManager(), "copy-subject-dialog");
        return true;
    }
    
    public final void setSubject(final String subject) {
        this.arj.setSubject(subject);
    }
}
