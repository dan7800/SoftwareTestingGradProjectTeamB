package com.android.mail.ui;

import android.widget.*;
import android.animation.*;
import android.app.*;
import java.util.*;
import com.android.mail.*;
import com.android.mail.utils.*;
import android.content.*;
import com.google.common.base.*;
import com.android.mail.providers.*;
import android.os.*;
import android.graphics.drawable.*;
import android.view.*;

final class du implements Runnable
{
    final /* synthetic */ dt aOa;
    
    du(final dt aOa) {
        this.aOa = aOa;
    }
    
    @Override
    public final void run() {
        if (!this.aOa.aCT.isFinishing()) {
            this.aOa.As();
        }
    }
}
