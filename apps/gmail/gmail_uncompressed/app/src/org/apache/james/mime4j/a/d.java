package org.apache.james.mime4j.a;

import java.io.*;
import org.apache.james.mime4j.*;

public class d extends InputStream
{
    private static f cDh;
    private InputStream cDZ;
    b cEa;
    b cEb;
    private byte cEc;
    
    static {
        d.cDh = new f();
    }
    
    public d(final InputStream cdz) {
        this.cEa = new b();
        this.cEb = new b();
        this.cEc = 0;
        this.cDZ = cdz;
    }
    
    private static byte d(final byte b) {
        if (b >= 48 && b <= 57) {
            return (byte)(b - 48);
        }
        if (b >= 65 && b <= 90) {
            return (byte)(10 + (b - 65));
        }
        if (b >= 97 && b <= 122) {
            return (byte)(10 + (b - 97));
        }
        throw new IllegalArgumentException((char)b + " is not a hexadecimal digit");
    }
    
    @Override
    public void close() {
        this.cDZ.close();
    }
    
    @Override
    public int read() {
        byte b = 0;
    Label_0092_Outer:
        while (this.cEa.CW() == 0) {
            if (this.cEb.CW() == 0) {
                Label_0102: {
                    if (this.cEb.CW() == 0) {
                    Label_0092:
                        while (true) {
                            Label_0221: {
                                Label_0198: {
                                    int read;
                                    while (true) {
                                        read = this.cDZ.read();
                                        switch (read) {
                                            default: {
                                                break Label_0092;
                                            }
                                            case -1: {
                                                break Label_0198;
                                            }
                                            case 9:
                                            case 32: {
                                                this.cEb.c((byte)read);
                                                continue Label_0092_Outer;
                                            }
                                            case 10:
                                            case 13: {
                                                break Label_0221;
                                            }
                                        }
                                    }
                                    this.cEb.c((byte)read);
                                    break Label_0102;
                                }
                                this.cEb.clear();
                                break Label_0102;
                            }
                            this.cEb.clear();
                            continue Label_0092;
                        }
                    }
                }
                if (this.cEb.CW() == 0) {
                    break;
                }
            }
            final byte aaG = this.cEb.aaG();
            switch (this.cEc) {
                default: {
                    final f cDh = d.cDh;
                    f.error("Illegal state: " + this.cEc);
                    this.cEc = 0;
                    this.cEa.c(aaG);
                    continue;
                }
                case 0: {
                    if (aaG != 61) {
                        this.cEa.c(aaG);
                        continue;
                    }
                    this.cEc = 1;
                    continue;
                }
                case 1: {
                    if (aaG == 13) {
                        this.cEc = 2;
                        continue;
                    }
                    if ((aaG >= 48 && aaG <= 57) || (aaG >= 65 && aaG <= 70) || (aaG >= 97 && aaG <= 102)) {
                        this.cEc = 3;
                        b = aaG;
                        continue;
                    }
                    if (aaG == 61) {
                        final f cDh2 = d.cDh;
                        f.isWarnEnabled();
                        final f cDh3 = d.cDh;
                        f.warn("Malformed MIME; got ==");
                        this.cEa.c((byte)61);
                        continue;
                    }
                    final f cDh4 = d.cDh;
                    f.isWarnEnabled();
                    final f cDh5 = d.cDh;
                    f.warn("Malformed MIME; expected \\r or [0-9A-Z], got " + aaG);
                    this.cEc = 0;
                    this.cEa.c((byte)61);
                    this.cEa.c(aaG);
                    continue;
                }
                case 2: {
                    if (aaG == 10) {
                        this.cEc = 0;
                        continue;
                    }
                    final f cDh6 = d.cDh;
                    f.isWarnEnabled();
                    final f cDh7 = d.cDh;
                    f.warn("Malformed MIME; expected 10, got " + aaG);
                    this.cEc = 0;
                    this.cEa.c((byte)61);
                    this.cEa.c((byte)13);
                    this.cEa.c(aaG);
                    continue;
                }
                case 3: {
                    if ((aaG >= 48 && aaG <= 57) || (aaG >= 65 && aaG <= 70) || (aaG >= 97 && aaG <= 102)) {
                        final byte d = d(b);
                        final byte d2 = d(aaG);
                        this.cEc = 0;
                        this.cEa.c((byte)(d2 | d << 4));
                        continue;
                    }
                    final f cDh8 = d.cDh;
                    f.isWarnEnabled();
                    final f cDh9 = d.cDh;
                    f.warn("Malformed MIME; expected [0-9A-Z], got " + aaG);
                    this.cEc = 0;
                    this.cEa.c((byte)61);
                    this.cEa.c(b);
                    this.cEa.c(aaG);
                    continue;
                }
            }
        }
        int aaG2;
        if (this.cEa.CW() == 0) {
            aaG2 = -1;
        }
        else {
            aaG2 = this.cEa.aaG();
            if (aaG2 < 0) {
                return aaG2 & 0xFF;
            }
        }
        return aaG2;
    }
}
