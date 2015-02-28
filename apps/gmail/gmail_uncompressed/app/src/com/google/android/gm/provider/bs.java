package com.google.android.gm.provider;

import android.text.*;

final class bs
{
    private final String bmw;
    private final Long bmx;
    private final long mMessageId;
    
    public bs(final String bmw, final long mMessageId, final long n) {
        this.bmw = bmw;
        this.mMessageId = mMessageId;
        this.bmx = n;
    }
    
    public bs(final String bmw, final Long n) {
        this.bmw = bmw;
        this.mMessageId = n;
        this.bmx = null;
    }
    
    final String[] HH() {
        if (this.bmw != null) {
            return TextUtils.split(this.bmw, Gmail.bdI);
        }
        return new String[0];
    }
    
    final Long HI() {
        return this.bmx;
    }
    
    final long sM() {
        return this.mMessageId;
    }
}
