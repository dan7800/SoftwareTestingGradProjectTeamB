package com.android.mail.ui;

import com.android.mail.providers.*;
import android.util.*;
import com.android.ex.photo.util.*;
import android.text.*;
import com.android.mail.utils.*;
import android.graphics.*;
import android.widget.*;
import android.content.*;

public abstract class AttachmentTile extends RelativeLayout implements al
{
    private static final String mW;
    private ImageView aGe;
    private ImageView aGf;
    private TextView aGg;
    private boolean aGh;
    private an aGi;
    private boolean aGj;
    protected Attachment ale;
    private TextView arP;
    private String arR;
    private String arS;
    
    static {
        mW = D.AU();
    }
    
    public AttachmentTile(final Context context) {
        this(context, null);
    }
    
    public AttachmentTile(final Context context, final AttributeSet set) {
        super(context, set);
        this.aGh = true;
        this.aGj = false;
    }
    
    public static boolean g(final Attachment attachment) {
        return ImageUtils.aW(attachment.getContentType());
    }
    
    protected void a(final Attachment ale, final an aGi) {
        if (ale == null) {
            this.setVisibility(4);
            return;
        }
        final Attachment ale2 = this.ale;
        this.ale = ale;
        this.aGi = aGi;
        E.c(AttachmentTile.mW, "got attachment list row: name=%s state/dest=%d/%d dled=%d contentUri=%s MIME=%s flags=%d", ale.getName(), ale.state, ale.ayN, ale.ayO, ale.ayP, ale.getContentType(), ale.flags);
        if ((0x400 & ale.flags) != 0x0) {
            this.arP.setText(2131296581);
        }
        else if (ale2 == null || !TextUtils.equals((CharSequence)ale.getName(), (CharSequence)ale2.getName())) {
            this.arP.setText((CharSequence)ale.getName());
        }
        if (ale2 == null || ale.size != ale2.size) {
            this.arR = b.E(this.getContext(), ale.size);
            this.arS = b.a(this.getContext(), ale);
            final StringBuilder sb = new StringBuilder();
            sb.append(this.arR);
            if (this.arS != null) {
                sb.append(' ');
                sb.append(this.arS);
            }
            this.aGg.setText((CharSequence)sb.toString());
        }
        dn.a(this.aGi, this, ale, ale2);
    }
    
    public void e(final Bitmap imageBitmap) {
        if (imageBitmap == null) {
            return;
        }
        this.aGf.setVisibility(8);
        if (!this.aGj) {
            this.arP.setVisibility(8);
            this.aGg.setVisibility(8);
        }
        final int integer = this.getResources().getInteger(2131427380);
        final int width = imageBitmap.getWidth();
        final int height = imageBitmap.getHeight();
        final int n = width * this.getResources().getDisplayMetrics().densityDpi / 160;
        final int n2 = height * this.getResources().getDisplayMetrics().densityDpi / 160;
        final float min = Math.min(width / height, height / width);
        final boolean b = width >= integer || n >= this.aGe.getWidth() || height >= integer || n2 >= this.aGe.getHeight();
        final boolean b2 = min < 0.5f && (n < 0.5f * this.aGe.getHeight() || n2 < 0.5f * this.aGe.getWidth());
        E.c(AttachmentTile.mW, "scaledWidth: %d, scaledHeight: %d, large: %b, skinny: %b", n, n2, b, b2);
        if (b && !b2) {
            this.aGe.setScaleType(ImageView$ScaleType.CENTER_CROP);
        }
        else {
            this.aGe.setScaleType(ImageView$ScaleType.CENTER);
        }
        this.aGe.setImageBitmap(imageBitmap);
        this.aGi.a(this.ale, imageBitmap);
        this.aGh = false;
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.arP = (TextView)this.findViewById(2131558677);
        this.aGg = (TextView)this.findViewById(2131558678);
        this.aGe = (ImageView)this.findViewById(2131558640);
        this.aGf = (ImageView)this.findViewById(2131558641);
    }
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        super.onLayout(b, n, n2, n3, n4);
        dn.a(this.aGi, this, this.ale, null);
    }
    
    public void rv() {
        final Bitmap h = this.aGi.h(this.ale);
        if (h != null) {
            this.e(h);
            return;
        }
        this.aGf.setVisibility(0);
        this.arP.setVisibility(0);
        this.aGg.setVisibility(0);
        this.aGh = true;
    }
    
    public void rw() {
        this.rv();
    }
    
    public final int xN() {
        return this.aGe.getWidth();
    }
    
    public final int xO() {
        return this.aGe.getHeight();
    }
    
    public final ContentResolver xP() {
        return this.getContext().getContentResolver();
    }
    
    public final boolean xQ() {
        return this.aGh;
    }
    
    protected final void xR() {
        this.aGj = true;
    }
}
