package android.support.v4.app;

import android.app.*;
import android.os.*;
import java.util.*;

class af extends am
{
    @Override
    public final ArrayList<Parcelable> a(final W[] array) {
        return ap.a(array);
    }
    
    @Override
    public Notification b(final ab ab) {
        final aq aq = new aq(ab.mContext, ab.dF, ab.dg, ab.dh, ab.dm, ab.dk, ab.dn, ab.di, ab.dj, ab.dl, ab.dt, ab.du, ab.dv, ab.dp, ab.dq, ab.do, ab.ds, ab.dA, ab.dG, ab.cV, ab.dw, ab.dx, ab.dy);
        V.a(aq, ab.dz);
        V.a(aq, ab.dr);
        return aq.build();
    }
}
