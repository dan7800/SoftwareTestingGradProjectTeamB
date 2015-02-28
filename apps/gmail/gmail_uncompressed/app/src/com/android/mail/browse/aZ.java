package com.android.mail.browse;

import android.widget.*;
import android.util.*;
import android.app.*;
import com.android.mail.providers.*;
import android.text.*;
import com.android.mail.utils.*;
import android.os.*;
import android.content.*;
import android.view.*;

final class az implements Runnable
{
    final /* synthetic */ MessageAttachmentBar asb;
    
    az(final MessageAttachmentBar asb) {
        this.asb = asb;
    }
    
    @Override
    public final void run() {
        MessageAttachmentBar.a(this.asb);
    }
}
