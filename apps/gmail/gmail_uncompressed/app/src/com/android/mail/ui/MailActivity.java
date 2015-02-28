package com.android.mail.ui;

import android.view.accessibility.*;
import com.android.mail.b.*;
import android.content.*;
import android.content.res.*;
import android.os.*;
import com.android.mail.a.*;
import android.support.v7.widget.*;
import android.nfc.*;
import android.app.*;
import android.view.*;
import com.android.mail.utils.*;
import com.android.a.*;
import com.android.mail.providers.*;

public class MailActivity extends N implements as
{
    protected static String aLb;
    private AccessibilityManager KD;
    private dD aDb;
    private ToastBarOperation aKY;
    private boolean aKZ;
    protected aF aLa;
    private a aLc;
    private CustomViewToolbar aLd;
    private final co aLe;
    private ac aqm;
    
    static {
        MailActivity.aLb = null;
    }
    
    public MailActivity() {
        this.aLe = new co((byte)0);
        this.aLa = new aF();
    }
    
    public static void cp(final String aLb) {
        MailActivity.aLb = aLb;
    }
    
    @Override
    public j a(final ContentResolver contentResolver, final a a) {
        return new j(contentResolver, a);
    }
    
    @Override
    public final void a(final android.support.v7.c.a a) {
        super.a(a);
        al.a(this, 2131361996);
    }
    
    @Override
    public void a(final Account account, final int n) {
        int n2;
        if (dD.dl(n)) {
            n2 = 2131296356;
        }
        else {
            n2 = 2131296355;
        }
        ag.b((Context)this, account, this.getString(n2));
    }
    
    @Override
    public final void a(final ToastBarOperation toastBarOperation) {
        this.aqm.a(toastBarOperation);
    }
    
    @Override
    public final void a(final ae ae) {
        this.aqm.a(ae);
    }
    
    @Override
    public final void b(final android.support.v7.c.a a) {
        super.b(a);
        al.a(this, 2131361994);
    }
    
    @Override
    public final void b(final ToastBarOperation aky) {
        this.aKY = aky;
    }
    
    public boolean dispatchTouchEvent(final MotionEvent motionEvent) {
        this.aqm.onTouchEvent(motionEvent);
        return super.dispatchTouchEvent(motionEvent);
    }
    
    @Override
    public final void e(final Folder folder) {
        this.aqm.e(folder);
    }
    
    public void onActivityResult(final int n, final int n2, final Intent intent) {
        this.aqm.onActivityResult(n, n2, intent);
    }
    
    @Override
    public void onBackPressed() {
        if (!this.aqm.cM()) {
            super.onBackPressed();
        }
    }
    
    @Override
    public void onConfigurationChanged(final Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.aqm.cU();
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        final Intent intent = this.getIntent();
        if (intent != null && intent.getCategories() != null && intent.getCategories().contains("android.intent.category.LAUNCHER")) {
            c.os().bb("cold_start_to_list");
        }
        this.yl();
        this.aDb = new dD();
        final boolean b = ag.b(this.getResources());
        final dD aDb = this.aDb;
        com.android.mail.ui.a aqm;
        if (b) {
            aqm = new dt(this, aDb);
        }
        else {
            aqm = new cK(this, aDb);
        }
        this.aqm = aqm;
        this.setContentView(this.aqm.xr());
        final Toolbar toolbar = (Toolbar)this.findViewById(2131558859);
        if (toolbar instanceof CustomViewToolbar) {
            (this.aLd = (CustomViewToolbar)toolbar).a(this, this.aqm, this.aDb);
            this.aqm.a(this.aLd);
        }
        this.a(toolbar);
        toolbar.setNavigationOnClickListener(this.aqm.wG());
        final android.support.v7.app.a cf = this.cF();
        if (cf != null) {
            cf.cx();
            cf.cz();
        }
        this.aqm.onCreate(bundle);
        this.KD = (AccessibilityManager)this.getSystemService("accessibility");
        this.aKZ = this.KD.isEnabled();
        final NfcAdapter defaultAdapter = NfcAdapter.getDefaultAdapter((Context)this);
        if (defaultAdapter != null) {
            defaultAdapter.setNdefPushMessageCallback((NfcAdapter$CreateNdefMessageCallback)this.aLe, (Activity)this, new Activity[0]);
        }
        if (this.getResources().getConfiguration().hardKeyboardHidden == 1) {
            com.android.mail.a.a.oq().a("configuration", "keyboard", "use_hardware_keyboard", 0L);
            return;
        }
        com.android.mail.a.a.oq().a("configuration", "keyboard", "do_not_use_hardware_keyboard", 0L);
    }
    
