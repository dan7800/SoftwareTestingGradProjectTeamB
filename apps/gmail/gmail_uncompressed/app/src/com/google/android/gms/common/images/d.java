package com.google.android.gms.common.images;

import android.net.*;
import android.graphics.*;
import android.util.*;
import java.util.concurrent.*;
import com.google.android.gms.internal.*;
import java.util.*;
import android.content.*;
import android.os.*;

final class d implements Runnable
{
    private final CountDownLatch bCf;
    private boolean bEB;
    final /* synthetic */ ImageManager bEz;
    private final Uri eM;
    private final Bitmap fN;
    
    public d(final ImageManager bEz, final Uri em, final Bitmap fn, final boolean beb, final CountDownLatch bCf) {
        this.bEz = bEz;
        this.eM = em;
        this.fN = fn;
        this.bEB = beb;
        this.bCf = bCf;
    }
    
    private void a(final ImageManager$ImageReceiver imageManager$ImageReceiver, final boolean b) {
        final ArrayList a = imageManager$ImageReceiver.bEy;
        for (int size = a.size(), i = 0; i < size; ++i) {
            final e e = a.get(i);
            if (b) {
                e.a(this.bEz.mContext, this.fN);
            }
            else {
                this.bEz.bEx.put(this.eM, SystemClock.elapsedRealtime());
                e.a(this.bEz.mContext, this.bEz.bEu);
            }
            if (!(e instanceof g)) {
                this.bEz.bEv.remove(e);
            }
        }
    }
    
    @Override
    public final void run() {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            Log.e("Asserts", "checkMainThread: current thread " + Thread.currentThread() + " IS NOT the main thread " + Looper.getMainLooper().getThread() + "!");
            throw new IllegalStateException("OnBitmapLoadedRunnable must be executed in the main thread");
        }
        final boolean b = this.fN != null;
        if (this.bEz.bEt != null) {
            if (this.bEB) {
                this.bEz.bEt.trimToSize(-1);
                System.gc();
                this.bEB = false;
                this.bEz.mHandler.post((Runnable)this);
                return;
            }
            if (b) {
                this.bEz.bEt.put(new f(this.eM), this.fN);
            }
        }
        final ImageManager$ImageReceiver imageManager$ImageReceiver = this.bEz.bEw.remove(this.eM);
        if (imageManager$ImageReceiver != null) {
            this.a(imageManager$ImageReceiver, b);
        }
        this.bCf.countDown();
        synchronized (ImageManager.bEq) {
            ImageManager.bEr.remove(this.eM);
        }
    }
}
