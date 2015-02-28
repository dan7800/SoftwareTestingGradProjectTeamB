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

final class l implements View$OnSystemUiVisibilityChangeListener
{
    final /* synthetic */ k ahp;
    
    l(final k ahp) {
        this.ahp = ahp;
    }
    
    public final void onSystemUiVisibilityChange(final int n) {
        if (Build$VERSION.SDK_INT >= 19 && n == 0 && this.ahp.agL == 3846) {
            this.ahp.d(false, true);
        }
    }
}
