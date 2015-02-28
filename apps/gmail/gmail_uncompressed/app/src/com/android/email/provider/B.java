package com.android.email.provider;

import android.database.*;
import com.google.common.collect.*;
import java.util.*;
import com.android.emailcommon.*;
import com.android.mail.utils.*;
import com.android.emailcommon.b.*;
import com.android.email.service.*;
import android.text.*;
import android.os.*;
import java.io.*;
import com.android.email.*;
import android.content.*;
import com.android.emailcommon.provider.*;
import android.accounts.*;
import android.content.pm.*;

public final class b
{
    private static List<Account> E(final Context context) {
        final Cursor query = context.getContentResolver().query(Account.CONTENT_URI, Account.XO, (String)null, (String[])null, (String)null);
        if (query == null) {
            return Collections.emptyList();
        }
        final x<Account> zs = ImmutableList.Zs();
        try {
            while (query.moveToNext()) {
                final Account account = new Account();
                account.b(query);
                zs.aF(account);
            }
        }
        finally {
            query.close();
        }
        query.close();
        return zs.Zt();
    }
    
    public static void F(final Context context) {
        final x<android.accounts.Account> zs;
        synchronized (b.class) {
            final AccountManager value = AccountManager.get(context);
            final LinkedHashSet<String> set = new LinkedHashSet<String>();
            set.add(context.getString(2131296987));
            set.add(context.getString(2131296985));
            set.add(context.getString(2131296984));
            zs = ImmutableList.Zs();
            final Iterator<Object> iterator = set.iterator();
            while (iterator.hasNext()) {
                zs.h(value.getAccountsByType((String)iterator.next()));
            }
        }
        a(context, E(context), zs.Zt());
    }
    // monitorexit(b.class)
    
    private static boolean a(final Context context, final List<Account> list, final List<android.accounts.Account> list2) {
        E.c(com.android.emailcommon.b.mW, "reconcileAccountsInternal", new Object[0]);
        boolean b;
        if (m.mj()) {
            E.c(com.android.emailcommon.b.mW, "deferring reconciliation, migration in progress", new Object[0]);
            b = false;
        }
        else {
            if (!n.j(context, context.getString(2131297000))) {
                n.S(context);
            }
            else {
                n.R(context);
            }
            final Iterator<Account> iterator = list.iterator();
            int n = 0;
            b = false;
            int n2 = 0;
            while (iterator.hasNext()) {
                final Account account = iterator.next();
                final String np = account.NP;
                final com.android.email.service.o j = com.android.email.service.n.j(context, account.Ln);
                int n4 = 0;
                int n5 = 0;
                boolean b2 = false;
                Label_0376: {
                    Label_0188: {
                        if (j != null) {
                            final String accountType = j.accountType;
                            while (true) {
                                for (final android.accounts.Account account2 : list2) {
                                    if (account2.name.equalsIgnoreCase(np) && account2.type.equalsIgnoreCase(accountType)) {
                                        final int n3 = 1;
                                        if (n3 == 0) {
                                            break Label_0188;
                                        }
                                        n4 = n2;
                                        n5 = n;
                                        b2 = b;
                                        break Label_0376;
                                    }
                                }
                                final int n3 = 0;
                                continue;
                            }
                        }
                    }
                    if (j != null && (0x10 & account.dM) != 0x0) {
                        E.e(com.android.emailcommon.b.mW, "Account reconciler noticed incomplete account; ignoring", new Object[0]);
                        continue;
                    }
                    E.c(com.android.emailcommon.b.mW, "Account deleted in AccountManager; deleting from provider: " + np, new Object[0]);
                    final HostAuth z = account.Z(context);
                    E.c(com.android.emailcommon.b.mW, "deleted account with hostAuth " + z, new Object[0]);
                    if (z != null && TextUtils.equals((CharSequence)z.Zh, (CharSequence)context.getString(2131297000))) {
                        n2 = 1;
                    }
                    final com.android.email.m r = o.r(context);
                    if (r != null) {
                        r.a(context, account);
                    }
                    context.getContentResolver().delete(EmailProvider.a("uiaccount", account.Ln), (String)null, (String[])null);
                    n5 = n + 1;
                    n4 = n2;
                    b2 = true;
                }
                n = n5;
                b = b2;
                n2 = n4;
            }
            final Iterator<android.accounts.Account> iterator3 = list2.iterator();
            boolean b3 = false;
        Label_0493_Outer:
            while (iterator3.hasNext()) {
                final android.accounts.Account account3 = iterator3.next();
                final String name = account3.name;
                if (!a(list, name)) {
                    b = true;
                    E.c(com.android.emailcommon.b.mW, "Account deleted from provider; deleting from AccountManager: " + name, new Object[0]);
                    final AccountManagerFuture removeAccount = AccountManager.get(context).removeAccount(account3, (AccountManagerCallback)null, (Handler)null);
                    while (true) {
                        try {
                            removeAccount.getResult();
                            b3 = true;
                            continue Label_0493_Outer;
                        }
                        catch (OperationCanceledException ex) {
                            E.e(com.android.emailcommon.b.mW, ex.toString(), new Object[0]);
                            continue;
                        }
                        catch (AuthenticatorException ex2) {
                            E.e(com.android.emailcommon.b.mW, ex2.toString(), new Object[0]);
                            continue;
                        }
                        catch (IOException ex3) {
                            E.e(com.android.emailcommon.b.mW, ex3.toString(), new Object[0]);
                            continue;
                        }
                        break;
                    }
                }
                final com.android.email.service.o l = com.android.email.service.n.l(context, com.android.email.service.n.m(context, account3.type));
                if (l == null || !l.UT) {
                    ContentResolver.setIsSyncable(account3, "com.android.calendar", 0);
                }
                if (l == null || !l.US) {
                    ContentResolver.setIsSyncable(account3, "com.android.contacts", 0);
                }
            }
            if (b3) {
                SecurityPolicy.w(context).he();
            }
            final String string = context.getString(2131297003);
            if (!TextUtils.isEmpty((CharSequence)string)) {
                boolean b4;
                if (list.size() - n > 0) {
                    b4 = true;
                }
                else {
                    b4 = false;
                }
                final ComponentName componentName = new ComponentName(context, string);
                final PackageManager packageManager = context.getPackageManager();
                int n6;
                if (b4) {
                    n6 = 1;
                }
                else {
                    n6 = 2;
                }
                packageManager.setComponentEnabledSetting(componentName, n6, 1);
                final String tag = E.TAG;
                final StringBuilder sb = new StringBuilder("Setting compose activity to ");
                String s;
                if (b4) {
                    s = "enabled";
                }
                else {
                    s = "disabled";
                }
                E.c(tag, sb.append(s).toString(), new Object[0]);
            }
            if (n > 0) {
                E.d(com.android.emailcommon.b.mW, "Restarting because account deleted", new Object[0]);
                if (n2 != 0) {
                    com.android.email.service.n.h(context, context.getString(2131297000));
                }
                System.exit(-1);
                return b;
            }
        }
        return b;
    }
    
    private static boolean a(final List<Account> list, final String s) {
        final Iterator<Account> iterator = list.iterator();
        while (iterator.hasNext()) {
            if (iterator.next().NP.equalsIgnoreCase(s)) {
                return true;
            }
        }
        return false;
    }
}
