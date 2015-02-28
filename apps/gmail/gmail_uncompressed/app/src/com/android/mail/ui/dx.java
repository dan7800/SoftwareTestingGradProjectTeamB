package com.android.mail.ui;

import android.widget.*;
import android.graphics.drawable.*;
import android.content.*;
import android.util.*;
import android.view.animation.*;
import android.content.res.*;
import java.util.*;
import android.animation.*;
import android.graphics.*;
import com.android.mail.utils.*;
import android.view.*;

final class dx implements Runnable
{
    final /* synthetic */ TwoPaneLayout aOG;
    final /* synthetic */ boolean aOH;
    final /* synthetic */ boolean aOI;
    final /* synthetic */ boolean aOJ;
    
    dx(final TwoPaneLayout aog, final boolean aoh, final boolean aoi, final boolean aoj) {
        this.aOG = aog;
        this.aOH = aoh;
        this.aOI = aoi;
        this.aOJ = aoj;
    }
    
    @Override
    public final void run() {
        boolean b = true;
        final TwoPaneLayout aog = this.aOG;
        final boolean b2 = !this.aOH && b;
        final boolean b3 = !this.aOI && b;
        if (this.aOJ) {
            b = false;
        }
        TwoPaneLayout.a(aog, b2, b3, b);
    }
}
