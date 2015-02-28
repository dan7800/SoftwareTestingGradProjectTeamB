package com.android.mail.ui;

import android.widget.*;
import com.android.mail.providers.*;
import android.app.*;
import android.content.*;
import android.util.*;
import android.content.res.*;
import com.android.mail.browse.*;
import com.android.mail.g.*;
import android.graphics.*;
import java.util.*;
import com.android.mail.compose.*;
import com.android.mail.utils.*;
import android.view.*;
import com.google.common.collect.*;

public class AttachmentTileGrid extends FrameLayout implements aA, an
{
    private Account Nc;
    private List<Attachment> aBE;
    private final int aGm;
    private final int aGn;
    private int aGo;
    private final HashMap<String, AttachmentTile$AttachmentPreview> aGp;
    private ConversationMessage aqZ;
    private FragmentManager c;
    private final LayoutInflater wC;
    
    public AttachmentTileGrid(final Context context, final AttributeSet set) {
        super(context, set);
        this.wC = LayoutInflater.from(context);
        final Resources resources = context.getResources();
        this.aGm = resources.getDimensionPixelSize(2131492980);
        this.aGn = resources.getDimensionPixelSize(2131492982);
        this.aGp = Maps.aan();
    }
    
    public final void a(final FragmentManager c, final Account nc, final ConversationMessage aqZ, final List<Attachment> abe, final boolean b) {
        this.c = c;
        this.Nc = nc;
        this.aqZ = aqZ;
        this.aBE = abe;
        final Iterator<Attachment> iterator = abe.iterator();
        int n = 0;
        while (iterator.hasNext()) {
            final Attachment attachment = iterator.next();
            final int n2 = n + 1;
            MessageAttachmentTile e;
            if (this.getChildCount() <= n) {
                e = MessageAttachmentTile.e(this.wC, (ViewGroup)this);
                e.a(this.c);
                e.a(this);
                this.addView((View)e);
            }
            else {
                e = (MessageAttachmentTile)this.getChildAt(n);
            }
            e.a(attachment, n, this, b);
            n = n2;
        }
    }
    
    public final void a(final MessageAttachmentTile messageAttachmentTile) {
        b.a(this.getContext(), this.Nc.lw(), this.Nc.getType(), this.aqZ, this.indexOfChild((View)messageAttachmentTile));
    }
    
    public final void a(final Attachment attachment, final Bitmap bitmap) {
        final String string = attachment.uA().toString();
        if (string != null) {
            this.aGp.put(string, new AttachmentTile$AttachmentPreview(attachment, bitmap));
        }
    }
    
    public final void d(final ArrayList<AttachmentTile$AttachmentPreview> list) {
        if (list != null) {
            for (final AttachmentTile$AttachmentPreview attachmentTile$AttachmentPreview : list) {
                this.aGp.put(attachmentTile$AttachmentPreview.aGk, attachmentTile$AttachmentPreview);
            }
        }
    }
    
    public final Bitmap h(final Attachment attachment) {
        final String string = attachment.uA().toString();
        if (string != null) {
            final AttachmentTile$AttachmentPreview attachmentTile$AttachmentPreview = this.aGp.get(string);
            if (attachmentTile$AttachmentPreview != null) {
                return attachmentTile$AttachmentPreview.aGl;
            }
        }
        return null;
    }
    
    public final ComposeAttachmentTile i(final Attachment attachment) {
        final ComposeAttachmentTile f = ComposeAttachmentTile.f(this.wC, (ViewGroup)this);
        this.addView((View)f);
        f.a(attachment, this);
        return f;
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        final int childCount = this.getChildCount();
        if (childCount != 0) {
            final boolean ah = al.aH((View)this);
            final int measuredWidth = this.getMeasuredWidth();
            int n5;
            if (ah) {
                n5 = measuredWidth - this.getChildAt(0).getMeasuredWidth();
            }
            else {
                n5 = 0;
            }
            int n6 = 0;
            int n7 = 1;
            int n11;
            int n13;
            int n14;
            for (int i = 0; i < childCount; ++i, n14 = n11, n5 = n13, n6 = n14) {
                final View child = this.getChildAt(i);
                final int measuredWidth2 = child.getMeasuredWidth();
                final int measuredHeight = child.getMeasuredHeight();
                int n10;
                if (n7 == 0 && i % this.aGo == 0) {
                    int n8;
                    if (ah) {
                        n8 = measuredWidth - measuredWidth2;
                    }
                    else {
                        n8 = 0;
                    }
                    final int n9 = n6 + (measuredHeight + this.aGn);
                    n10 = n8;
                    n11 = n9;
                }
                else {
                    final int n12 = n6;
                    n10 = n5;
                    n11 = n12;
                    n7 = 0;
                }
                child.layout(n10, n11, n10 + measuredWidth2, measuredHeight + n11);
                if (ah) {
                    n13 = n10 - (measuredWidth2 - this.aGn);
                }
                else {
                    n13 = n10 + (measuredWidth2 + this.aGn);
                }
            }
        }
    }
    
    protected void onMeasure(final int n, final int n2) {
        final int size = View$MeasureSpec.getSize(n);
        final int childCount = this.getChildCount();
        if (childCount == 0) {
            this.setMeasuredDimension(size, 0);
            return;
        }
        this.aGo = size / this.aGm;
        if (this.aGo == 0) {
            this.aGo = 1;
        }
        final int n3 = size - (-1 + this.aGo) * this.aGn;
        final int n4 = n3 / this.aGo;
        final int n5 = n3 - n4 * this.aGo;
        for (int i = 0; i < childCount; ++i) {
            final View child = this.getChildAt(i);
            int n6;
            if (i < n5) {
                n6 = 1;
            }
            else {
                n6 = 0;
            }
            child.measure(View$MeasureSpec.makeMeasureSpec(n6 + n4, 1073741824), View$MeasureSpec.makeMeasureSpec(n4, 1073741824));
        }
        final int n7 = 1 + (childCount - 1) / this.aGo;
        this.setMeasuredDimension(size, n7 * (n4 + this.getChildAt(0).getPaddingBottom()) + (n7 - 1) * this.aGn);
    }
    
    public final ArrayList<AttachmentTile$AttachmentPreview> sd() {
        return Lists.f((Iterable<? extends AttachmentTile$AttachmentPreview>)this.aGp.values());
    }
    
    public void sendAccessibilityEvent(final int n) {
    }
}
