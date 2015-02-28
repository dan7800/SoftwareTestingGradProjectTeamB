package org.apache.james.mime4j.field.address;

import java.util.*;

public final class f extends a
{
    private h cEq;
    private String name;
    
    public f(final String name, final h cEq) {
        this.name = name;
        this.cEq = cEq;
    }
    
    @Override
    protected final void o(final ArrayList<a> list) {
        for (int i = 0; i < this.cEq.size(); ++i) {
            list.add(this.cEq.fM(i));
        }
    }
    
    @Override
    public final String toString() {
        final StringBuffer sb = new StringBuffer();
        sb.append(this.name);
        sb.append(":");
        for (int i = 0; i < this.cEq.size(); ++i) {
            sb.append(this.cEq.fM(i).toString());
            if (i + 1 < this.cEq.size()) {
                sb.append(",");
            }
        }
        sb.append(";");
        return sb.toString();
    }
}
