package com.google.android.gm.preference;

import com.android.mail.i.*;
import android.accounts.*;
import com.android.mail.utils.*;
import android.preference.*;
import android.content.*;
import java.io.*;
import com.android.mail.ui.*;
import android.text.*;
import android.net.*;
import android.provider.*;
import android.media.*;
import android.app.*;
import com.google.android.gm.*;
import com.google.android.gm.persistence.*;
import android.os.*;
import java.util.*;
import com.google.android.gm.provider.*;

final class v implements DialogInterface$OnClickListener
{
    final /* synthetic */ q bbY;
    
    v(final q bbY) {
        this.bbY = bbY;
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int n) {
        this.bbY.bbW = true;
        new i((Context)this.bbY.getActivity(), this.bbY.PS).aW(this.bbY.bbW);
        this.bbY.bbU.aW(true);
        this.bbY.notifyObservers();
        this.bbY.DK();
    }
}
