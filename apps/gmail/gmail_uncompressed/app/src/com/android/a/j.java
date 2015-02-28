package com.android.a;

import android.graphics.*;

public final class j extends i
{
    private static j GQ;
    
    private j() {
        super(null, false);
    }
    
    public static j ga() {
        if (j.GQ == null) {
            j.GQ = new j();
        }
        return j.GQ;
    }
    
    @Override
    public final void acquireReference() {
    }
    
    @Override
    public final int getByteCount() {
        return 0;
    }
    
    @Override
    public final void releaseReference() {
    }
}
