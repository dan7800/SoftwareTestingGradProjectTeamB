package com.android.mail.browse;

import android.content.*;
import com.android.emailcommon.mail.*;
import android.net.*;
import java.util.*;
import android.os.*;
import android.widget.*;
import com.android.mail.utils.*;
import android.view.*;
import com.android.mail.ui.*;
import android.app.*;
import com.android.mail.*;

final class ap implements LoaderManager$LoaderCallbacks<ConversationMessage>
{
    final /* synthetic */ am arI;
    
    private ap(final am arI) {
        this.arI = arI;
    }
    
    public final Loader<ConversationMessage> onCreateLoader(final int n, final Bundle bundle) {
        switch (n) {
            default: {
                return null;
            }
            case 0: {
                return (Loader<ConversationMessage>)new al((Context)this.arI.getActivity(), this.arI.arB);
            }
        }
    }
    
    public final void onLoaderReset(final Loader<ConversationMessage> loader) {
    }
}
