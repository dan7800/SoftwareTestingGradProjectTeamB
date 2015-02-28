package org.apache.james.mime4j.field;

import org.apache.james.mime4j.field.address.*;
import org.apache.james.mime4j.field.address.parser.*;

public final class a extends k
{
    private b cEf;
    private ParseException cEg;
    
    protected a(final String s, final String s2, final String s3, final b cEf, final ParseException cEg) {
        super(s, s2, s3);
        this.cEf = cEf;
        this.cEg = cEg;
    }
}
