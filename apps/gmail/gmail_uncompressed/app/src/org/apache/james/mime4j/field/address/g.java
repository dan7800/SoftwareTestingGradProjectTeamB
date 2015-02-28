package org.apache.james.mime4j.field.address;

import java.util.*;

public class g extends a
{
    private e cEv;
    private String cEw;
    private String domain;
    
    public g(final e cEv, final String cEw, final String domain) {
        this.cEv = cEv;
        this.cEw = cEw;
        this.domain = domain;
    }
    
    public final e aaM() {
        return this.cEv;
    }
    
    public String cr(final boolean b) {
        final StringBuilder sb = new StringBuilder("<");
        String string;
        if (!b || this.cEv == null) {
            string = "";
        }
        else {
            string = this.cEv.aaL() + ":";
        }
        final StringBuilder append = sb.append(string).append(this.cEw);
        String s;
        if (this.domain == null) {
            s = "";
        }
        else {
            s = "@";
        }
        return append.append(s).append(this.domain).append(">").toString();
    }
    
    public final String getDomain() {
        return this.domain;
    }
    
    public final String getLocalPart() {
        return this.cEw;
    }
    
    @Override
    protected final void o(final ArrayList<a> list) {
        list.add(this);
    }
    
    @Override
    public String toString() {
        return this.cr(false);
    }
}
