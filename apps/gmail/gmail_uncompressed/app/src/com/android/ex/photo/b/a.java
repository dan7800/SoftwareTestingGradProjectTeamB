package com.android.ex.photo.b;

import com.android.ex.photo.a.*;
import com.android.ex.photo.views.*;
import android.os.*;
import android.view.*;
import android.widget.*;
import android.graphics.drawable.*;
import android.database.*;
import com.android.ex.photo.c.*;
import android.support.v4.app.*;
import com.android.ex.photo.*;
import android.content.*;
import android.net.*;

public class a extends Fragment implements L<c>, View$OnClickListener, i, j
{
    protected d agV;
    protected boolean agW;
    protected String agv;
    protected String agw;
    protected boolean ahl;
    protected h aih;
    protected BroadcastReceiver aii;
    protected PhotoView aij;
    protected ImageView aik;
    protected TextView ail;
    protected ImageView aim;
    protected e ain;
    protected boolean aio;
    protected boolean aip;
    protected boolean aiq;
    protected View air;
    protected boolean ais;
    protected boolean ait;
    protected Intent mIntent;
    protected int vk;
    
    public a() {
        this.aiq = true;
    }
    
    public static a a(final Intent intent, final int n, final boolean b) {
        final a a = new a();
        final Bundle arguments = new Bundle();
        arguments.putParcelable("arg-intent", (Parcelable)intent);
        arguments.putInt("arg-position", n);
        arguments.putBoolean("arg-show-spinner", b);
        a.setArguments(arguments);
        return a;
    }
    
    private void al(final boolean b) {
        this.aij.al(b);
    }
    
    private void nZ() {
        if (this.aij != null) {
            this.aij.ol();
        }
    }
    
    private void ob() {
        this.agW = (this.aih != null && this.aih.g(this));
    }
    
    @Override
    public final android.support.v4.content.j<c> a(final int n, final Bundle bundle) {
        if (this.aip) {
            return null;
        }
        String s = null;
        switch (n) {
            case 2: {
                s = this.agw;
                break;
            }
            case 3: {
                s = this.agv;
                break;
            }
        }
        return this.aih.e(n, s);
    }
    
    @Override
    public final View a(final LayoutInflater layoutInflater, final ViewGroup viewGroup) {
        final View inflate = layoutInflater.inflate(E.ahV, viewGroup, false);
        (this.aij = (PhotoView)inflate.findViewById(C.ahQ)).t(this.mIntent.getFloatExtra("max_scale", 1.0f));
        this.aij.setOnClickListener((View$OnClickListener)this);
        this.aij.am(this.agW);
        this.aij.al(false);
        this.air = inflate.findViewById(C.ahO);
        this.aik = (ImageView)inflate.findViewById(C.ahP);
        this.ais = false;
        this.ain = new e((ProgressBar)inflate.findViewById(C.ahI), (ProgressBar)inflate.findViewById(C.ahK));
        this.ail = (TextView)inflate.findViewById(C.ahJ);
        this.aim = (ImageView)inflate.findViewById(C.ahS);
        this.ob();
        return inflate;
    }
    
    @Override
    public final void a(final android.support.v4.content.j<c> j) {
    }
    
    public final void c(final Cursor cursor) {
        if (this.agV != null && cursor.moveToPosition(this.vk) && !this.oa()) {
            this.aih.a(this, cursor);
            final K h = this.h();
            final android.support.v4.content.j<Object> g = h.g(3);
            if (g != null) {
                final b b = (b)g;
                b.aV(this.agv = this.agV.e(cursor));
                b.forceLoad();
            }
            if (!this.ais) {
                final android.support.v4.content.j<Object> g2 = h.g(2);
                if (g2 != null) {
                    final b b2 = (b)g2;
                    b2.aV(this.agw = this.agV.f(cursor));
                    b2.forceLoad();
                }
            }
        }
    }
    
    public final void nK() {
        this.ob();
    }
    
