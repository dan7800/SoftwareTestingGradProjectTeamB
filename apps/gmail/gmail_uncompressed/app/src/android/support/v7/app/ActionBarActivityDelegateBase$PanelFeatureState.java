package android.support.v7.app;

import android.view.*;
import android.content.*;
import android.os.*;
import android.support.v7.internal.view.menu.*;

final class ActionBarActivityDelegateBase$PanelFeatureState
{
    boolean mT;
    int oI;
    ViewGroup oJ;
    View oK;
    i oL;
    g oM;
    Context oN;
    boolean oO;
    boolean oP;
    public boolean oQ;
    boolean oR;
    boolean oS;
    Bundle oT;
    
    ActionBarActivityDelegateBase$PanelFeatureState(final int oi) {
        this.oI = oi;
        this.oR = false;
    }
    
    final void d(final i ol) {
        if (ol != this.oL) {
            if (this.oL != null) {
                this.oL.b(this.oM);
            }
            this.oL = ol;
            if (ol != null && this.oM != null) {
                ol.a(this.oM);
            }
        }
    }
}
