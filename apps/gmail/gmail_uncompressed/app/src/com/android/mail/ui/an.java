package com.android.mail.ui;

import android.view.*;
import com.android.mail.i.*;
import com.android.mail.providers.*;
import android.app.*;
import com.android.mail.browse.*;
import android.content.*;
import com.android.mail.utils.*;
import android.text.*;
import android.content.res.*;

final class aN implements View$OnClickListener
{
    final /* synthetic */ aM aHu;
    
    aN(final aM aHu) {
        this.aHu = aHu;
    }
    
    public final void onClick(final View view) {
        if (this.aHu.aHt == 1) {
            dp.b(this.aHu.Nc.uf(), this.aHu.Nc.ayC).show(this.aHu.pe.getFragmentManager(), "auto sync");
        }
        else if (this.aHu.aHt == 2) {
            ag.f(this.aHu.getContext(), this.aHu.Nc);
        }
    }
}
