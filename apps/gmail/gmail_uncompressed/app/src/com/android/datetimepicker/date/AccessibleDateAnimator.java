package com.android.datetimepicker.date;

import android.widget.*;
import android.content.*;
import android.util.*;
import android.view.accessibility.*;
import android.text.format.*;

public class AccessibleDateAnimator extends ViewAnimator
{
    private long HL;
    
    public AccessibleDateAnimator(final Context context, final AttributeSet set) {
        super(context, set);
    }
    
    public final void d(final long hl) {
        this.HL = hl;
    }
    
    public boolean dispatchPopulateAccessibilityEvent(final AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() == 32) {
            accessibilityEvent.getText().clear();
            accessibilityEvent.getText().add(DateUtils.formatDateTime(this.getContext(), this.HL, 22));
            return true;
        }
        return super.dispatchPopulateAccessibilityEvent(accessibilityEvent);
    }
}
