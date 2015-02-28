package com.a.a;

import java.nio.charset.*;
import java.nio.*;

final class f extends CharsetDecoder
{
    private final boolean aRK;
    private final a aRL;
    private final byte aRM;
    private final byte aRN;
    private boolean aRO;
    private int aRP;
    private int aRQ;
    private boolean aRR;
    private boolean aRS;
    
    f(final e e, final a arl, final boolean ark) {
        super(e, 0.6f, 1.0f);
        this.aRL = arl;
        this.aRK = ark;
        this.aRM = e.Br();
        this.aRN = e.Bs();
    }
    
    private boolean Bt() {
        return this.aRQ != 0 || this.aRP >= 6;
    }
    
    private void Bu() {
        this.aRO = false;
        this.aRP = 0;
        this.aRQ = 0;
    }
    
    private static CoderResult a(final ByteBuffer byteBuffer) {
        byteBuffer.position(-1 + byteBuffer.position());
        return CoderResult.OVERFLOW;
    }
    
    private static CoderResult b(final ByteBuffer byteBuffer) {
        byteBuffer.position(-1 + byteBuffer.position());
        return CoderResult.malformedForLength(1);
    }
    
    @Override
    protected final CoderResult decodeLoop(final ByteBuffer byteBuffer, final CharBuffer charBuffer) {
        while (byteBuffer.hasRemaining()) {
            final byte value = byteBuffer.get();
            if (this.aRO) {
                if (value == this.aRN) {
                    if (this.Bt()) {
                        return b(byteBuffer);
                    }
                    if (this.aRR) {
                        if (!charBuffer.hasRemaining()) {
                            return a(byteBuffer);
                        }
                        charBuffer.put((char)this.aRM);
                    }
                    else {
                        this.aRS = true;
                    }
                    this.Bu();
                }
                else {
                    if (!charBuffer.hasRemaining()) {
                        return a(byteBuffer);
                    }
                    CoderResult coderResult = null;
                    final int a = this.aRL.a(value);
                    if (a >= 0) {
                        this.aRP += 6;
                        if (this.aRP < 16) {
                            this.aRQ += a << 16 - this.aRP;
                        }
                        else {
                            this.aRP -= 16;
                            this.aRQ += a >> this.aRP;
                            charBuffer.put((char)this.aRQ);
                            this.aRQ = (0xFFFF & a << 16 - this.aRP);
                            coderResult = null;
                        }
                    }
                    else if (this.aRK) {
                        coderResult = b(byteBuffer);
                    }
                    else {
                        charBuffer.put((char)value);
                        final boolean bt = this.Bt();
                        coderResult = null;
                        if (bt) {
                            coderResult = b(byteBuffer);
                        }
                        this.Bu();
                    }
                    if (coderResult != null) {
                        return coderResult;
                    }
                }
                this.aRR = false;
            }
            else if (value == this.aRM) {
                this.aRO = true;
                if (this.aRS && this.aRK) {
                    return b(byteBuffer);
                }
                this.aRR = true;
            }
            else {
                if (!charBuffer.hasRemaining()) {
                    return a(byteBuffer);
                }
                charBuffer.put((char)value);
                this.aRS = false;
            }
        }
        return CoderResult.UNDERFLOW;
    }
    
    @Override
    protected final CoderResult implFlush(final CharBuffer charBuffer) {
        if ((this.aRO && this.aRK) || this.Bt()) {
            return CoderResult.malformedForLength(1);
        }
        return CoderResult.UNDERFLOW;
    }
    
    @Override
    protected final void implReset() {
        this.Bu();
        this.aRS = false;
    }
}
