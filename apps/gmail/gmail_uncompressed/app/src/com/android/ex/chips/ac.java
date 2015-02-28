package com.android.ex.chips;

import com.android.ex.chips.a.*;
import java.util.*;
import android.text.*;

final class ac implements Runnable
{
    final /* synthetic */ aa afm;
    final /* synthetic */ List afn;
    final /* synthetic */ List afo;
    
    ac(final aa afm, final List afn, final List afo) {
        this.afm = afm;
        this.afn = afn;
        this.afo = afo;
    }
    
    @Override
    public final void run() {
        final SpannableStringBuilder text = new SpannableStringBuilder((CharSequence)this.afm.aeX.getText());
        final Iterator<b> iterator = (Iterator<b>)this.afn.iterator();
        int n = 0;
        while (iterator.hasNext()) {
            final b b = iterator.next();
            final b b2 = this.afo.get(n);
            if (b2 != null) {
                final ae nf = b.nf();
                final ae nf2 = b2.nf();
                int n2;
                if (F.a(nf, nf2) == nf2) {
                    n2 = 1;
                }
                else {
                    n2 = 0;
                }
                if (n2 != 0) {
                    final int spanStart = ((Editable)text).getSpanStart((Object)b);
                    if (spanStart != -1) {
                        final int min = Math.min(1 + ((Editable)text).getSpanEnd((Object)b), ((Editable)text).length());
                        ((Editable)text).removeSpan((Object)b);
                        final SpannableString spannableString = new SpannableString((CharSequence)(this.afm.aeX.a(b2.nf()).trim() + " "));
                        spannableString.setSpan((Object)b2, 0, -1 + spannableString.length(), 33);
                        ((Editable)text).replace(spanStart, min, (CharSequence)spannableString);
                        b2.aP(spannableString.toString());
                        this.afo.set(n, null);
                        this.afn.set(n, b2);
                    }
                }
            }
            ++n;
        }
        this.afm.aeX.setText((CharSequence)text);
    }
}
