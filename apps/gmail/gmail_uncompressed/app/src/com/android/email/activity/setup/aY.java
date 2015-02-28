package com.android.email.activity.setup;

import android.widget.*;
import android.content.*;
import android.util.*;
import android.view.*;
import android.text.*;
import com.android.emailcommon.provider.*;
import com.android.email.activity.*;
import android.os.*;
import com.android.emailcommon.*;

final class ay implements TextWatcher
{
    final /* synthetic */ AuthenticationView Pg;
    
    private ay(final AuthenticationView pg) {
        this.Pg = pg;
    }
    
    public final void afterTextChanged(final Editable editable) {
        this.Pg.hP();
    }
    
    public final void beforeTextChanged(final CharSequence charSequence, final int n, final int n2, final int n3) {
    }
    
    public final void onTextChanged(final CharSequence charSequence, final int n, final int n2, final int n3) {
    }
}
