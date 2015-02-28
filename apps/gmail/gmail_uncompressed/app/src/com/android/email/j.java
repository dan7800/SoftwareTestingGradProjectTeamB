package com.android.email;

import android.os.*;

final class j implements Runnable
{
    private Looper LO;
    private final Object fK;
    
    public j() {
        this.fK = new Object();
        new Thread(null, this, "EmailNotification").start();
        synchronized (this.fK) {
            while (this.LO == null) {
                try {
                    this.fK.wait();
                }
                catch (InterruptedException ex) {}
            }
        }
    }
    
    public final Looper getLooper() {
        return this.LO;
    }
    
    @Override
    public final void run() {
        synchronized (this.fK) {
            Looper.prepare();
            this.LO = Looper.myLooper();
            this.fK.notifyAll();
            // monitorexit(this.fK)
            Process.setThreadPriority(10);
            Looper.loop();
        }
    }
}
