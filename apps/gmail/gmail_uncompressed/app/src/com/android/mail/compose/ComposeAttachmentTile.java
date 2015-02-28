package com.android.mail.compose;

import android.widget.*;
import android.content.*;
import android.util.*;
import android.view.*;
import com.android.mail.providers.*;
import com.android.mail.ui.*;

public class ComposeAttachmentTile extends AttachmentTile
{
    private ImageButton awD;
    
    public ComposeAttachmentTile(final Context context) {
        this(context, null);
    }
    
    public ComposeAttachmentTile(final Context context, final AttributeSet set) {
        super(context, set);
        this.xR();
    }
    
    public static ComposeAttachmentTile f(final LayoutInflater layoutInflater, final ViewGroup viewGroup) {
        return (ComposeAttachmentTile)layoutInflater.inflate(2130968644, viewGroup, false);
    }
    
    public final void a(final View$OnClickListener onClickListener) {
        this.awD.setOnClickListener(onClickListener);
    }
    
    public final void a(final Attachment attachment, final an an) {
        super.a(attachment, an);
        this.awD.setContentDescription((CharSequence)this.getResources().getString(2131296470, new Object[] { attachment.getName() }));
    }
    
    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.awD = (ImageButton)this.findViewById(2131558679);
    }
}
