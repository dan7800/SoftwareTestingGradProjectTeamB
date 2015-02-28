package android.support.v7.internal.view.menu;

import android.support.v7.internal.widget.*;
import android.graphics.drawable.*;
import android.support.v7.widget.*;
import android.content.*;
import android.util.*;
import android.support.v7.a.*;
import android.support.v7.internal.b.*;
import android.text.method.*;
import android.text.*;
import android.content.res.*;
import android.os.*;
import android.graphics.*;
import android.support.v4.view.*;
import android.widget.*;
import android.view.*;

public class ActionMenuItemView extends t implements A, i, View$OnClickListener, View$OnLongClickListener
{
    private CharSequence cZ;
    private Drawable vh;
    private m wq;
    private k wr;
    private L ws;
    private c wt;
    private boolean wu;
    private boolean wv;
    private int ww;
    private int wx;
    private int wy;
    
    public ActionMenuItemView(final Context context) {
        this(context, null);
    }
    
    public ActionMenuItemView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public ActionMenuItemView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        final Resources resources = context.getResources();
        this.wu = resources.getBoolean(android.support.v7.a.c.pB);
        final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(set, l.rk, n, 0);
        this.ww = obtainStyledAttributes.getDimensionPixelSize(l.rl, 0);
        obtainStyledAttributes.recycle();
        this.wy = (int)(0.5f + 32.0f * resources.getDisplayMetrics().density);
        this.setOnClickListener((View$OnClickListener)this);
        this.setOnLongClickListener((View$OnLongClickListener)this);
        this.setTransformationMethod((TransformationMethod)new a(context));
        this.wx = -1;
    }
    
    private void dx() {
        final boolean b = !TextUtils.isEmpty(this.cZ) && true;
        boolean b2 = false;
        Label_0057: {
            if (this.vh != null) {
                final boolean em = this.wq.em();
                b2 = false;
                if (!em) {
                    break Label_0057;
                }
                if (!this.wu) {
                    final boolean wv = this.wv;
                    b2 = false;
                    if (!wv) {
                        break Label_0057;
                    }
                }
            }
            b2 = true;
        }
        CharSequence cz;
        if (b & b2) {
            cz = this.cZ;
        }
        else {
            cz = null;
        }
        this.setText(cz);
    }
    
    public final void a(final c wt) {
        this.wt = wt;
    }
    
    public final void a(final k wr) {
        this.wr = wr;
    }
    
    @Override
    public final void a(final m wq) {
        this.wq = wq;
        final Drawable icon = wq.getIcon();
        this.vh = icon;
        if (icon != null) {
            int n = icon.getIntrinsicWidth();
            int n2 = icon.getIntrinsicHeight();
            if (n > this.wy) {
                final float n3 = this.wy / n;
                n = this.wy;
                n2 *= (int)n3;
            }
            if (n2 > this.wy) {
                final float n4 = this.wy / n2;
                n2 = this.wy;
                n *= (int)n4;
            }
            icon.setBounds(0, 0, n, n2);
        }
        this.setCompoundDrawables(icon, (Drawable)null, (Drawable)null, (Drawable)null);
        this.dx();
        this.setContentDescription(this.cZ = wq.a(this));
        this.dx();
        this.setId(wq.getItemId());
        int visibility;
        if (wq.isVisible()) {
            visibility = 0;
        }
        else {
            visibility = 8;
        }
        this.setVisibility(visibility);
        this.setEnabled(wq.isEnabled());
        if (wq.hasSubMenu() && this.ws == null) {
            this.ws = new b(this);
        }
    }
    
    @Override
    public final m dv() {
        return this.wq;
    }
    
    @Override
    public final boolean dw() {
        return true;
    }
    
    @Override
    public final boolean dy() {
        return this.hasText() && this.wq.getIcon() == null;
    }
    
    @Override
    public final boolean dz() {
        return this.hasText();
    }
    
    public final boolean hasText() {
        return !TextUtils.isEmpty(this.getText());
    }
    
    public void onClick(final View view) {
        if (this.wr != null) {
            this.wr.e(this.wq);
        }
    }
    
    public void onConfigurationChanged(final Configuration configuration) {
        if (Build$VERSION.SDK_INT >= 8) {
            super.onConfigurationChanged(configuration);
        }
        this.wu = this.getContext().getResources().getBoolean(android.support.v7.a.c.pB);
        this.dx();
    }
    
    public boolean onLongClick(final View view) {
        if (this.hasText()) {
            return false;
        }
        final int[] array = new int[2];
        final Rect rect = new Rect();
        this.getLocationOnScreen(array);
        this.getWindowVisibleDisplayFrame(rect);
        final Context context = this.getContext();
        final int width = this.getWidth();
        final int height = this.getHeight();
        final int n = array[1] + height / 2;
        int n2 = array[0] + width / 2;
        if (ad.m(view) == 0) {
            n2 = context.getResources().getDisplayMetrics().widthPixels - n2;
        }
        final Toast text = Toast.makeText(context, this.wq.getTitle(), 0);
        if (n < rect.height()) {
            text.setGravity(8388661, n2, height);
        }
        else {
            text.setGravity(81, 0, height);
        }
        text.show();
        return true;
    }
    
    protected void onMeasure(final int n, final int n2) {
        final boolean hasText = this.hasText();
        if (hasText && this.wx >= 0) {
            super.setPadding(this.wx, this.getPaddingTop(), this.getPaddingRight(), this.getPaddingBottom());
        }
        super.onMeasure(n, n2);
        final int mode = View$MeasureSpec.getMode(n);
        final int size = View$MeasureSpec.getSize(n);
        final int measuredWidth = this.getMeasuredWidth();
        int n3;
        if (mode == Integer.MIN_VALUE) {
            n3 = Math.min(size, this.ww);
        }
        else {
            n3 = this.ww;
        }
        if (mode != 1073741824 && this.ww > 0 && measuredWidth < n3) {
            super.onMeasure(View$MeasureSpec.makeMeasureSpec(n3, 1073741824), n2);
        }
        if (!hasText && this.vh != null) {
            super.setPadding((this.getMeasuredWidth() - this.vh.getBounds().width()) / 2, this.getPaddingTop(), this.getPaddingRight(), this.getPaddingBottom());
        }
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        return (this.wq.hasSubMenu() && this.ws != null && this.ws.onTouch((View)this, motionEvent)) || super.onTouchEvent(motionEvent);
    }
    
    public void setPadding(final int wx, final int n, final int n2, final int n3) {
        super.setPadding(this.wx = wx, n, n2, n3);
    }
}
