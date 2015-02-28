package com.android.mail.ui;

import com.android.mail.providers.*;
import com.android.mail.browse.*;
import com.google.common.collect.*;
import com.android.mail.utils.*;
import java.util.*;

final class v implements Runnable
{
    final /* synthetic */ u aEw;
    
    v(final u aEw) {
        this.aEw = aEw;
    }
    
    @Override
    public final void run() {
        this.aEw.aEa.a(new ToastBarOperation(this.aEw.aEs.size(), this.aEw.aEr, 0, this.aEw.aEu, this.aEw.aEa.aqp));
    }
}
