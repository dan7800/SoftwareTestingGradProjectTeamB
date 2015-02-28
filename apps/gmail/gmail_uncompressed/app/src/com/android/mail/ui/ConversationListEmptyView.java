package com.android.mail.ui;

import android.widget.*;
import android.content.*;
import android.util.*;
import com.android.mail.providers.*;
import android.support.v4.e.*;
import com.android.mail.utils.*;
import android.content.res.*;

public class ConversationListEmptyView extends LinearLayout
{
    private TextView aGH;
    private ImageView aGe;
    
    public ConversationListEmptyView(final Context context) {
        this(context, null);
    }
    
    public ConversationListEmptyView(final Context context, final AttributeSet set) {
        super(context, set);
    }
    
    public final void a(final Folder folder, final String s, final a a, final boolean b) {
        if (b) {
            o.a(this.aGe, folder);
            this.aGe.setVisibility(0);
        }
        else {
            this.aGe.setVisibility(8);
        }
        final TextView agh = this.aGH;
        final Resources resources = this.getResources();
        if (folder != null) {
            if (folder.uR()) {
                agh.setText(2131296509);
                return;
            }
            if (folder.uS()) {
                agh.setText((CharSequence)resources.getString(2131296510, new Object[] { a.unicodeWrap(s) }));
                return;
            }
            if (folder.uT()) {
                agh.setText(2131296511);
                return;
            }
            if (folder.uU()) {
                agh.setText(2131296512);
                return;
            }
        }
        agh.setText(2131296513);
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.aGe = (ImageView)this.findViewById(2131558718);
        this.aGH = (TextView)this.findViewById(2131558719);
    }
}
