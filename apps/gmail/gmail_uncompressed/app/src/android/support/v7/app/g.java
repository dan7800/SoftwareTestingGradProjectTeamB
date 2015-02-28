package android.support.v7.app;

import android.app.*;
import android.support.v4.app.*;
import android.content.*;
import android.support.v7.widget.*;
import android.support.v7.c.*;
import android.content.res.*;
import android.os.*;
import android.util.*;
import android.view.*;

public class g extends k implements aZ, B
{
    private h nW;
    
    private boolean cG() {
        final Intent a = O.a(this);
        if (a != null) {
            if (O.a(this, a)) {
                final aY c = android.support.v4.app.aY.c((Context)this);
                c.c(this);
                c.startActivities();
                try {
                    if (Build$VERSION.SDK_INT >= 16) {
                        this.finishAffinity();
                    }
                    else {
                        this.finish();
                    }
                }
                catch (IllegalStateException ex) {
                    this.finish();
                }
            }
            else {
                O.b(this, a);
            }
            return true;
        }
        return false;
    }
    
    public static void cI() {
    }
    
    private h cJ() {
        if (this.nW == null) {
            ActionBarActivityDelegateBase nw;
            if (Build$VERSION.SDK_INT >= 11) {
                nw = new s(this);
            }
            else {
                nw = new ActionBarActivityDelegateBase(this);
            }
            this.nW = nw;
        }
        return this.nW;
    }
    
    @Override
    public final void D() {
        this.cJ().D();
    }
    
    final void Y(final View contentView) {
        super.setContentView(contentView);
    }
    
    public void a(final a a) {
    }
    
    public final void a(final Toolbar toolbar) {
        this.cJ().a(toolbar);
    }
    
    final boolean a(final int n, final Menu menu) {
        return super.onCreatePanelMenu(n, menu);
    }
    
    final boolean a(final int n, final View view, final Menu menu) {
        return super.onPreparePanel(n, view, menu);
    }
    
    @Override
    protected final boolean a(final View view, final Menu menu) {
        final h cj = this.cJ();
        if (Build$VERSION.SDK_INT < 16) {
            return cj.nX.onPrepareOptionsMenu(menu);
        }
        return cj.nX.a(view, menu);
    }
    
    public void addContentView(final View view, final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        this.cJ().addContentView(view, viewGroup$LayoutParams);
    }
    
    @Override
    public final Intent as() {
        return O.a(this);
    }
    
    public final a b(final b b) {
        return this.cJ().b(b);
    }
    
    final void b(final int n, final Menu menu) {
        super.onPanelClosed(n, menu);
    }
    
    public void b(final a a) {
    }
    
    final boolean c(final int n, final Menu menu) {
        return super.onMenuOpened(n, menu);
    }
    
    public final android.support.v7.app.a cF() {
        return this.cJ().cF();
    }
    
    @Override
    public final u cH() {
        return new j(this.cJ(), (byte)0);
    }
    
    public MenuInflater getMenuInflater() {
        return this.cJ().getMenuInflater();
    }
    
    public void invalidateOptionsMenu() {
        this.cJ().D();
    }
    
    @Override
    public void onBackPressed() {
        if (!this.cJ().cM()) {
            super.onBackPressed();
        }
    }
    
    @Override
    public void onConfigurationChanged(final Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.cJ().onConfigurationChanged(configuration);
    }
    
    public final void onContentChanged() {
        this.cJ();
    }
    
    @Override
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.cJ().onCreate(bundle);
    }
    
    @Override
    public boolean onCreatePanelMenu(final int n, final Menu menu) {
        return this.cJ().onCreatePanelMenu(n, menu);
    }
    
    public View onCreatePanelView(final int n) {
        if (n == 0) {
            return this.cJ().onCreatePanelView(n);
        }
        return super.onCreatePanelView(n);
    }
    
    @Override
    public View onCreateView(final String s, final Context context, final AttributeSet set) {
        final View onCreateView = super.onCreateView(s, context, set);
        if (onCreateView != null) {
            return onCreateView;
        }
        return this.cJ().a(s, context, set);
    }
    
    @Override
    protected void onDestroy() {
        super.onDestroy();
        this.cJ().destroy();
    }
    
    @Override
    public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
        return super.onKeyDown(n, keyEvent) || this.cJ().d(keyEvent);
    }
    
    public boolean onKeyShortcut(final int n, final KeyEvent keyEvent) {
        return this.cJ().e(keyEvent);
    }
    
    @Override
    public final boolean onMenuItemSelected(final int n, final MenuItem menuItem) {
        if (super.onMenuItemSelected(n, menuItem)) {
            return true;
        }
        final android.support.v7.app.a cf = this.cJ().cF();
        return menuItem.getItemId() == 16908332 && cf != null && (0x4 & cf.getDisplayOptions()) != 0x0 && this.cG();
    }
    
    public boolean onMenuOpened(final int n, final Menu menu) {
        return this.cJ().onMenuOpened(n, menu);
    }
    
    @Override
    public void onPanelClosed(final int n, final Menu menu) {
        this.cJ().onPanelClosed(n, menu);
    }
    
    @Override
    protected void onPostResume() {
        super.onPostResume();
        this.cJ().onPostResume();
    }
    
    @Override
    public boolean onPreparePanel(final int n, final View view, final Menu menu) {
        return this.cJ().onPreparePanel(n, view, menu);
    }
    
    @Override
    protected void onStop() {
        super.onStop();
        this.cJ().onStop();
    }
    
    protected void onTitleChanged(final CharSequence charSequence, final int n) {
        super.onTitleChanged(charSequence, n);
        this.cJ().k(charSequence);
    }
    
    public void setContentView(final int contentView) {
        this.cJ().setContentView(contentView);
    }
    
    public void setContentView(final View contentView) {
        this.cJ().setContentView(contentView);
    }
    
    public void setContentView(final View view, final ViewGroup$LayoutParams viewGroup$LayoutParams) {
        this.cJ().setContentView(view, viewGroup$LayoutParams);
    }
}
