package com.google.android.gms.people.accountswitcherview;

import android.widget.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.people.model.*;
import android.content.*;
import android.os.*;
import android.view.animation.*;
import android.content.res.*;
import android.text.*;
import java.util.*;
import android.animation.*;
import android.util.*;
import android.view.*;

final class O implements T
{
    final /* synthetic */ SelectedAccountNavigationView cjn;
    
    private O(final SelectedAccountNavigationView cjn) {
        this.cjn = cjn;
    }
    
    @Override
    public final S aL(final View cjp) {
        final S s = new S();
        s.cjp = cjp;
        s.cjq = cjp.findViewById(B.cij);
        s.cjs = cjp.findViewById(B.cik);
        s.cjy = (ImageView)s.cjs;
        s.cjt = (TextView)cjp.findViewById(B.cig);
        s.cju = (TextView)cjp.findViewById(B.cif);
        s.cjx = (ImageView)cjp.findViewById(B.cin);
        s.cjr = (ExpanderView)cjp.findViewById(B.cih);
        s.cjo = cjp.findViewById(B.civ);
        s.cjL = this.cjn.findViewById(B.cii);
        if (this.cjn.ciV) {
            s.cjv = cjp.findViewById(B.cil);
            s.cjz = (ImageView)s.cjv;
            s.cjw = cjp.findViewById(B.cim);
            s.cjA = (ImageView)s.cjw;
            s.cjE = cjp.findViewById(B.cis);
            s.cjI = (ImageView)s.cjE;
            s.cjF = (ImageView)cjp.findViewById(B.cit);
            s.cjB = cjp.findViewById(B.ciu);
            s.cjC = (TextView)cjp.findViewById(B.cir);
            s.cjD = (TextView)cjp.findViewById(B.ciq);
            s.cjG = cjp.findViewById(B.cio);
            s.cjJ = (ImageView)s.cjG;
            s.cjH = cjp.findViewById(B.cip);
            s.cjK = (ImageView)s.cjH;
        }
        return s;
    }
}
