package com.android.email.activity;

import android.view.*;

public final class a
{
    public static void e(final View view, final int n, final int visibility) {
        final View viewById = view.findViewById(n);
        if (viewById != null) {
            viewById.setVisibility(visibility);
        }
    }
    
    public static <T extends View> T m(final View view, final int n) {
        final View viewById = view.findViewById(n);
        if (viewById == null) {
            throw new IllegalArgumentException("View doesn't exist");
        }
        return (T)viewById;
    }
}
