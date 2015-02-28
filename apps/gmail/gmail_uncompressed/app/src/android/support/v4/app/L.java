package android.support.v4.app;

import android.os.*;

final class l extends Handler
{
    final /* synthetic */ k bu;
    
    l(final k bu) {
        this.bu = bu;
    }
    
    public final void handleMessage(final Message message) {
        switch (message.what) {
            default: {
                super.handleMessage(message);
                break;
            }
            case 1: {
                if (this.bu.bq) {
                    this.bu.b(false);
                    return;
                }
                break;
            }
            case 2: {
                this.bu.C();
                this.bu.bn.L();
            }
        }
    }
}
