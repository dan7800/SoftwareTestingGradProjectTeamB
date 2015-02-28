package com.android.mail.browse;

import android.widget.*;
import android.util.*;
import android.app.*;
import com.android.mail.providers.*;
import android.text.*;
import com.android.mail.utils.*;
import android.os.*;
import android.content.*;
import android.view.*;

public class MessageAttachmentBar extends FrameLayout implements View$OnClickListener, PopupMenu$OnMenuItemClickListener, h
{
    private static final String mW;
    private Account Nc;
    private Attachment ale;
    private TextView arP;
    private TextView arQ;
    private String arR;
    private String arS;
    private ProgressBar arT;
    private ImageButton arU;
    private PopupMenu arV;
    private ImageView arW;
    private final a arX;
    private boolean arY;
    private final Runnable arZ;
    private boolean asa;
    
    static {
        mW = D.AU();
    }
    
    public MessageAttachmentBar(final Context context) {
        this(context, null);
    }
    
    public MessageAttachmentBar(final Context context, final AttributeSet set) {
        super(context, set);
        this.arZ = new az(this);
        this.arX = new a(context, this);
    }
    
    public static MessageAttachmentBar d(final LayoutInflater layoutInflater, final ViewGroup viewGroup) {
        return (MessageAttachmentBar)layoutInflater.inflate(2130968659, viewGroup, false);
    }
    
    private boolean d(final int n, final View view) {
        if (n == 2131559069) {
            if (this.ale.ur()) {
                this.arX.bO(1);
                this.arY = true;
                com.android.mail.a.a.oq().a("save_attachment", ag.normalizeMimeType(this.ale.getContentType()), "attachment_bar", this.ale.size);
            }
        }
        else if (n == 2131559070) {
            if (this.ale.uq()) {
                this.arX.oE();
                this.arX.b(this.ale);
                com.android.mail.a.a.oq().a("redownload_attachment", ag.normalizeMimeType(this.ale.getContentType()), "attachment_bar", this.ale.size);
                return true;
            }
        }
        else {
            if (n == 2131558728) {
                this.arX.oD();
                this.arY = false;
                com.android.mail.a.a.oq().a("cancel_attachment", ag.normalizeMimeType(this.ale.getContentType()), "attachment_bar", this.ale.size);
                return true;
            }
            if (n == 2131559068) {
                this.arX.oH();
                return true;
            }
            if (n == 2131558727) {
                if (this.rs()) {
                    if (this.arV == null) {
                        this.arV = new PopupMenu(this.getContext(), view);
                        this.arV.getMenuInflater().inflate(2131755022, this.arV.getMenu());
                        this.arV.setOnMenuItemClickListener((PopupMenu$OnMenuItemClickListener)this);
                    }
                    final Menu menu = this.arV.getMenu();
                    menu.findItem(2131559069).setVisible(this.rp());
                    menu.findItem(2131559070).setVisible(this.rq());
                    menu.findItem(2131559068).setVisible(this.rr());
                    this.arV.show();
                    return true;
                }
            }
            else {
                final String normalizeMimeType = ag.normalizeMimeType(this.ale.getContentType());
                String s;
                if ((0x400 & this.ale.flags) != 0x0) {
                    this.arX.oE();
                    this.arX.oC();
                    this.arX.bO(0);
                    s = null;
                }
                else if (I.cz(this.ale.getContentType())) {
                    this.arX.bN(1);
                    s = "attachment_bar_install";
                }
                else if (I.b(this.getContext(), this.ale.ayP, this.ale.getContentType())) {
                    this.arX.bN(0);
                    s = "attachment_bar";
                }
                else {
                    new AlertDialog$Builder(this.getContext()).setTitle(2131296471).setMessage(2131296472).show();
                    s = "attachment_bar_no_viewer";
                }
                if (s != null) {
                    com.android.mail.a.a.oq().a("view_attachment", normalizeMimeType, s, this.ale.size);
                    return true;
                }
            }
        }
        return true;
    }
    
    private static void j(final View view, final boolean b) {
        int visibility;
        if (b) {
            visibility = 0;
        }
        else {
            visibility = 8;
        }
        view.setVisibility(visibility);
    }
    
    private boolean rp() {
        return this.ale.ur() && !this.arY;
    }
    
    private boolean rq() {
        return this.ale.uz() && this.ale.uy();
    }
    
    private boolean rr() {
        if (!this.asa) {
            final a arX = this.arX;
            if (a.y(this.Nc.getType(), this.ale.getContentType())) {
                return true;
            }
        }
        return false;
    }
    
