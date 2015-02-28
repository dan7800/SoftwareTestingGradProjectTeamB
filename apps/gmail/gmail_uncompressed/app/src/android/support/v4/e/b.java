package android.support.v4.e;

import java.util.*;

public final class b
{
    private int dM;
    private boolean ge;
    private i gg;
    
    public b() {
        this.ge = a.a(Locale.getDefault());
        this.gg = a.fZ;
        this.dM = 2;
    }
    
    public final a aG() {
        if (this.dM != 2 || this.gg != a.fZ) {
            return new a(this.ge, this.dM, this.gg, (byte)0);
        }
        if (this.ge) {
            return a.gd;
        }
        return a.gc;
    }
}
