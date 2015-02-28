package com.android.email;

import android.app.admin.*;
import com.android.emailcommon.provider.*;
import com.android.mail.utils.*;
import com.android.email.provider.*;
import android.database.*;
import com.android.email.service.*;
import com.android.emailcommon.b.*;
import java.util.*;
import android.os.*;
import android.content.*;

public final class SecurityPolicy
{
    private static SecurityPolicy Mb;
    private DevicePolicyManager Mc;
    private final ComponentName Md;
    private Policy Me;
    private Context mContext;
    
    static {
        SecurityPolicy.Mb = null;
    }
    
    private SecurityPolicy(final Context context) {
        this.mContext = context.getApplicationContext();
        this.Mc = null;
        this.Md = new ComponentName(context, (Class)SecurityPolicy$PolicyAdmin.class);
        this.Me = null;
    }
    
    private void V(final boolean b) {
        if (!b) {
            final Context mContext = this.mContext;
            final ContentResolver contentResolver = mContext.getContentResolver();
            final Cursor query = contentResolver.query(Account.CONTENT_URI, EmailContent.XT, "policyKey IS NOT NULL AND policyKey!=0", (String[])null, (String)null);
            try {
                E.e("Email", "Email administration disabled; deleting " + query.getCount() + " secured account(s)", new Object[0]);
                while (query.moveToNext()) {
                    contentResolver.delete(EmailProvider.a("uiaccount", query.getLong(0)), (String)null, (String[])null);
                }
            }
            finally {
                query.close();
            }
            query.close();
            this.he();
            b.F(mContext);
        }
    }
    
    public static void a(final Context context, final long n, final boolean b) {
        final Account k = Account.k(context, n);
        if (k != null) {
            a(context, k, b);
            if (b) {
                o.r(context).a(k);
            }
        }
    }
    
    public static void a(final Context context, final Account account, final boolean b) {
        if (b) {
            account.dM |= 0x20;
        }
        else {
            account.dM &= 0xFFFFFFDF;
        }
        final ContentValues contentValues = new ContentValues();
        contentValues.put("flags", account.dM);
        account.a(context, contentValues);
    }
    
    public static void b(final Context context, final int n) {
        final SecurityPolicy w = w(context);
        switch (n) {
            case 1: {
                w.V(true);
            }
            case 2: {
                w.V(false);
            }
            case 3: {
                Account.ab(context);
                o.r(context).gI();
            }
            case 4: {
                final Context mContext = w.mContext;
                final long longValue = s.a(mContext, Policy.CONTENT_URI, Policy.XT, "passwordExpirationDays>0", null, "passwordExpirationDays ASC", -1L);
                long z;
                if (longValue < 0L) {
                    z = -1L;
                }
                else {
                    z = Policy.z(mContext, longValue);
                }
                if (z == -1L) {
                    break;
                }
                int n2;
                if (w.hd().getPasswordExpiration(w.Md) - System.currentTimeMillis() < 0L) {
                    n2 = 1;
                }
                else {
                    n2 = 0;
                }
                final m r = o.r(mContext);
                if (n2 == 0) {
                    r.g(z);
                    return;
                }
                if (x(mContext)) {
                    r.h(z);
                    return;
                }
                break;
            }
        }
    }
    
    private static void b(final Context context, final Account account) {
        final android.accounts.Account account2 = new android.accounts.Account(account.NP, n.l(context, account.aa(context)).accountType);
        final Bundle bundle = new Bundle(3);
        bundle.putBoolean("force", true);
        bundle.putBoolean("do_not_retry", true);
        bundle.putBoolean("expedited", true);
        ContentResolver.requestSync(account2, EmailContent.AUTHORITY, bundle);
        E.d("Email", "requestSync SecurityPolicy syncAccount %s, %s", account.toString(), bundle.toString());
    }
    
