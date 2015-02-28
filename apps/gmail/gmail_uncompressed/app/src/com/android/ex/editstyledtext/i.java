package com.android.ex.editstyledtext;

import android.util.*;
import android.text.style.*;
import android.widget.*;
import android.text.*;
import android.graphics.drawable.*;
import java.util.*;
import android.view.inputmethod.*;
import android.graphics.*;
import android.os.*;
import android.view.*;

final class i
{
    private int Mf;
    private boolean afY;
    private boolean afZ;
    private boolean aga;
    private boolean agb;
    private boolean agc;
    private int agd;
    private int agf;
    private int agg;
    private int agh;
    private BackgroundColorSpan agi;
    private EditStyledText agj;
    private a agk;
    private EditStyledText$SoftKeyReceiver agl;
    private SpannableStringBuilder agm;
    final /* synthetic */ EditStyledText agn;
    private int ao;
    private int mu;
    
    private static int a(final Editable editable, final int n) {
        int n2;
        for (n2 = n; n2 > 0 && editable.charAt(n2 - 1) != '\n'; --n2) {}
        Log.d("EditStyledText.EditorManager", "--- findLineStart:" + n + "," + editable.length() + "," + n2);
        return n2;
    }
    
    private static int b(final Editable editable, final int n) {
        int i;
        for (i = n; i < editable.length(); ++i) {
            if (editable.charAt(i) == '\n') {
                ++i;
                break;
            }
        }
        Log.d("EditStyledText.EditorManager", "--- findLineEnd:" + n + "," + editable.length() + "," + i);
        return i;
    }
    
    private void nz() {
        Log.d("EditStyledText.EditorManager", "--- offSelect");
        final EditStyledText agj = this.agj;
        EditStyledText.a((Spannable)this.agj.getText());
        final int selectionStart = this.agj.getSelectionStart();
        this.agj.setSelection(selectionStart, selectionStart);
        this.ao = 0;
    }
    
    public final void I(final int n, final int n2) {
        Log.d("EditStyledText", "--- setTextComposingMask:" + n + "," + n2);
        final int min = Math.min(n, n2);
        final int max = Math.max(n, n2);
        int n3;
        if (this.agb && this.agg != 16777215) {
            n3 = this.agg;
        }
        else {
            n3 = this.agj.bx(min);
        }
        final int backgroundColor = this.agj.getBackgroundColor();
        Log.d("EditStyledText", "--- fg:" + Integer.toHexString(n3) + ",bg:" + Integer.toHexString(backgroundColor) + "," + this.agb + ",," + this.Mf);
        if (n3 == backgroundColor) {
            final int n4 = Integer.MIN_VALUE | (-1 ^ (backgroundColor | 0xFF000000));
            if (this.agi == null || this.agi.getBackgroundColor() != n4) {
                this.agi = new BackgroundColorSpan(n4);
            }
            this.agj.getText().setSpan((Object)this.agi, min, max, 33);
        }
    }
    
    public final void J(final int n, final int n2) {
        Log.d("EditStyledText.EditorManager", "--- showsoftkey");
        if (this.agj.isFocused() && !this.afZ) {
            this.agl.ago = Selection.getSelectionStart((CharSequence)this.agj.getText());
            this.agl.agp = Selection.getSelectionEnd((CharSequence)this.agj.getText());
            if (((InputMethodManager)this.agn.getContext().getSystemService("input_method")).showSoftInput((View)this.agj, 0, (ResultReceiver)this.agl) && this.agl != null) {
                Selection.setSelection((Spannable)this.agn.getText(), n, n2);
            }
        }
    }
    
