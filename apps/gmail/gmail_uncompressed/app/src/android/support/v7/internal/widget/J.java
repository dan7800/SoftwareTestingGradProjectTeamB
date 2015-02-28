package android.support.v7.internal.widget;

import android.support.v4.widget.*;
import android.support.v4.view.*;
import android.graphics.drawable.*;
import android.content.*;
import android.util.*;
import android.support.v7.a.*;
import android.support.v7.widget.*;
import android.support.v7.internal.view.menu.*;
import android.view.*;
import android.graphics.*;
import android.content.res.*;
import android.os.*;
import android.support.v7.internal.*;

final class j implements Runnable
{
    final /* synthetic */ ActionBarOverlayLayout zH;
    
    j(final ActionBarOverlayLayout zh) {
        this.zH = zh;
    }
    
    @Override
    public final void run() {
        this.zH.eC();
        this.zH.zB = ad.s((View)this.zH.zk).d(0.0f).a(this.zH.zD);
        if (this.zH.zj != null && this.zH.zj.getVisibility() != 8) {
            this.zH.zC = ad.s((View)this.zH.zj).d(0.0f).a(this.zH.zE);
        }
    }
}
