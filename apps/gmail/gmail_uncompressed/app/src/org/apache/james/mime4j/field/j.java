package org.apache.james.mime4j.field;

import java.util.*;

public class j implements l
{
    private Map<String, l> cEk;
    private l cEl;
    
    public j() {
        this.cEk = new HashMap<String, l>();
        this.cEl = new r();
    }
    
    public final void a(final String s, final l l) {
        this.cEk.put(s.toLowerCase(), l);
    }
    
    @Override
    public final k g(final String s, final String s2, final String s3) {
        l cEl = this.cEk.get(s.toLowerCase());
        if (cEl == null) {
            cEl = this.cEl;
        }
        return cEl.g(s, s2, s3);
    }
}
