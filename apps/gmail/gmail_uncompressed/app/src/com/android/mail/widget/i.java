package com.android.mail.widget;

import android.os.*;
import android.database.*;
import android.net.*;
import android.widget.*;
import android.text.style.*;
import com.android.mail.providers.*;
import java.util.*;
import android.text.format.*;
import com.android.mail.utils.*;
import com.android.mail.browse.*;
import android.content.res.*;
import android.content.*;
import android.appwidget.*;
import android.text.*;

final class i extends com.android.mail.utils.i
{
    final /* synthetic */ h aRy;
    
    public i(final h aRy, final int n) {
        this.aRy = aRy;
        super(Looper.myLooper(), n);
    }
    
    @Override
    protected final void AQ() {
        if (this.aRy.aRp != null) {
            this.aRy.aRp.startLoading();
        }
    }
}
