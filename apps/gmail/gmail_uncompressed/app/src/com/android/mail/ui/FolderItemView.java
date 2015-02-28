package com.android.mail.ui;

import com.android.mail.providers.*;
import android.content.*;
import android.util.*;
import android.graphics.*;
import android.graphics.drawable.shapes.*;
import android.graphics.drawable.*;
import android.view.*;
import com.android.mail.utils.*;
import android.widget.*;

public class FolderItemView extends LinearLayout
{
    private static float[] aJj;
    private TextView aJk;
    private TextView aJl;
    private TextView aJm;
    private Folder aqp;
    private final String mW;
    
    public FolderItemView(final Context context) {
        super(context);
        this.mW = D.AU();
        as(context);
    }
    
    public FolderItemView(final Context context, final AttributeSet set) {
        super(context, set);
        this.mW = D.AU();
        as(context);
    }
    
    public FolderItemView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mW = D.AU();
        as(context);
    }
    
    public static boolean a(final Folder folder, final Folder folder2) {
        if (folder == null) {
            if (folder2 != null) {
                return false;
            }
        }
        else {
            if (folder2 == null) {
                return false;
            }
            if (folder != folder2 && (!folder.azZ.equals(folder2.azZ) || !folder.name.equals(folder2.name) || folder.aAa != folder2.aAa || folder.aAe != folder2.aAe || folder.aAf != folder2.aAf)) {
                return false;
            }
        }
        return true;
    }
    
    private static void as(final Context context) {
        if (FolderItemView.aJj == null) {
            final float dimension = context.getResources().getDimension(2131492989);
            FolderItemView.aJj = new float[] { dimension, dimension, dimension, dimension, dimension, dimension, dimension, dimension };
        }
    }
    
    private void cX(final int n) {
        final TextView aJl = this.aJl;
        int visibility;
        if (n > 0) {
            visibility = 0;
        }
        else {
            visibility = 8;
        }
        aJl.setVisibility(visibility);
        if (n > 0) {
            this.aJl.setText((CharSequence)ag.l(this.getContext(), n));
        }
    }
    
    public final void a(final Folder aqp, final p p2) {
        this.aqp = aqp;
        this.aJk.setText((CharSequence)aqp.name);
        if (p2 != null) {
            final boolean equals = aqp.azZ.equals(p2);
            final View viewById = this.findViewById(2131558829);
            int visibility;
            if (equals) {
                visibility = 8;
            }
            else {
                visibility = 0;
            }
            viewById.setVisibility(visibility);
        }
        if (this.aqp.uR() && this.aqp.aAe > 0) {
            this.aJl.setVisibility(8);
            final int cz = this.aqp.cz(-16777216);
            final int aAe = this.aqp.aAe;
            final TextView aJm = this.aJm;
            int visibility2 = 0;
            if (aAe <= 0) {
                visibility2 = 8;
            }
            aJm.setVisibility(visibility2);
            if (aAe > 0) {
                final ShapeDrawable backgroundDrawable = new ShapeDrawable((Shape)new RoundRectShape(FolderItemView.aJj, (RectF)null, (float[])null));
                backgroundDrawable.getPaint().setColor(cz);
                this.aJm.setBackgroundDrawable((Drawable)backgroundDrawable);
                this.aJm.setText((CharSequence)ag.m(this.getContext(), aAe));
            }
            return;
        }
        this.aJm.setVisibility(8);
        this.cX(ag.t(this.aqp));
    }
    
    public final void cY(final int n) {
        E.f(this.mW, "FLF->FolderItem.getFolderView: unread count mismatch found (%s vs %d)", this.aJl.getText(), n);
        this.cX(n);
    }
    
    public final void l(final Folder folder) {
        Folder.a(folder, (ImageView)this.findViewById(2131558830));
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.aJk = (TextView)this.findViewById(2131558831);
        this.aJl = (TextView)this.findViewById(2131558616);
        this.aJm = (TextView)this.findViewById(2131558832);
    }
}
