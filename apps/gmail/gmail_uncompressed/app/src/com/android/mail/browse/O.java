package com.android.mail.browse;

import android.database.*;
import android.content.*;
import android.util.*;
import android.support.v4.view.*;
import android.view.*;
import com.android.mail.utils.*;
import java.util.*;
import android.graphics.*;

final class o extends DataSetObserver
{
    final /* synthetic */ ConversationContainer alQ;
    
    private o(final ConversationContainer alQ) {
        this.alQ = alQ;
    }
    
    public final void onChanged() {
        ConversationContainer.b(this.alQ);
    }
}
