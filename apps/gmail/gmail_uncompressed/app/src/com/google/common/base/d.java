package com.google.common.base;

import java.util.*;
import java.io.*;

public final class d
{
    private final c czS;
    private final String czT;
    
    private d(final c czS, final String s) {
        this.czS = czS;
        this.czT = i.ak(s);
    }
    
    public final StringBuilder a(final StringBuilder sb, final Iterator<? extends Map.Entry<?, ?>> iterator) {
        try {
            i.ak(sb);
            if (iterator.hasNext()) {
                final Map.Entry entry = (Map.Entry)iterator.next();
                final c czS = this.czS;
                sb.append(c.ax(entry.getKey()));
                sb.append(this.czT);
                final c czS2 = this.czS;
                sb.append(c.ax(entry.getValue()));
                while (iterator.hasNext()) {
                    sb.append(this.czS.separator);
                    final Map.Entry entry2 = (Map.Entry)iterator.next();
                    final c czS3 = this.czS;
                    sb.append(c.ax(entry2.getKey()));
                    sb.append(this.czT);
                    final c czS4 = this.czS;
                    sb.append(c.ax(entry2.getValue()));
                }
            }
        }
        catch (IOException ex) {
            throw new AssertionError((Object)ex);
        }
        return sb;
    }
}