    private Policy hb() {
        final Policy policy = new Policy();
        policy.ZM = Integer.MIN_VALUE;
        policy.ZL = Integer.MIN_VALUE;
        policy.ZN = Integer.MAX_VALUE;
        policy.ZP = Integer.MIN_VALUE;
        policy.ZO = Integer.MAX_VALUE;
        policy.ZQ = Integer.MIN_VALUE;
        policy.ZR = Integer.MAX_VALUE;
        policy.ZS = false;
        policy.ZT = false;
        policy.ZU = false;
        final Cursor query = this.mContext.getContentResolver().query(Policy.CONTENT_URI, Policy.XO, (String)null, (String[])null, (String)null);
        final Policy policy2 = new Policy();
        boolean b = false;
        try {
            while (query.moveToNext()) {
                policy2.b(query);
                if (com.android.email.b.DEBUG) {
                    E.c("Email", "Aggregate from: " + policy2, new Object[0]);
                }
                policy.ZM = Math.max(policy2.ZM, policy.ZM);
                policy.ZL = Math.max(policy2.ZL, policy.ZL);
                if (policy2.ZN > 0) {
                    policy.ZN = Math.min(policy2.ZN, policy.ZN);
                }
                if (policy2.ZR > 0) {
                    policy.ZR = Math.min(policy2.ZR, policy.ZR);
                }
                if (policy2.ZP > 0) {
                    policy.ZP = Math.max(policy2.ZP, policy.ZP);
                }
                if (policy2.ZO > 0) {
                    policy.ZO = Math.min(policy2.ZO, policy.ZO);
                }
                if (policy2.ZQ > 0) {
                    policy.ZQ = Math.max(policy2.ZQ, policy.ZQ);
                }
                policy.ZS |= policy2.ZS;
                policy.ZT |= policy2.ZT;
                policy.ZW |= policy2.ZW;
                b = true;
            }
            query.close();
            if (b) {
                if (policy.ZM == Integer.MIN_VALUE) {
                    policy.ZM = 0;
                }
                if (policy.ZL == Integer.MIN_VALUE) {
                    policy.ZL = 0;
                }
                if (policy.ZN == Integer.MAX_VALUE) {
                    policy.ZN = 0;
                }
                if (policy.ZR == Integer.MAX_VALUE) {
                    policy.ZR = 0;
                }
                if (policy.ZP == Integer.MIN_VALUE) {
                    policy.ZP = 0;
                }
                if (policy.ZO == Integer.MAX_VALUE) {
                    policy.ZO = 0;
                }
                if (policy.ZQ == Integer.MIN_VALUE) {
                    policy.ZQ = 0;
                }
                if (com.android.email.b.DEBUG) {
                    E.c("Email", "Calculated Aggregate: " + policy, new Object[0]);
                }
                return policy;
            }
        }
        finally {
            query.close();
        }
        if (com.android.email.b.DEBUG) {
            E.c("Email", "Calculated Aggregate: no policy", new Object[0]);
        }
        return Policy.aah;
    }
    
    private Policy hc() {
        synchronized (this) {
            if (this.Me == null) {
                this.Me = this.hb();
            }
            return this.Me;
        }
    }
    
    private DevicePolicyManager hd() {
        synchronized (this) {
            if (this.Mc == null) {
                this.Mc = (DevicePolicyManager)this.mContext.getSystemService("device_policy");
            }
            return this.Mc;
        }
    }
    
    public static SecurityPolicy w(final Context context) {
        synchronized (SecurityPolicy.class) {
            if (SecurityPolicy.Mb == null) {
                SecurityPolicy.Mb = new SecurityPolicy(context.getApplicationContext());
            }
            return SecurityPolicy.Mb;
        }
    }
    
    private static boolean x(final Context context) {
        final Cursor query = context.getContentResolver().query(Policy.CONTENT_URI, Policy.XT, "passwordExpirationDays>0", (String[])null, (String)null);
        if (query == null) {
            return false;
        }
        while (true) {
            boolean b = false;
            try {
                while (query.moveToNext()) {
                    final long z = Policy.z(context, query.getLong(0));
                    if (z >= 0L) {
                        final Account k = Account.k(context, z);
                        if (k == null) {
                            continue;
                        }
                        a(context, k, true);
                        context.getContentResolver().delete(EmailProvider.a("uiaccountdata", z), (String)null, (String[])null);
                        b = true;
                    }
                }
                return b;
            }
            finally {
                query.close();
            }
        }
    }
    
