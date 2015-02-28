package android.support.v7.widget;

import android.support.v7.internal.widget.*;
import android.content.*;
import android.support.v7.a.*;
import android.util.*;
import android.view.*;
import android.support.v4.a.a.*;
import android.graphics.drawable.*;

final class d extends TintImageView implements i
{
    final /* synthetic */ ActionMenuPresenter Cb;
    private final float[] Cd;
    
    public d(final ActionMenuPresenter cb, final Context context) {
        this.Cb = cb;
        super(context, null, b.actionOverflowButtonStyle);
        this.Cd = new float[2];
        this.setClickable(true);
        this.setFocusable(true);
        this.setVisibility(0);
        this.setEnabled(true);
        this.setOnTouchListener((View$OnTouchListener)new e(this, (View)this, cb));
    }
    
    @Override
    public final boolean dy() {
        return false;
    }
    
    @Override
    public final boolean dz() {
        return false;
    }
    
    public final boolean performClick() {
        if (super.performClick()) {
            return true;
        }
        this.playSoundEffect(0);
        this.Cb.showOverflowMenu();
        return true;
    }
    
    protected final boolean setFrame(final int n, final int n2, final int n3, final int n4) {
        final boolean setFrame = super.setFrame(n, n2, n3, n4);
        final Drawable drawable = this.getDrawable();
        final Drawable background = this.getBackground();
        if (drawable != null && background != null) {
            final float[] cd = this.Cd;
            cd[0] = drawable.getBounds().centerX();
            this.getImageMatrix().mapPoints(cd);
            final int n5 = (int)cd[0] - this.getWidth() / 2;
            a.a(background, n5, 0, n5 + this.getWidth(), this.getHeight());
        }
        return setFrame;
    }
}
