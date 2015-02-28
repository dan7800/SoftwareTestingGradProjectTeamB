package com.android.mail.compose;

import com.android.mail.providers.*;
import android.view.*;

final class b implements View$OnClickListener
{
    final /* synthetic */ ComposeAttachmentTile avc;
    final /* synthetic */ Attachment avd;
    final /* synthetic */ AttachmentsView ave;
    
    b(final AttachmentsView ave, final ComposeAttachmentTile avc, final Attachment avd) {
        this.ave = ave;
        this.avc = avc;
        this.avd = avd;
    }
    
    public final void onClick(final View view) {
        this.ave.a((View)this.avc, this.avd);
    }
}
