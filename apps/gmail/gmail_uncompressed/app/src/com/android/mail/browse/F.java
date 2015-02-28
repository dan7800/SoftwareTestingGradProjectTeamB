package com.android.mail.browse;

import java.util.*;
import com.android.mail.providers.*;
import android.database.*;
import com.google.common.collect.*;

public final class f extends CursorWrapper
{
    private Map<String, Attachment> Qg;
    
    private f(final Cursor cursor) {
        super(cursor);
        this.Qg = (Map<String, Attachment>)Maps.aan();
    }
    
    public final Attachment oI() {
        final String string = this.getWrappedCursor().getString(2);
        Attachment attachment = this.Qg.get(string);
        if (attachment == null) {
            attachment = new Attachment((Cursor)this);
            this.Qg.put(string, attachment);
        }
        return attachment;
    }
}
