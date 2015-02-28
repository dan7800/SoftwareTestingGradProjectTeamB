package com.android.email.service;

import android.database.*;

final class w
{
    private static final String[] Lm;
    final long Ln;
    final boolean Vs;
    final boolean Vt;
    final int Vu;
    final String Vv;
    final long Vw;
    final int dM;
    
    static {
        Lm = new String[] { "_id", "flagRead", "flagFavorite", "flagLoaded", "syncServerId", "flags", "timeStamp" };
    }
    
    public w(final Cursor cursor) {
        int vt = 1;
        this.Ln = cursor.getLong(0);
        this.Vs = (cursor.getInt(vt) != 0 && vt);
        if (cursor.getInt(2) == 0) {
            vt = 0;
        }
        this.Vt = (vt != 0);
        this.Vu = cursor.getInt(3);
        this.Vv = cursor.getString(4);
        this.dM = cursor.getInt(5);
        this.Vw = cursor.getLong(6);
    }
}
