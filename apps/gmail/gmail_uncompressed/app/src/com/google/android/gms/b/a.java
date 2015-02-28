package com.google.android.gms.b;

import android.view.*;
import android.content.*;
import android.widget.*;
import android.graphics.*;
import com.android.ex.chips.*;

public final class a extends DropdownChipLayouter
{
    public a(final LayoutInflater layoutInflater, final Context context) {
        super(layoutInflater, context);
    }
    
    @Override
    protected final void a(final boolean b, final ae ae, final ImageView imageView, final DropdownChipLayouter$AdapterType dropdownChipLayouter$AdapterType) {
        if (dropdownChipLayouter$AdapterType != DropdownChipLayouter$AdapterType.ada || !b) {
            super.a(b, ae, imageView, dropdownChipLayouter$AdapterType);
            return;
        }
        final byte[] nc = ae.nc();
        if (nc != null && nc.length > 0) {
            imageView.setImageBitmap(BitmapFactory.decodeByteArray(nc, 0, nc.length));
            return;
        }
        imageView.setImageResource(z.adw);
    }
}
