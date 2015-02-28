package com.android.ex.chips;

import android.database.*;

public final class i
{
    public final int acA;
    public final String acB;
    public final long acC;
    public final Long acD;
    public final long acE;
    public final String acF;
    public final int acG;
    public final String acH;
    public final String acv;
    public final String acz;
    
    public i(final Cursor cursor, final Long acD) {
        this.acv = cursor.getString(0);
        this.acz = cursor.getString(1);
        this.acA = cursor.getInt(2);
        this.acB = cursor.getString(3);
        this.acC = cursor.getLong(4);
        this.acD = acD;
        this.acE = cursor.getLong(5);
        this.acF = cursor.getString(6);
        this.acG = cursor.getInt(7);
        this.acH = cursor.getString(8);
    }
}
