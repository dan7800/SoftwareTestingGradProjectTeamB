package org.apache.james.mime4j.field;

import java.util.*;
import org.apache.james.mime4j.field.contenttype.parser.*;

public final class e extends k
{
    private Map<String, String> cDk;
    private ParseException cEh;
    private String mimeType;
    
    protected e(final String s, final String s2, final String s3, final String mimeType, final Map<String, String> cDk, final ParseException cEh) {
        super(s, s2, s3);
        this.mimeType = "";
        this.cDk = null;
        this.mimeType = mimeType;
        this.cDk = cDk;
        this.cEh = cEh;
    }
}
