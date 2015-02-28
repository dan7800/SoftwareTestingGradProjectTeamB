package com.android.mail.ui;

import com.android.mail.providers.*;
import android.os.*;
import android.view.*;
import com.android.mail.utils.*;
import android.app.*;
import android.animation.*;
import android.text.*;
import java.util.*;
import android.widget.*;
import android.content.*;

final class cz extends AsyncTask<String, Void, Void>
{
    final /* synthetic */ cx aMc;
    
    private cz(final cx aMc) {
        this.aMc = aMc;
    }
    
    protected final void onPreExecute() {
        this.aMc.aLY = true;
    }
}
