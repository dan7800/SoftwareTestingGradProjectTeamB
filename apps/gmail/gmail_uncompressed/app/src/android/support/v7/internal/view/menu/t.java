package android.support.v7.internal.view.menu;

import android.annotation.*;
import android.content.*;
import android.support.v4.b.a.*;
import android.view.*;

@TargetApi(16)
final class t extends o
{
    t(final Context context, final b b) {
        super(context, b);
    }
    
    @Override
    final p a(final ActionProvider actionProvider) {
        return new u(this, this.mContext, actionProvider);
    }
}
