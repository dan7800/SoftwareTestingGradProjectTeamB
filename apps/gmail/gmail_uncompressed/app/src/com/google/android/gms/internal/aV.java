package com.google.android.gms.internal;

import com.google.android.gms.fitness.data.*;

public final class av
{
    private static final ThreadLocal<String> bUm;
    
    static {
        bUm = new ThreadLocal<String>();
    }
    
    public static boolean Rf() {
        final String s = av.bUm.get();
        return s == null || s.startsWith("com.google");
    }
    
    public static DataSource a(final DataSource dataSource) {
        if (dataSource.ML()) {
            final String s = av.bUm.get();
            if (!Rf() && !s.equals(dataSource.getAppPackageName())) {
                return dataSource.MM();
            }
        }
        return dataSource;
    }
    
    public static String gr(final String s) {
        final String s2 = av.bUm.get();
        if (s == null || s2 == null) {
            return s;
        }
        final byte[] array = new byte[s.length() + s2.length()];
        System.arraycopy(s.getBytes(), 0, array, 0, s.length());
        System.arraycopy(s2.getBytes(), 0, array, s.length(), s2.length());
        final int length = array.length;
        final int n = 0 + (length & 0xFFFFFFFC);
        int i = 0;
        int n2 = 0;
        while (i < n) {
            final int n3 = -862048943 * ((0xFF & array[i]) | (0xFF & array[i + 1]) << 8 | (0xFF & array[i + 2]) << 16 | array[i + 3] << 24);
            final int n4 = n2 ^ 461845907 * (n3 << 15 | n3 >>> 17);
            n2 = -430675100 + 5 * (n4 << 13 | n4 >>> 19);
            i += 4;
        }
        final int n5 = length & 0x3;
        int n6 = 0;
        while (true) {
            int n8 = 0;
            Label_0279: {
                int n7 = 0;
                switch (n5) {
                    default: {
                        n7 = n2;
                        break;
                    }
                    case 3: {
                        n8 = (0xFF & array[n + 2]) << 16;
                        break Label_0279;
                    }
                    case 1: {
                        final int n9 = -862048943 * (n6 | (0xFF & array[n]));
                        n7 = (n2 ^ 461845907 * (n9 << 15 | n9 >>> 17));
                        break;
                    }
                    case 2: {
                        n8 = 0;
                        break Label_0279;
                    }
                }
                final int n10 = n7 ^ length;
                final int n11 = -2048144789 * (n10 ^ n10 >>> 16);
                final int n12 = -1028477387 * (n11 ^ n11 >>> 13);
                return Integer.toHexString(n12 ^ n12 >>> 16);
            }
            n6 = (n8 | (0xFF & array[n + 1]) << 8);
            continue;
        }
    }
}
