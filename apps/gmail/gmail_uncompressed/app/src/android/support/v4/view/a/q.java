package android.support.v4.view.a;

import java.util.*;
import android.os.*;

public class q
{
    private static final r jT;
    private final Object jU;
    
    static {
        if (Build$VERSION.SDK_INT >= 19) {
            jT = new u();
            return;
        }
        if (Build$VERSION.SDK_INT >= 16) {
            jT = new s();
            return;
        }
        jT = new w();
    }
    
    public q() {
        this.jU = q.jT.a(this);
    }
    
    public q(final Object ju) {
        this.jU = ju;
    }
    
    public static List<i> bv() {
        return null;
    }
    
    public static i bw() {
        return null;
    }
    
    public i F(final int n) {
        return null;
    }
    
    public final Object bu() {
        return this.jU;
    }
    
    public boolean performAction(final int n, final int n2, final Bundle bundle) {
        return false;
    }
}
