package com.android.mail.ui;

import android.support.v4.widget.*;
import android.view.*;
import android.content.*;
import android.util.*;

public class MailSwipeRefreshLayout extends W
{
    private View aLg;
    
    public MailSwipeRefreshLayout(final Context context) {
        this(context, null);
    }
    
    public MailSwipeRefreshLayout(final Context context, final AttributeSet set) {
        super(context, set);
    }
    
    public final void aA(final View aLg) {
        this.aLg = aLg;
    }
    
    @Override
    public final boolean cp() {
        return this.aLg.canScrollVertically(-1);
    }
}
