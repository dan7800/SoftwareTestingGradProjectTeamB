package com.google.android.gms.internal;

import android.os.*;
import java.util.*;
import java.math.*;
import java.security.*;

public final class s
{
    public static final Handler bSO;
    
    static {
        bSO = new Handler(Looper.getMainLooper());
    }
    
    public static String gj(final String s) {
        int i = 0;
        while (i < 2) {
            try {
                final MessageDigest instance = MessageDigest.getInstance("MD5");
                instance.update(s.getBytes());
                return String.format(Locale.US, "%032X", new BigInteger(1, instance.digest()));
            }
            catch (NoSuchAlgorithmException ex) {
                ++i;
                continue;
            }
            break;
        }
        return null;
    }
}
