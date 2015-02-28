package com.android.mail.ui;

import android.view.*;
import com.android.mail.i.*;
import com.android.mail.providers.*;
import com.android.mail.c.*;
import android.app.*;
import android.content.*;
import android.text.*;
import android.text.style.*;
import android.content.res.*;
import android.os.*;
import com.android.mail.browse.*;

final class bm implements View$OnClickListener
{
    final /* synthetic */ bl aIR;
    
    bm(final bl air) {
        this.aIR = air;
    }
    
    public final void onClick(final View view) {
        if (this.aIR.aIO != null) {
            this.aIR.aIN.h(this.aIR.aIO);
        }
    }
}
