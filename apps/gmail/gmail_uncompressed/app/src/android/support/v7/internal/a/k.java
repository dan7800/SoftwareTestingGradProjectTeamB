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

final class k extends bl
{
    final /* synthetic */ j vc;
    
    k(final j vc) {
        this.vc = vc;
    }
    
    @Override
    public final void B(final View view) {
        if (this.vc.uQ && this.vc.uF != null) {
            ad.b(this.vc.uF, 0.0f);
            ad.b((View)this.vc.uC, 0.0f);
        }
        if (this.vc.uE != null && this.vc.uN == 1) {
            this.vc.uE.setVisibility(8);
        }
        this.vc.uC.setVisibility(8);
        this.vc.uC.A(false);
        this.vc.uV = null;
        this.vc.db();
        if (this.vc.uB != null) {
            ad.v((View)this.vc.uB);
        }
    }
}
