package com.android.mail.browse;

import android.util.*;
import android.view.*;
import android.app.*;
import com.android.mail.providers.*;
import android.graphics.*;
import com.android.ex.photo.util.*;
import android.content.*;
import com.android.mail.ui.*;
import java.util.*;
import com.android.mail.utils.*;

public class MessageAttachmentTile extends AttachmentTile implements View$OnClickListener, h
{
    private static final String mW;
    private final a arX;
    private int asc;
    private View asd;
    private aA ase;
    
    static {
        mW = D.AU();
    }
    
    public MessageAttachmentTile(final Context context) {
        this(context, null);
    }
    
    public MessageAttachmentTile(final Context context, final AttributeSet set) {
        super(context, set);
        this.arX = new a(context, this);
    }
    
    public static MessageAttachmentTile e(final LayoutInflater layoutInflater, final ViewGroup viewGroup) {
        return (MessageAttachmentTile)layoutInflater.inflate(2130968661, viewGroup, false);
    }
    
    public final void a(final FragmentManager fragmentManager) {
        this.arX.a(fragmentManager);
    }
    
    public final void a(final aA ase) {
        this.ase = ase;
    }
    
    public final void a(final Attachment attachment, final int asc, final an an, final boolean b) {
        this.a(attachment, an);
        this.asc = asc;
        this.arX.a(this.ale);
        this.arX.ar(b);
    }
    
    public final void as(final boolean b) {
    }
    
    @Override
    public final void e(final Bitmap bitmap) {
        super.e(bitmap);
        this.asd.setVisibility(8);
    }
    
    public final void oJ() {
        final String normalizeMimeType = ag.normalizeMimeType(this.ale.getContentType());
        com.android.mail.a.a.oq().a("view_attachment", normalizeMimeType, "attachment_tile", this.ale.size);
        if (ImageUtils.aW(normalizeMimeType)) {
            if (this.ase != null) {
                this.ase.a(this);
                return;
            }
            E.f(MessageAttachmentTile.mW, "unable to view image attachment b/c handler is null", new Object[0]);
        }
        else {
            final Intent intent = new Intent("android.intent.action.VIEW");
            intent.setFlags(524289);
            ag.a(intent, this.ale.ayP, normalizeMimeType);
            try {
                this.getContext().startActivity(intent);
            }
            catch (ActivityNotFoundException ex) {
                E.f(MessageAttachmentTile.mW, "Couldn't find Activity for intent", ex);
            }
        }
    }
    
    public final void oK() {
    }
    
    public void onClick(final View view) {
        final AttachmentTileGrid attachmentTileGrid = (AttachmentTileGrid)this.getParent();
        final int childCount = attachmentTileGrid.getChildCount();
        final PriorityQueue priorityQueue = new PriorityQueue<MessageAttachmentTile>(childCount, (Comparator<? super Object>)new aB(this.asc));
        for (int i = 0; i < childCount; ++i) {
            priorityQueue.add((MessageAttachmentTile)attachmentTileGrid.getChildAt(i));
        }
        for (int j = 0; j < childCount; ++j) {
            final MessageAttachmentTile messageAttachmentTile = priorityQueue.remove();
            final int n = childCount - j;
            final boolean b = j != 0;
            if (!messageAttachmentTile.ale.uq()) {
                messageAttachmentTile.arX.b(0, 1, n, b);
            }
        }
        this.oJ();
    }
    
    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.asd = this.findViewById(2131558731);
        this.setOnClickListener((View$OnClickListener)this);
    }
    
    @Override
    public final void rv() {
        super.rv();
        this.asd.setVisibility(0);
    }
    
    @Override
    public final void rw() {
        super.rw();
        if (b.ay(this.getContext())) {
            this.arX.b(0, 0, 0, false);
        }
    }
}
