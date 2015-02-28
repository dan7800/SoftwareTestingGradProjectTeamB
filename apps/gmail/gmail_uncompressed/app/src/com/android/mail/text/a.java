package com.android.mail.text;

import android.text.style.*;
import com.android.mail.browse.*;
import android.view.*;
import android.text.*;

public final class a extends ClickableSpan
{
    private final ag arl;
    
    public a(final ag arl) {
        this.arl = arl;
    }
    
    public final void onClick(final View view) {
        if (this.arl != null) {
            this.arl.qU();
        }
    }
    
    public final void updateDrawState(final TextPaint textPaint) {
    }
}
