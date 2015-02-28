package com.android.mail.d;

import com.android.mail.providers.*;
import com.android.mail.utils.*;
import android.view.*;
import com.android.mail.ui.*;

final class e extends d
{
    e(final as as, final Folder folder, final int n) {
        super(as, folder, n, null);
    }
    
    @Override
    public final boolean a(final p p2, final int n) {
        boolean b = false;
        if (p2 != null) {
            final Folder aqp = this.aqp;
            b = false;
            if (aqp != null) {
                final p azZ = this.aqp.azZ;
                b = false;
                if (azZ != null) {
                    final int axc = this.axc;
                    b = false;
                    if (axc == n) {
                        final boolean equals = this.aqp.azZ.equals(p2);
                        b = false;
                        if (equals) {
                            b = true;
                        }
                    }
                }
            }
        }
        return b;
    }
    
    @Override
    public final int getType() {
        return 0;
    }
    
    @Override
    public final View getView(final View view, final ViewGroup viewGroup) {
        FolderItemView folderItemView;
        if (view != null) {
            folderItemView = (FolderItemView)view;
        }
        else {
            folderItemView = (FolderItemView)this.wC.inflate(2130968696, viewGroup, false);
        }
        folderItemView.a(this.aqp, (p)null);
        folderItemView.l(this.aqp);
        return (View)folderItemView;
    }
    
    @Override
    public final boolean ta() {
        return true;
    }
    
    @Override
    public final String toString() {
        return "[DrawerItem VIEW_FOLDER, mFolder=" + this.aqp + ", mItemCategory=" + this.axc + "]";
    }
}
