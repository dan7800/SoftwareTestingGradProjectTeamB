package com.android.mail.utils;

import android.text.*;
import android.view.*;
import android.text.style.*;
import com.android.mail.text.*;

public final class ac
{
    public static void a(final Spannable spannable, final View$OnClickListener view$OnClickListener) {
        int i = 0;
        for (URLSpan[] array = (URLSpan[])spannable.getSpans(0, spannable.length(), (Class)URLSpan.class); i < array.length; ++i) {
            final URLSpan urlSpan = array[i];
            final int spanStart = spannable.getSpanStart((Object)urlSpan);
            final int spanEnd = spannable.getSpanEnd((Object)urlSpan);
            spannable.removeSpan((Object)urlSpan);
            spannable.setSpan((Object)new d(null), spanStart, spanEnd, 33);
        }
    }
}
