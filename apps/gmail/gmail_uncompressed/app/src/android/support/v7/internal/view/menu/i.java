package android.support.v7.internal.view.menu;

import android.support.v4.b.a.*;
import android.content.res.*;
import android.graphics.drawable.*;
import java.util.concurrent.*;
import java.lang.ref.*;
import android.support.v7.a.*;
import android.view.*;
import android.content.*;
import android.content.pm.*;
import java.util.*;
import android.os.*;
import android.support.v4.view.*;
import android.util.*;

public class i implements a
{
    private static final int[] xc;
    private ArrayList<m> iq;
    private final Resources lR;
    private final Context mContext;
    private boolean xd;
    private boolean xe;
    private j xf;
    private ArrayList<m> xg;
    private boolean xh;
    private ArrayList<m> xi;
    private ArrayList<m> xj;
    private boolean xk;
    private int xl;
    private ContextMenu$ContextMenuInfo xm;
    CharSequence xn;
    Drawable xo;
    View xp;
    private boolean xq;
    private boolean xr;
    private boolean xs;
    private boolean xt;
    private ArrayList<m> xu;
    private CopyOnWriteArrayList<WeakReference<x>> xv;
    private m xw;
    
    static {
        xc = new int[] { 1, 4, 5, 3, 2, 0 };
    }
    
    public i(final Context mContext) {
        boolean xe = true;
        this.xl = 0;
        this.xq = false;
        this.xr = false;
        this.xs = false;
        this.xt = false;
        this.xu = new ArrayList<m>();
        this.xv = new CopyOnWriteArrayList<WeakReference<x>>();
        this.mContext = mContext;
        this.lR = mContext.getResources();
        this.iq = new ArrayList<m>();
        this.xg = new ArrayList<m>();
        this.xh = xe;
        this.xi = new ArrayList<m>();
        this.xj = new ArrayList<m>();
        this.xk = xe;
        if (this.lR.getConfiguration().keyboard == (xe ? 1 : 0) || !this.lR.getBoolean(c.pC)) {
            xe = false;
        }
        this.xe = xe;
    }
    
    private static int a(final ArrayList<m> list, final int n) {
        for (int i = -1 + list.size(); i >= 0; --i) {
            if (list.get(i).getOrdering() <= n) {
                return i + 1;
            }
        }
        return 0;
    }
    
    private m a(final int n, final KeyEvent keyEvent) {
        final ArrayList<m> xu = this.xu;
        xu.clear();
        this.a(xu, n, keyEvent);
        m m;
        if (xu.isEmpty()) {
            m = null;
        }
        else {
            final int metaState = keyEvent.getMetaState();
            final KeyCharacterMap$KeyData keyCharacterMap$KeyData = new KeyCharacterMap$KeyData();
            keyEvent.getKeyData(keyCharacterMap$KeyData);
            final int size = xu.size();
            if (size == 1) {
                return xu.get(0);
            }
            final boolean dl = this.dL();
            for (int i = 0; i < size; ++i) {
                m = xu.get(i);
                char c;
                if (dl) {
                    c = m.getAlphabeticShortcut();
                }
                else {
                    c = m.getNumericShortcut();
                }
                if ((c == keyCharacterMap$KeyData.meta[0] && (metaState & 0x2) == 0x0) || (c == keyCharacterMap$KeyData.meta[2] && (metaState & 0x2) != 0x0) || (dl && c == '\b' && n == 67)) {
                    return m;
                }
            }
            return null;
        }
        return m;
    }
    
    private MenuItem a(final int n, final int n2, final int n3, final CharSequence charSequence) {
        final int n4 = (0xFFFF0000 & n3) >> 16;
        if (n4 < 0 || n4 >= i.xc.length) {
            throw new IllegalArgumentException("order does not contain a valid category.");
        }
        final int n5 = i.xc[n4] << 16 | (0xFFFF & n3);
        final m m = new m(this, n, n2, n3, n5, charSequence, this.xl);
        if (this.xm != null) {
            m.a(this.xm);
        }
        this.iq.add(a(this.iq, n5), m);
        this.t(true);
        return (MenuItem)m;
    }
    
    private void a(final CharSequence xn, final Drawable xo, final View xp) {
        final Resources lr = this.lR;
        if (xp != null) {
            this.xp = xp;
            this.xn = null;
            this.xo = null;
        }
        else {
            if (xn != null) {
                this.xn = xn;
            }
            if (xo != null) {
                this.xo = xo;
            }
            this.xp = null;
        }
        this.t(false);
    }
    