    public final void a(final long n, final Policy policy, final String s, final boolean b) {
        final Account k = Account.k(this.mContext, n);
        if (k == null) {
            return;
        }
        final long n2 = lcmp(k.XJ, 0L);
        Policy y = null;
        if (n2 > 0) {
            y = Policy.y(this.mContext, k.XJ);
        }
        if (y != null && s != null && (y.ZX != policy.ZX || y.ZZ != policy.ZZ)) {
            Policy.a(this.mContext, k, policy);
        }
        boolean b2;
        if (y == null || !y.equals(policy)) {
            b2 = true;
        }
        else {
            b2 = false;
        }
        Label_0140: {
            if (!b2 && r.v(s, k.XH)) {
                E.c(com.android.emailcommon.b.mW, "setAccountPolicy; policy unchanged", new Object[0]);
            }
            else {
                final Context mContext = this.mContext;
                final ArrayList<ContentProviderOperation> list = new ArrayList<ContentProviderOperation>();
                Label_0404: {
                    if (policy == null) {
                        break Label_0404;
                    }
                    policy.normalize();
                    list.add(ContentProviderOperation.newInsert(Policy.CONTENT_URI).withValues(policy.lB()).build());
                    list.add(ContentProviderOperation.newUpdate(ContentUris.withAppendedId(Account.CONTENT_URI, k.Ln)).withValueBackReference("policyKey", 0).withValue("securitySyncKey", (Object)s).build());
                Label_0397_Outer:
                    while (true) {
                        if (k.XJ > 0L) {
                            list.add(ContentProviderOperation.newDelete(ContentUris.withAppendedId(Policy.CONTENT_URI, k.XJ)).build());
                        }
                        while (true) {
                            try {
                                mContext.getContentResolver().applyBatch(EmailContent.AUTHORITY, (ArrayList)list);
                                k.X(mContext);
                                b(mContext, k);
                                this.he();
                                break Label_0140;
                                list.add(ContentProviderOperation.newUpdate(ContentUris.withAppendedId(Account.CONTENT_URI, k.Ln)).withValue("securitySyncKey", (Object)null).withValue("policyKey", (Object)0).build());
                                continue Label_0397_Outer;
                            }
                            catch (RemoteException ex) {
                                throw new IllegalStateException("Exception setting account policy.");
                            }
                            catch (OperationApplicationException ex2) {
                                continue;
                            }
                            break;
                        }
                        break;
                    }
                }
            }
        }
        final m r = o.r(this.mContext);
        if (policy.aag != null) {
            E.c(com.android.emailcommon.b.mW, "Notify policies for " + k.Xy + " not supported.", new Object[0]);
            final boolean b3 = true;
            if (b) {
                r.c(k);
            }
            this.mContext.getContentResolver().delete(EmailProvider.a("uiaccountdata", n), (String)null, (String[])null);
            a(this.mContext, k, b3);
            return;
        }
        goto Label_0460;
    }
    
    public final boolean a(final Policy policy) {
        final int b = this.b(policy);
        if (com.android.email.b.DEBUG && b != 0) {
            final StringBuilder sb = new StringBuilder("isActive for " + policy + ": ");
            sb.append("FALSE -> ");
            if ((b & 0x1) != 0x0) {
                sb.append("no_admin ");
            }
            if ((b & 0x2) != 0x0) {
                sb.append("config ");
            }
            if ((b & 0x4) != 0x0) {
                sb.append("password ");
            }
            if ((b & 0x8) != 0x0) {
                sb.append("encryption ");
            }
            if ((b & 0x10) != 0x0) {
                sb.append("protocol ");
            }
            E.c("Email", sb.toString(), new Object[0]);
        }
        boolean b2 = false;
        if (b == 0) {
            b2 = true;
        }
        return b2;
    }
    
