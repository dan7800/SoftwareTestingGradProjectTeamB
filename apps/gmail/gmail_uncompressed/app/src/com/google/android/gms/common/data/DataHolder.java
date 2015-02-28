package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.safeparcel.*;
import android.database.*;
import com.google.android.gms.common.internal.*;
import android.util.*;
import android.net.*;
import android.os.*;

public final class DataHolder implements SafeParcelable
{
    public static final i CREATOR;
    private static final d bEc;
    private final int bBS;
    private final String[] bDU;
    Bundle bDV;
    private final CursorWindow[] bDW;
    private final Bundle bDX;
    int[] bDY;
    int bDZ;
    private Object bEa;
    private boolean bEb;
    private final int btV;
    boolean mClosed;
    
    static {
        CREATOR = new i();
        bEc = new c(new String[0]);
    }
    
    DataHolder(final int btV, final String[] bdu, final CursorWindow[] bdw, final int bbs, final Bundle bdx) {
        this.mClosed = false;
        this.bEb = true;
        this.btV = btV;
        this.bDU = bdu;
        this.bDW = bdw;
        this.bBS = bbs;
        this.bDX = bdx;
    }
    
    private void j(final String s, final int n) {
        if (this.bDV == null || !this.bDV.containsKey(s)) {
            throw new IllegalArgumentException("No such column: " + s);
        }
        if (this.isClosed()) {
            throw new IllegalArgumentException("Buffer is closed.");
        }
        if (n < 0 || n >= this.bDZ) {
            throw new CursorIndexOutOfBoundsException(n, this.bDZ);
        }
    }
    
    final int Jt() {
        return this.btV;
    }
    
    public final Bundle KJ() {
        return this.bDX;
    }
    
    public final void KK() {
        int i = 0;
        this.bDV = new Bundle();
        for (int j = 0; j < this.bDU.length; ++j) {
            this.bDV.putInt(this.bDU[j], j);
        }
        this.bDY = new int[this.bDW.length];
        int bdz = 0;
        while (i < this.bDW.length) {
            this.bDY[i] = bdz;
            bdz += this.bDW[i].getNumRows() - (bdz - this.bDW[i].getStartPosition());
            ++i;
        }
        this.bDZ = bdz;
    }
    
    final String[] KL() {
        return this.bDU;
    }
    
    final CursorWindow[] KM() {
        return this.bDW;
    }
    
    public final void Z(final Object bEa) {
        this.bEa = bEa;
    }
    
    public final long a(final String s, final int n, final int n2) {
        this.j(s, n);
        return this.bDW[n2].getLong(n, this.bDV.getInt(s));
    }
    
    public final int b(final String s, final int n, final int n2) {
        this.j(s, n);
        return this.bDW[n2].getInt(n, this.bDV.getInt(s));
    }
    
    public final String c(final String s, final int n, final int n2) {
        this.j(s, n);
        return this.bDW[n2].getString(n, this.bDV.getInt(s));
    }
    
    public final void close() {
        synchronized (this) {
            if (!this.mClosed) {
                this.mClosed = true;
                for (int i = 0; i < this.bDW.length; ++i) {
                    this.bDW[i].close();
                }
            }
        }
    }
    
    public final boolean d(final String s, final int n, final int n2) {
        this.j(s, n);
        return Long.valueOf(this.bDW[n2].getLong(n, this.bDV.getInt(s))) == 1L;
    }
    
    public final int describeContents() {
        return 0;
    }
    
    public final float e(final String s, final int n, final int n2) {
        this.j(s, n);
        return this.bDW[n2].getFloat(n, this.bDV.getInt(s));
    }
    
    public final int ex(final int n) {
        int i = 0;
        G.cc(n >= 0 && n < this.bDZ);
        while (i < this.bDY.length) {
            if (n < this.bDY[i]) {
                --i;
                break;
            }
            ++i;
        }
        if (i == this.bDY.length) {
            --i;
        }
        return i;
    }
    
    public final double f(final String s, final int n, final int n2) {
        this.j(s, n);
        return this.bDW[n2].getDouble(n, this.bDV.getInt(s));
    }
    
    public final boolean fR(final String s) {
        return this.bDV.containsKey(s);
    }
    
    @Override
    protected final void finalize() {
        try {
            if (this.bEb && this.bDW.length > 0 && !this.isClosed()) {
                String s;
                if (this.bEa == null) {
                    s = "internal object: " + this.toString();
                }
                else {
                    s = this.bEa.toString();
                }
                Log.e("DataBuffer", "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (" + s + ")");
                this.close();
            }
        }
        finally {
            super.finalize();
        }
    }
    
    public final byte[] g(final String s, final int n, final int n2) {
        this.j(s, n);
        return this.bDW[n2].getBlob(n, this.bDV.getInt(s));
    }
    
    public final int getCount() {
        return this.bDZ;
    }
    
    public final int getStatusCode() {
        return this.bBS;
    }
    
    public final Uri h(final String s, final int n, final int n2) {
        final String c = this.c(s, n, n2);
        if (c == null) {
            return null;
        }
        return Uri.parse(c);
    }
    
    public final boolean i(final String s, final int n, final int n2) {
        this.j(s, n);
        return this.bDW[n2].isNull(n, this.bDV.getInt(s));
    }
    
    public final boolean isClosed() {
        synchronized (this) {
            return this.mClosed;
        }
    }
    
    public final void writeToParcel(final Parcel parcel, final int n) {
        i.a(this, parcel, n);
    }
}
