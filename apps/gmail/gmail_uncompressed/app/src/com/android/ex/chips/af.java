package com.android.ex.chips;

import android.widget.*;
import android.graphics.drawable.*;
import android.content.*;
import android.view.*;

final class af extends ArrayAdapter<ae>
{
    private final DropdownChipLayouter acb;
    private final StateListDrawable adU;
    
    public af(final Context context, final ae ae, final DropdownChipLayouter acb, final StateListDrawable adU) {
        super(context, DropdownChipLayouter.c(DropdownChipLayouter$AdapterType.ada), (Object[])new ae[] { ae });
        this.acb = acb;
        this.adU = adU;
    }
    
    public final View getView(final int n, final View view, final ViewGroup viewGroup) {
        return this.acb.a(view, viewGroup, (ae)this.getItem(n), n, DropdownChipLayouter$AdapterType.ada, this.adU);
    }
}
