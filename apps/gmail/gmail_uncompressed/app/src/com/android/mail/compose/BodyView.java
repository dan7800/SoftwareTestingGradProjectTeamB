package com.android.mail.compose;

import android.widget.*;
import android.content.*;
import android.util.*;

public class BodyView extends EditText
{
    private f avh;
    
    public BodyView(final Context context) {
        this(context, null);
    }
    
    public BodyView(final Context context, final AttributeSet set) {
        super(context, set);
    }
    
    public final void a(final f avh) {
        this.avh = avh;
    }
    
    protected void onSelectionChanged(final int n, final int n2) {
        if (this.avh != null) {
            this.avh.N(n, n2);
        }
        super.onSelectionChanged(n, n2);
    }
}
