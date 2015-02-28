package com.android.mail.compose;

import com.android.mail.providers.*;
import android.view.*;

final class c implements View$OnClickListener
{
    final /* synthetic */ Attachment avd;
    final /* synthetic */ AttachmentsView ave;
    final /* synthetic */ a avf;
    
    c(final AttachmentsView ave, final a avf, final Attachment avd) {
        this.ave = ave;
        this.avf = avf;
        this.avd = avd;
    }
    
    public final void onClick(final View view) {
        this.ave.a((View)this.avf, this.avd);
    }
}
