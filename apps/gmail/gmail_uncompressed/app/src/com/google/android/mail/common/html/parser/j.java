package com.google.android.mail.common.html.parser;

import com.google.android.mail.common.base.*;

public final class j
{
    private String cue;
    private final a cuk;
    private String value;
    
    private j(final a cuk, final String value, final String cue) {
        M.assertTrue(cuk != null);
        this.cuk = cuk;
        this.value = value;
        this.cue = cue;
    }
    
    public final a Wk() {
        return this.cuk;
    }
    
    public final String getName() {
        return this.cuk.getName();
    }
    
    public final String getValue() {
        if (this.value != null) {
            return this.value;
        }
        return "";
    }
    
    @Override
    public final String toString() {
        return "{" + this.cuk.getName() + "=" + this.value + "}";
    }
}