    public final void nL() {
        if (!this.aih.f(this)) {
            this.nZ();
            return;
        }
        if (!this.oa()) {
            this.h().a(2, (L<Object>)this);
        }
        this.aih.a(this);
    }
    
    public final void nM() {
        this.nZ();
    }
    
    public final boolean nN() {
        return this.aih.f(this) && this.aij != null && this.aij.oi();
    }
    
    public final boolean nO() {
        return this.aih.f(this) && this.aij != null && this.aij.oj();
    }
    
    public final String nY() {
        return this.agv;
    }
    
    public final boolean oa() {
        return this.aij != null && this.aij.oa();
    }
    
    public final e oc() {
        return this.ain;
    }
    
    public final TextView od() {
        return this.ail;
    }
    
    public final ImageView oe() {
        return this.aim;
    }
    
    public final boolean of() {
        return this.aiq;
    }
    
    @Override
    public final void onActivityCreated(final Bundle bundle) {
        super.onActivityCreated(bundle);
        this.aih = ((t)this.f()).nG();
        if (this.aih == null) {
            throw new IllegalArgumentException("Activity must be a derived class of PhotoViewActivity");
        }
        this.agV = this.aih.nJ();
        if (this.agV == null) {
            throw new IllegalStateException("Callback reported null adapter");
        }
        this.ob();
    }
    
    public void onClick(final View view) {
        this.aih.nI();
    }
    
    @Override
    public final void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        final Bundle arguments = this.getArguments();
        if (arguments != null) {
            this.mIntent = (Intent)arguments.getParcelable("arg-intent");
            this.ahl = this.mIntent.getBooleanExtra("display_thumbs_fullscreen", false);
            this.vk = arguments.getInt("arg-position");
            this.aip = arguments.getBoolean("arg-show-spinner");
            this.aiq = true;
            if (bundle != null) {
                final Bundle bundle2 = bundle.getBundle("com.android.mail.photo.fragments.PhotoViewFragment.INTENT");
                if (bundle2 != null) {
                    this.mIntent = new Intent().putExtras(bundle2);
                }
            }
            if (this.mIntent != null) {
                this.agv = this.mIntent.getStringExtra("resolved_photo_uri");
                this.agw = this.mIntent.getStringExtra("thumbnail_uri");
                this.aio = this.mIntent.getBooleanExtra("watch_network", false);
            }
        }
    }
    
    @Override
    public final void onDestroyView() {
        if (this.aij != null) {
            this.aij.clear();
            this.aij = null;
        }
        super.onDestroyView();
    }
    
    @Override
    public final void onDetach() {
        this.aih = null;
        super.onDetach();
    }
    
    @Override
    public final void onPause() {
        if (this.aio) {
            this.f().unregisterReceiver(this.aii);
        }
        this.aih.b(this);
        this.aih.bE(this.vk);
        if (this.aij != null) {
            this.aij.ok();
        }
        super.onPause();
    }
    
    @Override
    public final void onResume() {
        super.onResume();
        this.aih.a(this.vk, this);
        this.aih.a((i)this);
        if (this.aio) {
            if (this.aii == null) {
                this.aii = new com.android.ex.photo.b.b(this, (byte)0);
            }
            this.f().registerReceiver(this.aii, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            final NetworkInfo activeNetworkInfo = ((ConnectivityManager)this.f().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                this.ait = activeNetworkInfo.isConnected();
            }
            else {
                this.ait = false;
            }
        }
        if (!this.oa()) {
            this.aiq = true;
            this.air.setVisibility(0);
            this.h().a(2, null, (L<Object>)this);
            this.h().a(3, null, (L<Object>)this);
        }
    }
    
    @Override
    public final void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.mIntent != null) {
            bundle.putParcelable("com.android.mail.photo.fragments.PhotoViewFragment.INTENT", (Parcelable)this.mIntent.getExtras());
        }
    }
}
