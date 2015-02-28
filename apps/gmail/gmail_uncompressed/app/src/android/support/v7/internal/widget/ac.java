package android.support.v7.internal.widget;

import android.graphics.drawable.*;
import android.support.v7.internal.a.*;
import android.support.v7.widget.*;
import android.text.*;
import android.view.*;
import android.support.v7.internal.view.menu.*;
import android.support.v7.a.*;
import android.widget.*;
import android.support.v4.view.*;
import android.util.*;
import android.content.*;

final class ac extends bl
{
    final /* synthetic */ aa BA;
    private boolean yt;
    
    ac(final aa ba) {
        this.BA = ba;
        this.yt = false;
    }
    
    @Override
    public final void B(final View view) {
        if (!this.yt) {
            this.BA.uo.setVisibility(8);
        }
    }
    
    @Override
    public final void C(final View view) {
        this.yt = true;
    }
}
