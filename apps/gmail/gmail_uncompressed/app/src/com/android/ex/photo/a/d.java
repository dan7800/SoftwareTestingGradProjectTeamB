package com.android.ex.photo.a;

import android.support.v4.f.*;
import android.content.*;
import android.database.*;
import com.android.ex.photo.d.*;
import android.support.v4.app.*;
import com.android.ex.photo.*;

public final class d extends a
{
    protected boolean ahl;
    protected n<String, Integer> aif;
    protected final float aig;
    
    public d(final Context context, final p p5, final Cursor cursor, final float aig, final boolean ahl) {
        super(context, p5, null);
        this.aif = new n<String, Integer>(com.android.ex.photo.d.b.Lm.length);
        this.aig = aig;
        this.ahl = ahl;
    }
    
    private String a(final Cursor cursor, final String s) {
        if (this.aif.containsKey(s)) {
            return cursor.getString((int)this.aif.get(s));
        }
        return null;
    }
    
    @Override
    public final Fragment b(final Cursor cursor, final int n) {
        final String a = this.a(cursor, "contentUri");
        final String a2 = this.a(cursor, "thumbnailUri");
        final String a3 = this.a(cursor, "loadingIndicator");
        final boolean b = a3 != null && Boolean.valueOf(a3);
        boolean b2 = false;
        if (a == null) {
            b2 = false;
            if (b) {
                b2 = true;
            }
        }
        final f a4 = e.a(this.mContext, com.android.ex.photo.b.a.class);
        a4.aS(a).aT(a2).aj(this.ahl).s(this.aig);
        return com.android.ex.photo.b.a.a(a4.nE(), n, b2);
    }
    
    public final String e(final Cursor cursor) {
        return this.a(cursor, "contentUri");
    }
    
    public final String f(final Cursor cursor) {
        return this.a(cursor, "thumbnailUri");
    }
    
    @Override
    public final Cursor swapCursor(final Cursor cursor) {
        int i = 0;
        this.aif.clear();
        if (cursor != null) {
            for (final String s : com.android.ex.photo.d.b.Lm) {
                this.aif.put(s, cursor.getColumnIndexOrThrow(s));
            }
            for (String[] aiy = com.android.ex.photo.d.b.aiy; i < aiy.length; ++i) {
                final String s2 = aiy[i];
                final int columnIndex = cursor.getColumnIndex(s2);
                if (columnIndex != -1) {
                    this.aif.put(s2, columnIndex);
                }
            }
        }
        return super.swapCursor(cursor);
    }
}
