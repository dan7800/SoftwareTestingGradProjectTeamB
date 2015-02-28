package com.google.android.gm.preference;

import android.preference.*;
import android.content.*;
import android.util.*;
import android.view.*;
import android.widget.*;

public final class z extends Preference
{
    public z(final Context context) {
        this(context, (byte)0);
    }
    
    private z(final Context context, final byte b) {
        this(context, null);
    }
    
    private z(final Context context, final AttributeSet set) {
        super(context, (AttributeSet)null, 0);
        this.setLayoutResource(2130968732);
    }
    
    protected final void onBindView(final View view) {
        super.onBindView(view);
        ((TextView)view.findViewById(2131558872)).setText(this.getTitle());
    }
    
    public final void setSummary(final int n) {
        throw new UnsupportedOperationException();
    }
    
    public final void setSummary(final CharSequence charSequence) {
        throw new UnsupportedOperationException();
    }
}
