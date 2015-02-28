package com.android.mail.widget;

import android.database.*;
import android.net.*;
import android.text.style.*;
import com.android.mail.providers.*;
import java.util.*;
import android.text.format.*;
import com.android.mail.browse.*;
import android.content.res.*;
import android.content.*;
import android.appwidget.*;
import android.text.*;
import android.widget.*;
import android.os.*;
import android.app.*;
import android.support.v4.app.*;
import com.android.mail.utils.*;

public final class h implements Loader$OnLoadCompleteListener<Cursor>, RemoteViewsService$RemoteViewsFactory
{
    private final Account Nc;
    private final int aIX;
    private final int aKl;
    private final int aRi;
    private final Uri aRj;
    private final Uri aRk;
    private final String aRl;
    private final d aRm;
    private CursorLoader aRn;
    private Cursor aRo;
    private CursorLoader aRp;
    private CursorLoader aRq;
    private i aRr;
    private int aRs;
    private boolean aRt;
    private boolean aRu;
    private final g aRv;
    private String aRw;
    private String aRx;
    private final Context mContext;
    
    public h(final Context mContext, final Intent intent, final g aRv) {
        this.aRu = false;
        this.mContext = mContext;
        this.aKl = intent.getIntExtra("appWidgetId", 0);
        this.Nc = Account.bH(intent.getStringExtra("account"));
        this.aIX = intent.getIntExtra("folder-type", 1);
        this.aRi = intent.getIntExtra("folder-capabilities", 0);
        this.aRl = intent.getStringExtra("folder-display-name");
        final Uri aRj = (Uri)intent.getParcelableExtra("folder-uri");
        final Uri aRk = (Uri)intent.getParcelableExtra("folder-conversation-list-uri");
        if (aRj != null && aRk != null) {
            this.aRj = aRj;
            this.aRk = aRk;
        }
        else {
            final Folder bn = Folder.bN(intent.getStringExtra("folder"));
            if (bn != null) {
                this.aRj = bn.azZ.aPj;
                this.aRk = bn.aAc;
            }
            else {
                this.aRj = Uri.EMPTY;
                this.aRk = Uri.EMPTY;
                b.a(this.mContext, this.aKl, this.Nc, this.aIX, this.aRi, this.aRj, this.aRk, this.aRl);
            }
        }
        this.aRm = new d(mContext);
        this.aRv = aRv;
    }
    
    private int Bp() {
        synchronized (g.aRh) {
            int count;
            if (this.aRo != null) {
                count = this.aRo.getCount();
            }
            else {
                count = 0;
            }
            return Math.min(count, 25);
        }
    }
    
    private RemoteViews Bq() {
        final RemoteViews remoteViews = new RemoteViews(this.mContext.getPackageName(), 2130968784);
        remoteViews.setTextViewText(2131558853, this.mContext.getText(2131296566));
        remoteViews.setOnClickFillInIntent(2131559017, ag.a(this.mContext, this.aRj, this.Nc));
        return remoteViews;
    }
    
    private static SpannableString a(final CharacterStyle[] array, final CharSequence charSequence) {
        final SpannableString spannableString = new SpannableString(charSequence);
        if (array != null && array.length > 0) {
            spannableString.setSpan((Object)array[0], 0, spannableString.length(), 0);
        }
        return spannableString;
    }
    
    private SpannableStringBuilder k(final List<SpannableString> list) {
        final SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        int n;
        if (Folder.cB(this.aRi)) {
            spannableStringBuilder.append((CharSequence)aR.rV());
            n = 1;
        }
        else {
            n = 0;
        }
        final Iterator<SpannableString> iterator = list.iterator();
        SpannableString spannableString = null;
        int n2 = n;
        while (iterator.hasNext()) {
            SpannableString spannableString2 = iterator.next();
            if (spannableString2 == null) {
                E.f(g.mW, "null sender while iterating over styledSenders", new Object[0]);
            }
            else {
                final CharacterStyle[] array = (CharacterStyle[])spannableString2.getSpans(0, spannableString2.length(), (Class)CharacterStyle.class);
                int n3;
                SpannableString spannableString3;
                if (aR.auf.equals(spannableString2.toString())) {
                    final SpannableString a = a(array, this.aRx + spannableString2 + this.aRx);
                    n3 = n2;
                    spannableString3 = spannableString2;
                    spannableString2 = a;
                }
                else if (n2 == 0 && spannableStringBuilder.length() > 0 && (spannableString == null || !aR.auf.equals(spannableString.toString()))) {
                    final SpannableString a2 = a(array, this.aRw + spannableString2);
                    n3 = n2;
                    spannableString3 = spannableString2;
                    spannableString2 = a2;
                }
                else {
                    spannableString3 = spannableString2;
                    n3 = 0;
                }
                spannableStringBuilder.append((CharSequence)spannableString2);
                spannableString = spannableString3;
                n2 = n3;
            }
        }
        return spannableStringBuilder;
    }
    
