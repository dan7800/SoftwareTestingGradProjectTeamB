package com.google.android.gm.provider;

import android.content.*;
import android.database.*;
import com.google.common.collect.*;
import java.util.*;
import com.android.mail.utils.*;

final class E implements Observer
{
    final /* synthetic */ D beZ;
    
    E(final D beZ) {
        this.beZ = beZ;
    }
    
    @Override
    public final void update(final Observable observable, final Object o) {
        this.beZ.Eg();
        this.beZ.setChanged();
        this.beZ.notifyObservers();
    }
}
