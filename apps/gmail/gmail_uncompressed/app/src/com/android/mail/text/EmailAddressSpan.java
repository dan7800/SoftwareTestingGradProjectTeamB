package com.android.mail.text;

import android.text.style.*;
import com.android.mail.providers.*;
import android.view.*;
import com.android.mail.compose.*;
import android.text.*;

public class EmailAddressSpan extends URLSpan
{
    private final String NP;
    private final Account Nc;
    
    public EmailAddressSpan(final Account nc, final String np) {
        super("mailto:" + np);
        this.Nc = nc;
        this.NP = np;
    }
    
    public void onClick(final View view) {
        g.a(view.getContext(), this.Nc, this.NP);
    }
    
    public void updateDrawState(final TextPaint textPaint) {
        textPaint.setColor(textPaint.linkColor);
        textPaint.setUnderlineText(false);
    }
}