    public final void a(final Editable editable, final int n, final int n2, final int n3) {
        Log.d("EditStyledText.EditorManager", "updateSpanPrevious:" + n + "," + n2 + "," + n3);
        final int n4 = n + n3;
        final int min = Math.min(n, n4);
        final int max = Math.max(n, n4);
        for (final Object o : editable.getSpans(min, min, (Class)Object.class)) {
            if (o instanceof ForegroundColorSpan || o instanceof AbsoluteSizeSpan || o instanceof g || o instanceof AlignmentSpan) {
                final int spanStart = editable.getSpanStart(o);
                final int spanEnd = editable.getSpanEnd(o);
                Log.d("EditStyledText.EditorManager", "spantype:" + o.getClass() + "," + spanStart);
                int b;
                if (o instanceof g || o instanceof AlignmentSpan) {
                    b = b(this.agj.getText(), max);
                }
                else if (this.aga) {
                    b = spanEnd;
                }
                else {
                    b = max;
                }
                if (spanEnd < b) {
                    Log.d("EditStyledText.EditorManager", "updateSpanPrevious: extend span");
                    editable.setSpan(o, spanStart, b, 33);
                }
            }
            else if (o instanceof f) {
                final int spanStart2 = editable.getSpanStart(o);
                final int spanEnd2 = editable.getSpanEnd(o);
                if (n2 > n3) {
                    editable.replace(spanStart2, spanEnd2, (CharSequence)"");
                    editable.removeSpan(o);
                }
                else if (spanEnd2 == n4 && n4 < editable.length() && this.agj.getText().charAt(n4) != '\n') {
                    this.agj.getText().insert(n4, (CharSequence)"\n");
                }
            }
        }
    }
    
    public final void ai(final boolean b) {
        Log.d("EditStyledText.EditorManager", "--- onClickSelectAll");
        if (this.afY) {
            this.agk.by(11);
        }
        if (b) {
            EditStyledText.a(this.agj, this.Mf, this.ao);
        }
    }
    
    public final void b(final Editable editable, final int n, final int n2, final int n3) {
        Log.d("EditStyledText.EditorManager", "updateSpanNext:" + n + "," + n2 + "," + n3);
        final int selection = n + n3;
        final int min = Math.min(n, selection);
        final int max = Math.max(n, selection);
        for (final Object o : editable.getSpans(max, max, (Class)Object.class)) {
            if (o instanceof g || o instanceof AlignmentSpan) {
                final int spanStart = editable.getSpanStart(o);
                final int spanEnd = editable.getSpanEnd(o);
                Log.d("EditStyledText.EditorManager", "spantype:" + o.getClass() + "," + spanEnd);
                int a;
                if (o instanceof g || o instanceof AlignmentSpan) {
                    a = a(this.agj.getText(), min);
                }
                else {
                    a = min;
                }
                if (a < spanStart && n2 > n3) {
                    editable.removeSpan(o);
                }
                else if (spanStart > min) {
                    editable.setSpan(o, min, spanEnd, 33);
                }
            }
            else if (o instanceof f && editable.getSpanStart(o) == selection && selection > 0 && this.agj.getText().charAt(selection - 1) != '\n') {
                this.agj.getText().insert(selection, (CharSequence)"\n");
                this.agj.setSelection(selection);
            }
        }
    }
    
    public final void by(final int n) {
        this.agk.by(n);
        EditStyledText.a(this.agj, this.Mf, this.ao);
    }
    
    public final int getBackgroundColor() {
        return this.mu;
    }
    
    public final void nA() {
        Log.d("EditStyledText.EditorManager", "--- blockSoftKey:");
        Log.d("EditStyledText.EditorManager", "--- hidesoftkey");
        if (this.agj.isFocused()) {
            this.agl.ago = Selection.getSelectionStart((CharSequence)this.agj.getText());
            this.agl.agp = Selection.getSelectionEnd((CharSequence)this.agj.getText());
            ((InputMethodManager)this.agj.getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.agj.getWindowToken(), 0, (ResultReceiver)this.agl);
        }
        this.afZ = true;
    }
    
    public final boolean nm() {
        return this.afY;
    }
    
    public final boolean nn() {
        return this.afZ;
    }
    
    public final void np() {
        Log.d("EditStyledText.EditorManager", "--- onClickSelect");
        this.Mf = 5;
        if (this.ao == 0) {
            this.agk.no();
        }
        else {
            this.nz();
            this.agk.no();
        }
        EditStyledText.a(this.agj, this.Mf, this.ao);
    }
    
