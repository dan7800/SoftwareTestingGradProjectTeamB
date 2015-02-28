package android.support.v4.app;

import android.app.*;
import android.os.*;
import java.util.*;

class am extends al
{
    @Override
    public final Bundle a(final Notification notification) {
        return notification.extras;
    }
    
    @Override
    public Notification b(final ab ab) {
        final az az = new az(ab.mContext, ab.dF, ab.dg, ab.dh, ab.dm, ab.dk, ab.dn, ab.di, ab.dj, ab.dl, ab.dt, ab.du, ab.dv, ab.dp, ab.dq, ab.do, ab.ds, ab.dA, ab.dG, ab.cV, ab.dw, ab.dx, ab.dy);
        V.a(az, ab.dz);
        V.a(az, ab.dr);
        return az.build();
    }
}
