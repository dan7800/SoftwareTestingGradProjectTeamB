package com.android.email.provider;

import android.content.*;
import com.android.email.service.*;

final class m implements t
{
    final /* synthetic */ EmailProvider Tm;
    
    m(final EmailProvider tm) {
        this.Tm = tm;
    }
    
    @Override
    public final void a(final Context context, final long n, final int n2) {
        AttachmentService.a(context, n, n2);
    }
}
