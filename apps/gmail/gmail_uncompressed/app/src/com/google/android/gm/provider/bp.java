package com.google.android.gm.provider;

import com.google.android.common.*;
import com.google.android.gsf.*;
import android.util.*;
import com.google.android.gms.d.*;
import android.accounts.*;
import com.android.mail.utils.*;
import android.os.*;
import android.database.*;
import android.content.*;

final class bp extends b
{
    private volatile MailEngine bbE;
    private ThreadLocal<Long> bmt;
    private final int bmu;
    
    public bp(final Context context) {
        super(context);
        this.bmt = new bq(this);
        this.bmu = c.getInt(this.getContext().getContentResolver(), "gmail_min_sync_size_to_log_bytes", 100000);
    }
    
    @Override
    protected final void a(final long n, final long n2, final SyncResult syncResult) {
        if (this.bbE != null) {
            EventLog.writeEvent(203001, new Object[] { "Gmail", n, n2, this.bbE.Gc().a(syncResult) });
        }
        if (!syncResult.hasError() && this.bmt.get() > 0L && n + n2 >= this.bmu) {
            final long n3 = n2 * 1000L / this.bmt.get();
            final long n4 = 1000L * n / this.bmt.get();
            final Bundle bundle = new Bundle(4);
            bundle.putString("sync_time_millis", Long.toString(this.bmt.get()));
            bundle.putString("rx_bytes", Long.toString(n2));
            bundle.putString("tx_bytes", Long.toString(n));
            bundle.putString("tx_throughput_bps", Long.toString(n4));
            a.a(this.getContext(), null, n3, bundle);
        }
    }
    
    @Override
    public final void a(final Account account, final Bundle bundle, final SyncResult syncResult) {
        E.e("Gmail", "Sync started for account: %s", E.cx(account.name));
        this.bbE = MailEngine.W(MailProvider.Hg().getContext(), account.name);
        try {
            final long elapsedRealtime = SystemClock.elapsedRealtime();
            this.bbE.a(syncResult, bundle);
            this.bmt.set(SystemClock.elapsedRealtime() - elapsedRealtime);
        }
        catch (SQLException ex) {
            E.e("Gmail", (Throwable)ex, "Mail sync failed", new Object[0]);
            syncResult.databaseError = true;
        }
        finally {
            E.e("Gmail", "Sync complete for account: %s", E.cx(account.name));
        }
    }
    
    @Override
    public final void onPerformSync(final Account account, final Bundle bundle, final String s, final ContentProviderClient contentProviderClient, final SyncResult syncResult) {
        super.onPerformSync(account, bundle, s, contentProviderClient, syncResult);
    }
    
    public final void onSyncCanceled(final Thread thread) {
        E.e("Gmail", "MailSyncAdapterService#onSyncCanceled %s", thread);
        if (this.bbE != null) {
            E.e("Gmail", "MailEngine != null account: %s", E.cx(this.bbE.FP()));
            this.bbE.onSyncCanceled();
        }
        super.onSyncCanceled(thread);
    }
}
