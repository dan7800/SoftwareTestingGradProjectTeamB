package com.android.ex.photo.util;

import java.io.*;
import android.util.*;

public final class a
{
    private static int a(final e e, int n, int n2, final boolean b) {
        int n3 = 1;
        if (b) {
            n += n2 - 1;
            n3 = -1;
        }
        int n4 = 0;
        while (true) {
            final int n5 = n2 - 1;
            if (n2 <= 0) {
                break;
            }
            n4 = (n4 << 8 | (0xFF & e.get(n)));
            n += n3;
            n2 = n5;
        }
        return n4;
    }
    
    private static boolean a(final e e, final long n, final int n2) {
        if (-1L >= 0L) {
            return n2 < -1L;
        }
        return e.bJ(n2);
    }
    
    public static int f(final InputStream inputStream) {
        if (inputStream != null) {
            final e e = new e(inputStream);
            if (a(e, -1L, 1)) {
                int n;
                if (e.get(0) == -1 && e.get(1) == -40) {
                    n = 1;
                }
                else {
                    n = 0;
                }
                if (n == 0) {
                    return 0;
                }
            }
            int n2 = 0;
            while (true) {
                while (a(e, -1L, n2 + 3)) {
                    final int n3 = n2 + 1;
                    int n5;
                    int n6;
                    if ((0xFF & e.get(n2)) == 0xFF) {
                        final int n4 = 0xFF & e.get(n3);
                        if (n4 == 255) {
                            n2 = n3;
                            continue;
                        }
                        n2 = n3 + 1;
                        if (n4 == 216 || n4 == 1) {
                            continue;
                        }
                        if (n4 == 217 || n4 == 218) {
                            e.bK(n2 - 4);
                            n5 = 0;
                            n6 = n2;
                        }
                        else {
                            final int a = a(e, n2, 2, false);
                            if (a < 2 || !a(e, -1L, -1 + (n2 + a))) {
                                Log.e("CameraExif", "Invalid length");
                                return 0;
                            }
                            if (n4 != 225 || a < 8 || a(e, n2 + 2, 4, false) != 1165519206 || a(e, n2 + 6, 2, false) != 0) {
                                n2 += a;
                                e.bK(n2 - 4);
                                continue;
                            }
                            final int n7 = n2 + 8;
                            final int n8 = a - 8;
                            e.bK(n7 - 4);
                            n6 = n7;
                            n5 = n8;
                        }
                    }
                    else {
                        n6 = n3;
                        n5 = 0;
                    }
                    if (n5 <= 8) {
                        return 0;
                    }
                    final int a2 = a(e, n6, 4, false);
                    if (a2 != 1229531648 && a2 != 1296891946) {
                        Log.e("CameraExif", "Invalid byte order");
                        return 0;
                    }
                    final boolean b = a2 == 1229531648;
                    final int n9 = 2 + a(e, n6 + 4, 4, b);
                    if (n9 < 10 || n9 > n5) {
                        Log.e("CameraExif", "Invalid offset");
                        return 0;
                    }
                    final int n10 = n6 + n9;
                    final int n11 = n5 - n9;
                    e.bK(n10 - 4);
                    int a3 = a(e, n10 - 2, 2, b);
                    int n12 = n10;
                    int n13 = n11;
                    while (true) {
                        final int n14 = a3 - 1;
                        if (a3 <= 0 || n13 < 12) {
                            return 0;
                        }
                        if (a(e, n12, 2, b) == 274) {
                            break;
                        }
                        n12 += 12;
                        final int n15 = n13 - 12;
                        e.bK(n12 - 4);
                        n13 = n15;
                        a3 = n14;
                    }
                    switch (a(e, n12 + 8, 2, b)) {
                        case 1: {
                            return 0;
                        }
                        default: {
                            Log.i("CameraExif", "Unsupported orientation");
                            return 0;
                        }
                        case 3: {
                            return 180;
                        }
                        case 6: {
                            return 90;
                        }
                        case 8: {
                            return 270;
                        }
                    }
                }
                int n6 = n2;
                int n5 = 0;
                continue;
            }
        }
        return 0;
    }
}
