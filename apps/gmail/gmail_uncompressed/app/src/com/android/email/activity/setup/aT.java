package com.android.email.activity.setup;

import com.android.email.provider.*;
import com.android.emailcommon.b.*;
import android.text.*;
import com.android.mail.utils.*;
import com.android.emailcommon.provider.*;
import android.os.*;
import android.app.*;
import android.content.*;
import android.widget.*;
import android.view.*;
import android.text.method.*;

final class at implements TextWatcher
{
    final /* synthetic */ aq OQ;
    
    at(final aq oq) {
        this.OQ = oq;
    }
    
    public final void afterTextChanged(final Editable editable) {
        this.OQ.hP();
    }
    
    public final void beforeTextChanged(final CharSequence charSequence, final int n, final int n2, final int n3) {
    }
    
    public final void onTextChanged(final CharSequence charSequence, final int n, final int n2, final int n3) {
    }
}
