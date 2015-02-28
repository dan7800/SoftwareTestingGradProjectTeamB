package com.google.android.gms.appdatasearch;

import com.google.android.gms.internal.*;
import android.content.*;
import android.util.*;
import android.content.pm.*;
import com.google.android.gms.common.*;
import android.net.*;
import android.os.*;
import java.util.*;
import android.app.*;

final class c implements e
{
    final /* synthetic */ a btU;
    
    private c(final a btU) {
        this.btU = btU;
    }
    
    @Override
    public final void a(final com.google.android.gms.common.a a) {
        this.btU.btS = a;
        this.btU.btR.open();
    }
}
