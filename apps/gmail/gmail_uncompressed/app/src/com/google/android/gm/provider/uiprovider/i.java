package com.google.android.gm.provider.uiprovider;

import android.database.*;
import java.util.*;

public class i extends CursorWrapper
{
    private final Map<String, Integer> aPH;
    protected final String[] boF;
    
    public i(final Cursor cursor, final String[] boF) {
        super(cursor);
        this.boF = boF;
        final int length = this.boF.length;
        this.aPH = new HashMap<String, Integer>(length, 1.0f);
        for (int i = 0; i < length; ++i) {
            this.aPH.put(this.boF[i], i);
        }
    }
    
    protected void Ig() {
    }
    
    protected final String eb(final int n) {
        String string = super.getString(n);
        if (string == null) {
            string = "";
        }
        return string;
    }
    
    public int getColumnIndex(final String s) {
        final Integer n = this.aPH.get(s);
        if (n != null) {
            return n;
        }
        return -1;
    }
    
    public int getColumnIndexOrThrow(final String s) {
        final int columnIndex = this.getColumnIndex(s);
        if (columnIndex == -1) {
            throw new IllegalArgumentException("Column not found: " + s);
        }
        return columnIndex;
    }
    
    public String getColumnName(final int n) {
        return this.boF[n];
    }
    
    public String[] getColumnNames() {
        return this.boF;
    }
    
    public boolean move(final int n) {
        return this.moveToPosition(n + this.getPosition());
    }
    
    public boolean moveToFirst() {
        return this.moveToPosition(0);
    }
    
    public boolean moveToLast() {
        return this.moveToPosition(-1 + this.getCount());
    }
    
    public boolean moveToNext() {
        return this.moveToPosition(1 + this.getPosition());
    }
    
    public boolean moveToPosition(final int n) {
        if (this.getPosition() != n) {
            this.Ig();
        }
        return super.moveToPosition(n);
    }
    
    public boolean moveToPrevious() {
        return this.moveToPosition(-1 + this.getPosition());
    }
}
