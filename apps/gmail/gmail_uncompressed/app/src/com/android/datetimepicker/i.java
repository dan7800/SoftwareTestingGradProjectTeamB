package com.android.datetimepicker;

import android.view.*;
import android.animation.*;
import android.os.*;
import android.annotation.*;

public final class i
{
    public static ObjectAnimator a(final View view, final float n, final float n2) {
        final Keyframe ofFloat = Keyframe.ofFloat(0.0f, 1.0f);
        final Keyframe ofFloat2 = Keyframe.ofFloat(0.275f, n);
        final Keyframe ofFloat3 = Keyframe.ofFloat(0.69f, n2);
        final Keyframe ofFloat4 = Keyframe.ofFloat(1.0f, 1.0f);
        final ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder((Object)view, new PropertyValuesHolder[] { PropertyValuesHolder.ofKeyframe("scaleX", new Keyframe[] { ofFloat, ofFloat2, ofFloat3, ofFloat4 }), PropertyValuesHolder.ofKeyframe("scaleY", new Keyframe[] { ofFloat, ofFloat2, ofFloat3, ofFloat4 }) });
        ofPropertyValuesHolder.setDuration(544L);
        return ofPropertyValuesHolder;
    }
    
    @SuppressLint({ "NewApi" })
    public static void a(final View view, final CharSequence charSequence) {
        boolean b;
        if (Build$VERSION.SDK_INT >= 16) {
            b = true;
        }
        else {
            b = false;
        }
        if (b && view != null && charSequence != null) {
            view.announceForAccessibility(charSequence);
        }
    }
    
    public static int y(final int n, final int n2) {
        switch (n) {
            default: {
                throw new IllegalArgumentException("Invalid Month");
            }
            case 0:
            case 2:
            case 4:
            case 6:
            case 7:
            case 9:
            case 11: {
                return 31;
            }
            case 3:
            case 5:
            case 8:
            case 10: {
                return 30;
            }
            case 1: {
                if (n2 % 4 == 0) {
                    return 29;
                }
                return 28;
            }
        }
    }
}
