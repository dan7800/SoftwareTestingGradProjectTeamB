package com.android.ex.editstyledtext;

import android.os.*;
import android.text.*;

class EditStyledText$SoftKeyReceiver extends ResultReceiver
{
    EditStyledText agj;
    int ago;
    int agp;
    
    protected void onReceiveResult(final int n, final Bundle bundle) {
        if (n != 2) {
            Selection.setSelection((Spannable)this.agj.getText(), this.ago, this.agp);
        }
    }
}