    public Dialog onCreateDialog(final int n, final Bundle bundle) {
        final ac aqm = this.aqm;
        return super.onCreateDialog(n, bundle);
    }
    
    public boolean onCreateOptionsMenu(final Menu menu) {
        return this.aqm.onCreateOptionsMenu(menu) || super.onCreateOptionsMenu(menu);
    }
    
    @Override
    protected void onDestroy() {
        super.onDestroy();
        this.aqm.onDestroy();
        if (this.aLd != null) {
            this.aLd.onDestroy();
        }
    }
    
    @Override
    public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
        final ac aqm = this.aqm;
        return super.onKeyDown(n, keyEvent);
    }
    
    @Override
    public boolean onOptionsItemSelected(final MenuItem menuItem) {
        return this.aqm.onOptionsItemSelected(menuItem) || super.onOptionsItemSelected(menuItem);
    }
    
    public void onPause() {
        super.onPause();
        this.aqm.onPause();
    }
    
    protected void onPostCreate(final Bundle bundle) {
        super.onPostCreate(bundle);
        this.aqm.vW();
    }
    
    public void onPrepareDialog(final int n, final Dialog dialog, final Bundle bundle) {
        super.onPrepareDialog(n, dialog, bundle);
        final ac aqm = this.aqm;
    }
    
    public boolean onPrepareOptionsMenu(final Menu menu) {
        this.aqm.onPrepareOptionsMenu(menu);
        return super.onPrepareOptionsMenu(menu);
    }
    
    protected void onRestart() {
        super.onRestart();
        this.aqm.onRestart();
    }
    
    protected void onRestoreInstanceState(final Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.aqm.onRestoreInstanceState(bundle);
    }
    
    public void onResume() {
        super.onResume();
        this.aqm.onResume();
        final boolean enabled = this.KD.isEnabled();
        if (enabled != this.aKZ) {
            this.aKZ = enabled;
            this.aqm.wx();
        }
        aa.aE((Context)this);
    }
    
    public void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.aqm.onSaveInstanceState(bundle);
    }
    
    public boolean onSearchRequested() {
        this.aqm.wu();
        return true;
    }
    
    @Override
    protected void onStart() {
        super.onStart();
        this.aqm.onStart();
    }
    
    @Override
    protected void onStop() {
        super.onStop();
        this.aqm.onStop();
    }
    
    public void onWindowFocusChanged(final boolean b) {
        super.onWindowFocusChanged(b);
        this.aqm.onWindowFocusChanged(b);
    }
    
    @Override
    public String toString() {
        final StringBuilder sb = new StringBuilder(super.toString());
        sb.append("{ViewMode=");
        sb.append(this.aDb);
        sb.append(" controller=");
        sb.append(this.aqm);
        sb.append(" current_focus=");
        sb.append(this.getCurrentFocus());
        sb.append("}");
        return sb.toString();
    }
    
    @Override
    public final Folder vU() {
        return this.aqm.vU();
    }
    
    @Override
    public final bs wC() {
        return this.aqm.wC();
    }
    
    @Override
    public final ConversationCheckedSet wq() {
        return this.aqm.wq();
    }
    
    @Override
    public final dD xX() {
        return this.aDb;
    }
    
    @Override
    public final av xY() {
        return this.aqm;
    }
    
    @Override
    public final bV xZ() {
        return this.aqm;
    }
    
    @Override
    public final aP ya() {
        return this.aqm;
    }
    
    @Override
    public final bx yb() {
        return this.aqm;
    }
    
    @Override
    public final by yc() {
        return this.aqm;
    }
    
    @Override
    public final O yd() {
        return this.aqm;
    }
    
    @Override
    public final cM ye() {
        return this.aqm;
    }
    
    @Override
    public final ck yf() {
        return this.aqm;
    }
    
    @Override
    public final boolean yg() {
        return this.aKZ;
    }
    
    @Override
    public final aF yh() {
        return this.aLa;
    }
    
    @Override
    public final bZ yi() {
        return this.aqm;
    }
    
    @Override
    public ar yj() {
        return new ar((Context)this);
    }
    
    @Override
    public final a yk() {
        return this.aLc;
    }
    
    @Override
    public final void yl() {
        int n;
        if (ag.aF((Context)this)) {
            n = 0;
        }
        else {
            n = 347136;
        }
        this.aLc = new com.android.a.k(n);
    }
    
    public z zJ() {
        return new C((Context)this);
    }
    
    @Override
    public final ToastBarOperation zy() {
        return this.aKY;
    }
}
