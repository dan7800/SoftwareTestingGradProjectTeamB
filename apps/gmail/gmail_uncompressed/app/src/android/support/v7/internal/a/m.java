package android.support.v7.internal.a;

import java.util.*;
import android.content.*;
import android.support.v7.c.*;
import android.support.v7.internal.view.*;
import android.os.*;
import android.support.v7.widget.*;
import android.view.animation.*;
import android.support.v4.view.*;
import android.support.v4.app.*;
import android.widget.*;
import android.support.v7.app.*;
import android.support.v7.internal.widget.*;
import android.graphics.drawable.*;
import android.util.*;
import android.view.*;
import android.content.res.*;

final class m implements bm
{
    final /* synthetic */ j vc;
    
    m(final j vc) {
        this.vc = vc;
    }
    
    @Override
    public final void bp() {
        ((View)this.vc.uC.getParent()).invalidate();
    }
}
