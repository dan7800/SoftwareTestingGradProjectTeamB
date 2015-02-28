package com.android.email.activity.setup;

import com.android.mail.ui.*;
import android.content.*;
import com.android.emailcommon.provider.*;

final class s extends cp<Account>
{
    private final long LN;
    public final boolean ML;
    public final boolean MM;
    public final boolean MN;
    private final Context mContext;
    
    s(final Context mContext, final long ln, final boolean ml, final boolean mm, final boolean mn) {
        super(mContext);
        this.mContext = mContext;
        this.LN = ln;
        this.ML = ml;
        this.MM = mm;
        this.MN = mn;
    }
}
