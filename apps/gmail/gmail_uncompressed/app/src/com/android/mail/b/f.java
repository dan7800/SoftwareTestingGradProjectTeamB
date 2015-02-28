package com.android.mail.b;

import android.content.res.*;

public class f implements e
{
    private static int akA;
    private static int akB;
    private static TypedArray akz;
    
    public f(final Resources resources) {
        if (f.akz == null) {
            f.akA = (f.akz = resources.obtainTypedArray(2131689473)).length();
            f.akB = resources.getColor(2131361967);
        }
    }
    
    @Override
    public int bd(final String s) {
        return f.akz.getColor(Math.abs(s.hashCode()) % f.akA, f.akB);
    }
}
