package com.android.mail.browse;

import android.widget.*;
import android.view.*;
import android.content.*;
import android.util.*;
import java.text.*;
import android.content.res.*;
import com.android.mail.utils.*;

public class SuperCollapsedBlock extends FrameLayout implements View$OnClickListener
{
    private int LQ;
    private aY auA;
    private TextView auB;
    private View auC;
    private af auz;
    
    public SuperCollapsedBlock(final Context context) {
        this(context, null);
    }
    
    public SuperCollapsedBlock(final Context context, final AttributeSet set) {
        super(context, set);
        this.setActivated(false);
        this.setOnClickListener((View$OnClickListener)this);
    }
    
    public final void a(final aY auA) {
        this.auA = auA;
    }
    
    public final void a(final af auz) {
        this.auz = auz;
        this.auB.setVisibility(0);
        this.auC.setVisibility(8);
        this.LQ = 1 + (auz.getEnd() - auz.getStart());
        this.auB.setText((CharSequence)NumberFormat.getIntegerInstance().format(this.LQ));
        final Resources resources = this.getResources();
        int n;
        if (this.auz.qT()) {
            n = 2131361909;
        }
        else {
            n = 2131361944;
        }
        this.auB.setTextColor(resources.getColor(n));
        this.setContentDescription((CharSequence)resources.getQuantityString(2131820558, this.LQ, new Object[] { this.LQ }));
    }
    
    public void onClick(final View view) {
        this.auB.setVisibility(8);
        this.auC.setVisibility(0);
        al.b((View)this, this.getResources().getQuantityString(2131820559, this.LQ, new Object[] { this.LQ }));
        if (this.auA != null) {
            this.getHandler().post((Runnable)new aX(this));
        }
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.auB = (TextView)this.findViewById(2131558938);
        this.auC = this.findViewById(2131558939);
    }
}
