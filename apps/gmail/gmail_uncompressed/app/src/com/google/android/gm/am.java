package com.google.android.gm;

import android.os.*;
import java.util.*;
import android.content.*;
import com.google.android.gm.provider.*;

final class am extends AsyncTask<Void, Void, Void>
{
    private final Map<String, Long> aYQ;
    private final String mAccount;
    private final Context mContext;
    
    am(final Context mContext, final String mAccount, final Map<String, Long> ayq) {
        this.mContext = mContext;
        this.mAccount = mAccount;
        this.aYQ = ayq;
    }
}
