package com.google.android.gsf;

import android.content.*;

public final class b
{
    public static final Intent cnl;
    
    static {
        cnl = new Intent().setPackage("com.google.android.gsf.login").setAction("com.google.android.gsf.action.GET_GLS").addCategory("android.intent.category.DEFAULT");
    }
    
    public static String gE(final String s) {
        return "service_" + s;
    }
}
