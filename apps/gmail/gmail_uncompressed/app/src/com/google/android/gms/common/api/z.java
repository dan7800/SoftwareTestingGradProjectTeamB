package com.google.android.gms.common.api;

import android.content.*;
import java.util.concurrent.locks.*;
import java.util.concurrent.*;
import com.google.android.gms.common.*;
import java.util.*;
import android.util.*;
import android.os.*;
import com.google.android.gms.common.internal.*;
import android.app.*;

final class z implements p
{
    final /* synthetic */ x bDd;
    
    z(final x bDd) {
        this.bDd = bDd;
    }
    
    @Override
    public final void dz(final int n) {
        while (true) {
            this.bDd.bCI.lock();
            Label_0082: {
                try {
                    this.bDd.eu(n);
                    switch (n) {
                        case 2: {
                            this.bDd.connect();
                            break;
                        }
                        case 1: {
                            break Label_0082;
                        }
                    }
                    return;
                }
                finally {
                    this.bDd.bCI.unlock();
                }
            }
            if (this.bDd.KD()) {
                break;
            }
            this.bDd.bCQ = this.bDd.bCH;
            this.bDd.bCU.sendMessageDelayed(this.bDd.bCU.obtainMessage(1), this.bDd.bCT);
            return;
        }
        this.bDd.bCI.unlock();
    }
    
    @Override
    public final void r(final Bundle bundle) {
        this.bDd.bCI.lock();
        try {
            if (this.bDd.bCP == 1) {
                if (bundle != null) {
                    this.bDd.bCV.putAll(bundle);
                }
                x.d(this.bDd);
            }
        }
        finally {
            this.bDd.bCI.unlock();
        }
    }
}
