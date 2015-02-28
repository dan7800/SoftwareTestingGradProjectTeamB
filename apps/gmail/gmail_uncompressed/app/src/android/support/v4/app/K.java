package android.support.v4.app;

import android.app.*;
import android.support.v4.f.*;
import java.io.*;
import android.content.res.*;
import android.os.*;
import java.util.*;
import android.content.*;
import android.util.*;
import android.view.*;

public class k extends Activity
{
    boolean aA;
    boolean aO;
    M aY;
    boolean aZ;
    boolean ba;
    final q bn;
    final o bo;
    boolean bp;
    boolean bq;
    boolean br;
    boolean bs;
    n<String, M> bt;
    final Handler mHandler;
    
    public k() {
        this.mHandler = new l(this);
        this.bn = new q();
        this.bo = new m(this);
    }
    
    public static void E() {
    }
    
    private static String a(final View view) {
        char c = 'F';
        char c2 = '.';
        final StringBuilder sb = new StringBuilder(128);
        sb.append(view.getClass().getName());
        sb.append('{');
        sb.append(Integer.toHexString(System.identityHashCode(view)));
        sb.append(' ');
        Resources resources;
        int id = 0;
        String resourcePackageName;
        String resourceTypeName;
        String resourceEntryName;
        char c3 = '\0';
        char c4 = '\0';
        char c5 = '\0';
        char c6 = '\0';
        char c7 = '\0';
        char c8 = '\0';
        char c9 = '\0';
        char c10 = '\0';
        Label_0485_Outer:Label_0588_Outer:
        while (true) {
        Label_0581_Outer:
            while (true) {
                while (true) {
                    Label_0552_Outer:Label_0575_Outer:
                    while (true) {
                        Label_0253: {
                            Label_0564_Outer:Label_0570_Outer:
                            while (true) {
                            Label_0236:
                                while (true) {
                                    Label_0215: {
                                        while (true) {
                                            Label_0197: {
                                                while (true) {
                                                    Label_0179: {
                                                        Label_0527_Outer:Label_0546_Outer:
                                                        while (true) {
                                                            Label_0161: {
                                                                while (true) {
                                                                    Label_0143: {
                                                                        while (true) {
                                                                            Label_0126: {
                                                                                while (true) {
                                                                                    Label_0108: {
                                                                                        while (true) {
                                                                                            while (true) {
                                                                                                while (true) {
                                                                                                    switch (view.getVisibility()) {
                                                                                                        default: {
                                                                                                            sb.append(c2);
                                                                                                            break;
                                                                                                        }
                                                                                                        case 0: {
                                                                                                            Label_0497: {
                                                                                                                break Label_0497;
                                                                                                                try {
                                                                                                                    resourcePackageName = resources.getResourcePackageName(id);
                                                                                                                    while (true) {
                                                                                                                        resourceTypeName = resources.getResourceTypeName(id);
                                                                                                                        resourceEntryName = resources.getResourceEntryName(id);
                                                                                                                        sb.append(" ");
                                                                                                                        sb.append(resourcePackageName);
                                                                                                                        sb.append(":");
                                                                                                                        sb.append(resourceTypeName);
                                                                                                                        sb.append("/");
                                                                                                                        sb.append(resourceEntryName);
                                                                                                                        sb.append("}");
                                                                                                                        return sb.toString();
                                                                                                                        c3 = c2;
                                                                                                                        break Label_0179;
                                                                                                                        c4 = c2;
                                                                                                                        break Label_0108;
                                                                                                                        resourcePackageName = "android";
                                                                                                                        continue Label_0485_Outer;
                                                                                                                        c5 = c2;
                                                                                                                        break Label_0197;
                                                                                                                        sb.append('V');
                                                                                                                        break;
                                                                                                                        c6 = c2;
                                                                                                                        break Label_0253;
                                                                                                                        c7 = c2;
                                                                                                                        break Label_0126;
                                                                                                                        c8 = c2;
                                                                                                                        break Label_0215;
                                                                                                                        sb.append('G');
                                                                                                                        break;
                                                                                                                        c9 = c2;
                                                                                                                        break Label_0161;
                                                                                                                        resourcePackageName = "app";
                                                                                                                        continue Label_0485_Outer;
                                                                                                                    }
                                                                                                                    c10 = 'D';
                                                                                                                    break Label_0143;
                                                                                                                    sb.append('I');
                                                                                                                    break;
                                                                                                                    c = c2;
                                                                                                                    break Label_0236;
                                                                                                                }
                                                                                                                catch (Resources$NotFoundException ex) {
                                                                                                                    continue Label_0552_Outer;
                                                                                                                }
                                                                                                            }
                                                                                                            break;
                                                                                                        }
                                                                                                        case 4: {
                                                                                                            continue Label_0570_Outer;
                                                                                                        }
                                                                                                        case 8: {
                                                                                                            continue Label_0546_Outer;
                                                                                                        }
                                                                                                    }
                                                                                                    break;
                                                                                                }
                                                                                                break;
                                                                                            }
                                                                                            if (!view.isFocusable()) {
                                                                                                continue Label_0588_Outer;
                                                                                            }
                                                                                            break;
                                                                                        }
                                                                                        c4 = c;
                                                                                    }
                                                                                    sb.append(c4);
                                                                                    if (!view.isEnabled()) {
                                                                                        continue Label_0564_Outer;
                                                                                    }
                                                                                    break;
                                                                                }
                                                                                c7 = 'E';
                                                                            }
                                                                            sb.append(c7);
                                                                            if (!view.willNotDraw()) {
                                                                                continue Label_0570_Outer;
                                                                            }
                                                                            break;
                                                                        }
                                                                        c10 = c2;
                                                                    }
                                                                    sb.append(c10);
                                                                    if (!view.isHorizontalScrollBarEnabled()) {
                                                                        continue Label_0581_Outer;
                                                                    }
                                                                    break;
                                                                }
                                                                c9 = 'H';
                                                            }
                                                            sb.append(c9);
                                                            if (!view.isVerticalScrollBarEnabled()) {
                                                                continue Label_0527_Outer;
                                                            }
                                                            break;
                                                        }
                                                        c3 = 'V';
                                                    }
                                                    sb.append(c3);
                                                    if (!view.isClickable()) {
                                                        continue Label_0575_Outer;
                                                    }
                                                    break;
                                                }
                                                c5 = 'C';
                                            }
                                            sb.append(c5);
                                            if (!view.isLongClickable()) {
                                                continue Label_0581_Outer;
                                            }
                                            break;
                                        }
                                        c8 = 'L';
                                    }
                                    sb.append(c8);
                                    sb.append(' ');
                                    if (!view.isFocused()) {
                                        continue;
                                    }
                                    break;
                                }
                                sb.append(c);
                                if (!view.isSelected()) {
                                    continue Label_0564_Outer;
                                }
                                break;
                            }
                            c6 = 'S';
                        }
                        sb.append(c6);
                        if (view.isPressed()) {
                            c2 = 'P';
                        }
                        sb.append(c2);
                        sb.append(' ');
                        sb.append(view.getLeft());
                        sb.append(',');
                        sb.append(view.getTop());
                        sb.append('-');
                        sb.append(view.getRight());
                        sb.append(',');
                        sb.append(view.getBottom());
                        id = view.getId();
                        if (id == -1) {
                            continue Label_0552_Outer;
                        }
                        sb.append(" #");
                        sb.append(Integer.toHexString(id));
                        resources = view.getResources();
                        if (id == 0 || resources == null) {
                            continue Label_0552_Outer;
                        }
                        break;
                    }
                    switch (0xFF000000 & id) {
                        default: {
                            continue Label_0485_Outer;
                        }
                        case 2130706432: {
                            continue;
                        }
                        case 16777216: {
                            continue Label_0581_Outer;
                        }
                    }
                    break;
                }
                break;
            }
            break;
        }
    }
    
