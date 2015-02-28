package com.android.mail;

import android.util.*;
import java.util.*;

final class g
{
    final Queue<Pair<Long, String>> ajZ;
    int aka;
    
    private g() {
        this.ajZ = new LinkedList<Pair<Long, String>>();
        this.aka = 0;
    }
    
    private void aZ(final String s) {
        synchronized (this) {
            if (this.aka == 50) {
                this.ajZ.remove();
            }
            else {
                ++this.aka;
            }
            this.ajZ.add((Pair<Long, String>)new Pair((Object)System.currentTimeMillis(), (Object)s));
        }
    }
    
    @Override
    public final String toString() {
        final StringBuilder sb = new StringBuilder();
        for (final Pair pair : this.ajZ) {
            final Date date = new Date((long)pair.first);
            sb.append(String.format("%d-%d %d:%d:%d: ", date.getDay(), date.getMonth(), date.getHours(), date.getMinutes(), date.getSeconds()));
            sb.append((String)pair.second);
            sb.append("\n");
        }
        return sb.toString();
    }
}