    private void a(final List<m> list, final int n, final KeyEvent keyEvent) {
        final boolean dl = this.dL();
        final int metaState = keyEvent.getMetaState();
        final KeyCharacterMap$KeyData keyCharacterMap$KeyData = new KeyCharacterMap$KeyData();
        if (keyEvent.getKeyData(keyCharacterMap$KeyData) || n == 67) {
            for (int size = this.iq.size(), i = 0; i < size; ++i) {
                final m m = this.iq.get(i);
                if (m.hasSubMenu()) {
                    ((i)m.getSubMenu()).a(list, n, keyEvent);
                }
                char c;
                if (dl) {
                    c = m.getAlphabeticShortcut();
                }
                else {
                    c = m.getNumericShortcut();
                }
                if ((metaState & 0x5) == 0x0 && c != '\0' && (c == keyCharacterMap$KeyData.meta[0] || c == keyCharacterMap$KeyData.meta[2] || (dl && c == '\b' && n == 67)) && m.isEnabled()) {
                    list.add(m);
                }
            }
        }
    }
    
    private void d(final int n, final boolean b) {
        if (n >= 0 && n < this.iq.size()) {
            this.iq.remove(n);
            if (b) {
                this.t(true);
            }
        }
    }
    
    protected final i Z(final View view) {
        this.a(null, null, view);
        return this;
    }
    
    public void a(final j xf) {
        this.xf = xf;
    }
    
    public final void a(final x x) {
        this.a(x, this.mContext);
    }
    
    public final void a(final x x, final Context context) {
        this.xv.add(new WeakReference<x>(x));
        x.a(context, this);
        this.xk = true;
    }
    
    public final boolean a(final MenuItem menuItem, final x x, final int n) {
        final m m = (m)menuItem;
        boolean b;
        if (m == null || !m.isEnabled()) {
            b = false;
        }
        else {
            final boolean ed = m.ed();
            final n ax = m.ax();
            final boolean b2 = ax != null && ax.hasSubMenu();
            if (m.en()) {
                b = (ed | m.expandActionView());
                if (b) {
                    this.s(true);
                    return b;
                }
            }
            else {
                if (!m.hasSubMenu() && !b2) {
                    if ((n & 0x1) == 0x0) {
                        this.s(true);
                    }
                    return ed;
                }
                this.s(false);
                if (!m.hasSubMenu()) {
                    m.b(new D(this.mContext, this, m));
                }
                final D d = (D)m.getSubMenu();
                if (b2) {
                    ax.onPrepareSubMenu((SubMenu)d);
                }
                final boolean empty = this.xv.isEmpty();
                boolean b3 = false;
                if (!empty) {
                    boolean a = false;
                    if (x != null) {
                        a = x.a(d);
                    }
                    final Iterator<WeakReference<x>> iterator = this.xv.iterator();
                    boolean b4 = a;
                    while (iterator.hasNext()) {
                        final WeakReference<x> weakReference = iterator.next();
                        final x x2 = weakReference.get();
                        if (x2 == null) {
                            this.xv.remove(weakReference);
                        }
                        else {
                            boolean a2;
                            if (!b4) {
                                a2 = x2.a(d);
                            }
                            else {
                                a2 = b4;
                            }
                            b4 = a2;
                        }
                    }
                    b3 = b4;
                }
                b = (ed | b3);
                if (!b) {
                    this.s(true);
                    return b;
                }
            }
        }
        return b;
    }
    
    public MenuItem add(final int n) {
        return this.a(0, 0, 0, this.lR.getString(n));
    }
    
    public MenuItem add(final int n, final int n2, final int n3, final int n4) {
        return this.a(n, n2, n3, this.lR.getString(n4));
    }
    
    public MenuItem add(final int n, final int n2, final int n3, final CharSequence charSequence) {
        return this.a(n, n2, n3, charSequence);
    }
    
    public MenuItem add(final CharSequence charSequence) {
        return this.a(0, 0, 0, charSequence);
    }
    
