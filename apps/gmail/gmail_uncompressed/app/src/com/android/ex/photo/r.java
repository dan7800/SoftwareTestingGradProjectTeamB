package com.android.ex.photo;

import android.database.*;
import android.widget.*;
import com.android.ex.photo.a.*;
import android.graphics.drawable.*;
import android.os.*;
import java.util.*;
import android.view.animation.*;
import android.net.*;
import android.support.v4.view.*;
import android.text.*;
import com.android.ex.photo.c.*;
import android.support.v4.app.*;
import android.util.*;
import android.app.*;
import com.android.ex.photo.util.*;
import android.content.*;
import android.content.res.*;
import android.view.*;

final class r implements ViewTreeObserver$OnGlobalLayoutListener
{
    final /* synthetic */ k ahp;
    final /* synthetic */ View ahq;
    
    r(final k ahp, final View ahq) {
        this.ahp = ahp;
        this.ahq = ahq;
    }
    
    public final void onGlobalLayout() {
        if (Build$VERSION.SDK_INT >= 16) {
            this.ahq.getViewTreeObserver().removeOnGlobalLayoutListener((ViewTreeObserver$OnGlobalLayoutListener)this);
        }
        else {
            this.ahq.getViewTreeObserver().removeGlobalOnLayoutListener((ViewTreeObserver$OnGlobalLayoutListener)this);
        }
        this.ahp.nW();
    }
}
