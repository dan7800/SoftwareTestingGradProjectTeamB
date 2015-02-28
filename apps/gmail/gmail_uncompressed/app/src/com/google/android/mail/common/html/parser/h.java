package com.google.android.mail.common.html.parser;

import com.google.android.mail.common.base.*;

final class h extends k
{
    private final String cuf;
    private String gi;
    
    private h(final String cuf, final String s) {
        super(s);
        this.cuf = cuf;
    }
    
    @Override
    public final String getText() {
        if (this.gi == null) {
            this.gi = StringUtil.gH(this.cuf);
        }
        return this.gi;
    }
}
