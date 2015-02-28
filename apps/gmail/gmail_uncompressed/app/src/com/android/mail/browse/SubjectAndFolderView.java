package com.android.mail.browse;

import android.widget.*;
import android.support.v4.e.*;
import android.graphics.drawable.*;
import android.content.*;
import android.util.*;
import android.content.res.*;
import android.text.*;
import com.android.mail.utils.*;
import android.text.method.*;
import android.view.*;
import com.android.mail.ui.*;
import com.android.mail.text.*;
import com.android.mail.providers.*;
import java.util.*;

public class SubjectAndFolderView extends TextView implements c
{
    private String YL;
    private a aqT;
    private ac arm;
    private final String auq;
    private final int aur;
    private final int aus;
    private final Drawable aut;
    private final int auu;
    private int auv;
    private aW auw;
    private boolean aux;
    
    public SubjectAndFolderView(final Context context) {
        this(context, null);
    }
    
    public SubjectAndFolderView(final Context context, final AttributeSet set) {
        super(context, set);
        final Resources resources = this.getResources();
        this.auq = resources.getString(2131296523);
        this.aur = resources.getColor(2131361941);
        this.aus = resources.getColor(2131361940);
        (this.aut = resources.getDrawable(2130837693)).setBounds(0, 0, this.aut.getIntrinsicWidth(), this.aut.getIntrinsicHeight());
        this.auu = resources.getDimensionPixelOffset(2131492996);
        this.aux = false;
        this.auw = new aW(this, this.getContext());
    }
    
    private a qJ() {
        if (this.aqT == null) {
            aa aqW;
            if (this.arm != null) {
                aqW = this.arm.aqW;
            }
            else {
                aqW = null;
            }
            if (aqW == null) {
                this.aqT = a.aC();
            }
            else {
                this.aqT = aqW.qJ();
            }
        }
        return this.aqT;
    }
    
    public final void a(final ac arm) {
        this.arm = arm;
    }
    
    public final void a(final ag ag, final Account account, final Conversation conversation) {
        this.aux = true;
        final a qj = this.qJ();
        String unicodeWrap;
        if (this.YL == null) {
            unicodeWrap = "";
        }
        else {
            unicodeWrap = qj.unicodeWrap(this.YL);
        }
        final SpannableStringBuilder text = new SpannableStringBuilder((CharSequence)unicodeWrap);
        text.append(' ');
        final Settings ayw = account.ayw;
        final int length = text.length();
        if (ayw.aCc && conversation.uE()) {
            text.append((CharSequence)". ");
            text.setSpan((Object)new aV(this), length, length + 1, 17);
        }
        this.auw.a(conversation, null, -1);
        aW.a(this.auw, text);
        text.setSpan((Object)new com.android.mail.text.a(ag), length, text.length(), 33);
        this.setText((CharSequence)text);
        this.setMovementMethod(LinkMovementMethod.getInstance());
    }
    
    public final String getSubject() {
        return this.YL;
    }
    
    protected void onMeasure(final int n, final int n2) {
        this.auv = View$MeasureSpec.getSize(n) - this.getTotalPaddingLeft() - this.getTotalPaddingRight();
        super.onMeasure(n, n2);
    }
    
    public final int rX() {
        return this.auv;
    }
    
    public final void setSubject(final String s) {
        this.YL = Conversation.e(this.getContext(), null, s);
        if (!this.aux) {
            this.setText((CharSequence)this.YL);
        }
    }
}
