package org.apache.james.mime4j.field;

import org.apache.james.mime4j.*;
import org.apache.james.mime4j.field.address.*;
import org.apache.james.mime4j.field.address.parser.*;

public class b implements l
{
    private static f cDh;
    
    static {
        b.cDh = new f();
    }
    
    @Override
    public final k g(final String s, final String s2, final String s3) {
        ParseException ex = null;
        try {
            final org.apache.james.mime4j.field.address.b hx = org.apache.james.mime4j.field.address.b.hX(s2);
            return new a(s, s2, s3, hx, ex);
        }
        catch (ParseException ex2) {
            final f cDh = b.cDh;
            f.isDebugEnabled();
            ex = ex2;
            final org.apache.james.mime4j.field.address.b hx = null;
            return new a(s, s2, s3, hx, ex);
        }
    }
}