    private boolean rs() {
        return (this.rp() || this.rq() || this.rr()) && !this.rt();
    }
    
    private boolean rt() {
        return this.ale.ut() && this.arY;
    }
    
    private void ru() {
        final StringBuilder sb = new StringBuilder();
        if (this.ale.state == 1) {
            sb.append(this.getResources().getString(2131296476));
        }
        else {
            if (this.ale.uu()) {
                sb.append(this.getResources().getString(2131296475, new Object[] { this.arR }));
            }
            else {
                sb.append(this.arR);
            }
            if (this.arS != null) {
                sb.append(' ');
                sb.append(this.arS);
            }
        }
        this.arQ.setText((CharSequence)sb.toString());
    }
    
    public final void a(final FragmentManager fragmentManager) {
        this.arX.a(fragmentManager);
    }
    
    public final void a(final Attachment ale, final Account nc, final ConversationMessage conversationMessage, final boolean b, final android.support.v4.e.a a) {
        this.Nc = nc;
        final Attachment ale2 = this.ale;
        this.ale = ale;
        if (this.Nc != null) {
            this.arX.be(this.Nc.lw());
        }
        this.arX.a(conversationMessage);
        this.arX.a(this.ale);
        this.asa = (conversationMessage.pg() == null);
        this.arY = (ale.ut() && this.arY);
        E.c(MessageAttachmentBar.mW, "got attachment list row: name=%s state/dest=%d/%d dled=%d contentUri=%s MIME=%s flags=%d", ale.getName(), ale.state, ale.ayN, ale.ayO, ale.ayP, ale.getContentType(), ale.flags);
        final String name = ale.getName();
        if ((0x400 & ale.flags) != 0x0) {
            this.arP.setText(2131296582);
        }
        else if (ale2 == null || !TextUtils.equals((CharSequence)name, (CharSequence)ale2.getName())) {
            this.arP.setText((CharSequence)name);
        }
        if (ale2 == null || ale.size != ale2.size) {
            this.arR = a.unicodeWrap(b.E(this.getContext(), ale.size));
            this.arS = a.unicodeWrap(b.a(this.getContext(), ale));
            this.ru();
        }
        this.removeCallbacks(this.arZ);
        this.post(this.arZ);
        this.arX.ar(b);
    }
    
    public final void as(final boolean b) {
        if (this.ale.ut()) {
            this.arT.setMax(this.ale.size);
            this.arT.setProgress(this.ale.ayO);
            this.arT.setIndeterminate(!b);
            this.arT.setVisibility(0);
            this.arQ.setVisibility(4);
            return;
        }
        this.arT.setVisibility(4);
        this.arQ.setVisibility(0);
    }
    
    public final void oJ() {
        if (this.ale.ayP == null) {
            E.f(MessageAttachmentBar.mW, "viewAttachment with null content uri", new Object[0]);
            return;
        }
        final Intent intent = new Intent("android.intent.action.VIEW");
        intent.setFlags(524289);
        final String contentType = this.ale.getContentType();
        ag.a(intent, this.ale.ayP, contentType);
        while (true) {
            Label_0110: {
                if (!I.cA(contentType)) {
                    break Label_0110;
                }
                intent.setPackage(this.getContext().getPackageName());
                if (this.Nc == null) {
                    break Label_0110;
                }
                final Object uri = this.Nc.uri;
                intent.putExtra("extra-account-uri", (Parcelable)uri);
                try {
                    this.getContext().startActivity(intent);
                    return;
                }
                catch (ActivityNotFoundException ex) {
                    E.e(MessageAttachmentBar.mW, (Throwable)ex, "Couldn't find Activity for intent", new Object[0]);
                    return;
                }
            }
            final Object uri = null;
            continue;
        }
    }
    
    public final void oK() {
        this.ru();
    }
    
    public void onClick(final View view) {
        this.d(view.getId(), view);
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.arP = (TextView)this.findViewById(2131558725);
        this.arQ = (TextView)this.findViewById(2131558726);
        this.arT = (ProgressBar)this.findViewById(2131558730);
        this.arW = (ImageView)this.findViewById(2131558727);
        this.arU = (ImageButton)this.findViewById(2131558728);
        this.setOnClickListener((View$OnClickListener)this);
        this.arW.setOnClickListener((View$OnClickListener)this);
        this.arU.setOnClickListener((View$OnClickListener)this);
    }
    
    public boolean onMenuItemClick(final MenuItem menuItem) {
        this.arV.dismiss();
        return this.d(menuItem.getItemId(), null);
    }
}
