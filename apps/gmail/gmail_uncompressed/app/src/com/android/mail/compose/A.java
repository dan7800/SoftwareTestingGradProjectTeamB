package com.android.mail.compose;

import com.android.mail.providers.*;
import android.content.*;
import com.android.mail.utils.*;
import org.json.*;
import android.view.*;
import android.widget.*;

final class a extends LinearLayout
{
    private static final String mW;
    private final Attachment ale;
    
    static {
        mW = D.AU();
    }
    
    public a(final Context context, final Attachment ale) {
        super(context);
        this.ale = ale;
        while (true) {
            if (E.isLoggable(a.mW, 3)) {
                while (true) {
                    try {
                        final String s = ale.up().toString(2);
                        E.c(a.mW, "attachment view: %s", s);
                        LayoutInflater.from(this.getContext()).inflate(2130968633, (ViewGroup)this);
                        ((TextView)this.findViewById(2131558637)).setText((CharSequence)this.ale.getName());
                        if (this.ale.size > 0) {
                            ((TextView)this.findViewById(2131558638)).setText((CharSequence)b.E(context, this.ale.size));
                            return;
                        }
                    }
                    catch (JSONException ex) {
                        final String s = ale.toString();
                        continue;
                    }
                    break;
                }
                ((TextView)this.findViewById(2131558638)).setVisibility(8);
                return;
            }
            continue;
        }
    }
    
    public final void a(final View$OnClickListener onClickListener) {
        final ImageButton imageButton = (ImageButton)this.findViewById(2131558639);
        imageButton.setOnClickListener(onClickListener);
        imageButton.setContentDescription((CharSequence)this.getResources().getString(2131296470, new Object[] { this.ale.getName() }));
    }
}
