package com.google.android.gm;

import com.google.android.gsf.*;
import android.content.*;
import android.app.*;
import android.os.*;
import android.text.*;
import com.google.android.gm.preference.*;
import com.android.mail.utils.*;
import java.io.*;
import android.accounts.*;
import java.util.*;
import com.google.common.collect.*;

public final class a
{
    public static final String[] aWC;
    private static final String mW;
    private final Context mContext;
    
    static {
        mW = D.AU();
        aWC = new String[] { b.gE("mail") };
    }
    
    public a(final Context mContext) {
        this.mContext = mContext;
    }
    
    public a(final an an) {
        this.mContext = an.getContext();
    }
    
    public static void a(final Activity activity, final g g) {
        final PendingIntent activity2 = PendingIntent.getActivity((Context)activity, -1, new Intent("android.intent.action.VIEW"), 0);
        final Bundle bundle = new Bundle();
        bundle.putBoolean("allowSkip", false);
        bundle.putString("introMessage", activity.getResources().getString(2131297060));
        bundle.putParcelable("pendingIntent", (Parcelable)activity2);
        AccountManager.get((Context)activity).addAccount("com.google", "mail", (String[])null, bundle, activity, (AccountManagerCallback)new d(g, activity2, activity), (Handler)null);
    }
    
    public static void a(final Activity activity, final String s, final h h) {
        AccountManager.get((Context)activity).getAuthToken(new Account(s, "com.google"), "mail", new Bundle(), activity, (AccountManagerCallback)new e(h), (Handler)null);
    }
    
    public static void h(final Activity activity) {
        if (TextUtils.isEmpty((CharSequence)activity.getResources().getString(2131296993))) {
            a(activity, null);
            return;
        }
        f.DI().show(activity.getFragmentManager(), "new_account");
    }
    
    public static boolean y(final com.android.mail.providers.Account account) {
        return account != null && "com.google".equals(account.uf().type);
    }
    
    public final void a(final com.google.android.gm.f f) {
        AccountManager.get(this.mContext).getAccountsByTypeAndFeatures("com.google", a.aWC, (AccountManagerCallback)new com.google.android.gm.b(this, f), (Handler)null);
    }
    
    public final boolean dp(final String s) {
        final Account[] accountsByType = AccountManager.get(this.mContext).getAccountsByType("com.google");
        final int length = accountsByType.length;
        int n = 0;
        boolean b;
        while (true) {
            b = false;
            if (n >= length) {
                break;
            }
            if (accountsByType[n].name.equals(s)) {
                b = true;
                break;
            }
            ++n;
        }
        return b;
    }
    
    public final String dq(final String s) {
        if (s != null && ay.w(this.mContext, s)) {
            return s;
        }
        return null;
    }
    
    public final Account[] v(final String... array) {
        final String[] array2 = new String[array.length];
        for (int i = 0; i < array.length; ++i) {
            array2[i] = b.gE(array[i]);
        }
        try {
            return (Account[])AccountManager.get(this.mContext).getAccountsByTypeAndFeatures("com.google", array2, (AccountManagerCallback)null, (Handler)null).getResult();
        }
        catch (OperationCanceledException ex) {
            E.d(a.mW, (Throwable)ex, "Failed to get accounts", new Object[0]);
        }
        catch (IOException ex2) {
            E.d(a.mW, ex2, "Failed to get accounts", new Object[0]);
            goto Label_0074;
        }
        catch (AuthenticatorException ex3) {
            E.d(a.mW, (Throwable)ex3, "Failed to get accounts", new Object[0]);
            goto Label_0074;
        }
    }
    
    public final List<String> w(final String... array) {
        return Lists.a((List<Object>)Arrays.asList((F[])this.v(array)), (com.google.common.base.b<? super Object, ? extends String>)new c(this));
    }
}
