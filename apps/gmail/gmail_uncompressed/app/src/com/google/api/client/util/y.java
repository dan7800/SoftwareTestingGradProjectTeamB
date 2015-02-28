package com.google.api.client.util;

import java.io.*;
import java.util.logging.*;
import com.google.api.client.a.a.a.a.a.*;
import java.text.*;

public final class y extends ByteArrayOutputStream
{
    private final Logger cuU;
    private final int czA;
    private boolean czB;
    private final Level czC;
    private int czz;
    
    public y(final Logger logger, final Level level, final int czA) {
        this.cuU = a.ak(logger);
        this.czC = a.ak(level);
        H.cp(czA >= 0);
        this.czA = czA;
    }
    
    private static void a(final StringBuilder sb, final int n) {
        if (n == 1) {
            sb.append("1 byte");
            return;
        }
        sb.append(NumberFormat.getInstance().format(n)).append(" bytes");
    }
    
    @Override
    public final void close() {
        synchronized (this) {
            if (!this.czB) {
                if (this.czz != 0) {
                    final StringBuilder sb = new StringBuilder("Total: ");
                    a(sb, this.czz);
                    if (this.count != 0 && this.count < this.czz) {
                        sb.append(" (logging first ");
                        a(sb, this.count);
                        sb.append(")");
                    }
                    this.cuU.config(sb.toString());
                    if (this.count != 0) {
                        this.cuU.log(this.czC, this.toString("UTF-8").replaceAll("[\\x00-\\x09\\x0B\\x0C\\x0E-\\x1F\\x7F]", " "));
                    }
                }
                this.czB = true;
            }
        }
    }
    
    @Override
    public final void write(final int n) {
        synchronized (this) {
            H.cp(!this.czB);
            ++this.czz;
            if (this.count < this.czA) {
                super.write(n);
            }
        }
    }
    
    @Override
    public final void write(final byte[] array, final int n, int n2) {
        synchronized (this) {
            H.cp(!this.czB);
            this.czz += n2;
            if (this.count < this.czA) {
                final int n3 = n2 + this.count;
                if (n3 > this.czA) {
                    n2 += this.czA - n3;
                }
                super.write(array, n, n2);
            }
        }
    }
}
