package com.google.android.gm.browse;

import com.google.android.gm.*;
import android.content.*;
import android.text.*;
import com.google.android.gsf.*;

final class d extends aC
{
    private final String YQ;
    
    public d(final Context context, final String s, final String s2, final String yq) {
        super(context, s, s2);
        this.YQ = yq;
    }
    
    @Override
    public final String getUrl() {
        String s = super.getUrl();
        if (!TextUtils.isEmpty((CharSequence)this.YQ)) {
            s = s + c.a(this.getContext().getContentResolver(), "gmail-plid-message-id-key", "&mid=") + Long.toHexString(Long.parseLong(this.YQ));
        }
        return s;
    }
}
