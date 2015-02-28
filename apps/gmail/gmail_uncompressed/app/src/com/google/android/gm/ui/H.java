package com.google.android.gm.ui;

import android.text.*;

public final class h implements TextWatcher
{
    private g bpP;
    private boolean bpQ;
    
    public final void afterTextChanged(final Editable editable) {
        if (this.bpP != null) {
            if (!this.bpQ) {
                editable.removeSpan((Object)this.bpP);
            }
            else {
                final int spanStart = editable.getSpanStart((Object)this.bpP);
                final int spanEnd = editable.getSpanEnd((Object)this.bpP);
                if (spanStart >= 0 && spanEnd >= 0) {
                    editable.replace(editable.getSpanStart((Object)this.bpP), editable.getSpanEnd((Object)this.bpP), (CharSequence)"");
                }
            }
        }
    }
    
    public final void beforeTextChanged(final CharSequence charSequence, final int n, final int n2, final int n3) {
        this.bpP = null;
        if (charSequence instanceof Spanned) {
            final g[] array = (g[])((Spanned)charSequence).getSpans(n, n + n2, (Class)g.class);
            if (array != null && array.length != 0 && n2 > 0) {
                this.bpP = array[0];
                this.bpQ = (n3 == 0);
            }
        }
    }
    
    public final void onTextChanged(final CharSequence charSequence, final int n, final int n2, final int n3) {
    }
}
