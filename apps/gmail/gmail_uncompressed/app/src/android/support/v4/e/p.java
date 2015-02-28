package android.support.v4.e;

import java.util.*;

final class p extends n
{
    public static final p gB;
    
    static {
        gB = new p();
    }
    
    public p() {
        super(null);
    }
    
    @Override
    protected final boolean aK() {
        return q.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
    }
}
