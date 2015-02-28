package com.android.ex.editstyledtext;

import android.util.*;
import android.widget.*;
import android.graphics.drawable.*;
import java.util.*;
import android.text.style.*;
import android.view.inputmethod.*;
import android.graphics.*;
import android.os.*;
import android.view.*;
import android.text.*;

public final class k extends InputConnectionWrapper
{
    EditStyledText agj;
    
    public k(final InputConnection inputConnection, final EditStyledText agj) {
        super(inputConnection, true);
        this.agj = agj;
    }
    
    public final boolean commitText(final CharSequence charSequence, final int n) {
        Log.d("EditStyledText", "--- commitText:");
        this.agj.afN.nu();
        return super.commitText(charSequence, n);
    }
    
    public final boolean finishComposingText() {
        Log.d("EditStyledText", "--- finishcomposing:");
        if (!this.agj.nn() && !this.agj.nh() && !this.agj.nm()) {
            this.agj.nj();
        }
        return super.finishComposingText();
    }
}
