package android.support.v4.view;

import android.os.*;
import android.view.*;
import android.content.*;

final class t extends Handler
{
    final /* synthetic */ s hU;
    
    t(final s hu) {
        this.hU = hu;
    }
    
    public final void handleMessage(final Message message) {
        switch (message.what) {
            default: {
                throw new RuntimeException("Unknown message " + message);
            }
            case 1: {
                this.hU.hE.onShowPress(this.hU.hL);
                break;
            }
            case 2: {
                s.c(this.hU);
            }
            case 3: {
                if (this.hU.hF == null) {
                    break;
                }
                if (!this.hU.hG) {
                    this.hU.hF.onSingleTapConfirmed(this.hU.hL);
                    return;
                }
                this.hU.hH = true;
            }
        }
    }
}
