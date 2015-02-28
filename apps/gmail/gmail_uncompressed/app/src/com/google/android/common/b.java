package com.google.android.common;

import android.util.*;
import android.accounts.*;
import android.os.*;
import android.net.*;
import android.database.*;
import android.content.*;

public abstract class b extends AbstractThreadedSyncAdapter
{
    public b(final Context context) {
        super(context, false, true);
    }
    
    protected void a(final long n, final long n2, final SyncResult syncResult) {
        EventLog.writeEvent(203001, new Object[] { "Sync", n, n2, "" });
    }
    
    public abstract void a(final Account p0, final Bundle p1, final SyncResult p2);
    
    public void onPerformSync(final Account account, final Bundle bundle, final String s, final ContentProviderClient contentProviderClient, final SyncResult syncResult) {
        final int myUid = Process.myUid();
        final long uidTxBytes = TrafficStats.getUidTxBytes(myUid);
        final long uidRxBytes = TrafficStats.getUidRxBytes(myUid);
        try {
            this.a(account, bundle, syncResult);
        }
        catch (SQLException ex) {
            final SyncStats stats = syncResult.stats;
            ++stats.numParseExceptions;
        }
        finally {
            this.a(TrafficStats.getUidTxBytes(myUid) - uidTxBytes, TrafficStats.getUidRxBytes(myUid) - uidRxBytes, syncResult);
        }
    }
}
