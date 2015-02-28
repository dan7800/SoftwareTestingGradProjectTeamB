package com.android.ex.chips;

import java.util.regex.*;
import android.app.*;
import android.util.*;
import android.content.res.*;
import android.text.method.*;
import android.graphics.*;
import android.text.util.*;
import android.text.*;
import android.graphics.drawable.*;
import com.android.ex.chips.a.*;
import java.util.*;
import android.view.inputmethod.*;
import android.content.*;
import android.view.accessibility.*;
import android.view.*;
import android.widget.*;
import android.os.*;

final class aa extends AsyncTask<Void, Void, Void>
{
    final /* synthetic */ RecipientEditTextView aeX;
    
    private aa(final RecipientEditTextView aeX) {
        this.aeX = aeX;
    }
    
    private void a(final List<b> list, final List<b> list2) {
        if (list2 != null && list2.size() > 0) {
            final ac ac = new ac(this, list, list2);
            if (Looper.myLooper() != Looper.getMainLooper()) {
                this.aeX.mHandler.post((Runnable)ac);
                return;
            }
            ac.run();
        }
    }
    
    private b d(final ae ae) {
        try {
            if (this.aeX.aeH) {
                return null;
            }
            return RecipientEditTextView.a(this.aeX, ae);
        }
        catch (NullPointerException ex) {
            Log.e("RecipientEditTextView", ex.getMessage(), (Throwable)ex);
            return null;
        }
    }
    
    protected final void onPreExecute() {
        final ArrayList list = new ArrayList<Object>();
        final b[] mo = this.aeX.mO();
        for (int i = 0; i < mo.length; ++i) {
            list.add(mo[i]);
        }
        if (this.aeX.aeK != null) {
            list.addAll(this.aeX.aeK);
        }
        final ArrayList list2 = new ArrayList<b>(list.size());
        for (final b b : list) {
            if (ae.H(b.nf().mX()) && this.aeX.mL().getSpanStart((Object)b) != -1) {
                list2.add(this.d(b.nf()));
            }
            else {
                list2.add((b)null);
            }
        }
        this.a(list, (List<b>)list2);
    }
}
