package com.android.mail.ui;

import android.widget.*;
import android.content.*;
import android.util.*;
import com.android.mail.providers.*;
import com.android.a.*;
import android.text.*;
import android.graphics.*;
import com.android.mail.b.*;
import android.graphics.drawable.*;

public class AccountItemView extends LinearLayout
{
    private TextView aFa;
    private TextView aFb;
    private ImageView aFc;
    private ImageView aFd;
    
    public AccountItemView(final Context context) {
        super(context);
    }
    
    public AccountItemView(final Context context, final AttributeSet set) {
        super(context, set);
    }
    
    public AccountItemView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
    }
    
    public final void a(final Context context, final Account account, final boolean b, final a a, final j j) {
        if (!TextUtils.isEmpty((CharSequence)account.ik())) {
            this.aFa.setText((CharSequence)account.ik());
            this.aFb.setText((CharSequence)account.lw());
            this.aFb.setVisibility(0);
        }
        else if (!TextUtils.isEmpty((CharSequence)account.getDisplayName()) && !TextUtils.equals((CharSequence)account.getDisplayName(), (CharSequence)account.lw())) {
            this.aFa.setText((CharSequence)account.getDisplayName());
            this.aFb.setText((CharSequence)account.lw());
            this.aFb.setVisibility(0);
        }
        else {
            this.aFa.setText((CharSequence)account.lw());
            this.aFb.setVisibility(8);
        }
        if (b) {
            this.aFd.setVisibility(0);
            this.aFa.setTypeface(Typeface.defaultFromStyle(1));
            final int color = this.getResources().getColor(2131361905);
            this.aFa.setTextColor(color);
            this.aFb.setTextColor(color);
        }
        else {
            this.aFd.setVisibility(8);
            this.aFa.setTypeface(Typeface.DEFAULT);
            final int color2 = this.getResources().getColor(2131361904);
            this.aFa.setTextColor(color2);
            this.aFb.setTextColor(color2);
        }
        final ImageView imageView = (ImageView)this.aFc.findViewById(2131558545);
        final b imageDrawable = new b(context.getResources(), a, j);
        final int dimensionPixelSize = context.getResources().getDimensionPixelSize(2131492973);
        imageDrawable.L(dimensionPixelSize, dimensionPixelSize);
        imageDrawable.x(account.ik(), account.lw());
        imageView.setImageDrawable((Drawable)imageDrawable);
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.aFa = (TextView)this.findViewById(2131558550);
        this.aFb = (TextView)this.findViewById(2131558546);
        this.aFc = (ImageView)this.findViewById(2131558545);
        this.aFd = (ImageView)this.findViewById(2131558551);
    }
}
