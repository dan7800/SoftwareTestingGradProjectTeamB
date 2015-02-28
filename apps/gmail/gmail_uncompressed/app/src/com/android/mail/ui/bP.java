package com.android.mail.ui;

import com.android.mail.a.*;
import android.support.v7.widget.*;
import android.widget.*;
import android.content.*;
import android.util.*;
import com.android.mail.providers.*;
import android.animation.*;
import com.android.mail.utils.*;
import android.view.*;

final class bp implements View$OnClickListener
{
    final /* synthetic */ CustomViewToolbar aIU;
    
    bp(final CustomViewToolbar aiu) {
        this.aIU = aiu;
    }
    
    public final void onClick(final View view) {
        a.oq().a("menu_item", "search", "action_bar/" + this.aIU.aDb.AA(), 0L);
        this.aIU.aqm.wu();
    }
}
