package com.android.mail.utils;

import android.content.res.*;
import android.webkit.*;

public final class h
{
    public static void a(final Resources resources, final WebSettings webSettings) {
        webSettings.setTextZoom((int)(resources.getConfiguration().fontScale * (resources.getInteger(2131427371) * webSettings.getTextZoom() / resources.getInteger(2131427372))));
    }
}
