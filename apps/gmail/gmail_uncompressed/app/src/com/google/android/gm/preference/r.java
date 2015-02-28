package com.google.android.gm.preference;

import com.android.mail.i.*;
import android.accounts.*;
import com.android.mail.utils.*;
import android.preference.*;
import java.io.*;
import com.android.mail.ui.*;
import android.text.*;
import android.net.*;
import android.provider.*;
import android.content.*;
import android.media.*;
import android.app.*;
import com.google.android.gm.*;
import com.google.android.gm.persistence.*;
import android.os.*;
import java.util.*;
import com.google.android.gm.provider.*;

final class r implements Preference$OnPreferenceClickListener
{
    final /* synthetic */ q bbY;
    
    r(final q bbY) {
        this.bbY = bbY;
    }
    
    public final boolean onPreferenceClick(final Preference preference) {
        q.a(this.bbY);
        return true;
    }
}
