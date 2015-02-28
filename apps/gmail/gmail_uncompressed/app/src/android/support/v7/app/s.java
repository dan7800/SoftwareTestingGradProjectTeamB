package android.support.v7.app;

import android.annotation.*;
import android.support.v7.internal.widget.*;
import android.view.*;
import android.support.v7.internal.view.*;
import android.content.*;
import android.support.v7.c.*;

@TargetApi(11)
final class s extends ActionBarActivityDelegateBase implements B
{
    private NativeActionModeAwareLayout oV;
    
    s(final g g) {
        super(g);
    }
    
    @Override
    final void cS() {
        this.oV = (NativeActionModeAwareLayout)this.nX.findViewById(16908290);
        if (this.oV != null) {
            this.oV.a(this);
        }
    }
    
    @Override
    final boolean d(final KeyEvent keyEvent) {
        return false;
    }
    
    @Override
    public final ActionMode startActionModeForChild(final View view, final ActionMode$Callback actionMode$Callback) {
        final a b = this.b(new d(view.getContext(), actionMode$Callback));
        if (b != null) {
            return new c((Context)this.nX, b);
        }
        return null;
    }
}
