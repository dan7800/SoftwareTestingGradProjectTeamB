package com.android.mail.browse;

import android.support.v4.view.*;
import android.content.*;
import android.util.*;

public class ConversationPager extends ViewPager
{
    public ConversationPager(final Context context) {
        this(context, null);
    }
    
    public ConversationPager(final Context context, final AttributeSet set) {
        super(context, set);
    }
}
