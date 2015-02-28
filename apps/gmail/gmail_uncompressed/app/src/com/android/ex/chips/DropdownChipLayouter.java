package com.android.ex.chips;

import android.content.*;
import android.text.*;
import android.text.util.*;
import android.graphics.drawable.*;
import android.view.*;
import android.widget.*;
import android.graphics.*;
import android.net.*;

public class DropdownChipLayouter
{
    private o acT;
    private v acU;
    private final Context mContext;
    private final LayoutInflater wC;
    
    public DropdownChipLayouter(final LayoutInflater wc, final Context mContext) {
        this.wC = wc;
        this.mContext = mContext;
    }
    
    private static void a(final CharSequence text, final TextView textView) {
        if (textView == null) {
            return;
        }
        if (text != null) {
            textView.setText(text);
            textView.setVisibility(0);
            return;
        }
        textView.setVisibility(8);
    }
    
    private static int b(final DropdownChipLayouter$AdapterType dropdownChipLayouter$AdapterType) {
        switch (n.acX[dropdownChipLayouter$AdapterType.ordinal()]) {
            default: {
                return C.adA;
            }
            case 1: {
                return C.adz;
            }
            case 2: {
                return C.adA;
            }
        }
    }
    
    protected static int c(final DropdownChipLayouter$AdapterType dropdownChipLayouter$AdapterType) {
        switch (n.acX[dropdownChipLayouter$AdapterType.ordinal()]) {
            default: {
                return C.adA;
            }
            case 1: {
                return C.adz;
            }
            case 2: {
                return C.adA;
            }
        }
    }
    
    public final View a(View inflate, final ViewGroup viewGroup, final ae ae, final int n, final DropdownChipLayouter$AdapterType dropdownChipLayouter$AdapterType, final StateListDrawable imageDrawable) {
        String displayName = ae.getDisplayName();
        String mu = ae.mU();
        boolean b = true;
        final String upperCase = this.acU.getTypeLabel(this.mContext.getResources(), ae.mV(), ae.mW()).toString().toUpperCase();
        int n2 = b(dropdownChipLayouter$AdapterType);
        switch (n.acX[dropdownChipLayouter$AdapterType.ordinal()]) {
            case 3: {
                n2 = c(dropdownChipLayouter$AdapterType);
                break;
            }
        }
        if (inflate == null) {
            inflate = this.wC.inflate(n2, viewGroup, false);
        }
        final p p6 = new p(this, inflate);
        String s2 = null;
        String s3 = null;
        String s4 = null;
        Label_0152: {
            switch (n.acX[dropdownChipLayouter$AdapterType.ordinal()]) {
                case 1: {
                    if (TextUtils.isEmpty((CharSequence)displayName) || TextUtils.equals((CharSequence)displayName, (CharSequence)mu)) {
                        if (ae.na()) {
                            displayName = mu;
                            mu = null;
                        }
                        else {
                            displayName = mu;
                        }
                    }
                    String s;
                    boolean b2;
                    if (!ae.na()) {
                        s = null;
                        b2 = false;
                    }
                    else {
                        final boolean b3 = b;
                        s = displayName;
                        b2 = b3;
                    }
                    if (p6.adh != null) {
                        final View adh = p6.adh;
                        int visibility;
                        if (n == 0) {
                            visibility = 0;
                        }
                        else {
                            visibility = 8;
                        }
                        adh.setVisibility(visibility);
                        s2 = s;
                        b = b2;
                        s3 = mu;
                        s4 = upperCase;
                        break Label_0152;
                    }
                    s2 = s;
                    b = b2;
                    s3 = mu;
                    s4 = upperCase;
                    break Label_0152;
                }
                case 2: {
                    if (n != 0) {
                        s3 = mu;
                        s4 = upperCase;
                        b = false;
                        s2 = null;
                        break Label_0152;
                    }
                    break;
                }
                case 3: {
                    final String address = Rfc822Tokenizer.tokenize((CharSequence)ae.mU())[0].getAddress();
                    s2 = displayName;
                    s3 = address;
                    s4 = null;
                    break Label_0152;
                }
            }
            s2 = displayName;
            s3 = mu;
            s4 = upperCase;
        }
        a(s2, p6.adc);
        a(s3, p6.add);
        a(s4, p6.ade);
        this.a(b, ae, p6.adf, dropdownChipLayouter$AdapterType);
        final ImageView adg = p6.adg;
        if (adg != null) {
            if (imageDrawable == null) {
                adg.setVisibility(8);
            }
            adg.setImageDrawable((Drawable)imageDrawable);
            if (this.acT != null) {
                adg.setOnClickListener((View$OnClickListener)new m(this, imageDrawable));
            }
        }
        return inflate;
    }
    
    public final View a(final DropdownChipLayouter$AdapterType dropdownChipLayouter$AdapterType) {
        return this.wC.inflate(b(dropdownChipLayouter$AdapterType), (ViewGroup)null);
    }
    
    public final void a(final o acT) {
        this.acT = acT;
    }
    
    public final void a(final v acU) {
        this.acU = acU;
    }
    
    protected void a(final boolean b, final ae ae, final ImageView imageView, final DropdownChipLayouter$AdapterType dropdownChipLayouter$AdapterType) {
        if (imageView == null) {
            return;
        }
        if (b) {
            switch (n.acX[dropdownChipLayouter$AdapterType.ordinal()]) {
                case 1: {
                    final byte[] nc = ae.nc();
                    if (nc != null && nc.length > 0) {
                        imageView.setImageBitmap(BitmapFactory.decodeByteArray(nc, 0, nc.length));
                        break;
                    }
                    imageView.setImageResource(z.adw);
                    break;
                }
                case 2: {
                    final Uri nb = ae.nb();
                    if (nb != null) {
                        imageView.setImageURI(nb);
                        break;
                    }
                    imageView.setImageResource(z.adw);
                    break;
                }
            }
            imageView.setVisibility(0);
            return;
        }
        imageView.setVisibility(8);
    }
}
