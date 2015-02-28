package org.apache.james.mime4j.field.address;

import java.util.*;

public final class e
{
    private ArrayList<String> cEu;
    
    public e(final ArrayList<String> cEu) {
        if (cEu != null) {
            this.cEu = cEu;
            return;
        }
        this.cEu = new ArrayList<String>(0);
    }
    
    public final String aaL() {
        final StringBuffer sb = new StringBuffer();
        for (int i = 0; i < this.cEu.size(); ++i) {
            sb.append("@");
            if (i < 0 || this.cEu.size() <= i) {
                throw new IndexOutOfBoundsException();
            }
            sb.append(this.cEu.get(i));
            if (i + 1 < this.cEu.size()) {
                sb.append(",");
            }
        }
        return sb.toString();
    }
}
