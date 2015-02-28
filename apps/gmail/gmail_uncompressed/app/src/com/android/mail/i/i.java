package com.android.mail.i;

public final class i
{
    private static j axT;
    
    public static void a(final j axT) {
        i.axT = axT;
    }
    
    public static d tX() {
        if (i.axT != null) {
            return i.axT.tX();
        }
        return null;
    }
}
