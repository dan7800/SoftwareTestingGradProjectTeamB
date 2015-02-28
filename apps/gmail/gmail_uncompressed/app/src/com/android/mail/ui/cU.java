package com.android.mail.ui;

import android.content.*;
import android.view.*;
import com.android.mail.providers.*;
import com.android.mail.utils.*;
import java.util.*;
import android.util.*;
import android.widget.*;

final class cu extends BaseAdapter
{
    private final int aLP;
    final /* synthetic */ MaterialSearchSuggestionsList aLQ;
    private final Context mContext;
    private LayoutInflater wC;
    
    public cu(final MaterialSearchSuggestionsList alq, final Context mContext) {
        this.aLQ = alq;
        this.mContext = mContext;
        this.aLP = 2130968744;
    }
    
    public final int getCount() {
        return this.aLQ.aLL.size();
    }
    
    public final Object getItem(final int n) {
        return this.aLQ.aLL.get(n);
    }
    
    public final long getItemId(final int n) {
        return 0L;
    }
    
    public final View getView(final int n, View inflate, final ViewGroup viewGroup) {
        if (inflate == null) {
            if (this.wC == null) {
                this.wC = LayoutInflater.from(this.mContext);
            }
            inflate = this.wC.inflate(this.aLP, viewGroup, false);
        }
        final cw cw = this.aLQ.aLL.get(n);
        final TextView textView = (TextView)inflate.findViewById(2131558900);
        textView.setText((CharSequence)cw.aLR);
        textView.setContentDescription((CharSequence)this.aLQ.getResources().getString(2131296522, new Object[] { cw.aLR }));
        ((ImageView)inflate.findViewById(2131558899)).setImageURI(cw.aLS);
        return inflate;
    }
}
