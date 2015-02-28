package android.support.v7.app;

import android.support.v7.c.*;
import android.view.*;
import android.support.v4.view.*;

final class p implements b
{
    final /* synthetic */ ActionBarActivityDelegateBase oG;
    private b oH;
    
    public p(final ActionBarActivityDelegateBase og, final b oh) {
        this.oG = og;
        this.oH = oh;
    }
    
    @Override
    public final boolean a(final a a, final Menu menu) {
        return this.oH.a(a, menu);
    }
    
    @Override
    public final boolean a(final a a, final MenuItem menuItem) {
        return this.oH.a(a, menuItem);
    }
    
    @Override
    public final boolean b(final a a, final Menu menu) {
        return this.oH.b(a, menu);
    }
    
    @Override
    public final void c(final a a) {
        this.oH.c(a);
        Label_0110: {
            if (this.oG.on == null) {
                break Label_0110;
            }
            this.oG.nX.getWindow().getDecorView().removeCallbacks(this.oG.oo);
            this.oG.on.dismiss();
        Label_0101_Outer:
            while (true) {
                if (this.oG.om != null) {
                    this.oG.om.removeAllViews();
                }
                while (true) {
                    if (this.oG.nX == null) {
                        break Label_0101;
                    }
                    try {
                        this.oG.nX.b(this.oG.ol);
                        this.oG.ol = null;
                        return;
                        while (true) {
                            this.oG.om.setVisibility(8);
                            ad.v((View)this.oG.om.getParent());
                            continue Label_0101_Outer;
                            continue;
                        }
                    }
                    // iftrue(Label_0054:, this.oG.om.getParent() == null)
                    // iftrue(Label_0054:, this.oG.om == null)
                    catch (AbstractMethodError abstractMethodError) {
                        continue;
                    }
                    break;
                }
                break;
            }
        }
    }
}
