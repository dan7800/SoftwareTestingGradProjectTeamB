package org.apache.james.mime4j.field;

import org.apache.james.mime4j.*;
import org.apache.james.mime4j.field.address.parser.*;
import org.apache.james.mime4j.field.address.*;

public class p implements l
{
    private static f cDh;
    
    static {
        p.cDh = new f();
    }
    
    @Override
    public final k g(final String s, final String s2, final String s3) {
        ParseException ex = null;
        try {
            final h aaI = b.hX(s2).aaI();
            return new o(s, s2, s3, aaI, ex);
        }
        catch (ParseException ex2) {
            final f cDh = p.cDh;
            f.isDebugEnabled();
            ex = ex2;
            final h aaI = null;
            return new o(s, s2, s3, aaI, ex);
        }
    }
}
