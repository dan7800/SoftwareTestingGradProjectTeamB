package com.android.mail.ui;

import com.android.mail.providers.*;
import android.support.v7.widget.*;
import android.widget.*;
import android.content.*;
import android.util.*;
import android.animation.*;
import com.android.mail.utils.*;
import android.view.*;

final class bo extends d
{
    final /* synthetic */ CustomViewToolbar aIU;
    
    bo(final CustomViewToolbar aiu) {
        this.aIU = aiu;
    }
    
    @Override
    public final void c(final Account account) {
        this.aIU.r(account);
    }
}
