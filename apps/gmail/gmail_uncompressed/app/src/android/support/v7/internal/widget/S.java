package android.support.v7.internal.widget;

import android.widget.*;
import android.content.*;
import android.util.*;
import android.support.v7.a.*;
import android.view.*;
import android.os.*;
import android.annotation.*;

public final class s extends PopupWindow
{
    private final boolean Ai;
    
    public s(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        final Z a = Z.a(context, set, l.sP, n);
        this.Ai = a.getBoolean(l.sR, false);
        this.setBackgroundDrawable(a.getDrawable(l.sQ));
        a.recycle();
    }
    
    public final void showAsDropDown(final View view, final int n, int n2) {
        if (Build$VERSION.SDK_INT < 21 && this.Ai) {
            n2 -= view.getHeight();
        }
        super.showAsDropDown(view, n, n2);
    }
    
    @TargetApi(19)
    public final void showAsDropDown(final View view, final int n, int n2, final int n3) {
        if (Build$VERSION.SDK_INT < 21 && this.Ai) {
            n2 -= view.getHeight();
        }
        super.showAsDropDown(view, n, n2, n3);
    }
    
    public final void update(final View view, final int n, final int n2, final int n3, final int n4) {
        int n5;
        if (Build$VERSION.SDK_INT < 21 && this.Ai) {
            n5 = n2 - view.getHeight();
        }
        else {
            n5 = n2;
        }
        super.update(view, n, n5, n3, n4);
    }
}
