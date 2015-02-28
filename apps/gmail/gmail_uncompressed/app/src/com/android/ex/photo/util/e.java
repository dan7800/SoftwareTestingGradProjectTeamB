package com.android.ex.photo.util;

import android.util.*;
import java.util.*;
import java.io.*;

public final class e
{
    private InputStream aiF;
    private byte[] aiG;
    private boolean aiH;
    private int aiI;
    private int gY;
    
    public e(final InputStream aiF) {
        this.gY = 0;
        this.aiI = 0;
        this.aiF = aiF;
        this.aiG = new byte[bM(16)];
        this.aiH = false;
    }
    
    private boolean bL(final int n) {
        f.beginSection("fill");
        if (n < this.gY) {
            f.endSection();
            throw new IllegalStateException(String.format("Index %d is before buffer %d", n, this.gY));
        }
        int n2 = n - this.gY;
        if (this.aiF == null) {
            f.endSection();
            return false;
        }
        final int n3 = n2 + 1;
        Label_0209: {
            if (n3 > this.aiG.length) {
                if (!this.aiH) {
                    break Label_0209;
                }
                this.bK(n);
                n2 = n - this.gY;
            }
            int read;
            int bm;
            Label_0138_Outer:Label_0155_Outer:
            while (true) {
                while (true) {
                Label_0279:
                    while (true) {
                        try {
                            read = this.aiF.read(this.aiG, this.aiI, this.aiG.length - this.aiI);
                            if (read == -1) {
                                break Label_0279;
                            }
                            this.aiI += read;
                            if (Log.isLoggable("InputStreamBuffer", 3)) {
                                Log.d("InputStreamBuffer", String.format("fill %d      buffer: %s", n2, this));
                            }
                            f.endSection();
                            if (n2 < this.aiI) {
                                return true;
                            }
                            break;
                            bm = bM(n3);
                            Log.w("InputStreamBuffer", String.format("Increasing buffer length from %d to %d. Bad buffer size chosen, or advanceTo() not called.", this.aiG.length, bm));
                            this.aiG = Arrays.copyOf(this.aiG, bm);
                            continue Label_0138_Outer;
                        }
                        catch (IOException ex) {
                            read = -1;
                            continue Label_0155_Outer;
                        }
                        break;
                    }
                    this.aiF = null;
                    continue;
                }
            }
        }
        return false;
    }
    
    private static int bM(final int n) {
        final int n2 = n - 1;
        final int n3 = n2 | n2 >> 1;
        final int n4 = n3 | n3 >> 2;
        final int n5 = n4 | n4 >> 4;
        final int n6 = n5 | n5 >> 8;
        return 1 + (n6 | n6 >> 16);
    }
    
    public final boolean bJ(final int n) {
        f.beginSection("has");
        if (n < this.gY) {
            f.endSection();
            throw new IllegalStateException(String.format("Index %d is before buffer %d", n, this.gY));
        }
        final int n2 = n - this.gY;
        if (n2 >= this.aiI || n2 >= this.aiG.length) {
            f.endSection();
            return this.bL(n);
        }
        f.endSection();
        return true;
    }
    
    public final void bK(final int n) {
        f.beginSection("advance to");
        final int n2 = n - this.gY;
        if (n2 <= 0) {
            f.endSection();
            return;
        }
        Label_0129: {
            if (n2 < this.aiI) {
                if (n2 >= this.aiG.length) {
                    throw new IndexOutOfBoundsException(String.format("Index %d out of bounds. Length %d", n2, this.aiG.length));
                }
                for (int n3 = 0; n3 + n2 < this.aiI; ++n3) {
                    this.aiG[n3] = this.aiG[n3 + n2];
                }
                this.gY = n;
                this.aiI -= n2;
            }
            else if (this.aiF != null) {
                int n4 = n2 - this.aiI;
                int n5 = 0;
                while (true) {
                    Label_0266: {
                        if (n4 <= 0) {
                            break Label_0266;
                        }
                        while (true) {
                            while (true) {
                                try {
                                    final long skip = this.aiF.skip(n4);
                                    if (skip <= 0L) {
                                        ++n5;
                                    }
                                    else {
                                        n4 -= (int)skip;
                                    }
                                    if (n5 >= 5) {
                                        final int n6 = n4;
                                        final int n7 = 1;
                                        if (n7 != 0) {
                                            this.aiF = null;
                                        }
                                        this.gY = n - n6;
                                        this.aiI = 0;
                                        break Label_0129;
                                    }
                                    break;
                                    final int n6 = n4;
                                    final int n7 = 0;
                                    continue;
                                }
                                catch (IOException ex) {
                                    final int n6 = n4;
                                    final int n7 = 1;
                                    continue;
                                }
                                continue;
                            }
                        }
                    }
                }
            }
            else {
                this.gY = n;
                this.aiI = 0;
            }
        }
        if (Log.isLoggable("InputStreamBuffer", 3)) {
            Log.d("InputStreamBuffer", String.format("advanceTo %d buffer: %s", n2, this));
        }
        f.endSection();
    }
    
    public final byte get(final int n) {
        f.beginSection("get");
        if (this.bJ(n)) {
            final int n2 = n - this.gY;
            f.endSection();
            return this.aiG[n2];
        }
        f.endSection();
        throw new IndexOutOfBoundsException(String.format("Index %d beyond length.", n));
    }
    
    @Override
    public final String toString() {
        return String.format("+%d+%d [%d]", this.gY, this.aiG.length, this.aiI);
    }
}
