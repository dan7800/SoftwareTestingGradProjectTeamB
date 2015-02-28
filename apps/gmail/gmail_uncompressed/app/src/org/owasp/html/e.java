package org.owasp.html;

import java.util.*;

public final class e
{
    public static final b a(final b... array) {
        final LinkedHashSet<b> set = new LinkedHashSet<b>();
        for (final b b : array) {
            if (b instanceof S) {
                set.addAll((Collection<?>)((S)b).cJV);
            }
            else if (b != null) {
                set.add(b);
            }
        }
        if (set.contains(b.cGF)) {
            return b.cGF;
        }
        set.remove(b.cGE);
        switch (set.size()) {
            default: {
                return new S(set);
            }
            case 0: {
                return b.cGE;
            }
            case 1: {
                return set.iterator().next();
            }
        }
    }
}
