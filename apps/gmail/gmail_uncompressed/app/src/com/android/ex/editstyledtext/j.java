package com.android.ex.editstyledtext;

import android.view.*;

final class j implements MenuItem$OnMenuItemClickListener
{
    final /* synthetic */ EditStyledText agn;
    
    private j(final EditStyledText agn) {
        this.agn = agn;
    }
    
    public final boolean onMenuItemClick(final MenuItem menuItem) {
        return this.agn.onTextContextMenuItem(menuItem.getItemId());
    }
}
