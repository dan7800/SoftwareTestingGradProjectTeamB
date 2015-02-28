package com.android.mail.compose;

import android.view.*;

final class k implements View$OnClickListener
{
    final /* synthetic */ g awi;
    
    k(final g awi) {
        this.awi = awi;
    }
    
    public final void onClick(final View view) {
        this.awi.avF.requestFocus();
        this.awi.avF.setSelection(this.awi.avF.getText().length());
    }
}
