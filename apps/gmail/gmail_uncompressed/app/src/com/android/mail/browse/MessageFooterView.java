package com.android.mail.browse;

import android.widget.*;
import android.database.*;
import android.support.v4.e.*;
import android.app.*;
import android.util.*;
import com.android.mail.ui.*;
import java.util.*;
import android.view.*;
import android.net.*;
import com.google.common.base.*;
import com.android.mail.utils.*;
import android.text.*;
import com.android.mail.providers.*;
import android.os.*;
import android.content.*;

public class MessageFooterView extends LinearLayout implements LoaderManager$LoaderCallbacks<Cursor>, View$OnClickListener, q
{
    private static final String mW;
    private m alu;
    private LoaderManager aqI;
    private a aqT;
    private ae asg;
    private f ash;
    private View asi;
    private AttachmentTileGrid asj;
    private LinearLayout ask;
    private aE asl;
    private Integer asm;
    private FragmentManager c;
    private final LayoutInflater wC;
    
    static {
        mW = D.AU();
    }
    
    public MessageFooterView(final Context context) {
        this(context, null);
    }
    
    public MessageFooterView(final Context context, final AttributeSet set) {
        super(context, set);
        this.wC = LayoutInflater.from(context);
    }
    
    private void aG(final boolean b) {
        List<Attachment> vc;
        if (this.ash != null && !this.ash.isClosed()) {
            int n = -1;
            vc = new ArrayList<Attachment>();
            while (true) {
                final f ash = this.ash;
                ++n;
                if (!ash.moveToPosition(n)) {
                    break;
                }
                vc.add(this.ash.oI());
            }
        }
        else {
            vc = this.asg.qL().vC();
        }
        if (vc != null && !vc.isEmpty()) {
            final int size = vc.size();
            final ArrayList list = new ArrayList<Attachment>(size);
            final ArrayList list2 = new ArrayList<Attachment>(size);
            for (final Attachment attachment : vc) {
                if (!attachment.uB() || this.asl.isSecure()) {
                    if (AttachmentTile.g(attachment)) {
                        list.add(attachment);
                    }
                    else {
                        list2.add(attachment);
                    }
                }
            }
            this.asg.qL().aBr = Attachment.n(vc);
            if (!list.isEmpty() || !list2.isEmpty()) {
                if (!list.isEmpty()) {
                    this.asj.setVisibility(0);
                    this.asj.a(this.c, this.oN(), this.asg.qL(), (List<Attachment>)list, b);
                }
                if (!list2.isEmpty()) {
                    this.b((List<Attachment>)list2, b);
                }
            }
        }
    }
    
    private void b(final List<Attachment> list, final boolean b) {
        this.ask.setVisibility(0);
        final Account on = this.oN();
        for (final Attachment attachment : list) {
            final Uri ua = attachment.uA();
            MessageAttachmentBar d = (MessageAttachmentBar)this.ask.findViewWithTag((Object)ua);
            if (d == null) {
                d = MessageAttachmentBar.d(this.wC, (ViewGroup)this);
                d.setTag((Object)ua);
                d.a(this.c);
                this.ask.addView((View)d);
            }
            final ConversationMessage ql = this.asg.qL();
            if (this.aqT == null) {
                aa qs;
                if (this.asg != null) {
                    qs = this.asg.qS();
                }
                else {
                    qs = null;
                }
                if (qs == null) {
                    this.aqT = a.aC();
                }
                else {
                    this.aqT = qs.qJ();
                }
            }
            d.a(attachment, on, ql, b, this.aqT);
        }
    }
    
    private Account oN() {
        if (this.alu != null) {
            return this.alu.oN();
        }
        return null;
    }
    
    public final void a(final LoaderManager aqI, final FragmentManager c, final m alu, final aE asl) {
        this.aqI = aqI;
        this.c = c;
        this.alu = alu;
        this.asl = asl;
    }
    
    public final void a(final ae asg, final boolean b) {
        this.asg = asg;
        Message ql;
        if (this.asg == null) {
            ql = null;
        }
        else {
            ql = this.asg.qL();
        }
        Integer value = null;
        if (ql != null) {
            final boolean ayX = ql.ayX;
            value = null;
            if (ayX) {
                final Uri aBm = ql.aBm;
                value = null;
                if (aBm != null) {
                    value = ql.aBm.hashCode();
                }
            }
        }
        if (this.asm != null && !e.b(this.asm, value)) {
            this.aqI.destroyLoader((int)this.asm);
            this.asj.removeAllViewsInLayout();
            this.ask.removeAllViewsInLayout();
            this.asi.setVisibility(8);
            this.asj.setVisibility(8);
            this.ask.setVisibility(8);
        }
        this.asm = value;
        if (!b && value != null) {
            E.d(MessageFooterView.mW, "binding footer view, calling initLoader for message %d", value);
            this.aqI.initLoader((int)value, Bundle.EMPTY, (LoaderManager$LoaderCallbacks)this);
        }
        if (this.asj.getChildCount() == 0 && this.ask.getChildCount() == 0) {
            this.aG(false);
        }
        final ConversationMessage ql2 = this.asg.qL();
        final View asi = this.asi;
        int visibility;
        if (ql2.aBx && !TextUtils.isEmpty((CharSequence)ql2.aBy)) {
            visibility = 0;
        }
        else {
            visibility = 8;
        }
        asi.setVisibility(visibility);
        final boolean qp = this.asg.qp();
        int visibility2 = 0;
        if (!qp) {
            visibility2 = 8;
        }
        this.setVisibility(visibility2);
    }
    
    public final void oU() {
    }
    
    public void onClick(final View view) {
        com.android.mail.a.a.oq().a("view_entire_message", "clicked", null, 0L);
        final Context context = this.getContext();
        final Intent intent = new Intent();
        final String string = context.getResources().getString(2131296715);
        if (TextUtils.isEmpty((CharSequence)string)) {
            E.g(MessageFooterView.mW, "Trying to open clipped message with no activity defined", new Object[0]);
        }
        else {
            intent.setClassName(context, string);
            final Account on = this.oN();
            final ConversationMessage ql = this.asg.qL();
            if (on != null && !TextUtils.isEmpty((CharSequence)ql.aBy)) {
                intent.putExtra("extra-account-uri", (Parcelable)on.uri);
                intent.putExtra("permalink", ql.aBy);
                intent.putExtra("account-name", on.lw());
                intent.putExtra("server-message-id", ql.aBd);
                context.startActivity(intent);
            }
        }
    }
    
    public Loader<Cursor> onCreateLoader(final int n, final Bundle bundle) {
        return (Loader<Cursor>)new com.android.mail.browse.e(this.getContext(), this.asg.qL().aBm);
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.asi = this.findViewById(2131558733);
        this.asj = (AttachmentTileGrid)this.findViewById(2131558680);
        this.ask = (LinearLayout)this.findViewById(2131558681);
        this.asi.setOnClickListener((View$OnClickListener)this);
    }
    
    public void onLoaderReset(final Loader<Cursor> loader) {
        this.ash = null;
    }
}
