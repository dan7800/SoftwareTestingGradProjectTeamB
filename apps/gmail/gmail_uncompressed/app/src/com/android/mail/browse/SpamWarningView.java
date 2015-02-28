package com.android.mail.browse;

import android.widget.*;
import android.content.*;
import android.util.*;
import com.android.mail.providers.*;
import com.android.emailcommon.mail.*;
import com.android.mail.utils.*;
import android.text.style.*;
import android.text.*;
import android.graphics.drawable.*;

public class SpamWarningView extends TextView
{
    private final int auk;
    private final int aul;
    private final int aum;
    private final int aun;
    
    public SpamWarningView(final Context context) {
        this(context, null);
    }
    
    public SpamWarningView(final Context context, final AttributeSet set) {
        super(context, set);
        this.auk = this.getResources().getColor(2131361956);
        this.aum = this.getResources().getColor(2131361957);
        this.aul = this.getResources().getColor(2131361958);
        this.aun = this.getResources().getColor(2131361959);
    }
    
    public final void a(final Message message, final Address address) {
        this.setVisibility(0);
        final String address2 = address.getAddress();
        final String cg = ag.cG(String.format(message.aBt, address2, address2.substring(1 + address2.indexOf(64))));
        int n;
        if (message.aBu == 2) {
            this.setBackgroundColor(this.aum);
            this.setTextColor(this.auk);
            n = 2130837763;
        }
        else {
            this.setBackgroundColor(this.aun);
            this.setTextColor(this.aul);
            n = 2130837762;
        }
        final Drawable drawable = this.getResources().getDrawable(n);
        drawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        final ImageSpan imageSpan = new ImageSpan(drawable, 1);
        final SpannableString text = new SpannableString((CharSequence)(". " + cg));
        text.setSpan((Object)imageSpan, 0, 1, 33);
        this.setText((CharSequence)text);
    }
}
