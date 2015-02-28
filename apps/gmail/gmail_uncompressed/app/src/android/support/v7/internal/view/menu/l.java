package android.support.v7.internal.view.menu;

import android.app.*;
import android.support.v7.a.*;
import android.content.*;
import android.view.*;

public final class l implements DialogInterface$OnClickListener, DialogInterface$OnDismissListener, DialogInterface$OnKeyListener, y
{
    private i ve;
    private AlertDialog xx;
    g xy;
    private y xz;
    
    public l(final i ve) {
        this.ve = ve;
    }
    
    public final void a(final i i, final boolean b) {
        if ((b || i == this.ve) && this.xx != null) {
            this.xx.dismiss();
        }
        if (this.xz != null) {
            this.xz.a(i, b);
        }
    }
    
    public final boolean c(final i i) {
        return this.xz != null && this.xz.c(i);
    }
    
    public final void ec() {
        final i ve = this.ve;
        final AlertDialog$Builder alertDialog$Builder = new AlertDialog$Builder(ve.getContext());
        (this.xy = new g(android.support.v7.a.i.qG, k.qO)).a(this);
        this.ve.a(this.xy);
        alertDialog$Builder.setAdapter(this.xy.getAdapter(), (DialogInterface$OnClickListener)this);
        final View dy = ve.dY();
        if (dy != null) {
            alertDialog$Builder.setCustomTitle(dy);
        }
        else {
            alertDialog$Builder.setIcon(ve.dX()).setTitle(ve.dW());
        }
        alertDialog$Builder.setOnKeyListener((DialogInterface$OnKeyListener)this);
        (this.xx = alertDialog$Builder.create()).setOnDismissListener((DialogInterface$OnDismissListener)this);
        final WindowManager$LayoutParams attributes = this.xx.getWindow().getAttributes();
        attributes.type = 1003;
        attributes.flags |= 0x20000;
        this.xx.show();
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        this.ve.c((MenuItem)this.xy.getAdapter().getItem(n), 0);
    }
    
    public final void onDismiss(final DialogInterface dialogInterface) {
        this.xy.a(this.ve, true);
    }
    
    public final boolean onKey(final DialogInterface dialogInterface, final int n, final KeyEvent keyEvent) {
        if (n == 82 || n == 4) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                final Window window = this.xx.getWindow();
                if (window != null) {
                    final View decorView = window.getDecorView();
                    if (decorView != null) {
                        final KeyEvent$DispatcherState keyDispatcherState = decorView.getKeyDispatcherState();
                        if (keyDispatcherState != null) {
                            keyDispatcherState.startTracking(keyEvent, (Object)this);
                            return true;
                        }
                    }
                }
            }
            else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled()) {
                final Window window2 = this.xx.getWindow();
                if (window2 != null) {
                    final View decorView2 = window2.getDecorView();
                    if (decorView2 != null) {
                        final KeyEvent$DispatcherState keyDispatcherState2 = decorView2.getKeyDispatcherState();
                        if (keyDispatcherState2 != null && keyDispatcherState2.isTracking(keyEvent)) {
                            this.ve.s(true);
                            dialogInterface.dismiss();
                            return true;
                        }
                    }
                }
            }
        }
        return this.ve.performShortcut(n, keyEvent, 0);
    }
}
