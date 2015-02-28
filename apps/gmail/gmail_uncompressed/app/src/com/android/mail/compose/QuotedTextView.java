package com.android.mail.compose;

import android.webkit.*;
import android.widget.*;
import android.content.*;
import android.util.*;
import com.android.mail.utils.*;
import com.android.mail.providers.*;
import android.text.*;
import java.text.*;
import java.util.*;
import android.content.res.*;
import android.view.*;

class QuotedTextView extends LinearLayout implements View$OnClickListener
{
    private static final int awL;
    private static String awT;
    private CharSequence awM;
    private WebView awN;
    private B awO;
    private CheckBox awP;
    private boolean awQ;
    private Button awR;
    private A awS;
    
    static {
        awL = 23;
    }
    
    public QuotedTextView(final Context context) {
        this(context, null);
    }
    
    public QuotedTextView(final Context context, final AttributeSet set) {
        this(context, set, -1);
    }
    
    public QuotedTextView(final Context context, final AttributeSet set, final int n) {
        super(context, set);
        this.awQ = true;
        LayoutInflater.from(context).inflate(2130968742, (ViewGroup)this);
        ag.a(this.awN = (WebView)this.findViewById(2131558895));
        this.awN.getSettings().setBlockNetworkLoads(true);
        (this.awP = (CheckBox)this.findViewById(2131558892)).setChecked(true);
        this.awP.setOnClickListener((View$OnClickListener)this);
        QuotedTextView.awT = context.getResources().getString(2131296610);
        this.awR = (Button)this.findViewById(2131558893);
        if (this.awR != null) {
            this.awR.setEnabled(false);
        }
    }
    
    private void aS(final boolean b) {
        if (this.awP != null) {
            final CheckBox awP = this.awP;
            int visibility;
            if (b) {
                visibility = 0;
            }
            else {
                visibility = 4;
            }
            awP.setVisibility(visibility);
        }
    }
    
    public static int bz(final String s) {
        return s.indexOf("<br type='attribution'>") + QuotedTextView.awL;
    }
    
    private void s(final CharSequence awM) {
        this.awM = awM;
        this.awN.loadDataWithBaseURL((String)null, "<head><style type=\"text/css\">* body { color: " + this.getContext().getResources().getString(2131296351) + "; }</style></head>" + this.awM.toString(), "text/html", "utf-8", (String)null);
        if (this.awR != null) {
            if (TextUtils.isEmpty(awM)) {
                this.awR.setVisibility(8);
                this.awR.setEnabled(false);
                return;
            }
            this.awR.setVisibility(0);
            this.awR.setEnabled(true);
            this.awR.setOnClickListener((View$OnClickListener)this);
        }
    }
    
    private void sS() {
        if (this.awR != null) {
            this.awR.setVisibility(0);
        }
    }
    
    public static int t(final CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            return -1;
        }
        return charSequence.toString().indexOf(QuotedTextView.awT);
    }
    
    public final void a(final int n, final Message message, final boolean b) {
        this.setVisibility(0);
        String s;
        if (message.aBg != null) {
            s = message.aBg;
        }
        else if (message.aBh != null) {
            s = Html.toHtml((Spanned)new SpannedString((CharSequence)message.aBh));
        }
        else {
            s = "";
        }
        final StringBuilder sb = new StringBuilder();
        final DateFormat dateTimeInstance = DateFormat.getDateTimeInstance(2, 3);
        final Date date = new Date(message.aBf);
        final Resources resources = this.getContext().getResources();
        if (n == 0 || n == 1) {
            sb.append(QuotedTextView.awT);
            sb.append(String.format(resources.getString(2131296394), dateTimeInstance.format(date), ag.j(message.vq(), true)));
            sb.append("<br type='attribution'>");
            sb.append("<blockquote class=\"quote\" style=\"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex\">");
            sb.append(s);
            sb.append("</blockquote>");
            sb.append("</div>");
        }
        else if (n == 2) {
            sb.append(QuotedTextView.awT);
            sb.append(String.format(resources.getString(2131296395), ag.j(message.vq(), true), dateTimeInstance.format(date), ag.j(message.ayV, false), ag.j(message.getTo(), true)));
            sb.append(String.format(resources.getString(2131296397), ag.j(message.getCc(), true)));
            sb.append("<br type='attribution'>");
            sb.append("<blockquote class=\"quote\" style=\"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex\">");
            sb.append(s);
            sb.append("</blockquote>");
            sb.append("</div>");
        }
        this.s(sb);
        this.aS(b);
        this.sS();
    }
    
    public final void a(final A awS) {
        this.awS = awS;
    }
    
    public final void aT(final boolean b) {
        this.awP.setChecked(b);
        final WebView awN = this.awN;
        int visibility;
        if (b) {
            visibility = 0;
        }
        else {
            visibility = 8;
        }
        awN.setVisibility(visibility);
        this.awQ = b;
        if (this.awO != null) {
            final B awO = this.awO;
        }
    }
    
    public final void aU(final boolean b) {
        final View viewById = this.findViewById(2131558890);
        int visibility;
        if (b) {
            visibility = 0;
        }
        else {
            visibility = 8;
        }
        viewById.setVisibility(visibility);
    }
    
    public final void c(final CharSequence charSequence, final boolean b) {
        this.setVisibility(0);
        this.s(charSequence);
        boolean b2 = false;
        if (!b) {
            b2 = true;
        }
        this.aS(b2);
        this.sS();
    }
    
    public final void d(final CharSequence charSequence, final boolean b) {
        this.setVisibility(0);
        if (b) {
            final StringBuilder sb = new StringBuilder();
            final Resources resources = this.getContext().getResources();
            sb.append(QuotedTextView.awT);
            sb.append(String.format(resources.getString(2131296396), new Object[0]));
            sb.append("<br type='attribution'>");
            sb.append("<blockquote class=\"quote\" style=\"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex\">");
            sb.append(charSequence);
            sb.append("</blockquote>");
            sb.append("</div>");
            this.s(sb);
        }
        else {
            this.s(charSequence);
        }
        this.findViewById(2131558894).setVisibility(8);
        this.findViewById(2131558891).setVisibility(8);
    }
    
    public void onClick(final View view) {
        final int id = view.getId();
        if (id == 2131558893) {
            final String cg = ag.cG(this.awM.toString());
            if (this.awS != null) {
                this.awS.bu("\n" + cg);
            }
            this.aT(false);
            this.awR.setVisibility(8);
            final View viewById = this.findViewById(2131558889);
            if (viewById != null) {
                viewById.setVisibility(8);
            }
        }
        else if (id == 2131558892) {
            this.aT(this.awP.isChecked());
        }
    }
    
    public final CharSequence sT() {
        if (this.awQ) {
            return this.awM;
        }
        return null;
    }
    
    public final CharSequence sU() {
        return this.awM;
    }
    
    public final boolean sV() {
        return this.awQ;
    }
}
