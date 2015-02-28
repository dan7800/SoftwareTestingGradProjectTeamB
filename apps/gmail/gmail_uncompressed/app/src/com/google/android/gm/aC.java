package com.google.android.gm;

import com.android.emailcommon.b.*;
import android.content.*;
import com.google.android.gsf.*;
import com.google.android.gms.g.*;
import com.android.mail.utils.*;
import com.google.android.gms.common.*;

final class ac extends p
{
    final /* synthetic */ MailApplication aYG;
    
    private ac(final MailApplication ayg) {
        this.aYG = ayg;
    }
    
    @Override
    public final void ai(final Context context) {
        try {
            if (c.a(context.getContentResolver(), "gmail_enable_conscrypt_provider", true)) {
                a.ai(context);
            }
        }
        catch (GooglePlayServicesRepairableException ex) {
            E.e(E.TAG, ex, "Repairable error from installIfNeeded, in runHttpRequest", new Object[0]);
            f.a(ex.JR(), context);
        }
        catch (GooglePlayServicesNotAvailableException ex2) {
            E.e(E.TAG, ex2, "Unrecoverable error from installIfNeeded, in runHttpRequest", new Object[0]);
        }
    }
}
