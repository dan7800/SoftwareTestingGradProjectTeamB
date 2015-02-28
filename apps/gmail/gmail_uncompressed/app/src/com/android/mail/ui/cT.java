package com.android.mail.ui;

import android.view.*;

final class ct implements ActionMode$Callback
{
    final /* synthetic */ MaterialSearchActionView aLJ;
    
    ct(final MaterialSearchActionView alj) {
        this.aLJ = alj;
    }
    
    public final boolean onActionItemClicked(final ActionMode actionMode, final MenuItem menuItem) {
        return false;
    }
    
    public final boolean onCreateActionMode(final ActionMode actionMode, final Menu menu) {
        return false;
    }
    
    public final void onDestroyActionMode(final ActionMode actionMode) {
    }
    
    public final boolean onPrepareActionMode(final ActionMode actionMode, final Menu menu) {
        return false;
    }
}
