package com.google.android.gm.ads;

import com.google.android.gm.*;
import com.android.mail.c.*;
import android.net.*;
import com.android.mail.providers.*;
import android.content.*;
import android.util.*;
import android.graphics.*;
import android.content.res.*;
import android.view.animation.*;
import android.animation.*;
import android.os.*;
import com.android.mail.browse.*;
import com.google.android.gm.provider.*;
import com.android.mail.a.*;
import com.android.mail.utils.*;
import android.app.*;
import android.widget.*;
import android.view.*;
import com.android.mail.ui.*;

final class i implements M
{
    final /* synthetic */ AdTeaserView aZO;
    
    i(final AdTeaserView azo) {
        this.aZO = azo;
    }
    
    @Override
    public final void pP() {
        if (this.aZO.aZG) {
            ay.aZ(this.aZO.getContext());
        }
    }
    
    @Override
    public final void pQ() {
        if (this.aZO.aZG) {
            ay.a(this.aZO.getContext(), this.aZO.aZp);
            AsyncTask.execute(this.aZO.aZI);
        }
    }
}
