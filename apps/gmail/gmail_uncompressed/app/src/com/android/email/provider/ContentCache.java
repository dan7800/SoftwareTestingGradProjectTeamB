package com.android.email.provider;

import android.database.*;
import android.util.*;
import java.util.*;

public final class ContentCache
{
    private static int RA;
    private static final d<String> RB;
    private static final ArrayList<ContentCache> RD;
    static final d<Cursor> RE;
    private final LruCache<String, Cursor> RC;
    ContentCache$TokenList RF;
    private final e RG;
    
    static {
        ContentCache.RA = 0;
        RB = new d<String>((byte)0);
        RD = new ArrayList<ContentCache>();
        RE = new d<Cursor>();
    }
    
    private void invalidate() {
        synchronized (this) {
            this.jZ();
        }
    }
    
    private void jZ() {
        synchronized (this) {
            this.RG.RO++;
            this.RC.evictAll();
            this.RF.invalidate();
        }
    }
    
    public static void ka() {
        final Iterator<ContentCache> iterator = ContentCache.RD.iterator();
        while (iterator.hasNext()) {
            iterator.next().invalidate();
        }
    }
    
    public final int size() {
        return this.RC.size();
    }
}
