package org.apache.james.mime4j.field;

import org.apache.james.mime4j.*;
import org.apache.james.mime4j.field.address.parser.*;
import org.apache.james.mime4j.field.address.*;

public class n implements l
{
    private static f cDh;
    
    static {
        n.cDh = new f();
    }
    
    @Override
    public final k g(final String s, final String s2, final String s3) {
        while (true) {
            while (true) {
                try {
                    final h aaI = b.hX(s2).aaI();
                    if (aaI.size() > 0) {
                        final g fm = aaI.fM(0);
                        final ParseException ex = null;
                        final g g = fm;
                        return new m(s, s2, s3, g, ex);
                    }
                }
                catch (ParseException ex) {
                    final f cDh = n.cDh;
                    f.isDebugEnabled();
                    final g g = null;
                    return new m(s, s2, s3, g, ex);
                }
                final g fm = null;
                continue;
            }
        }
    }
}
