package com.google.android.gm;

import android.content.*;
import com.google.common.collect.*;
import android.os.*;
import com.google.android.gm.provider.*;
import java.util.*;
import android.database.*;
import com.android.mail.utils.*;

public final class ah
{
    private static ah aYM;
    private final Map<String, Long> aPd;
    private final Set<al> aYJ;
    private final Comparator<T> aYK;
    private String[] aYL;
    private String mAccount;
    private final Context mContext;
    
    private ah(final Context mContext) {
        this.aYJ = new HashSet<al>();
        this.mContext = mContext;
        this.aPd = (Map<String, Long>)Maps.aan();
        this.aYK = new ai(this);
    }
    
    public static ah aW(final Context context) {
        synchronized (ah.class) {
            if (ah.aYM == null) {
                ah.aYM = new ah(context.getApplicationContext());
            }
            return ah.aYM;
        }
    }
    
    public final Comparator<T> Db() {
        return this.aYK;
    }
    
    final al a(final String mAccount, final int n, final aw aw) {
        if (this.mAccount != null && !this.mAccount.equals(mAccount)) {
            if (!this.aPd.isEmpty()) {
                new am(this.mContext, this.mAccount, (Map<String, Long>)Maps.r((Map<?, ?>)this.aPd)).executeOnExecutor(AsyncTask.SERIAL_EXECUTOR, (Object[])new Void[0]);
                this.aPd.clear();
            }
            this.aYJ.clear();
        }
        this.mAccount = mAccount;
        final U a = Y.a(this.mContext, mAccount, System.currentTimeMillis(), 5);
        final ArrayList<Object> list = new ArrayList<Object>();
        for (int i = 0; i < a.size(); ++i) {
            list.add(a.dP(i));
        }
        Collections.sort(list, (Comparator<? super Object>)new ak());
        final ArrayList<String> list2 = new ArrayList<String>();
        final Iterator<T> iterator = list.iterator();
        while (iterator.hasNext()) {
            list2.add(iterator.next().getCanonicalName());
        }
        if (list2.isEmpty()) {
            if (this.aYL == null) {
                this.aYL = this.mContext.getResources().getStringArray(2131689497);
            }
            final String[] ayl = this.aYL;
            if (ayl.length > 0) {
                for (int length = ayl.length, j = 0; j < length; ++j) {
                    list2.add(ayl[j]);
                }
                aw.f(new aj(this, ayl));
            }
        }
        return new al(this, list2, 5, (byte)0);
    }
    
    public final void dB(final String s) {
        this.aPd.put(s, System.currentTimeMillis());
        for (final al al : this.aYJ) {
            al.a(al, s);
            al.notifyChanged();
        }
    }
}
