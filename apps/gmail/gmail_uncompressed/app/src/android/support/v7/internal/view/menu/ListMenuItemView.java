package android.support.v7.internal.view.menu;

import android.content.*;
import android.graphics.drawable.*;
import android.util.*;
import android.content.res.*;
import android.support.v7.a.*;
import android.view.*;
import android.widget.*;

public class ListMenuItemView extends LinearLayout implements A
{
    private Context mContext;
    private LayoutInflater wC;
    private ImageView wL;
    private RadioButton wM;
    private TextView wN;
    private CheckBox wO;
    private TextView wP;
    private Drawable wQ;
    private int wR;
    private Context wS;
    private boolean wT;
    private int wU;
    private boolean wV;
    private m wq;
    
    public ListMenuItemView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public ListMenuItemView(final Context context, final AttributeSet set, final int n) {
        super(context, set);
        this.mContext = context;
        final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(set, l.sL, n, 0);
        this.wQ = obtainStyledAttributes.getDrawable(l.sM);
        this.wR = obtainStyledAttributes.getResourceId(l.sN, -1);
        this.wT = obtainStyledAttributes.getBoolean(l.sO, false);
        this.wS = context;
        obtainStyledAttributes.recycle();
    }
    
    private LayoutInflater dH() {
        if (this.wC == null) {
            this.wC = LayoutInflater.from(this.mContext);
        }
        return this.wC;
    }
    
    public final void a(final m wq) {
        this.wq = wq;
        this.wU = 0;
        int visibility;
        if (wq.isVisible()) {
            visibility = 0;
        }
        else {
            visibility = 8;
        }
        this.setVisibility(visibility);
        final CharSequence a = wq.a(this);
        if (a != null) {
            this.wN.setText(a);
            if (this.wN.getVisibility() != 0) {
                this.wN.setVisibility(0);
            }
        }
        else if (this.wN.getVisibility() != 8) {
            this.wN.setVisibility(8);
        }
        final boolean checkable = wq.isCheckable();
        if (checkable || this.wM != null || this.wO != null) {
            Object o;
            Object o2;
            if (this.wq.eh()) {
                if (this.wM == null) {
                    this.addView((View)(this.wM = (RadioButton)this.dH().inflate(i.qH, (ViewGroup)this, false)));
                }
                final RadioButton wm = this.wM;
                final CheckBox wo = this.wO;
                o = wm;
                o2 = wo;
            }
            else {
                if (this.wO == null) {
                    this.addView((View)(this.wO = (CheckBox)this.dH().inflate(i.qE, (ViewGroup)this, false)));
                }
                final CheckBox wo2 = this.wO;
                final RadioButton wm2 = this.wM;
                o = wo2;
                o2 = wm2;
            }
            if (checkable) {
                ((CompoundButton)o).setChecked(this.wq.isChecked());
                int visibility2;
                if (checkable) {
                    visibility2 = 0;
                }
                else {
                    visibility2 = 8;
                }
                if (((CompoundButton)o).getVisibility() != visibility2) {
                    ((CompoundButton)o).setVisibility(visibility2);
                }
                if (o2 != null && ((CompoundButton)o2).getVisibility() != 8) {
                    ((CompoundButton)o2).setVisibility(8);
                }
            }
            else {
                if (this.wO != null) {
                    this.wO.setVisibility(8);
                }
                if (this.wM != null) {
                    this.wM.setVisibility(8);
                }
            }
        }
        final boolean eg = wq.eg();
        wq.ee();
        int visibility3;
        if (eg && this.wq.eg()) {
            visibility3 = 0;
        }
        else {
            visibility3 = 8;
        }
        if (visibility3 == 0) {
            this.wP.setText((CharSequence)this.wq.ef());
        }
        if (this.wP.getVisibility() != visibility3) {
            this.wP.setVisibility(visibility3);
        }
        final Drawable icon = wq.getIcon();
        boolean b;
        if (this.wq.ei() || this.wV) {
            b = true;
        }
        else {
            b = false;
        }
        if ((b || this.wT) && (this.wL != null || icon != null || this.wT)) {
            if (this.wL == null) {
                this.addView((View)(this.wL = (ImageView)this.dH().inflate(i.qF, (ViewGroup)this, false)), 0);
            }
            if (icon != null || this.wT) {
                final ImageView wl = this.wL;
                Drawable imageDrawable;
                if (b) {
                    imageDrawable = icon;
                }
                else {
                    imageDrawable = null;
                }
                wl.setImageDrawable(imageDrawable);
                if (this.wL.getVisibility() != 0) {
                    this.wL.setVisibility(0);
                }
            }
            else {
                this.wL.setVisibility(8);
            }
        }
        this.setEnabled(wq.isEnabled());
    }
    
    public final void dG() {
        this.wV = true;
        this.wT = true;
    }
    
    public final m dv() {
        return this.wq;
    }
    
    public final boolean dw() {
        return false;
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.setBackgroundDrawable(this.wQ);
        this.wN = (TextView)this.findViewById(g.title);
        if (this.wR != -1) {
            this.wN.setTextAppearance(this.wS, this.wR);
        }
        this.wP = (TextView)this.findViewById(g.qw);
    }
    
    protected void onMeasure(final int n, final int n2) {
        if (this.wL != null && this.wT) {
            final ViewGroup$LayoutParams layoutParams = this.getLayoutParams();
            final LinearLayout$LayoutParams linearLayout$LayoutParams = (LinearLayout$LayoutParams)this.wL.getLayoutParams();
            if (layoutParams.height > 0 && linearLayout$LayoutParams.width <= 0) {
                linearLayout$LayoutParams.width = layoutParams.height;
            }
        }
        super.onMeasure(n, n2);
    }
}
