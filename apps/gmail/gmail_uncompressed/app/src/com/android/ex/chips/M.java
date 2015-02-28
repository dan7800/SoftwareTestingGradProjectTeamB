package com.android.ex.chips;

import android.content.*;
import android.view.*;
import android.text.*;
import android.text.util.*;
import android.graphics.drawable.*;
import android.widget.*;
import android.graphics.*;
import android.net.*;

final class m implements View$OnClickListener
{
    final /* synthetic */ StateListDrawable acV;
    final /* synthetic */ DropdownChipLayouter acW;
    
    m(final DropdownChipLayouter acW, final StateListDrawable acV) {
        this.acW = acW;
        this.acV = acV;
    }
    
    public final void onClick(final View view) {
        if (this.acV.getCurrent() != null) {
            this.acW.acT.mz();
        }
    }
}
