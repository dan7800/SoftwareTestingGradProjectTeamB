package org.apache.james.mime4j.field;

import org.apache.james.mime4j.*;
import com.android.mail.utils.*;
import org.apache.james.mime4j.field.datetime.*;
import org.apache.james.mime4j.field.datetime.parser.*;
import java.util.*;

public class h implements l
{
    private static f cDh;
    
    static {
        h.cDh = new f();
    }
    
    @Override
    public final k g(final String s, final String s2, final String s3) {
        ParseException ex = null;
        final String cy = E.cy(s2);
        try {
            final Date date = a.ia(cy).getDate();
            return new g(s, cy, s3, date, ex);
        }
        catch (ParseException ex2) {
            final f cDh = h.cDh;
            f.isDebugEnabled();
            ex = ex2;
            final Date date = null;
            return new g(s, cy, s3, date, ex);
        }
    }
}
