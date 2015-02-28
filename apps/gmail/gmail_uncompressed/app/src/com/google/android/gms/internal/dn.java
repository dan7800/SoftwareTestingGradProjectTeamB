package com.google.android.gms.internal;

import java.io.*;
import java.lang.reflect.*;

public final class dn<M extends dm<M>, T>
{
    protected final Class<T> bZS;
    protected final boolean bZT;
    protected final int tag;
    protected final int type;
    
    private int ai(final Object o) {
        final int en = dw.eN(this.tag);
        switch (this.type) {
            default: {
                throw new IllegalArgumentException("Unknown type " + this.type);
            }
            case 10: {
                return 2 * vx.eJ(en) + ((dt)o).SP();
            }
            case 11: {
                return vx.b(en, (dt)o);
            }
        }
    }
    
    private void b(final Object o, final vx vx) {
        Label_0102: {
            try {
                vx.eK(this.tag);
                switch (this.type) {
                    default: {
                        throw new IllegalArgumentException("Unknown type " + this.type);
                    }
                    case 10: {
                        break;
                    }
                    case 11: {
                        break Label_0102;
                    }
                }
            }
            catch (IOException ex) {
                throw new IllegalStateException(ex);
            }
            final dt dt = (dt)o;
            final int en = dw.eN(this.tag);
            dt.a(vx);
            vx.ab(en, 4);
            return;
        }
        vx.a((dt)o);
    }
    
    final void a(final Object o, final vx vx) {
        if (this.bZT) {
            for (int length = Array.getLength(o), i = 0; i < length; ++i) {
                final Object value = Array.get(o, i);
                if (value != null) {
                    this.b(value, vx);
                }
            }
        }
        else {
            this.b(o, vx);
        }
    }
    
    final int ah(final Object o) {
        int ai = 0;
        if (this.bZT) {
            for (int length = Array.getLength(o), i = 0; i < length; ++i) {
                if (Array.get(o, i) != null) {
                    ai += this.ai(Array.get(o, i));
                }
            }
        }
        else {
            ai = this.ai(o);
        }
        return ai;
    }
}
