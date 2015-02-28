package org.apache.james.mime4j.field.address;

import java.util.*;
import org.apache.james.mime4j.field.address.parser.*;
import java.io.*;

public final class b
{
    private ArrayList<a> cEr;
    
    public b(final ArrayList<a> cEr) {
        if (cEr != null) {
            this.cEr = cEr;
            return;
        }
        this.cEr = new ArrayList<a>(0);
    }
    
    private a fL(final int n) {
        if (n < 0 || this.cEr.size() <= n) {
            throw new IndexOutOfBoundsException();
        }
        return this.cEr.get(n);
    }
    
    public static b hX(final String s) {
        return c.aaJ().a(new AddressListParser(new StringReader(s)).aaN());
    }
    
    public final h aaI() {
        int i = 0;
        while (true) {
            while (i < this.cEr.size()) {
                if (!(this.fL(i) instanceof g)) {
                    final int n = 1;
                    if (n == 0) {
                        return new h(this.cEr, true);
                    }
                    final ArrayList<a> list = new ArrayList<a>();
                    for (int j = 0; j < this.cEr.size(); ++j) {
                        this.fL(j).n(list);
                    }
                    return new h(list, false);
                }
                else {
                    ++i;
                }
            }
            final int n = 0;
            continue;
        }
    }
}
