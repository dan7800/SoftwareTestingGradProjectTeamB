package android.support.v4.app;

import android.app.*;
import android.os.*;
import java.util.*;

class al extends ah
{
    @Override
    public Bundle a(final Notification notification) {
        return aw.a(notification);
    }
    
    @Override
    public ArrayList<Parcelable> a(final W[] array) {
        return aw.a(array);
    }
    
    @Override
    public Notification b(final ab ab) {
        final ax ax = new ax(ab.mContext, ab.dF, ab.dg, ab.dh, ab.dm, ab.dk, ab.dn, ab.di, ab.dj, ab.dl, ab.dt, ab.du, ab.dv, ab.dq, ab.do, ab.ds, ab.dA, ab.cV, ab.dw, ab.dx, ab.dy);
        V.a(ax, ab.dz);
        V.a(ax, ab.dr);
        return ax.build();
    }
}
