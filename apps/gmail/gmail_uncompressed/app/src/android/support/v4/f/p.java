package android.support.v4.f;

import java.io.*;

public final class p
{
    private static final Object hk;
    private static char[] hl;
    
    static {
        hk = new Object();
        p.hl = new char[24];
    }
    
    private static int a(final char[] array, final int n, final char c, int n2, final boolean b, final int n3) {
        if (b || n > 0) {
            int n5;
            int n6;
            if (n > 99) {
                final int n4 = n / 100;
                array[n2] = (char)(n4 + 48);
                n5 = n2 + 1;
                n6 = n - n4 * 100;
            }
            else {
                n5 = n2;
                n6 = n;
            }
            if (n6 > 9 || n2 != n5) {
                final int n7 = n6 / 10;
                array[n5] = (char)(n7 + 48);
                ++n5;
                n6 -= n7 * 10;
            }
            array[n5] = (char)(n6 + 48);
            final int n8 = n5 + 1;
            array[n8] = c;
            n2 = n8 + 1;
        }
        return n2;
    }
    
    public static void a(final long n, final long n2, final PrintWriter printWriter) {
        if (n == 0L) {
            printWriter.print("--");
            return;
        }
        a(n - n2, printWriter);
    }
    
    private static void a(long n, final PrintWriter printWriter) {
        char[] hl;
        int n2;
        char c;
        int n3;
        int a;
        int n4;
        int a2;
        int n5;
        int a3;
        int n6;
        int n7;
        int a4;
        int n8;
        int n9;
        int n10;
        int n11;
        Label_0166_Outer:Label_0103_Outer:Label_0059_Outer:
        while (true) {
            while (true) {
            Label_0059:
                while (true) {
                Label_0103:
                    while (true) {
                    Label_0134:
                        while (true) {
                            while (true) {
                                synchronized (p.hk) {
                                    if (p.hl.length < 0) {
                                        p.hl = new char[0];
                                    }
                                    hl = p.hl;
                                    while (true) {
                                        if (n == 0L) {
                                            hl[0] = '0';
                                            n2 = 1;
                                            printWriter.print(new String(p.hl, 0, n2));
                                            return;
                                        }
                                        break Label_0103;
                                        hl[0] = c;
                                        a = a(hl, n3, 'd', 1, false, 0);
                                        a2 = a(hl, n4, 'h', a, a != 1, 0);
                                        a3 = a(hl, n5, 'm', a2, a2 != 1, 0);
                                        a4 = a(hl, n6, 'm', a(hl, n7, 's', a3, a3 != 1, 0), true, 0);
                                        hl[a4] = 's';
                                        n2 = a4 + 1;
                                        continue Label_0166_Outer;
                                    }
                                    // iftrue(Label_0333:, n8 <= 3600)
                                    // iftrue(Label_0339:, n8 <= 86400)
                                    // iftrue(Label_0323:, n8 <= 60)
                                    Block_7: {
                                        break Block_7;
                                    Block_6_Outer:
                                        while (true) {
                                            n9 = n8 / 60;
                                            n10 = n8 - n9 * 60;
                                            n5 = n9;
                                            n7 = n10;
                                            continue Label_0103_Outer;
                                            while (true) {
                                                n3 = n8 / 86400;
                                                n8 -= n3 * 86400;
                                                continue Label_0103;
                                                n6 = (int)(n % 1000L);
                                                n8 = (int)Math.floor(n / 1000L);
                                                continue Label_0059_Outer;
                                            }
                                            n = -n;
                                            c = '-';
                                            continue Label_0059;
                                            continue Block_6_Outer;
                                        }
                                    }
                                    n11 = n8 / 3600;
                                    n8 -= n11 * 3600;
                                    n4 = n11;
                                    continue Label_0134;
                                }
                                Label_0323: {
                                    n7 = n8;
                                }
                                n5 = 0;
                                continue Label_0103_Outer;
                            }
                            Label_0333: {
                                n4 = 0;
                            }
                            continue Label_0134;
                        }
                        Label_0339: {
                            n3 = 0;
                        }
                        continue Label_0103;
                    }
                    if (n > 0L) {
                        c = '+';
                        continue Label_0059;
                    }
                    break;
                }
                continue;
            }
        }
    }
    
    public static void b(final long n, final PrintWriter printWriter) {
        a(n, printWriter);
    }
}
