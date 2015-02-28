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

final class ab implements View$OnClickListener
{
    final /* synthetic */ aa BA;
    final a Bz;
    
    ab(final aa ba) {
        this.BA = ba;
        this.Bz = new a(this.BA.uo.getContext(), this.BA.cZ);
    }
    
    public final void onClick(final View view) {
        if (this.BA.of != null && this.BA.Bv) {
            this.BA.of.onMenuItemSelected(0, (MenuItem)this.Bz);
        }
    }
}
