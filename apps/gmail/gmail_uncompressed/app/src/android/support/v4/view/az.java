package android.support.v4.view;

import android.view.*;
import android.graphics.*;
import java.lang.ref.*;
import android.os.*;
import android.view.animation.*;

final class aZ implements bk
{
    aV jI;
    
    aZ(final aV ji) {
        this.jI = ji;
    }
    
    @Override
    public final void A(final View view) {
        if (this.jI.jE >= 0) {
            ad.a(view, 2, null);
        }
        if (this.jI.jC != null) {
            this.jI.jC.run();
        }
        final Object tag = view.getTag(2113929216);
        bk bk;
        if (tag instanceof bk) {
            bk = (bk)tag;
        }
        else {
            bk = null;
        }
        if (bk != null) {
            bk.A(view);
        }
    }
    
    @Override
    public final void B(final View view) {
        if (this.jI.jE >= 0) {
            ad.a(view, this.jI.jE, null);
            this.jI.jE = -1;
        }
        if (this.jI.jD != null) {
            this.jI.jD.run();
        }
        final Object tag = view.getTag(2113929216);
        bk bk;
        if (tag instanceof bk) {
            bk = (bk)tag;
        }
        else {
            bk = null;
        }
        if (bk != null) {
            bk.B(view);
        }
    }
    
    @Override
    public final void C(final View view) {
        final Object tag = view.getTag(2113929216);
        bk bk;
        if (tag instanceof bk) {
            bk = (bk)tag;
        }
        else {
            bk = null;
        }
        if (bk != null) {
            bk.C(view);
        }
    }
}
