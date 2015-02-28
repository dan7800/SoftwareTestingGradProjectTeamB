package com.android.mail.ui;

import android.view.inputmethod.*;
import android.content.*;
import android.util.*;
import android.graphics.drawable.*;
import android.content.res.*;
import com.android.mail.utils.*;
import android.text.*;
import android.widget.*;
import android.view.*;

public class MaterialSearchActionView extends LinearLayout implements TextWatcher, View$OnClickListener, View$OnKeyListener, TextView$OnEditorActionListener
{
    private int aLA;
    private cx aLB;
    private InputMethodManager aLC;
    private boolean aLD;
    private boolean aLE;
    private boolean aLF;
    private ImageView aLG;
    private EditText aLH;
    private ImageView aLI;
    private Drawable aLr;
    private Drawable aLs;
    private int aLt;
    private int aLu;
    private int aLv;
    private int aLw;
    private int aLx;
    private int aLy;
    private int aLz;
    
    public MaterialSearchActionView(final Context context) {
        this(context, null);
    }
    
    public MaterialSearchActionView(final Context context, final AttributeSet set) {
        super(context, set);
        final Resources resources = this.getResources();
        this.aLr = (Drawable)new ColorDrawable(resources.getColor(17170443));
        this.aLs = (Drawable)new ColorDrawable(resources.getColor(2131361992));
        this.aLt = 2130837625;
        this.aLu = 2130837627;
        this.aLv = 2130837641;
        this.aLw = 2130837642;
        this.aLx = 2130837720;
        this.aLy = 2130837721;
        this.aLz = resources.getColor(2131361962);
        this.aLA = resources.getColor(17170443);
    }
    
    private void u(final CharSequence charSequence) {
        final Resources resources = this.getResources();
        if (!this.aLD || charSequence.length() > 0) {
            if (this.aLF) {
                this.aLI.setImageResource(this.aLw);
            }
            else {
                this.aLI.setImageResource(this.aLv);
            }
            this.aLI.setContentDescription((CharSequence)resources.getString(2131296579));
            this.aLE = true;
            return;
        }
        if (this.aLF) {
            this.aLI.setImageResource(this.aLy);
        }
        else {
            this.aLI.setImageResource(this.aLx);
        }
        this.aLI.setContentDescription((CharSequence)resources.getString(2131296578));
        this.aLE = false;
    }
    
    public final void a(final cx alb, final String text, final boolean ald) {
        this.aLB = alb;
        this.aLH.setText((CharSequence)text);
        this.aLD = ald;
    }
    
    public final void a(final boolean alf, final int width) {
        this.aLF = alf;
        final ViewGroup$LayoutParams layoutParams = this.getLayoutParams();
        if (alf) {
            this.setBackgroundDrawable(this.aLs);
            this.aLG.setImageResource(this.aLu);
            this.aLH.setTextColor(this.aLA);
            if (al.aH((View)this)) {
                final int[] array = new int[2];
                this.getLocationInWindow(array);
                layoutParams.width = array[0] + this.getWidth() - width;
            }
            else {
                layoutParams.width = width;
            }
        }
        else {
            this.setBackgroundDrawable(this.aLr);
            this.aLG.setImageResource(this.aLt);
            this.aLH.setTextColor(this.aLz);
            layoutParams.width = -1;
        }
        this.u((CharSequence)this.aLH.getText());
        this.setLayoutParams(layoutParams);
    }
    
    public void afterTextChanged(final Editable editable) {
    }
    
    public void beforeTextChanged(final CharSequence charSequence, final int n, final int n2, final int n3) {
    }
    
    public final void by(final boolean b) {
        if (b) {
            this.aLH.requestFocus();
            this.aLC.showSoftInput((View)this.aLH, 0);
            return;
        }
        this.aLC.hideSoftInputFromWindow(this.aLH.getWindowToken(), 0);
    }
    
    public void onClick(final View view) {
        if (view == this.aLG) {
            this.aLB.zO();
        }
        else if (view == this.aLI) {
            if (this.aLE) {
                this.aLH.setText((CharSequence)"");
                this.aLB.de(1);
                return;
            }
            this.aLB.zP();
        }
        else if (view == this.aLH) {
            this.aLB.de(1);
        }
    }
    
    public boolean onEditorAction(final TextView textView, final int n, final KeyEvent keyEvent) {
        if (n == 3) {
            this.aLB.ct(this.aLH.getText().toString());
        }
        return false;
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.aLC = (InputMethodManager)this.getContext().getSystemService("input_method");
        (this.aLG = (ImageView)this.findViewById(2131558855)).setOnClickListener((View$OnClickListener)this);
        (this.aLH = (EditText)this.findViewById(2131558856)).addTextChangedListener((TextWatcher)this);
        this.aLH.setOnClickListener((View$OnClickListener)this);
        this.aLH.setOnEditorActionListener((TextView$OnEditorActionListener)this);
        this.aLH.setOnKeyListener((View$OnKeyListener)this);
        this.aLH.setCustomSelectionActionModeCallback((ActionMode$Callback)new ct(this));
        (this.aLI = (ImageView)this.findViewById(2131558858)).setOnClickListener((View$OnClickListener)this);
        this.u((CharSequence)this.aLH.getText());
    }
    
    public boolean onKey(final View view, final int n, final KeyEvent keyEvent) {
        if (keyEvent.getAction() == 1 && n == 66) {
            this.aLB.ct(this.aLH.getText().toString());
        }
        return false;
    }
    
    public void onTextChanged(final CharSequence charSequence, final int n, final int n2, final int n3) {
        this.aLB.cs(charSequence.toString());
        this.u(charSequence);
    }
    
    public final void zL() {
        this.aLH.setText((CharSequence)"");
    }
}