    public final int b(Policy hc) {
        int n = 4;
        boolean b = true;
        if (hc == null) {
            hc = this.hc();
        }
        if (hc == Policy.aah) {
            return 0;
        }
        final DevicePolicyManager hd = this.hd();
        if (this.hj()) {
            int n2;
            if (hc.ZM > 0 && hd.getPasswordMinimumLength(this.Md) < hc.ZM) {
                n2 = n;
            }
            else {
                n2 = 0;
            }
            if (hc.ZL > 0) {
                if (hd.getPasswordQuality(this.Md) >= hc.lV()) {
                    n = n2;
                }
                if (!hd.isActivePasswordSufficient()) {
                    n |= 0x4;
                }
            }
            else {
                n = n2;
            }
            if (hc.ZR > 0 && hd.getMaximumTimeToLock(this.Md) > 1000 * hc.ZR) {
                n |= 0x2;
            }
            if (hc.ZO > 0) {
                final long passwordExpirationTimeout = hd.getPasswordExpirationTimeout(this.Md);
                if (passwordExpirationTimeout == 0L || passwordExpirationTimeout > hc.lW()) {
                    n |= 0x4;
                }
                if (hd.getPasswordExpiration(this.Md) - System.currentTimeMillis() >= 0L) {
                    b = false;
                }
                if (b) {
                    n |= 0x4;
                }
            }
            if (hc.ZP > 0 && hd.getPasswordHistoryLength(this.Md) < hc.ZP) {
                n |= 0x2;
            }
            if (hc.ZQ > 0 && hd.getPasswordMinimumNonLetter(this.Md) < hc.ZQ) {
                n |= 0x4;
            }
            if (hc.ZT && this.hd().getStorageEncryptionStatus() != 3) {
                n |= 0x8;
            }
            if (hc.ZW && !hd.getCameraDisabled(this.Md)) {
                n |= 0x2;
            }
            if (hc.aag != null) {
                n |= 0x10;
            }
            return n;
        }
        return b ? 1 : 0;
    }
    
    public final void d(final Account account) {
        b(this.mContext, account);
    }
    
    public final void he() {
        synchronized (this) {
            this.Me = null;
            this.hg();
        }
    }
    
    public final void hf() {
        if (com.android.email.b.DEBUG) {
            E.c("Email", "reducePolicies", new Object[0]);
        }
        this.he();
    }
    
    public final void hg() {
        final DevicePolicyManager hd = this.hd();
        final Policy hc = this.hc();
        if (hc == Policy.aah) {
            if (com.android.email.b.DEBUG) {
                E.c("Email", "setActivePolicies: none, remove admin", new Object[0]);
            }
            hd.removeActiveAdmin(this.Md);
        }
        else if (this.hj()) {
            if (com.android.email.b.DEBUG) {
                E.c("Email", "setActivePolicies: " + hc, new Object[0]);
            }
            hd.setPasswordQuality(this.Md, hc.lV());
            hd.setPasswordMinimumLength(this.Md, hc.ZM);
            hd.setMaximumTimeToLock(this.Md, (long)(1000 * hc.ZR));
            hd.setMaximumFailedPasswordsForWipe(this.Md, hc.ZN);
            hd.setPasswordExpirationTimeout(this.Md, hc.lW());
            hd.setPasswordHistoryLength(this.Md, hc.ZP);
            hd.setPasswordMinimumSymbols(this.Md, 0);
            hd.setPasswordMinimumNumeric(this.Md, 0);
            hd.setPasswordMinimumNonLetter(this.Md, hc.ZQ);
            while (true) {
                try {
                    hd.setCameraDisabled(this.Md, hc.ZW);
                    hd.setStorageEncryption(this.Md, hc.ZT);
                }
                catch (SecurityException ex) {
                    E.c("Email", "SecurityException in setCameraDisabled, nothing changed", new Object[0]);
                    continue;
                }
                break;
            }
        }
    }
    
    public final void hh() {
        o.r(this.mContext).gJ();
    }
    
    public final void hi() {
        final DevicePolicyManager hd = this.hd();
        if (hd.isAdminActive(this.Md)) {
            hd.wipeData(1);
            return;
        }
        E.c(com.android.emailcommon.b.mW, "Could not remote wipe because not device admin.", new Object[0]);
    }
    
    public final boolean hj() {
        final DevicePolicyManager hd = this.hd();
        return hd.isAdminActive(this.Md) && hd.hasGrantedPolicy(this.Md, 6) && hd.hasGrantedPolicy(this.Md, 7) && hd.hasGrantedPolicy(this.Md, 8);
    }
    
    public final ComponentName hk() {
        return this.Md;
    }
    
    public final void k(final long n) {
        final Account k = Account.k(this.mContext, n);
        if (k != null && k.XJ != 0L) {
            final Policy y = Policy.y(this.mContext, k.XJ);
            if (y != null) {
                if (com.android.email.b.DEBUG) {
                    E.c("Email", "policiesRequired for " + k.Xy + ": " + y, new Object[0]);
                }
                a(this.mContext, k, true);
                final m r = o.r(this.mContext);
                if (y.aag == null) {
                    r.a(k);
                    return;
                }
                r.c(k);
            }
        }
    }
}
