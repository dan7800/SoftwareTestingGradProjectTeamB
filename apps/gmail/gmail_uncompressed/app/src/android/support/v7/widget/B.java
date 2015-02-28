package android.support.v7.widget;

import android.util.*;
import android.content.*;
import android.content.res.*;
import android.support.v7.internal.view.menu.*;
import android.view.*;
import android.support.v7.a.*;
import java.util.*;
import android.support.v4.view.*;

final class b extends c
{
    final /* synthetic */ ActionMenuPresenter Cb;
    
    private b(final ActionMenuPresenter cb) {
        this.Cb = cb;
    }
    
    @Override
    public final H dA() {
        if (this.Cb.BW != null) {
            return this.Cb.BW.dA();
        }
        return null;
    }
}
