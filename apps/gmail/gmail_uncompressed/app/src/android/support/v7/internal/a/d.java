package android.support.v7.internal.a;

import android.support.v7.widget.*;
import java.util.*;
import android.support.v7.internal.view.menu.*;
import android.view.*;
import android.widget.*;
import android.support.v7.app.*;
import android.support.v7.internal.widget.*;
import android.support.v4.view.*;
import android.graphics.drawable.*;
import android.content.*;
import android.content.res.*;

final class d implements aa
{
    final /* synthetic */ b uy;
    
    d(final b uy) {
        this.uy = uy;
    }
    
    @Override
    public final boolean onMenuItemClick(final MenuItem menuItem) {
        return this.uy.of.onMenuItemSelected(0, menuItem);
    }
}
