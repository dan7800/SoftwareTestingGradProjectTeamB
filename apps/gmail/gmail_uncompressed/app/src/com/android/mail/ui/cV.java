package com.android.mail.ui;

import android.os.*;
import android.net.*;
import android.database.*;
import java.util.*;
import com.android.mail.providers.*;
import com.android.mail.utils.*;
import android.content.*;
import android.util.*;
import android.view.*;
import android.widget.*;

final class cv extends AsyncTask<String, Void, List<cw>>
{
    final /* synthetic */ MaterialSearchSuggestionsList aLQ;
    
    private cv(final MaterialSearchSuggestionsList alq) {
        this.aLQ = alq;
    }
    
    private List<cw> t(final String... array) {
        String s = array[0];
        if (s == null) {
            s = "";
        }
        Cursor cc = null;
        final ArrayList<cw> list = new ArrayList<cw>();
        try {
            cc = this.aLQ.aLK.cc(s);
            if (cc != null && cc.moveToFirst()) {
                final int columnIndex = cc.getColumnIndex("suggest_intent_query");
                final int columnIndex2 = cc.getColumnIndex("suggest_icon_1");
                do {
                    list.add(new cw(cc.getString(columnIndex), Uri.parse(cc.getString(columnIndex2))));
                } while (cc.moveToNext());
            }
            return list;
        }
        catch (IllegalStateException ex) {
            E.d(MaterialSearchSuggestionsList.mW, ex, "Exception in QuerySuggestionsTask", new Object[0]);
            return list;
        }
        finally {
            if (cc != null) {
                cc.close();
            }
        }
    }
}
