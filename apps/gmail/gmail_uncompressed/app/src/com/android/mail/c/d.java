package com.android.mail.c;

import com.android.mail.utils.*;
import android.database.*;
import android.os.*;

public class d extends CursorWrapper
{
    private static final String mW;
    private final ThreadLocal<Integer> awY;
    private final Object fK;
    
    static {
        mW = D.AU();
    }
    
    public d(final Cursor cursor) {
        super(cursor);
        this.fK = new Object();
        this.awY = new e(this);
    }
    
    private void sZ() {
        final int intValue = this.awY.get();
        if (!super.moveToPosition(intValue) && intValue >= 0) {
            E.f(d.mW, "Unexpected failure to move to current position, pos=%d", intValue);
        }
    }
    
    public void copyStringToBuffer(final int n, final CharArrayBuffer charArrayBuffer) {
        synchronized (this.fK) {
            this.sZ();
            super.copyStringToBuffer(n, charArrayBuffer);
        }
    }
    
    public byte[] getBlob(final int n) {
        synchronized (this.fK) {
            this.sZ();
            return super.getBlob(n);
        }
    }
    
    public double getDouble(final int n) {
        synchronized (this.fK) {
            this.sZ();
            return super.getDouble(n);
        }
    }
    
    public float getFloat(final int n) {
        synchronized (this.fK) {
            this.sZ();
            return super.getFloat(n);
        }
    }
    
    public int getInt(final int n) {
        synchronized (this.fK) {
            this.sZ();
            return super.getInt(n);
        }
    }
    
    public long getLong(final int n) {
        synchronized (this.fK) {
            this.sZ();
            return super.getLong(n);
        }
    }
    
    public int getPosition() {
        return this.awY.get();
    }
    
    public short getShort(final int n) {
        synchronized (this.fK) {
            this.sZ();
            return super.getShort(n);
        }
    }
    
    public String getString(final int n) {
        synchronized (this.fK) {
            this.sZ();
            return super.getString(n);
        }
    }
    
    public boolean isNull(final int n) {
        synchronized (this.fK) {
            this.sZ();
            return super.isNull(n);
        }
    }
    
    public boolean move(final int n) {
        return this.moveToPosition(n + this.awY.get());
    }
    
    public boolean moveToFirst() {
        return this.moveToPosition(0);
    }
    
    public boolean moveToLast() {
        return this.moveToPosition(-1 + this.getCount());
    }
    
    public boolean moveToNext() {
        return this.moveToPosition(1 + this.awY.get());
    }
    
    public boolean moveToPosition(final int n) {
        final int count = this.getCount();
        if (n >= count) {
            this.awY.set(count);
            return false;
        }
        if (n < 0) {
            this.awY.set(-1);
            return false;
        }
        if (n == this.awY.get()) {
            return true;
        }
        this.awY.set(n);
        return true;
    }
    
    public boolean moveToPrevious() {
        return this.moveToPosition(-1 + this.awY.get());
    }
    
    public Bundle respond(final Bundle bundle) {
        if ((0x1 & bundle.getInt("options")) != 0x0) {
            synchronized (this.fK) {
                this.sZ();
                return super.respond(bundle);
            }
        }
        return super.respond(bundle);
    }
}