    private void a(final String s, final PrintWriter printWriter, final View view) {
        printWriter.print(s);
        if (view == null) {
            printWriter.println("null");
        }
        else {
            printWriter.println(a(view));
            if (view instanceof ViewGroup) {
                final ViewGroup viewGroup = (ViewGroup)view;
                final int childCount = viewGroup.getChildCount();
                if (childCount > 0) {
                    final String string = s + "  ";
                    for (int i = 0; i < childCount; ++i) {
                        this.a(string, printWriter, viewGroup.getChildAt(i));
                    }
                }
            }
        }
    }
    
    protected final void C() {
        this.bn.dispatchResume();
    }
    
    public void D() {
        if (Build$VERSION.SDK_INT >= 11) {
            this.invalidateOptionsMenu();
            return;
        }
        this.bs = true;
    }
    
    public final p F() {
        return this.bn;
    }
    
    public final K G() {
        if (this.aY != null) {
            return this.aY;
        }
        this.ba = true;
        return this.aY = this.a("(root)", this.aZ, true);
    }
    
    final M a(final String s, final boolean b, final boolean b2) {
        if (this.bt == null) {
            this.bt = new n<String, M>();
        }
        M m = this.bt.get(s);
        if (m == null) {
            if (b2) {
                m = new M(s, this, b);
                this.bt.put(s, m);
            }
            return m;
        }
        m.a(this);
        return m;
    }
    
