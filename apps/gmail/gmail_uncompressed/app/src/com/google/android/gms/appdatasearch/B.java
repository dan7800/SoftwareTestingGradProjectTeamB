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

final class b implements d
{
    final /* synthetic */ a btU;
    
    private b(final a btU) {
        this.btU = btU;
    }
    
    @Override
    public final void Jf() {
        this.btU.btR.open();
    }
    
    @Override
    public final void onDisconnected() {
    }
}
