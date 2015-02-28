package com.android.email.activity.setup;

import com.android.email.view.*;
import com.android.email.service.*;
import com.android.emailcommon.provider.*;
import android.text.*;
import java.io.*;
import com.android.mail.utils.*;
import android.content.*;
import com.android.emailcommon.b.*;
import android.widget.*;
import java.util.*;
import android.os.*;
import android.app.*;
import com.android.emailcommon.*;
import android.view.*;
import android.text.method.*;

final class ae implements AdapterView$OnItemSelectedListener
{
    final /* synthetic */ ad OA;
    
    ae(final ad oa) {
        this.OA = oa;
    }
    
    public final void onItemSelected(final AdapterView<?> adapterView, final View view, final int n, final long n2) {
        this.OA.ig();
    }
    
    public final void onNothingSelected(final AdapterView<?> adapterView) {
    }
}