    public final void a(final Fragment fragment, final Intent intent, final int n) {
        if (n == -1) {
            super.startActivityForResult(intent, -1);
            return;
        }
        if ((0xFFFF0000 & n) != 0x0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
        super.startActivityForResult(intent, (1 + fragment.y << 16) + (0xFFFF & n));
    }
    
    final void a(final String s) {
        if (this.bt != null) {
            final M m = this.bt.get(s);
            if (m != null && !m.aO) {
                m.ag();
                this.bt.remove(s);
            }
        }
    }
    
    protected boolean a(final View view, final Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }
    
    final void b(final boolean ao) {
        if (!this.br) {
            this.br = true;
            this.aO = ao;
            this.mHandler.removeMessages(1);
            if (this.aZ) {
                this.aZ = false;
                if (this.aY != null) {
                    if (!this.aO) {
                        this.aY.ab();
                    }
                    else {
                        this.aY.ac();
                    }
                }
            }
            this.bn.U();
        }
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        final int sdk_INT = Build$VERSION.SDK_INT;
        printWriter.print(s);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        final String string = s + "  ";
        printWriter.print(string);
        printWriter.print("mCreated=");
        printWriter.print(this.bp);
        printWriter.print("mResumed=");
        printWriter.print(this.aA);
        printWriter.print(" mStopped=");
        printWriter.print(this.bq);
        printWriter.print(" mReallyStopped=");
        printWriter.println(this.br);
        printWriter.print(string);
        printWriter.print("mLoadersStarted=");
        printWriter.println(this.aZ);
        if (this.aY != null) {
            printWriter.print(s);
            printWriter.print("Loader Manager ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this.aY)));
            printWriter.println(":");
            this.aY.dump(s + "  ", fileDescriptor, printWriter, array);
        }
        this.bn.dump(s, fileDescriptor, printWriter, array);
        printWriter.print(s);
        printWriter.println("View Hierarchy:");
        this.a(s + "  ", printWriter, this.getWindow().getDecorView());
    }
    
    protected void onActivityResult(final int n, final int n2, final Intent intent) {
        this.bn.P();
        final int n3 = n >> 16;
        if (n3 == 0) {
            super.onActivityResult(n, n2, intent);
            return;
        }
        final int n4 = n3 - 1;
        if (this.bn.bE == null || n4 < 0 || n4 >= this.bn.bE.size()) {
            Log.w("FragmentActivity", "Activity result fragment index out of range: 0x" + Integer.toHexString(n));
            return;
        }
        final Fragment fragment = this.bn.bE.get(n4);
        if (fragment == null) {
            Log.w("FragmentActivity", "Activity result no fragment exists for index: 0x" + Integer.toHexString(n));
            return;
        }
        fragment.a(0xFFFF & n, n2);
    }
    
    public void onBackPressed() {
        if (!this.bn.popBackStackImmediate()) {
            if (Build$VERSION.SDK_INT < 21) {
                this.finish();
                return;
            }
            this.finishAfterTransition();
        }
    }
    
    public void onConfigurationChanged(final Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.bn.dispatchConfigurationChanged(configuration);
    }
    
    protected void onCreate(final Bundle bundle) {
        this.bn.a(this, this.bo, null);
        if (this.getLayoutInflater().getFactory() == null) {
            this.getLayoutInflater().setFactory((LayoutInflater$Factory)this);
        }
        super.onCreate(bundle);
        final android.support.v4.app.n n = (android.support.v4.app.n)this.getLastNonConfigurationInstance();
        if (n != null) {
            this.bt = n.bz;
        }
        if (bundle != null) {
            final Parcelable parcelable = bundle.getParcelable("android:support:fragments");
            final q bn = this.bn;
            ArrayList<Fragment> by;
            if (n != null) {
                by = n.by;
            }
            else {
                by = null;
            }
            bn.a(parcelable, by);
        }
        this.bn.Q();
    }
    
    public boolean onCreatePanelMenu(final int n, final Menu menu) {
        if (n == 0) {
            final boolean b = super.onCreatePanelMenu(n, menu) | this.bn.b(menu, this.getMenuInflater());
            return Build$VERSION.SDK_INT < 11 || b;
        }
        return super.onCreatePanelMenu(n, menu);
    }
    
    public View onCreateView(final String s, final Context context, final AttributeSet set) {
        View view;
        if (!"fragment".equals(s)) {
            view = super.onCreateView(s, context, set);
        }
        else {
            view = this.bn.onCreateView(s, context, set);
            if (view == null) {
                return super.onCreateView(s, context, set);
            }
        }
        return view;
    }
    
    protected void onDestroy() {
        super.onDestroy();
        this.b(false);
        this.bn.W();
        if (this.aY != null) {
            this.aY.ag();
        }
    }
    
    public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
        if (Build$VERSION.SDK_INT < 5 && n == 4 && keyEvent.getRepeatCount() == 0) {
            this.onBackPressed();
            return true;
        }
        return super.onKeyDown(n, keyEvent);
    }
    
    public void onLowMemory() {
        super.onLowMemory();
        this.bn.X();
    }
    
    public boolean onMenuItemSelected(final int n, final MenuItem menuItem) {
        if (super.onMenuItemSelected(n, menuItem)) {
            return true;
        }
        switch (n) {
            default: {
                return false;
            }
            case 0: {
                return this.bn.c(menuItem);
            }
            case 6: {
                return this.bn.d(menuItem);
            }
        }
    }
    
    protected void onNewIntent(final Intent intent) {
        super.onNewIntent(intent);
        this.bn.P();
    }
    
    public void onPanelClosed(final int n, final Menu menu) {
        switch (n) {
            case 0: {
                this.bn.d(menu);
                break;
            }
        }
        super.onPanelClosed(n, menu);
    }
    
    protected void onPause() {
        super.onPause();
        this.aA = false;
        if (this.mHandler.hasMessages(2)) {
            this.mHandler.removeMessages(2);
            this.bn.dispatchResume();
        }
        this.bn.T();
    }
    
    protected void onPostResume() {
        super.onPostResume();
        this.mHandler.removeMessages(2);
        this.bn.dispatchResume();
        this.bn.L();
    }
    
    public boolean onPreparePanel(final int n, final View view, final Menu menu) {
        if (n == 0 && menu != null) {
            if (this.bs) {
                this.bs = false;
                menu.clear();
                this.onCreatePanelMenu(n, menu);
            }
            return this.a(view, menu) | this.bn.c(menu);
        }
        return super.onPreparePanel(n, view, menu);
    }
    
    protected void onResume() {
        super.onResume();
        this.mHandler.sendEmptyMessage(2);
        this.aA = true;
        this.bn.L();
    }
    
    public final Object onRetainNonConfigurationInstance() {
        int i = 0;
        if (this.bq) {
            this.b(true);
        }
        final ArrayList<Fragment> n = this.bn.N();
        boolean b;
        if (this.bt != null) {
            final int size = this.bt.size();
            final M[] array = new M[size];
            for (int j = size - 1; j >= 0; --j) {
                array[j] = this.bt.valueAt(j);
            }
            b = false;
            while (i < size) {
                final M m = array[i];
                if (m.aO) {
                    b = true;
                }
                else {
                    m.ag();
                    this.bt.remove(m.at);
                }
                ++i;
            }
        }
        else {
            b = false;
        }
        if (n == null && !b) {
            return null;
        }
        final android.support.v4.app.n n2 = new android.support.v4.app.n();
        n2.bv = null;
        n2.bw = null;
        n2.bx = null;
        n2.by = n;
        n2.bz = this.bt;
        return n2;
    }
    
    protected void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        final Parcelable o = this.bn.O();
        if (o != null) {
            bundle.putParcelable("android:support:fragments", o);
        }
    }
    
    protected void onStart() {
        super.onStart();
        this.bq = false;
        this.br = false;
        this.mHandler.removeMessages(1);
        if (!this.bp) {
            this.bp = true;
            this.bn.R();
        }
        this.bn.P();
        this.bn.L();
        if (!this.aZ) {
            this.aZ = true;
            if (this.aY != null) {
                this.aY.aa();
            }
            else if (!this.ba) {
                this.aY = this.a("(root)", this.aZ, false);
                if (this.aY != null && !this.aY.cF) {
                    this.aY.aa();
                }
            }
            this.ba = true;
        }
        this.bn.S();
        if (this.bt != null) {
            final int size = this.bt.size();
            final M[] array = new M[size];
            for (int i = size - 1; i >= 0; --i) {
                array[i] = this.bt.valueAt(i);
            }
            for (final M m : array) {
                m.ad();
                m.af();
            }
        }
    }
    
    protected void onStop() {
        super.onStop();
        this.bq = true;
        this.mHandler.sendEmptyMessage(1);
        this.bn.dispatchStop();
    }
    
    public void startActivityForResult(final Intent intent, final int n) {
        if (n != -1 && (0xFFFF0000 & n) != 0x0) {
            throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
        }
        super.startActivityForResult(intent, n);
    }
}
