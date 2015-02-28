package com.google.api.client.util;

import java.lang.reflect.*;
import java.util.*;

public final class e
{
    private final Map<String, f> cyw;
    private final Map<Field, f> cyx;
    private final Object cyy;
    
    public e(final Object cyy) {
        this.cyw = (Map<String, f>)a.Yk();
        this.cyx = (Map<Field, f>)a.Yk();
        this.cyy = cyy;
    }
    
    public final void Ym() {
        for (final Map.Entry<String, f> entry : this.cyw.entrySet()) {
            ((Map)this.cyy).put(entry.getKey(), entry.getValue().Yn());
        }
        for (final Map.Entry<Field, f> entry2 : this.cyx.entrySet()) {
            t.a(entry2.getKey(), this.cyy, entry2.getValue().Yn());
        }
    }
    
    public final void a(final Field field, final Class<?> clazz, final Object o) {
        f f = this.cyx.get(field);
        if (f == null) {
            f = new f(clazz);
            this.cyx.put(field, f);
        }
        H.cp(clazz == f.cyz);
        f.cyA.add(o);
    }
}
