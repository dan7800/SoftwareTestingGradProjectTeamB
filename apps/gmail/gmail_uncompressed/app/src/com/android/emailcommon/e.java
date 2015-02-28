package com.android.emailcommon;

import java.io.*;
import android.content.*;

public final class e
{
    private static File VV;
    
    static {
        e.VV = null;
    }
    
    public static void V(final Context context) {
        e.VV = context.getCacheDir();
    }
    
    public static File kM() {
        if (e.VV == null) {
            throw new RuntimeException("TempDirectory not set.  If in a unit test, call Email.setTempDirectory(context) in setUp().");
        }
        return e.VV;
    }
}