    public final void nq() {
        Log.d("EditStyledText.EditorManager", "--- onClickView");
        if (this.ao == 1 || this.ao == 2) {
            this.agk.no();
            EditStyledText.a(this.agj, this.Mf, this.ao);
        }
    }
    
    public final void nr() {
        Log.d("EditStyledText.EditorManager", "--- onFixSelectedItem");
        Log.d("EditStyledText.EditorManager", "--- handleComplete:" + this.agd + "," + this.agf);
        if (this.afY) {
            if (this.agd == this.agf) {
                Log.d("EditStyledText.EditorManager", "--- cancel handle complete:" + this.agd);
                Log.d("EditStyledText.EditorManager", "--- handleCancel");
                this.Mf = 0;
                this.ao = 0;
                this.afY = false;
                this.agg = 16777215;
                this.agh = 0;
                this.agb = false;
                this.afZ = false;
                this.aga = false;
                this.agc = false;
                this.nz();
                this.agj.setOnClickListener((View$OnClickListener)null);
                Log.d("EditStyledText.EditorManager", "--- unblockSoftKey:");
                this.afZ = false;
                this.afY = true;
                EditStyledText.a(this.agj, this.Mf, this.ao);
            }
            else {
                if (this.ao == 2) {
                    this.ao = 3;
                }
                this.agk.bA(this.Mf);
                final EditStyledText agj = this.agj;
                EditStyledText.a((Spannable)this.agj.getText());
            }
        }
        EditStyledText.a(this.agj, this.Mf, this.ao);
    }
    
    public final void ns() {
        this.agk.by(14);
    }
    
    public final void nt() {
        Log.d("EditStyledText.EditorManager", "--- onRefreshStyles");
        final Editable text = this.agj.getText();
        final int length = text.length();
        final int width = this.agj.getWidth();
        final f[] array = (f[])text.getSpans(0, length, (Class)f.class);
        for (int length2 = array.length, i = 0; i < length2; ++i) {
            array[i].bC(width);
        }
        final g[] array2 = (g[])text.getSpans(0, length, (Class)g.class);
        for (int length3 = array2.length, j = 0; j < length3; ++j) {
            array2[j].bD(this.agj.getBackgroundColor());
        }
        if (array.length > 0) {
            text.replace(0, 1, (CharSequence)new StringBuilder().append(text.charAt(0)).toString());
        }
    }
    
    public final void nu() {
        Log.d("EditStyledText", "--- unsetTextComposingMask");
        if (this.agi != null) {
            this.agj.getText().removeSpan((Object)this.agi);
            this.agi = null;
        }
    }
    
    public final boolean nv() {
        final Editable text = this.agj.getText();
        final int length = text.length();
        return ((ParagraphStyle[])text.getSpans(0, length, (Class)ParagraphStyle.class)).length > 0 || ((QuoteSpan[])text.getSpans(0, length, (Class)QuoteSpan.class)).length > 0 || ((CharacterStyle[])text.getSpans(0, length, (Class)CharacterStyle.class)).length > 0 || this.mu != 16777215;
    }
    
    public final boolean nw() {
        return this.agb;
    }
    
    public final int nx() {
        return this.ao;
    }
    
    public final boolean ny() {
        if (this.agm != null && this.agm.length() > 0) {
            final SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder((CharSequence)this.agm);
            for (final DynamicDrawableSpan dynamicDrawableSpan : (DynamicDrawableSpan[])spannableStringBuilder.getSpans(0, spannableStringBuilder.length(), (Class)DynamicDrawableSpan.class)) {
                if (dynamicDrawableSpan instanceof f || dynamicDrawableSpan instanceof h) {
                    spannableStringBuilder.replace(spannableStringBuilder.getSpanStart((Object)dynamicDrawableSpan), spannableStringBuilder.getSpanEnd((Object)dynamicDrawableSpan), (CharSequence)"");
                }
            }
            if (spannableStringBuilder.length() == 0) {
                return true;
            }
        }
        return false;
    }
    
    public final void setBackgroundColor(final int mu) {
        this.mu = mu;
    }
}