    private static boolean n(final Cursor cursor) {
        return cursor != null && !cursor.isClosed() && cursor.moveToFirst();
    }
    
    public final int getCount() {
        while (true) {
            int n = 1;
            while (true) {
                synchronized (g.aRh) {
                    final int bp = this.Bp();
                    int count;
                    if (this.aRo != null) {
                        count = this.aRo.getCount();
                    }
                    else {
                        count = 0;
                    }
                    if (bp >= count) {
                        if (bp >= this.aRs) {
                            final boolean aRt = false;
                            this.aRt = aRt;
                            if (!this.aRt) {
                                n = 0;
                            }
                            return n + bp;
                        }
                    }
                }
                final boolean aRt = n != 0;
                continue;
            }
        }
    }
    
    public final long getItemId(final int n) {
        return n;
    }
    
    public final RemoteViews getLoadingView() {
        final RemoteViews remoteViews = new RemoteViews(this.mContext.getPackageName(), 2130968784);
        remoteViews.setTextViewText(2131558853, this.mContext.getText(2131296567));
        return remoteViews;
    }
    
    public final RemoteViews getViewAt(final int n) {
        synchronized (g.aRh) {
            if (this.aRo == null || this.aRo.isClosed() || (this.aRt && n >= this.Bp())) {
                return this.Bq();
            }
            if (!this.aRo.moveToPosition(n)) {
                E.f(g.mW, "Failed to move to position %d in the cursor.", n);
                return this.Bq();
            }
        }
        final Conversation conversation = new Conversation(this.aRo);
        final ArrayList<SpannableString> list = new ArrayList<SpannableString>();
        aR.a(this.mContext, conversation.azk, "", 25, list, null, null, this.Nc, Folder.cB(this.aRi));
        final SpannableStringBuilder k = this.k(list);
        final CharSequence relativeTimeSpanString = DateUtils.getRelativeTimeSpanString(this.mContext, conversation.ayW);
        int n2;
        if ((0x2 & this.aIX) != 0x0) {
            n2 = 2;
        }
        else {
            n2 = -1;
        }
        final RemoteViews a = this.aRm.a(this.mContext, relativeTimeSpanString, conversation, new p(this.aRj), n2, k, ConversationItemView.s(this.mContext, conversation.ayV));
        a.setOnClickFillInIntent(2131559005, ag.a(this.mContext, conversation, this.aRj, this.Nc));
        // monitorexit(o)
        return a;
    }
    
    public final int getViewTypeCount() {
        return 2;
    }
    
    public final boolean hasStableIds() {
        return false;
    }
    
    public final void onCreate() {
        g.a(this.mContext, this.aKl, this.Nc, this.aRj.toString());
        if (!this.aRv.a(this.mContext, this.aKl, this.Nc)) {
            b.a(this.mContext, this.aKl, this.Nc, this.aIX, this.aRi, this.aRj, this.aRk, this.aRl);
        }
        this.aRu = false;
        final Uri build = this.aRk.buildUpon().appendQueryParameter("limit", Integer.toString(25)).appendQueryParameter("use_network", Boolean.FALSE.toString()).appendQueryParameter("all_notifications", Boolean.TRUE.toString()).build();
        final Resources resources = this.mContext.getResources();
        (this.aRn = new CursorLoader(this.mContext, build, com.android.mail.providers.E.aCx, (String)null, (String[])null, (String)null)).registerListener(1, (Loader$OnLoadCompleteListener)this);
        this.aRn.setUpdateThrottle((long)resources.getInteger(2131427362));
        this.aRn.startLoading();
        this.aRw = resources.getString(2131296605);
        this.aRx = resources.getString(2131296608);
        (this.aRp = new CursorLoader(this.mContext, this.aRj, com.android.mail.providers.E.aCv, (String)null, (String[])null, (String)null)).registerListener(0, (Loader$OnLoadCompleteListener)this);
        (this.aRr = new i(this, resources.getInteger(2131427363))).AP();
        (this.aRq = new CursorLoader(this.mContext, this.Nc.uri, com.android.mail.providers.E.aCs, (String)null, (String[])null, (String)null)).registerListener(2, (Loader$OnLoadCompleteListener)this);
        this.aRq.startLoading();
    }
    
    public final void onDataSetChanged() {
        this.aRr.AP();
    }
    
    public final void onDestroy() {
        synchronized (g.aRh) {
            if (this.aRn != null) {
                this.aRn.reset();
                this.aRn.unregisterListener((Loader$OnLoadCompleteListener)this);
                this.aRn = null;
            }
            this.aRo = null;
            // monitorexit(g.Bj())
            if (this.aRp != null) {
                this.aRp.reset();
                this.aRp.unregisterListener((Loader$OnLoadCompleteListener)this);
                this.aRp = null;
            }
            if (this.aRq != null) {
                this.aRq.reset();
                this.aRq.unregisterListener((Loader$OnLoadCompleteListener)this);
                this.aRq = null;
            }
        }
    }
}
