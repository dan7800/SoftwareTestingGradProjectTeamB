package com.android.email.activity.setup;

import android.preference.*;
import android.content.*;
import android.util.*;
import android.view.*;
import android.widget.*;

public class PolicyListPreference extends Preference
{
    public PolicyListPreference(final Context context, final AttributeSet set) {
        super(context, set);
    }
    
    public PolicyListPreference(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
    }
    
    protected void onBindView(final View view) {
        super.onBindView(view);
        ((TextView)view.findViewById(16908304)).setMaxLines(24);
    }
}
