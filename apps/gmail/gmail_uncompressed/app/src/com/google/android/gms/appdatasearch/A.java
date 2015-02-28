package com.google.android.gms.appdatasearch;

import com.google.android.gms.internal.*;
import android.content.*;
import android.util.*;
import android.content.pm.*;
import com.google.android.gms.common.*;
import android.net.*;
import android.os.*;
import java.util.*;
import android.app.*;

public final class a implements c
{
    private final ConditionVariable btR;
    private com.google.android.gms.common.a btS;
    private final y btT;
    private final Context mContext;
    
    public a(final Context mContext) {
        this.btR = new ConditionVariable();
        this.mContext = mContext;
        this.btT = new y(mContext, new b(this, (byte)0), new com.google.android.gms.appdatasearch.c(this, (byte)0));
    }
    
    private boolean a(final RegisterCorpusInfo registerCorpusInfo) {
        this.mContext.grantUriPermission("com.google.android.gms", registerCorpusInfo.bvx, 1);
        try {
            return this.btT.QM().b(this.mContext.getPackageName(), registerCorpusInfo);
        }
        catch (RemoteException ex) {
            Log.e("AppDataSearchClient", "Register corpus failed.", (Throwable)ex);
            return false;
        }
    }
    
    public static void cd(final Context context) {
        final int callingUid = Binder.getCallingUid();
        if (callingUid == Process.myUid()) {
            Log.i("AppDataSearchClient", "verifyContentProviderClient: caller is current process");
        }
        else {
            try {
                if (context.getPackageManager().getApplicationInfo("com.google.android.gms", 0).uid != callingUid) {
                    throw new SecurityException("Calling UID " + callingUid + " is not Google Play Services.");
                }
            }
            catch (PackageManager$NameNotFoundException ex) {
                throw new SecurityException("Google Play Services not installed", (Throwable)ex);
            }
            final int cf = f.cf(context);
            if (cf != 0) {
                throw new SecurityException("Calling package problem: " + f.er(cf));
            }
        }
    }
    
    private boolean fz(final String s) {
        try {
            final Bundle ao = this.btT.QM().ao(this.mContext.getPackageName(), s);
            final String[] stringArray = ao.getStringArray("content_provider_uris");
            for (int length = stringArray.length, i = 0; i < length; ++i) {
                this.mContext.revokeUriPermission(Uri.parse(stringArray[i]), 1);
            }
            final boolean[] booleanArray = ao.getBooleanArray("success");
            for (int j = 0; j < booleanArray.length; ++j) {
                if (!booleanArray[j]) {
                    return false;
                }
            }
            return true;
        }
        catch (RemoteException ex) {
            Log.e("AppDataSearchClient", "Unregister corpus failed.", (Throwable)ex);
            return false;
        }
        return true;
    }
    
    public final boolean C(final Collection<RegisterCorpusInfo> collection) {
        String[] gl = null;
        HashSet<String> set = null;
        Label_0094: {
            boolean b;
            try {
                gl = this.btT.QM().gl(this.mContext.getPackageName());
                set = new HashSet<String>(collection.size());
                final Iterator<RegisterCorpusInfo> iterator = collection.iterator();
                while (iterator.hasNext()) {
                    set.add(iterator.next().name);
                }
                break Label_0094;
            }
            catch (RemoteException ex) {
                Log.e("AppDataSearchClient", "Getting corpora failed.", (Throwable)ex);
                b = false;
            }
            return b;
        }
        boolean b2 = true;
        for (final String s : gl) {
            if (!set.contains(s) && !this.fz(s)) {
                b2 = false;
            }
        }
        final Iterator<RegisterCorpusInfo> iterator2 = collection.iterator();
        boolean b = b2;
        while (iterator2.hasNext()) {
            b = (this.a(iterator2.next()) && b);
        }
        return b;
    }
    
    public final SearchResults a(final String s, final String[] array, final int n, final int n2, final QuerySpecification querySpecification) {
        try {
            return this.btT.QM().a(s, this.mContext.getPackageName(), array, n, n2, querySpecification);
        }
        catch (RemoteException ex) {
            Log.e("AppDataSearchClient", "Query failed.", (Throwable)ex);
            return null;
        }
    }
    
    public final SuggestionResults a(final String s, final String[] array, final int n) {
        try {
            return this.btT.QM().a(s, this.mContext.getPackageName(), array, 20, null);
        }
        catch (RemoteException ex) {
            Log.e("AppDataSearchClient", "Suggest failed.", (Throwable)ex);
            return null;
        }
    }
    
    public final com.google.android.gms.common.a aX(final long n) {
        this.btS = null;
        this.btR.close();
        this.btT.connect();
        if (!this.btR.block(n)) {
            this.btT.disconnect();
            return new com.google.android.gms.common.a(8, null);
        }
        if (this.btS != null) {
            return this.btS;
        }
        return com.google.android.gms.common.a.bBQ;
    }
    
    public final void disconnect() {
        this.btT.disconnect();
    }
    
    public final CorpusStatus fA(final String s) {
        try {
            return this.btT.QM().an(this.mContext.getPackageName(), s);
        }
        catch (RemoteException ex) {
            Log.e("AppDataSearchClient", "Get corpus status failed.", (Throwable)ex);
            return null;
        }
    }
    
    public final boolean r(final String s, final long n) {
        try {
            return this.btT.QM().a(this.mContext.getPackageName(), s, n, null);
        }
        catch (RemoteException ex) {
            Log.e("AppDataSearchClient", "Request indexing failed.", (Throwable)ex);
            return false;
        }
    }
}
