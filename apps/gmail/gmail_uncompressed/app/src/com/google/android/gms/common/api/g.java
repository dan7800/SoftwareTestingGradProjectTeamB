package com.google.android.gms.common.api;

import android.util.*;
import android.support.v4.app.*;
import android.support.v4.content.*;
import com.google.android.gms.common.*;
import com.google.android.gms.common.internal.*;
import android.content.*;
import android.app.*;
import android.os.*;

public final class G extends Fragment implements DialogInterface$OnCancelListener, L<a>
{
    private boolean bDg;
    private int bDh;
    private a bDi;
    private final Handler bDj;
    private final SparseArray<I> bDk;
    
    public G() {
        this.bDh = -1;
        this.bDj = new Handler(Looper.getMainLooper());
        this.bDk = (SparseArray<I>)new SparseArray();
    }
    
    private void KF() {
        int i = 0;
        this.bDg = false;
        this.bDh = -1;
        this.bDi = null;
        final K h = this.h();
        while (i < this.bDk.size()) {
            final int key = this.bDk.keyAt(i);
            final H ew = this.ew(key);
            if (ew != null) {
                ew.KG();
            }
            h.a(key, null, (L<Object>)this);
            ++i;
        }
    }
    
    private void a(final int n, final a a) {
        Log.w("GmsSupportLifecycleFragment", "Unresolved error while connecting client. Stopping auto-manage.");
        final I i = (I)this.bDk.get(n);
        if (i != null) {
            this.h().destroyLoader(n);
            this.bDk.remove(n);
            final q bDo = i.bDo;
            if (bDo != null) {
                bDo.a(a);
            }
        }
        this.KF();
    }
    
    public static G b(final k k) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            throw new IllegalStateException("Must be called from main thread of process");
        }
        final p f = k.F();
        try {
            G g = (G)f.b("GmsSupportLifecycleFragment");
            if (g == null || g.isRemoving()) {
                g = new G();
                f.H().a(g, "GmsSupportLifecycleFragment").commit();
                f.executePendingTransactions();
            }
            return g;
        }
        catch (ClassCastException ex) {
            throw new IllegalStateException("Fragment with tag GmsSupportLifecycleFragment is not a SupportLifecycleFragment", ex);
        }
    }
    
    private H ew(final int n) {
        try {
            return (H)this.h().g(n);
        }
        catch (ClassCastException ex) {
            throw new IllegalStateException("Unknown loader in SupportLifecycleFragment", ex);
        }
    }
    
    public final j<a> a(final int n, final Bundle bundle) {
        return new H((Context)this.f(), ((I)this.bDk.get(n)).bDl);
    }
    
    @Override
    public final void a(final int n, final int n2) {
        boolean b = true;
        Label_0026: {
            switch (n) {
                case 2: {
                    if (f.cf((Context)this.f()) == 0) {
                        break Label_0026;
                    }
                    break;
                }
                case 1: {
                    if (n2 == -1) {
                        break Label_0026;
                    }
                    break;
                }
            }
            b = false;
        }
        if (b) {
            this.KF();
            return;
        }
        this.a(this.bDh, this.bDi);
    }
    
    public final void a(final int n, final n n2, final q q) {
        com.google.android.gms.common.internal.G.f(n2, "GoogleApiClient instance cannot be null");
        com.google.android.gms.common.internal.G.a(this.bDk.indexOfKey(n) < 0, "Already managing a GoogleApiClient with id " + n);
        this.bDk.put(n, (Object)new I(n2, q, (byte)0));
        if (this.f() != null) {
            this.h().a(n, null, (L<Object>)this);
        }
    }
    
    public final void a(final j<a> j) {
        if (j.getId() == this.bDh) {
            this.KF();
        }
    }
    
    public final n ev(final int n) {
        if (this.f() != null) {
            final H ew = this.ew(n);
            if (ew != null) {
                return ew.bDl;
            }
        }
        return null;
    }
    
    @Override
    public final void onAttach(final Activity activity) {
        super.onAttach(activity);
        for (int i = 0; i < this.bDk.size(); ++i) {
            final int key = this.bDk.keyAt(i);
            final H ew = this.ew(key);
            if (ew != null && ((I)this.bDk.valueAt(i)).bDl != ew.bDl) {
                this.h().a(key, (L<Object>)this);
            }
            else {
                this.h().a(key, null, (L<Object>)this);
            }
        }
    }
    
    public final void onCancel(final DialogInterface dialogInterface) {
        this.a(this.bDh, this.bDi);
    }
    
    @Override
    public final void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.bDg = bundle.getBoolean("resolving_error", false);
            this.bDh = bundle.getInt("failed_client_id", -1);
            if (this.bDh >= 0) {
                this.bDi = new a(bundle.getInt("failed_status"), (PendingIntent)bundle.getParcelable("failed_resolution"));
            }
        }
    }
    
    @Override
    public final void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("resolving_error", this.bDg);
        if (this.bDh >= 0) {
            bundle.putInt("failed_client_id", this.bDh);
            bundle.putInt("failed_status", this.bDi.getErrorCode());
            bundle.putParcelable("failed_resolution", (Parcelable)this.bDi.Kl());
        }
    }
    
    @Override
    public final void onStart() {
        super.onStart();
        if (!this.bDg) {
            for (int i = 0; i < this.bDk.size(); ++i) {
                this.h().a(this.bDk.keyAt(i), null, (L<Object>)this);
            }
        }
    }
}
