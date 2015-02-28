package com.android.mail.g;

import android.widget.*;
import android.view.*;
import com.android.ex.photo.*;
import android.database.*;
import java.util.*;
import com.android.mail.browse.*;
import com.android.mail.providers.*;
import android.os.*;
import com.android.mail.utils.*;
import java.io.*;
import android.content.*;

final class d implements View$OnClickListener
{
    final /* synthetic */ ImageView axA;
    final /* synthetic */ c axB;
    final /* synthetic */ TextView axz;
    
    d(final c axB, final TextView axz, final ImageView axA) {
        this.axB = axB;
        this.axz = axz;
        this.axA = axA;
    }
    
    public final void onClick(final View view) {
        this.axB.ti();
        this.axz.setVisibility(8);
        this.axA.setVisibility(8);
    }
}
