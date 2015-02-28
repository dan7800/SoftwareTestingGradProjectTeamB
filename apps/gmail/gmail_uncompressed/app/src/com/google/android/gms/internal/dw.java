package com.google.android.gms.internal;

public final class dw
{
    public static final int[] cad;
    public static final long[] cae;
    public static final float[] caf;
    public static final double[] cag;
    public static final boolean[] cah;
    public static final String[] cai;
    public static final byte[][] caj;
    public static final byte[] cak;
    
    static {
        cad = new int[0];
        cae = new long[0];
        caf = new float[0];
        cag = new double[0];
        cah = new boolean[0];
        cai = new String[0];
        caj = new byte[0][];
        cak = new byte[0];
    }
    
    static int ac(final int n, final int n2) {
        return n2 | n << 3;
    }
    
    public static int eN(final int n) {
        return n >>> 3;
    }
}
