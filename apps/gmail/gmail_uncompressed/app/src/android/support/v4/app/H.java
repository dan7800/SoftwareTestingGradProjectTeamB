package android.support.v4.app;

import android.os.*;
import android.app.*;
import android.view.*;
import android.content.*;

public class h extends Fragment implements DialogInterface$OnCancelListener, DialogInterface$OnDismissListener
{
    int ad;
    int ae;
    boolean af;
    boolean ag;
    int ah;
    Dialog ai;
    boolean aj;
    boolean ak;
    boolean al;
    
    public h() {
        this.ad = 0;
        this.ae = 0;
        this.af = true;
        this.ag = true;
        this.ah = -1;
    }
    
    @Override
    public final LayoutInflater a(final Bundle bundle) {
        if (!this.ag) {
            return super.a(bundle);
        }
        this.ai = this.c();
        switch (this.ad) {
            case 3: {
                this.ai.getWindow().addFlags(24);
            }
            case 1:
            case 2: {
                this.ai.requestWindowFeature(1);
                break;
            }
        }
        if (this.ai != null) {
            return (LayoutInflater)this.ai.getContext().getSystemService("layout_inflater");
        }
        return (LayoutInflater)this.aG.getSystemService("layout_inflater");
    }
    
    public void a(final p p2, final String s) {
        this.ak = false;
        this.al = true;
        final z h = p2.H();
        h.a(this, s);
        h.commit();
    }
    
    public final void b() {
        this.ag = false;
    }
    
    public Dialog c() {
        return new Dialog((Context)super.aG, this.ae);
    }
    
    @Override
    public final void onActivityCreated(final Bundle bundle) {
        super.onActivityCreated(bundle);
        if (this.ag) {
            final View au = super.aU;
            if (au != null) {
                if (au.getParent() != null) {
                    throw new IllegalStateException("DialogFragment can not be attached to a container view");
                }
                this.ai.setContentView(au);
            }
            this.ai.setOwnerActivity((Activity)super.aG);
            this.ai.setCancelable(this.af);
            this.ai.setOnCancelListener((DialogInterface$OnCancelListener)this);
            this.ai.setOnDismissListener((DialogInterface$OnDismissListener)this);
            if (bundle != null) {
                final Bundle bundle2 = bundle.getBundle("android:savedDialogState");
                if (bundle2 != null) {
                    this.ai.onRestoreInstanceState(bundle2);
                }
            }
        }
    }
    
    @Override
    public final void onAttach(final Activity activity) {
        super.onAttach(activity);
        if (!this.al) {
            this.ak = false;
        }
    }
    
    public void onCancel(final DialogInterface dialogInterface) {
    }
    
    @Override
    public final void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.ag = (this.d == 0);
        if (bundle != null) {
            this.ad = bundle.getInt("android:style", 0);
            this.ae = bundle.getInt("android:theme", 0);
            this.af = bundle.getBoolean("android:cancelable", true);
            this.ag = bundle.getBoolean("android:showsDialog", this.ag);
            this.ah = bundle.getInt("android:backStackId", -1);
        }
    }
    
    @Override
    public final void onDestroyView() {
        super.onDestroyView();
        if (this.ai != null) {
            this.aj = true;
            this.ai.dismiss();
            this.ai = null;
        }
    }
    
    @Override
    public final void onDetach() {
        super.onDetach();
        if (!this.al && !this.ak) {
            this.ak = true;
        }
    }
    
    public void onDismiss(final DialogInterface dialogInterface) {
        if (!this.aj && !this.ak) {
            this.ak = true;
            this.al = false;
            if (this.ai != null) {
                this.ai.dismiss();
                this.ai = null;
            }
            this.aj = true;
            if (this.ah < 0) {
                final z h = super.aF.H();
                h.a(this);
                h.commitAllowingStateLoss();
                return;
            }
            super.aF.b(this.ah);
            this.ah = -1;
        }
    }
    
    @Override
    public final void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.ai != null) {
            final Bundle onSaveInstanceState = this.ai.onSaveInstanceState();
            if (onSaveInstanceState != null) {
                bundle.putBundle("android:savedDialogState", onSaveInstanceState);
            }
        }
        if (this.ad != 0) {
            bundle.putInt("android:style", this.ad);
        }
        if (this.ae != 0) {
            bundle.putInt("android:theme", this.ae);
        }
        if (!this.af) {
            bundle.putBoolean("android:cancelable", this.af);
        }
        if (!this.ag) {
            bundle.putBoolean("android:showsDialog", this.ag);
        }
        if (this.ah != -1) {
            bundle.putInt("android:backStackId", this.ah);
        }
    }
    
    @Override
    public final void onStart() {
        super.onStart();
        if (this.ai != null) {
            this.aj = false;
            this.ai.show();
        }
    }
    
    @Override
    public final void onStop() {
        super.onStop();
        if (this.ai != null) {
            this.ai.hide();
        }
    }
}
