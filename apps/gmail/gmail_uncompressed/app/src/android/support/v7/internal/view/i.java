package android.support.v7.internal.view;

import android.view.*;
import android.view.animation.*;
import android.support.v4.view.*;
import java.util.*;

final class i extends bl
{
    private boolean we;
    private int wf;
    final /* synthetic */ h wg;
    
    i(final h wg) {
        this.wg = wg;
        this.we = false;
        this.wf = 0;
    }
    
    @Override
    public final void A(final View view) {
        if (!this.we) {
            this.we = true;
            if (this.wg.wb != null) {
                this.wg.wb.A(null);
            }
        }
    }
    
    @Override
    public final void B(final View view) {
        final int wf = 1 + this.wf;
        this.wf = wf;
        if (wf == this.wg.lO.size()) {
            if (this.wg.wb != null) {
                this.wg.wb.B(null);
            }
            this.wf = 0;
            this.we = false;
            h.b(this.wg);
        }
    }
}
