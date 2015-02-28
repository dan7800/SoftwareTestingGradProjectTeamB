package com.google.android.mail.common.html.parser;

import com.google.android.mail.common.base.*;

public final class g extends i
{
    private final HTML$Element cud;
    private final String cue;
    
    private g(final HTML$Element cud, final String cue) {
        M.assertTrue(cud != null);
        this.cud = cud;
        this.cue = cue;
    }
    
    public final HTML$Element Wf() {
        return this.cud;
    }
    
    @Override
    public final void a(final m m) {
        m.b(this);
    }
    
    public final String getName() {
        return this.cud.getName();
    }
    
    @Override
    public final String toString() {
        return "End Tag: " + this.cud.getName();
    }
}
