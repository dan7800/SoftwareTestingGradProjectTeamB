package com.android.ex.chips;

import java.util.regex.*;
import android.app.*;
import android.content.res.*;
import android.text.method.*;
import android.util.*;
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

final class ab implements H
{
    final /* synthetic */ ArrayList afl;
    final /* synthetic */ aa afm;
    
    ab(final aa afm, final ArrayList afl) {
        this.afm = afm;
        this.afl = afl;
    }
    
    @Override
    public final void b(final Map<String, ae> map) {
        final ArrayList<b> list = new ArrayList<b>();
        for (final b b : this.afl) {
            ae b2;
            if (b != null && ae.H(b.nf().mX()) && this.afm.aeX.mL().getSpanStart((Object)b) != -1) {
                b2 = this.afm.aeX.c(map.get(RecipientEditTextView.aN(b.nf().mU())));
            }
            else {
                b2 = null;
            }
            if (b2 != null) {
                list.add(this.afm.d(b2));
            }
            else {
                list.add(null);
            }
        }
        this.afm.a(this.afl, list);
    }
    
    @Override
    public final void c(final Set<String> set) {
        final ArrayList<b> list = new ArrayList<b>(set.size());
        for (final b b : this.afl) {
            if (b != null && ae.H(b.nf().mX()) && this.afm.aeX.mL().getSpanStart((Object)b) != -1) {
                if (set.contains(b.nf().mU())) {
                    list.add(this.afm.d(b.nf()));
                }
                else {
                    list.add(null);
                }
            }
            else {
                list.add(null);
            }
        }
        this.afm.a(this.afl, list);
    }
}
