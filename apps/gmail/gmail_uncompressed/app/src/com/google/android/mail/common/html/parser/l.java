package com.google.android.mail.common.html.parser;

import com.google.android.mail.common.base.*;

class l extends k
{
    protected final String gi;
    
    private l(final String gi, final String s) {
        super(s);
        M.assertTrue(gi != null);
        this.gi = gi;
    }
    
    @Override
    public String getText() {
        return this.gi;
    }
}
