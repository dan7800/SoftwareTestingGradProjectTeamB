package com.android.mail.ui;

import android.widget.*;
import android.content.*;
import android.util.*;
import com.android.mail.utils.*;

public class FolderListLayout extends FrameLayout
{
    public FolderListLayout(final Context context) {
        this(context, null);
    }
    
    public FolderListLayout(final Context context, final AttributeSet set) {
        super(context, set);
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        E.c("MailBlankFragment", "FolderListLayout(%s).onLayout() called", this);
        super.onLayout(b, n, n2, n3, n4);
    }
    
    protected void onMeasure(final int n, final int n2) {
        E.c("MailBlankFragment", "FolderListLayout(%s).onMeasure() called", this);
        super.onMeasure(n, n2);
    }
}
