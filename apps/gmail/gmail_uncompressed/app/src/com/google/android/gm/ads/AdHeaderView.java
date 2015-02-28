package com.google.android.gm.ads;

import android.widget.*;
import android.content.*;
import android.util.*;
import android.content.res.*;
import android.view.*;
import com.google.android.gm.*;
import android.text.style.*;
import com.android.mail.browse.*;
import android.text.*;

public class AdHeaderView extends LinearLayout implements View$OnClickListener, j
{
    private final int aZm;
    private final int aZn;
    private TextView aZo;
    
    public AdHeaderView(final Context context) {
        this(context, null);
    }
    
    public AdHeaderView(final Context context, final AttributeSet set) {
        super(context, set);
        final Resources resources = context.getResources();
        this.aZm = resources.getDimensionPixelSize(2131493121);
        this.aZn = resources.getDimensionPixelSize(2131493122);
    }
    
    public final void dD(final String text) {
        this.aZo.setText((CharSequence)text);
        final TextView aZo = this.aZo;
        int visibility;
        if (TextUtils.isEmpty((CharSequence)text)) {
            visibility = 8;
        }
        else {
            visibility = 0;
        }
        aZo.setVisibility(visibility);
    }
    
    public final int oL() {
        return this.aZm;
    }
    
    public final float oM() {
        return this.aZn;
    }
    
    public void onClick(final View view) {
        if (view.getId() == 2131558620) {
            ay.aZ(this.getContext());
        }
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        final TextView textView = (TextView)this.findViewById(2131558618);
        final SpannableString text = new SpannableString(textView.getText());
        final int length = ((Spannable)text).length();
        final Context context = this.getContext();
        ((Spannable)text).setSpan((Object)new TextAppearanceSpan(context, 2131231211), 0, length, 33);
        ((Spannable)text).setSpan((Object)new BackgroundColorSpan(context.getResources().getColor(2131361987)), 0, length, 33);
        ((Spannable)text).setSpan((Object)new i((Spanned)text, this), 0, length, 33);
        textView.setText((CharSequence)text);
        this.aZo = (TextView)this.findViewById(2131558619);
        this.findViewById(2131558620).setOnClickListener((View$OnClickListener)this);
    }
}
