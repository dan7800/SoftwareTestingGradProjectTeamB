package com.a.a;

import java.nio.*;
import java.nio.charset.*;

final class g extends CharsetEncoder
{
    static boolean aRW;
    private final boolean aRK;
    private final a aRL;
    private final byte aRM;
    private final byte aRN;
    private boolean aRO;
    private final e aRT;
    private int aRU;
    private int aRV;
    
    static {
        final String property = System.getProperty("java.specification.version");
        g.aRW = ((g.aRW = ("1.4".equals(property) || "1.5".equals(property))) & "Sun Microsystems Inc.".equals(System.getProperty("java.vm.vendor")));
    }
    
    g(final e art, final a arl, final boolean ark) {
        super(art, 1.5f, 5.0f);
        this.aRT = art;
        this.aRL = arl;
        this.aRK = ark;
        this.aRM = art.Br();
        this.aRN = art.Bs();
    }
    
    @Override
    protected final CoderResult encodeLoop(final CharBuffer charBuffer, final ByteBuffer byteBuffer) {
        while (charBuffer.hasRemaining()) {
            if (byteBuffer.remaining() < 4) {
                return CoderResult.OVERFLOW;
            }
            final char value = charBuffer.get();
            if (this.aRT.e(value)) {
                if (this.aRO) {
                    if (this.aRU != 0) {
                        byteBuffer.put(this.aRL.du(this.aRV));
                    }
                    if (this.aRL.d(value) || value == this.aRN || this.aRK) {
                        byteBuffer.put(this.aRN);
                    }
                    this.aRO = false;
                    this.aRV = 0;
                    this.aRU = 0;
                }
                byteBuffer.put((byte)value);
            }
            else if (!this.aRO && value == this.aRM) {
                byteBuffer.put(this.aRM);
                byteBuffer.put(this.aRN);
            }
            else {
                if (!this.aRO) {
                    byteBuffer.put(this.aRM);
                }
                this.aRO = true;
                this.aRU += 16;
                while (this.aRU >= 6) {
                    this.aRU -= 6;
                    this.aRV += value >> this.aRU;
                    this.aRV &= 0x3F;
                    byteBuffer.put(this.aRL.du(this.aRV));
                    this.aRV = 0;
                }
                this.aRV = (0x3F & value << 6 - this.aRU);
            }
        }
        if (this.aRO && g.aRW && byteBuffer.limit() != 5.0f * charBuffer.limit()) {
            return CoderResult.OVERFLOW;
        }
        return CoderResult.UNDERFLOW;
    }
    
    @Override
    protected final CoderResult implFlush(final ByteBuffer byteBuffer) {
        if (this.aRO) {
            if (byteBuffer.remaining() < 2) {
                return CoderResult.OVERFLOW;
            }
            if (this.aRU != 0) {
                byteBuffer.put(this.aRL.du(this.aRV));
            }
            byteBuffer.put(this.aRN);
        }
        return CoderResult.UNDERFLOW;
    }
    
    @Override
    protected final void implReset() {
        this.aRO = false;
        this.aRV = 0;
        this.aRU = 0;
    }
}
