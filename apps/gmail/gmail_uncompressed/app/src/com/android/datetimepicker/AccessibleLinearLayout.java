package com.android.datetimepicker;

import android.content.*;
import android.util.*;
import android.widget.*;
import android.view.accessibility.*;

public class AccessibleLinearLayout extends LinearLayout
{
    public AccessibleLinearLayout(final Context context, final AttributeSet set) {
        super(context, set);
    }
    
    public void onInitializeAccessibilityEvent(final AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName((CharSequence)Button.class.getName());
    }
    
    public void onInitializeAccessibilityNodeInfo(final AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName((CharSequence)Button.class.getName());
    }
}
