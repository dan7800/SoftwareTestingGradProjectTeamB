package com.android.mail.ui.settings;

import android.preference.*;
import android.content.*;
import android.util.*;
import com.android.mail.*;

public class FancySummaryListPreference extends ListPreference
{
    private CharSequence[] aON;
    
    public FancySummaryListPreference(final Context context) {
        this(context, null);
    }
    
    public FancySummaryListPreference(final Context context, final AttributeSet set) {
        super(context, set);
        this.aON = context.obtainStyledAttributes(set, i.rN, 0, 0).getTextArray(0);
    }
    
    public void setValue(final String value) {
        super.setValue(value);
        final int indexOfValue = this.findIndexOfValue(value);
        CharSequence summary;
        if (indexOfValue >= 0 && indexOfValue < this.aON.length) {
            summary = this.aON[indexOfValue];
        }
        else {
            summary = null;
        }
        this.setSummary(summary);
    }
}
