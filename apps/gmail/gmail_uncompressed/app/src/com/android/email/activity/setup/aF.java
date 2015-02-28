package com.android.email.activity.setup;

import com.android.email.view.*;
import com.android.email.service.*;
import com.android.emailcommon.provider.*;
import android.text.*;
import java.io.*;
import com.android.mail.utils.*;
import android.content.*;
import com.android.emailcommon.b.*;
import java.util.*;
import android.os.*;
import android.app.*;
import com.android.emailcommon.*;
import android.view.*;
import android.widget.*;
import android.text.method.*;

final class af implements TextWatcher
{
    final /* synthetic */ ad OA;
    
    af(final ad oa) {
        this.OA = oa;
    }
    
    public final void afterTextChanged(final Editable editable) {
        this.OA.hP();
    }
    
    public final void beforeTextChanged(final CharSequence charSequence, final int n, final int n2, final int n3) {
    }
    
    public final void onTextChanged(final CharSequence charSequence, final int n, final int n2, final int n3) {
    }
}
