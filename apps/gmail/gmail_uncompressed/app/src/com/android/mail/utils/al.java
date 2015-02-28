package com.android.mail.utils;

import android.app.*;
import android.annotation.*;
import android.support.v4.view.*;
import android.view.accessibility.*;
import android.view.*;

public final class al
{
    @SuppressLint({ "NewApi" })
    public static void a(final Activity activity, final int n) {
        if (ag.Bh() && activity != null) {
            final Window window = activity.getWindow();
            if (window != null) {
                window.setStatusBarColor(activity.getResources().getColor(n));
            }
        }
    }
    
    public static boolean aH(final View view) {
        return ad.m(view) == 1;
    }
    
    @SuppressLint({ "NewApi" })
    public static int aI(final View view) {
        if (ag.Bf()) {
            return view.getPaddingStart();
        }
        return view.getPaddingLeft();
    }
    
    @SuppressLint({ "NewApi" })
    public static void aJ(final View view) {
        if (ag.Bf()) {
            view.setTextAlignment(5);
        }
    }
    
    public static void b(final View view, final CharSequence charSequence) {
        final AccessibilityManager accessibilityManager = (AccessibilityManager)view.getContext().getSystemService("accessibility");
        final ViewParent parent = view.getParent();
        if (accessibilityManager.isEnabled() && parent != null) {
            final AccessibilityEvent obtain = AccessibilityEvent.obtain(16384);
            view.onInitializeAccessibilityEvent(obtain);
            obtain.getText().add(charSequence);
            obtain.setContentDescription((CharSequence)null);
            parent.requestSendAccessibilityEvent(view, obtain);
        }
    }
}
