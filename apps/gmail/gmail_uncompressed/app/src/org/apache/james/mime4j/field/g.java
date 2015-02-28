package org.apache.james.mime4j.field;

import java.util.*;
import org.apache.james.mime4j.field.datetime.parser.*;

public final class g extends k
{
    private Date cEi;
    private ParseException cEj;
    
    protected g(final String s, final String s2, final String s3, final Date cEi, final ParseException cEj) {
        super(s, s2, s3);
        this.cEi = cEi;
        this.cEj = cEj;
    }
    
    public final Date getDate() {
        return this.cEi;
    }
}
