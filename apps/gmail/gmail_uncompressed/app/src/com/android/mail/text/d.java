package com.android.mail.text;

import android.text.style.*;
import android.view.*;
import android.text.*;

public final class d extends ClickableSpan
{
    final View$OnClickListener aCM;
    
    public d(final View$OnClickListener acm) {
        this.aCM = acm;
    }
    
    public final void onClick(final View view) {
        if (this.aCM != null) {
            this.aCM.onClick(view);
        }
    }
    
    public final void updateDrawState(final TextPaint textPaint) {
        textPaint.setColor(textPaint.linkColor);
        textPaint.setUnderlineText(false);
    }
}
