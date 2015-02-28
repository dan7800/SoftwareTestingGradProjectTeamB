package com.google.android.gms.internal;

import java.util.*;
import java.io.*;

final class dq
{
    private dn<?, ?> bZY;
    private Object bZZ;
    private List<dv> caa;
    
    dq() {
        this.caa = new ArrayList<dv>();
    }
    
    private byte[] toByteArray() {
        final byte[] array = new byte[this.Ma()];
        this.a(vx.m(array));
        return array;
    }
    
    final int Ma() {
        int ah;
        if (this.bZZ != null) {
            ah = this.bZY.ah(this.bZZ);
        }
        else {
            final Iterator<dv> iterator = this.caa.iterator();
            ah = 0;
            while (iterator.hasNext()) {
                final dv dv = iterator.next();
                ah += 0 + vx.eL(dv.tag) + dv.akI.length;
            }
        }
        return ah;
    }
    
    final void a(final vx vx) {
        if (this.bZZ != null) {
            this.bZY.a(this.bZZ, vx);
        }
        else {
            for (final dv dv : this.caa) {
                vx.eK(dv.tag);
                vx.n(dv.akI);
            }
        }
    }
    
    @Override
    public final boolean equals(final Object o) {
        boolean b;
        if (o == this) {
            b = true;
        }
        else {
            final boolean b2 = o instanceof dq;
            b = false;
            if (b2) {
                final dq dq = (dq)o;
                if (this.bZZ != null && dq.bZZ != null) {
                    final dn<?, ?> bzy = this.bZY;
                    final dn<?, ?> bzy2 = dq.bZY;
                    b = false;
                    if (bzy == bzy2) {
                        if (!this.bZY.bZS.isArray()) {
                            return this.bZZ.equals(dq.bZZ);
                        }
                        if (this.bZZ instanceof byte[]) {
                            return Arrays.equals((byte[])this.bZZ, (byte[])dq.bZZ);
                        }
                        if (this.bZZ instanceof int[]) {
                            return Arrays.equals((int[])this.bZZ, (int[])dq.bZZ);
                        }
                        if (this.bZZ instanceof long[]) {
                            return Arrays.equals((long[])this.bZZ, (long[])dq.bZZ);
                        }
                        if (this.bZZ instanceof float[]) {
                            return Arrays.equals((float[])this.bZZ, (float[])dq.bZZ);
                        }
                        if (this.bZZ instanceof double[]) {
                            return Arrays.equals((double[])this.bZZ, (double[])dq.bZZ);
                        }
                        if (this.bZZ instanceof boolean[]) {
                            return Arrays.equals((boolean[])this.bZZ, (boolean[])dq.bZZ);
                        }
                        return Arrays.deepEquals((Object[])this.bZZ, (Object[])dq.bZZ);
                    }
                }
                else {
                    if (this.caa != null && dq.caa != null) {
                        return this.caa.equals(dq.caa);
                    }
                    try {
                        return Arrays.equals(this.toByteArray(), dq.toByteArray());
                    }
                    catch (IOException ex) {
                        throw new IllegalStateException(ex);
                    }
                }
            }
        }
        return b;
    }
    
    @Override
    public final int hashCode() {
        try {
            return Arrays.hashCode(this.toByteArray()) + 527;
        }
        catch (IOException ex) {
            throw new IllegalStateException(ex);
        }
    }
}
