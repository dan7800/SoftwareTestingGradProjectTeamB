package com.android.mail.ui;

import com.android.mail.c.*;
import android.net.*;
import android.support.v4.f.*;
import android.widget.*;
import com.android.mail.providers.*;
import android.app.*;
import android.view.*;
import android.content.*;
import android.util.*;
import android.content.res.*;
import com.android.mail.utils.*;
import android.text.*;
import com.android.emailcommon.mail.*;
import com.google.common.collect.*;
import android.support.v4.e.*;
import android.os.*;
import com.android.mail.browse.*;
import java.util.*;

final class cF implements View$OnClickListener
{
    final /* synthetic */ NestedFolderTeaserView aMy;
    
    cF(final NestedFolderTeaserView aMy) {
        this.aMy = aMy;
    }
    
    public final void onClick(final View view) {
        this.aMy.aMs = !this.aMy.aMs;
        this.aMy.aMt = true;
        this.aMy.anZ.notifyDataSetChanged();
    }
}
