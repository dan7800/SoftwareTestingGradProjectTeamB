package org.apache.james.mime4j.field;

import org.apache.james.mime4j.field.address.parser.*;
import org.apache.james.mime4j.field.address.*;

public final class o extends k
{
    private ParseException cEg;
    private h cEq;
    
    protected o(final String s, final String s2, final String s3, final h cEq, final ParseException cEg) {
        super(s, s2, s3);
        this.cEq = cEq;
        this.cEg = cEg;
    }
}