    public int addIntentOptions(final int n, final int n2, final int n3, final ComponentName componentName, final Intent[] array, final Intent intent, final int n4, final MenuItem[] array2) {
        final PackageManager packageManager = this.mContext.getPackageManager();
        final List queryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, array, intent, 0);
        int size;
        if (queryIntentActivityOptions != null) {
            size = queryIntentActivityOptions.size();
        }
        else {
            size = 0;
        }
        if ((n4 & 0x1) == 0x0) {
            this.removeGroup(n);
        }
        for (int i = 0; i < size; ++i) {
            final ResolveInfo resolveInfo = queryIntentActivityOptions.get(i);
            Intent intent2;
            if (resolveInfo.specificIndex < 0) {
                intent2 = intent;
            }
            else {
                intent2 = array[resolveInfo.specificIndex];
            }
            final Intent intent3 = new Intent(intent2);
            intent3.setComponent(new ComponentName(resolveInfo.activityInfo.applicationInfo.packageName, resolveInfo.activityInfo.name));
            final MenuItem setIntent = this.add(n, n2, n3, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent3);
            if (array2 != null && resolveInfo.specificIndex >= 0) {
                array2[resolveInfo.specificIndex] = setIntent;
            }
        }
        return size;
    }
    
    public SubMenu addSubMenu(final int n) {
        return this.addSubMenu(0, 0, 0, this.lR.getString(n));
    }
    
    public SubMenu addSubMenu(final int n, final int n2, final int n3, final int n4) {
        return this.addSubMenu(n, n2, n3, this.lR.getString(n4));
    }
    
    public SubMenu addSubMenu(final int n, final int n2, final int n3, final CharSequence charSequence) {
        final m m = (m)this.a(n, n2, n3, charSequence);
        final D d = new D(this.mContext, this, m);
        m.b(d);
        return (SubMenu)d;
    }
    
    public SubMenu addSubMenu(final CharSequence charSequence) {
        return this.addSubMenu(0, 0, 0, charSequence);
    }
    
    public final void b(final x x) {
        for (final WeakReference<x> weakReference : this.xv) {
            final x x2 = weakReference.get();
            if (x2 == null || x2 == x) {
                this.xv.remove(weakReference);
            }
        }
    }
    
    boolean b(final i i, final MenuItem menuItem) {
        return this.xf != null && this.xf.a(i, menuItem);
    }
    
    public final boolean c(final MenuItem menuItem, final int n) {
        return this.a(menuItem, null, 0);
    }
    
    public void clear() {
        if (this.xw != null) {
            this.g(this.xw);
        }
        this.iq.clear();
        this.t(true);
    }
    
    public void clearHeader() {
        this.xo = null;
        this.xn = null;
        this.xp = null;
        this.t(false);
    }
    
    public void close() {
        this.s(true);
    }
    
    public final i dJ() {
        this.xl = 1;
        return this;
    }
    
    protected String dK() {
        return "android:menu:actionviewstates";
    }
    
    boolean dL() {
        return this.xd;
    }
    
    public boolean dM() {
        return this.xe;
    }
    
    public final void dN() {
        if (this.xf != null) {
            this.xf.a(this);
        }
    }
    
    public final void dO() {
        if (!this.xq) {
            this.xq = true;
            this.xr = false;
        }
    }
    
    public final void dP() {
        this.xq = false;
        if (this.xr) {
            this.xr = false;
            this.t(true);
        }
    }
    
    final void dQ() {
        this.t(this.xh = true);
    }
    
    final void dR() {
        this.t(this.xk = true);
    }
    
    public final ArrayList<m> dS() {
        if (!this.xh) {
            return this.xg;
        }
        this.xg.clear();
        for (int size = this.iq.size(), i = 0; i < size; ++i) {
            final m m = this.iq.get(i);
            if (m.isVisible()) {
                this.xg.add(m);
            }
        }
        this.xh = false;
        this.xk = true;
        return this.xg;
    }
    
    public final void dT() {
        final ArrayList<m> ds = this.dS();
        if (!this.xk) {
            return;
        }
        final Iterator<WeakReference<x>> iterator = this.xv.iterator();
        boolean b = false;
        while (iterator.hasNext()) {
            final WeakReference<x> weakReference = iterator.next();
            final x x = weakReference.get();
            if (x == null) {
                this.xv.remove(weakReference);
            }
            else {
                b |= x.dE();
            }
        }
        if (b) {
            this.xi.clear();
            this.xj.clear();
            for (int size = ds.size(), i = 0; i < size; ++i) {
                final m m = ds.get(i);
                if (m.ej()) {
                    this.xi.add(m);
                }
                else {
                    this.xj.add(m);
                }
            }
        }
        else {
            this.xi.clear();
            this.xj.clear();
            this.xj.addAll(this.dS());
        }
        this.xk = false;
    }
    
    public final ArrayList<m> dU() {
        this.dT();
        return this.xi;
    }
    
    public final ArrayList<m> dV() {
        this.dT();
        return this.xj;
    }
    
    public final CharSequence dW() {
        return this.xn;
    }
    
    public final Drawable dX() {
        return this.xo;
    }
    
    public final View dY() {
        return this.xp;
    }
    
    public i dZ() {
        return this;
    }
    
    protected final i e(final Drawable drawable) {
        this.a(null, drawable, null);
        return this;
    }
    
    public final void e(final Bundle bundle) {
        final int size = this.size();
        int i = 0;
        SparseArray sparseArray = null;
        while (i < size) {
            final MenuItem item = this.getItem(i);
            final View e = J.e(item);
            if (e != null && e.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray();
                }
                e.saveHierarchyState(sparseArray);
                if (J.g(item)) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            final SparseArray sparseArray2 = sparseArray;
            if (item.hasSubMenu()) {
                ((D)item.getSubMenu()).e(bundle);
            }
            ++i;
            sparseArray = sparseArray2;
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(this.dK(), sparseArray);
        }
    }
    
    final boolean ea() {
        return this.xs;
    }
    
    public final m eb() {
        return this.xw;
    }
    
    public final void f(final Bundle bundle) {
        if (bundle != null) {
            final SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(this.dK());
            for (int size = this.size(), i = 0; i < size; ++i) {
                final MenuItem item = this.getItem(i);
                final View e = J.e(item);
                if (e != null && e.getId() != -1) {
                    e.restoreHierarchyState(sparseParcelableArray);
                }
                if (item.hasSubMenu()) {
                    ((D)item.getSubMenu()).f(bundle);
                }
            }
            final int int1 = bundle.getInt("android:menu:expandedactionview");
            if (int1 > 0) {
                final MenuItem item2 = this.findItem(int1);
                if (item2 != null) {
                    J.f(item2);
                }
            }
        }
    }
    
    public boolean f(final m xw) {
        final boolean empty = this.xv.isEmpty();
        boolean c = false;
        if (!empty) {
            this.dO();
            final Iterator<WeakReference<x>> iterator = this.xv.iterator();
            boolean b = false;
            while (true) {
                while (iterator.hasNext()) {
                    final WeakReference<x> weakReference = iterator.next();
                    final x x = weakReference.get();
                    if (x == null) {
                        this.xv.remove(weakReference);
                    }
                    else {
                        c = x.c(xw);
                        if (c) {
                            this.dP();
                            if (c) {
                                this.xw = xw;
                                return c;
                            }
                            return c;
                        }
                        else {
                            b = c;
                        }
                    }
                }
                c = b;
                continue;
            }
        }
        return c;
    }
    
    public MenuItem findItem(final int n) {
        final int size = this.size();
        int i = 0;
        while (i < size) {
            Object item = this.iq.get(i);
            if (((m)item).getItemId() != n) {
                if (((m)item).hasSubMenu()) {
                    item = ((m)item).getSubMenu().findItem(n);
                    if (item != null) {
                        return (MenuItem)item;
                    }
                }
                ++i;
                continue;
            }
            return (MenuItem)item;
        }
        return null;
    }
    
    public boolean g(final m m) {
        final boolean empty = this.xv.isEmpty();
        boolean d = false;
        if (!empty) {
            final m xw = this.xw;
            d = false;
            if (xw == m) {
                this.dO();
                final Iterator<WeakReference<x>> iterator = this.xv.iterator();
                boolean b = false;
                while (true) {
                    while (iterator.hasNext()) {
                        final WeakReference<x> weakReference = iterator.next();
                        final x x = weakReference.get();
                        if (x == null) {
                            this.xv.remove(weakReference);
                        }
                        else {
                            d = x.d(m);
                            if (d) {
                                this.dP();
                                if (d) {
                                    this.xw = null;
                                    return d;
                                }
                                return d;
                            }
                            else {
                                b = d;
                            }
                        }
                    }
                    d = b;
                    continue;
                }
            }
        }
        return d;
    }
    
    public final Context getContext() {
        return this.mContext;
    }
    
    public MenuItem getItem(final int n) {
        return (MenuItem)this.iq.get(n);
    }
    
    public boolean hasVisibleItems() {
        for (int size = this.size(), i = 0; i < size; ++i) {
            if (this.iq.get(i).isVisible()) {
                return true;
            }
        }
        return false;
    }
    
    public boolean isShortcutKey(final int n, final KeyEvent keyEvent) {
        return this.a(n, keyEvent) != null;
    }
    
    final void j(final MenuItem menuItem) {
        final int groupId = menuItem.getGroupId();
        for (int size = this.iq.size(), i = 0; i < size; ++i) {
            final m m = this.iq.get(i);
            if (m.getGroupId() == groupId && m.eh() && m.isCheckable()) {
                m.v(m == menuItem);
            }
        }
    }
    
    protected final i l(final CharSequence charSequence) {
        this.a(charSequence, null, null);
        return this;
    }
    
    public boolean performIdentifierAction(final int n, final int n2) {
        return this.a(this.findItem(n), null, n2);
    }
    
    public boolean performShortcut(final int n, final KeyEvent keyEvent, final int n2) {
        final m a = this.a(n, keyEvent);
        boolean a2 = false;
        if (a != null) {
            a2 = this.a((MenuItem)a, null, n2);
        }
        if ((n2 & 0x2) != 0x0) {
            this.s(true);
        }
        return a2;
    }
    
    public void removeGroup(final int n) {
        while (true) {
            for (int size = this.size(), i = 0; i < size; ++i) {
                if (this.iq.get(i).getGroupId() == n) {
                    final int n2 = i;
                    if (n2 >= 0) {
                        final int n3 = this.iq.size() - n2;
                        int n4 = 0;
                        while (true) {
                            final int n5 = n4 + 1;
                            if (n4 >= n3 || this.iq.get(n2).getGroupId() != n) {
                                break;
                            }
                            this.d(n2, false);
                            n4 = n5;
                        }
                        this.t(true);
                    }
                    return;
                }
            }
            final int n2 = -1;
            continue;
        }
    }
    
    public void removeItem(final int n) {
        while (true) {
            for (int size = this.size(), i = 0; i < size; ++i) {
                if (this.iq.get(i).getItemId() == n) {
                    final int n2 = i;
                    this.d(n2, true);
                    return;
                }
            }
            final int n2 = -1;
            continue;
        }
    }
    
    public final void s(final boolean b) {
        if (this.xt) {
            return;
        }
        this.xt = true;
        for (final WeakReference<x> weakReference : this.xv) {
            final x x = weakReference.get();
            if (x == null) {
                this.xv.remove(weakReference);
            }
            else {
                x.a(this, b);
            }
        }
        this.xt = false;
    }
    
    public void setGroupCheckable(final int n, final boolean checkable, final boolean b) {
        for (int size = this.iq.size(), i = 0; i < size; ++i) {
            final m m = this.iq.get(i);
            if (m.getGroupId() == n) {
                m.u(b);
                m.setCheckable(checkable);
            }
        }
    }
    
    public void setGroupEnabled(final int n, final boolean enabled) {
        for (int size = this.iq.size(), i = 0; i < size; ++i) {
            final m m = this.iq.get(i);
            if (m.getGroupId() == n) {
                m.setEnabled(enabled);
            }
        }
    }
    
    public void setGroupVisible(final int n, final boolean b) {
        final int size = this.iq.size();
        int i = 0;
        int n2 = 0;
        while (i < size) {
            final m m = this.iq.get(i);
            int n3;
            if (m.getGroupId() == n && m.w(b)) {
                n3 = 1;
            }
            else {
                n3 = n2;
            }
            ++i;
            n2 = n3;
        }
        if (n2 != 0) {
            this.t(true);
        }
    }
    
    public void setQwertyMode(final boolean xd) {
        this.xd = xd;
        this.t(false);
    }
    
    public int size() {
        return this.iq.size();
    }
    
    public final void t(final boolean b) {
        if (!this.xq) {
            if (b) {
                this.xh = true;
                this.xk = true;
            }
            if (!this.xv.isEmpty()) {
                this.dO();
                for (final WeakReference<x> weakReference : this.xv) {
                    final x x = weakReference.get();
                    if (x == null) {
                        this.xv.remove(weakReference);
                    }
                    else {
                        x.r(b);
                    }
                }
                this.dP();
            }
            return;
        }
        this.xr = true;
    }
}
