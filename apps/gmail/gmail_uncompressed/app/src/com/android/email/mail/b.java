package com.android.email.mail;

import java.util.*;
import com.android.emailcommon.provider.*;
import com.android.email.mail.transport.*;
import android.content.*;
import com.android.email.mail.store.*;
import com.android.mail.utils.*;
import android.os.*;
import com.android.emailcommon.mail.*;

public abstract class b
{
    static final HashMap<HostAuth, b> Qa;
    static final HashMap<String, Class<? extends b>> Qe;
    protected Account Ml;
    protected com.android.email.mail.transport.b Qb;
    protected String Qc;
    protected String Qd;
    protected Context mContext;
    
    static {
        Qa = new HashMap<HostAuth, b>();
        Qe = new HashMap<String, Class<? extends b>>();
    }
    
    public static b a(final Account ml, final Context context) {
        while (true) {
            synchronized (b.class) {
                if (b.Qa.isEmpty()) {
                    b.Qe.put(context.getString(2131296999), Pop3Store.class);
                    b.Qe.put(context.getString(2131296997), ImapStore.class);
                }
                final HostAuth z = ml.Z(context);
                b b;
                if (z == null) {
                    b = null;
                }
                else {
                    if (ml.isTemporary()) {
                        return a(ml, context, false);
                    }
                    b = com.android.email.mail.b.Qa.get(z);
                    if (b == null) {
                        b = a(ml, context, true);
                    }
                    else {
                        b.Ml = ml;
                    }
                }
                return b;
            }
            return a(ml, context, false);
        }
    }
    
    private static b a(final Account account, final Context context, final boolean b) {
        while (true) {
            while (true) {
                final Class<? extends b> clazz;
                synchronized (b.class) {
                    final Context applicationContext = context.getApplicationContext();
                    final HostAuth z = account.Z(context);
                    clazz = b.Qe.get(z.Zh);
                    if (clazz == null) {
                        final Class<? extends b> clazz2 = ServiceStore.class;
                        try {
                            final b b2 = (b)clazz2.getMethod("newInstance", Account.class, Context.class).invoke(null, account, applicationContext);
                            if (z.Ln != -1L && b) {
                                b.Qa.put(z, b2);
                            }
                            return b2;
                        }
                        catch (Exception ex) {
                            E.c(com.android.emailcommon.b.mW, String.format("exception %s invoking method %s#newInstance(Account, Context) for %s", ex.toString(), clazz2.getName(), account.Xy), new Object[0]);
                            throw new MessagingException("Can't instantiate Store for " + account.Xy);
                        }
                    }
                }
                final Class<? extends b> clazz2 = clazz;
                continue;
            }
        }
    }
    
    public static boolean iJ() {
        return true;
    }
    
    public boolean aU(final int n) {
        return n == 0;
    }
    
    public Bundle b(final String s, final String s2) {
        return null;
    }
    
    public final Account iB() {
        return this.Ml;
    }
    
    public Folder[] iK() {
        return null;
    }
    
    public abstract Bundle iL();
    
    public void iM() {
    }
    
    public Folder y(final String s) {
        return null;
    }
}
