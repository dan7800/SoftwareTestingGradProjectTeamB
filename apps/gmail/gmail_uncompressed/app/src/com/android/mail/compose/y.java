package com.android.mail.compose;

import com.android.mail.providers.*;
import android.content.*;
import android.text.*;
import android.text.util.*;
import android.view.*;
import android.widget.*;
import java.util.*;

public final class y extends ArrayAdapter<ReplyFromAccount>
{
    private static String awI;
    private LayoutInflater wC;
    
    public y(final Context context) {
        super(context, 2130968704, 2131558788);
        y.awI = this.getContext().getString(2131296453);
    }
    
    private static CharSequence by(final String s) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            return "";
        }
        return String.format(y.awI, Rfc822Tokenizer.tokenize((CharSequence)s)[0].getAddress());
    }
    
    private LayoutInflater dH() {
        if (this.wC == null) {
            this.wC = (LayoutInflater)this.getContext().getSystemService("layout_inflater");
        }
        return this.wC;
    }
    
    public final View getDropDownView(final int n, final View view, final ViewGroup viewGroup) {
        final ReplyFromAccount replyFromAccount = (ReplyFromAccount)this.getItem(n);
        int n2;
        if (replyFromAccount.isCustomFrom) {
            n2 = 2130968679;
        }
        else {
            n2 = 2130968703;
        }
        final View inflate = this.dH().inflate(n2, (ViewGroup)null);
        if (replyFromAccount.isCustomFrom) {
            ((TextView)inflate.findViewById(2131558787)).setText((CharSequence)replyFromAccount.name);
            ((TextView)inflate.findViewById(2131558788)).setText(by(replyFromAccount.address));
            return inflate;
        }
        ((TextView)inflate.findViewById(2131558788)).setText((CharSequence)replyFromAccount.address);
        return inflate;
    }
    
    public final View getView(final int n, View inflate, final ViewGroup viewGroup) {
        final ReplyFromAccount replyFromAccount = (ReplyFromAccount)this.getItem(n);
        if (inflate == null) {
            inflate = this.dH().inflate(2130968704, (ViewGroup)null);
        }
        final TextView textView = (TextView)inflate.findViewById(2131558787);
        if (replyFromAccount.isCustomFrom) {
            textView.setText((CharSequence)replyFromAccount.name);
            textView.setVisibility(0);
            ((TextView)inflate.findViewById(2131558788)).setText(by(replyFromAccount.address));
            return inflate;
        }
        textView.setVisibility(8);
        ((TextView)inflate.findViewById(2131558788)).setText((CharSequence)replyFromAccount.address);
        return inflate;
    }
    
    public final void q(final List<ReplyFromAccount> list) {
        final Iterator<ReplyFromAccount> iterator = list.iterator();
        while (iterator.hasNext()) {
            this.add((Object)iterator.next());
        }
    }
}
