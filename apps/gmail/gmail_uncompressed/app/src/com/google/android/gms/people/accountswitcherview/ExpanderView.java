package com.google.android.gms.people.accountswitcherview;

import android.widget.*;
import android.content.*;
import android.util.*;
import android.content.res.*;

public class ExpanderView extends ImageButton
{
    private static final int[] chl;
    private boolean chm;
    private String chn;
    private String cho;
    
    static {
        chl = new int[] { 16842920 };
    }
    
    public ExpanderView(final Context context) {
        this(context, null);
    }
    
    public ExpanderView(final Context context, final AttributeSet set) {
        super(context, set);
        this.ck(context);
    }
    
    public ExpanderView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.ck(context);
    }
    
    private void ck(final Context context) {
        final Resources resources = context.getResources();
        this.chn = resources.getString(E.ciF);
        this.cho = resources.getString(E.ciE);
    }
    
    public final void aC(final boolean chm) {
        this.chm = chm;
        String contentDescription;
        if (this.chm) {
            contentDescription = this.cho;
        }
        else {
            contentDescription = this.chn;
        }
        this.setContentDescription((CharSequence)contentDescription);
        this.refreshDrawableState();
    }
    
    public int[] onCreateDrawableState(final int n) {
        final int[] onCreateDrawableState = super.onCreateDrawableState(n + 1);
        if (this.chm) {
            mergeDrawableStates(onCreateDrawableState, ExpanderView.chl);
        }
        return onCreateDrawableState;
    }
}
