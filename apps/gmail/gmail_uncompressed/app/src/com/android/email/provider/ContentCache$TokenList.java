package com.android.email.provider;

import com.android.email.*;
import java.util.*;

class ContentCache$TokenList extends ArrayList<c>
{
    private static final long serialVersionUID = 1L;
    private final String mLogTag;
    
    final void invalidate() {
        final boolean debug = b.DEBUG;
        final Iterator<c> iterator = this.iterator();
        while (iterator.hasNext()) {
            iterator.next().invalidate();
        }
        this.clear();
    }
}
