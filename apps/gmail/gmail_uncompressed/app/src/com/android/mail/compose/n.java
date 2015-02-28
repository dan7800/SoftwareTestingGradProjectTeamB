package com.android.mail.compose;

import android.content.*;
import android.view.*;
import android.widget.*;

final class n extends ArrayAdapter<String>
{
    final /* synthetic */ g awi;
    private Context mContext;
    private LayoutInflater wC;
    
    public n(final g awi, final Context mContext) {
        this.awi = awi;
        super(mContext, 2130968649, 2131558689, (Object[])awi.getResources().getStringArray(2131689474));
        this.mContext = mContext;
    }
    
    public final View getView(final int n, View inflate, final ViewGroup viewGroup) {
        if (inflate == null) {
            if (this.wC == null) {
                this.wC = LayoutInflater.from(this.mContext);
            }
            inflate = this.wC.inflate(2130968648, (ViewGroup)null);
        }
        ((TextView)inflate.findViewById(2131558689)).setText((CharSequence)this.getItem(n));
        return super.getView(n, inflate, viewGroup);
    }
}
