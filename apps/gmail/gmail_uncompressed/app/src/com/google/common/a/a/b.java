package com.google.common.a.a;

import java.util.*;

public final class b
{
    private final StringBuffer cCH;
    private final Vector cCI;
    private final String cCJ;
    
    public b() {
        this.cCH = new StringBuffer();
        this.cCI = new Vector();
        this.cCJ = null;
    }
    
    public b(final String ccj) {
        this.cCH = new StringBuffer();
        this.cCI = new Vector();
        this.cCJ = ccj;
    }
    
    public final b b(final int n, final int n2, final Object o) {
        while (this.cCH.length() <= n2) {
            this.cCH.append('\u0010');
            this.cCI.addElement(null);
        }
        this.cCH.setCharAt(n2, (char)n);
        this.cCI.setElementAt(o, n2);
        return this;
    }
    
    @Override
    public final boolean equals(final Object o) {
        if (o != null) {
            if (this == o) {
                return true;
            }
            if (this.getClass() == o.getClass()) {
                final b b = (b)o;
                final StringBuffer cch = this.cCH;
                final StringBuffer cch2 = b.cCH;
                if (cch == cch2) {
                    return true;
                }
                if (cch != null && cch2 != null) {
                    final int length = cch.length();
                    if (length == cch2.length()) {
                        if (cch instanceof String && cch2 instanceof String) {
                            return cch.equals(cch2);
                        }
                        for (int i = 0; i < length; ++i) {
                            if (cch.charAt(i) != cch2.charAt(i)) {
                                return false;
                            }
                        }
                        return true;
                    }
                }
            }
        }
        return false;
    }
    
    public final Object fF(final int n) {
        if (n < 0 || n >= this.cCI.size()) {
            return null;
        }
        return this.cCI.elementAt(n);
    }
    
    public final int getType(final int n) {
        if (n < 0 || n >= this.cCH.length()) {
            return 16;
        }
        return '\u00ff' & this.cCH.charAt(n);
    }
    
    @Override
    public final int hashCode() {
        if (this.cCH != null) {
            return this.cCH.hashCode();
        }
        return super.hashCode();
    }
    
    @Override
    public final String toString() {
        return this.cCJ;
    }
}
