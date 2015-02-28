package com.android.mail.utils;

import android.content.*;
import android.text.*;
import java.util.*;
import android.net.*;
import android.content.pm.*;

public final class s
{
    private static final String mW;
    
    static {
        mW = D.AU();
    }
    
    public static Uri a(final Context context, Uri parse, final String s) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            throw new IllegalArgumentException("topic must be non-empty");
        }
        if (parse.toString().contains("%locale%")) {
            final String string = parse.toString();
            final Locale default1 = Locale.getDefault();
            parse = Uri.parse(string.replace("%locale%", default1.getLanguage() + "-" + default1.getCountry().toLowerCase()));
        }
        final Uri$Builder buildUpon = parse.buildUpon();
        buildUpon.appendQueryParameter("p", s);
        buildUpon.appendQueryParameter("version", getVersion(context));
        return buildUpon.build();
    }
    
    private static String getVersion(final Context context) {
        final String packageName = context.getApplicationInfo().packageName;
        try {
            return String.valueOf(context.getPackageManager().getPackageInfo(packageName, 0).versionCode);
        }
        catch (PackageManager$NameNotFoundException ex) {
            E.f(s.mW, "Error finding package name for application" + packageName, new Object[0]);
            throw new IllegalStateException("unable to determine package name for application");
        }
    }
}
