package android.support.v4.f;

final class c
{
    static final int[] gG;
    static final long[] gH;
    static final Object[] gI;
    
    static {
        gG = new int[0];
        gH = new long[0];
        gI = new Object[0];
    }
    
    static int a(final int[] array, final int n, final int n2) {
        final int n3 = n - 1;
        int i = 0;
        int n4 = n3;
        while (i <= n4) {
            final int n5 = i + n4 >>> 1;
            final int n6 = array[n5];
            if (n6 < n2) {
                i = n5 + 1;
            }
            else {
                if (n6 <= n2) {
                    return n5;
                }
                n4 = n5 - 1;
            }
        }
        return ~i;
    }
    
    static int a(final long[] array, final int n, final long n2) {
        final int n3 = n - 1;
        int i = 0;
        int n4 = n3;
        while (i <= n4) {
            final int n5 = i + n4 >>> 1;
            final long n6 = array[n5];
            if (n6 < n2) {
                i = n5 + 1;
            }
            else {
                if (n6 <= n2) {
                    return n5;
                }
                n4 = n5 - 1;
            }
        }
        return ~i;
    }
    
    public static boolean b(final Object o, final Object o2) {
        return o == o2 || (o != null && o.equals(o2));
    }
    
    public static int r(final int n) {
        return t(n * 4) / 4;
    }
    
    public static int s(final int n) {
        return t(n * 8) / 8;
    }
    
    private static int t(int n) {
        for (int i = 4; i < 32; ++i) {
            if (n <= -12 + (1 << i)) {
                n = -12 + (1 << i);
                break;
            }
        }
        return n;
    }
}
