package com.android.mail.browse;

import android.widget.*;
import android.content.*;
import android.util.*;
import android.content.res.*;

public class StarView extends ImageView
{
    private static final int[] auo;
    private boolean aup;
    
    static {
        auo = new int[] { 2130772232 };
    }
    
    public StarView(final Context context) {
        super(context);
    }
    
    public StarView(final Context context, final AttributeSet set) {
        super(context, set);
    }
    
    public StarView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
    }
    
    public final void aD(final boolean aup) {
        this.aup = aup;
        final Resources resources = this.getResources();
        int n;
        if (this.aup) {
            n = 2131296417;
        }
        else {
            n = 2131296416;
        }
        this.setContentDescription((CharSequence)resources.getString(n));
        this.refreshDrawableState();
    }
    
    public int[] onCreateDrawableState(final int n) {
        final int[] onCreateDrawableState = super.onCreateDrawableState(n + 1);
        if (this.aup) {
            mergeDrawableStates(onCreateDrawableState, StarView.auo);
        }
        return onCreateDrawableState;
    }
}
