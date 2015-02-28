package com.android.mail.ui;

import android.animation.*;
import android.widget.*;
import android.util.*;
import com.android.a.*;
import com.android.mail.b.*;
import android.content.*;
import com.android.mail.utils.*;
import android.database.*;
import com.google.common.collect.*;
import android.view.*;
import android.content.res.*;
import com.android.mail.providers.*;
import com.android.mail.browse.*;
import java.util.*;
import android.os.*;

final class ah extends d
{
    final /* synthetic */ ae aGd;
    
    ah(final ae aGd) {
        this.aGd = aGd;
    }
    
    @Override
    public final void c(final Account account) {
        if (this.aGd.q(account)) {
            this.aGd.notifyDataSetChanged();
        }
    }
}
