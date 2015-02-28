package com.android.mail.ui;

import android.net.*;
import android.support.v4.widget.*;
import android.content.res.*;
import android.content.*;
import com.google.common.base.*;
import com.android.mail.*;
import android.database.*;
import java.util.*;
import android.app.*;
import com.android.mail.providers.*;
import com.android.mail.utils.*;
import android.view.*;
import java.io.*;
import android.os.*;
import android.widget.*;
import com.android.mail.browse.*;

final class f implements ab
{
    final /* synthetic */ a aEa;
    final /* synthetic */ Folder aEg;
    
    f(final a aEa, final Folder aEg) {
        this.aEa = aEa;
        this.aEg = aEg;
    }
    
    @Override
    public final void ar(final Context context) {
        final Uri aAh = this.aEg.aAh;
        if (aAh != null) {
            this.aEa.x(aAh);
        }
    }
}
