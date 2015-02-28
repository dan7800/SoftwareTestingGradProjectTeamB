package android.support.v4.d;

import android.net.*;
import android.graphics.*;
import android.os.*;
import android.print.*;

final class h implements CancellationSignal$OnCancelListener
{
    final /* synthetic */ g fY;
    
    h(final g fy) {
        this.fY = fy;
    }
    
    public final void onCancel() {
        this.fY.fX.aA();
        this.fY.cancel(false);
    }
}
