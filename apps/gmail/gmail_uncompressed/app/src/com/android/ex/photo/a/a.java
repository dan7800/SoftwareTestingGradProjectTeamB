package com.android.ex.photo.a;

import java.util.*;
import android.database.*;
import android.content.*;
import android.view.*;
import android.support.v4.app.*;
import android.util.*;

public abstract class a extends b
{
    protected int ahY;
    protected SparseIntArray ahZ;
    protected final HashMap<Object, Integer> aia;
    protected Cursor eR;
    protected Context mContext;
    
    public a(final Context mContext, final p p3, final Cursor er) {
        super(p3);
        this.aia = new HashMap<Object, Integer>();
        int n;
        if (er != null) {
            n = 1;
        }
        else {
            n = 0;
        }
        this.eR = er;
        this.mContext = mContext;
        int columnIndex;
        if (n != 0) {
            columnIndex = this.eR.getColumnIndex("uri");
        }
        else {
            columnIndex = -1;
        }
        this.ahY = columnIndex;
    }
    
    private boolean bI(final int n) {
        return this.eR != null && !this.eR.isClosed() && this.eR.moveToPosition(n);
    }
    
    private void nX() {
        if (this.eR == null || this.eR.isClosed()) {
            this.ahZ = null;
            return;
        }
        final SparseIntArray ahZ = new SparseIntArray(this.eR.getCount());
        this.eR.moveToPosition(-1);
        while (this.eR.moveToNext()) {
            ahZ.append(this.eR.getString(this.ahY).hashCode(), this.eR.getPosition());
        }
        this.ahZ = ahZ;
    }
    
    @Override
    protected final String K(final int n, final int n2) {
        if (this.bI(n2)) {
            return "android:pager:" + n + ":" + this.eR.getString(this.ahY).hashCode();
        }
        return super.K(n, n2);
    }
    
    @Override
    public final Object a(final View view, final int n) {
        if (this.eR == null) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        }
        Integer value;
        if (this.bI(n)) {
            value = this.eR.getString(this.ahY).hashCode();
        }
        else {
            value = null;
        }
        final Object a = super.a(view, n);
        if (a != null) {
            this.aia.put(a, value);
        }
        return a;
    }
    
    @Override
    public final void a(final View view, final int n, final Object o) {
        this.aia.remove(o);
        super.a(view, n, o);
    }
    
    public abstract Fragment b(final Cursor p0, final int p1);
    
    @Override
    public final Fragment bH(final int n) {
        if (this.eR != null && this.bI(n)) {
            final Context mContext = this.mContext;
            return this.b(this.eR, n);
        }
        return null;
    }
    
    @Override
    public final int f(final Object o) {
        final Integer n = this.aia.get(o);
        if (n == null || this.ahZ == null) {
            return -2;
        }
        return this.ahZ.get((int)n, -2);
    }
    
    @Override
    public final int getCount() {
        if (this.eR != null) {
            return this.eR.getCount();
        }
        return 0;
    }
    
    public final Cursor getCursor() {
        return this.eR;
    }
    
    public Cursor swapCursor(final Cursor er) {
        if (Log.isLoggable("BaseCursorPagerAdapter", 2)) {
            final StringBuilder sb = new StringBuilder("swapCursor old=");
            int count;
            if (this.eR == null) {
                count = -1;
            }
            else {
                count = this.eR.getCount();
            }
            final StringBuilder append = sb.append(count).append("; new=");
            int count2;
            if (er == null) {
                count2 = -1;
            }
            else {
                count2 = er.getCount();
            }
            Log.v("BaseCursorPagerAdapter", append.append(count2).toString());
        }
        if (er == this.eR) {
            return null;
        }
        final Cursor er2 = this.eR;
        if ((this.eR = er) != null) {
            this.ahY = er.getColumnIndex("uri");
        }
        else {
            this.ahY = -1;
        }
        this.nX();
        this.notifyDataSetChanged();
        return er2;
    }
}
