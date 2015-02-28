package com.android.emailcommon;

import com.android.emailcommon.provider.*;

public final class f
{
    private static final String[] VW;
    
    static {
        VW = new String[] { "sync", "attachment", "precache" };
    }
    
    public static int l(final Account account) {
        return 0x0 | (int)account.Ln;
    }
    
    public static int m(final Account account) {
        return 0x100000 | (int)account.Ln;
    }
    
    public static int n(final Account account) {
        return 0x0 | (int)account.Ln;
    }
}
