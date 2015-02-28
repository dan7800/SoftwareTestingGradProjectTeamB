package com.google.android.gms.location.reporting;

public final class a
{
    public static int eP(int n) {
        switch (n) {
            default: {
                int n2;
                if (n > 0) {
                    n2 = 1;
                }
                else {
                    n2 = 0;
                }
                if (n2 != 0) {
                    n = 99;
                    return n;
                }
                return -3;
            }
            case -2:
            case -1:
            case 0:
            case 1: {
                return n;
            }
        }
    }
}
