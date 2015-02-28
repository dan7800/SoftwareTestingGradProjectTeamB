package com.google.android.gm.welcome;

import android.view.*;
import com.google.android.gm.ui.*;
import com.android.mail.ui.*;
import java.util.*;
import android.content.*;
import com.google.android.gm.persistence.*;
import com.google.android.gsf.*;
import com.android.mail.utils.*;
import android.os.*;
import android.app.*;
import com.android.mail.a.*;
import android.support.v4.view.*;

final class p extends q
{
    final /* synthetic */ WelcomeTourActivity bsz;
    
    private p(final WelcomeTourActivity bsz, final FragmentManager fragmentManager) {
        this.bsz = bsz;
        super(fragmentManager);
    }
    
    private int ek(int n) {
        if (al.aH((View)this.bsz.aGq)) {
            n = -1 + (this.getCount() - n);
        }
        return n;
    }
    
    @Override
    public final Fragment cc(final int n) {
        switch (this.ek(n)) {
            default: {
                return null;
            }
            case 0: {
                return new o();
            }
            case 1: {
                return new i();
            }
        }
    }
    
    @Override
    public final int getCount() {
        if (this.bsz.IW()) {
            return 2;
        }
        return 1;
    }
    
    @Override
    public final CharSequence w(final int n) {
        switch (this.ek(n)) {
            default: {
                return null;
            }
            case 0: {
                return "welcome";
            }
            case 1: {
                return "sectioned_inbox";
            }
        }
    }
}
