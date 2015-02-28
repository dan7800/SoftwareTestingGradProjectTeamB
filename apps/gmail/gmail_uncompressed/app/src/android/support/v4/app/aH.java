package android.support.v4.app;

import android.app.*;
import java.util.*;
import android.os.*;

class ah implements ae
{
    @Override
    public Bundle a(final Notification notification) {
        return null;
    }
    
    @Override
    public ArrayList<Parcelable> a(final W[] array) {
        return null;
    }
    
    @Override
    public Notification b(final ab ab) {
        final Notification df = ab.dF;
        df.setLatestEventInfo(ab.mContext, ab.dg, ab.dh, ab.di);
        if (ab.do > 0) {
            df.flags |= 0x80;
        }
        return df;
    }
}
