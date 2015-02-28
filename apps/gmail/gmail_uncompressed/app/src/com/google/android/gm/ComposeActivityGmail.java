package com.google.android.gm;

import com.google.android.gms.f.*;
import com.google.android.gm.ui.*;
import com.google.android.gm.c.*;
import com.google.android.gms.b.*;
import android.widget.*;
import com.android.mail.utils.*;
import com.android.mail.providers.*;
import com.google.android.gm.drive.*;
import com.google.common.collect.*;
import com.google.android.gms.drive.*;
import com.google.android.gm.provider.*;
import android.os.*;
import android.app.*;
import com.google.android.gm.welcome.*;
import com.android.mail.compose.*;
import android.text.*;
import android.content.*;
import com.android.mail.a.*;
import com.google.android.gsf.*;
import com.google.android.gms.common.api.*;
import java.util.*;
import com.android.ex.chips.*;
import android.view.*;

public class ComposeActivityGmail extends g implements f, e
{
    private static final String mW;
    private a aXb;
    private i aXc;
    private String aXd;
    private final t aXe;
    private h aXf;
    private h aXg;
    private b aXh;
    private MenuItem aXi;
    private com.google.android.gm.c.a aXj;
    private com.google.android.gm.a aXk;
    
    static {
        mW = D.AU();
    }
    
    public ComposeActivityGmail() {
        this.aXe = new t(this, (byte)0);
    }
    
    private boolean Cy() {
        final n id = this.aXg.ID();
        return id != null && id.isConnected();
    }
    
    @Override
    public final boolean N(final int n, final int n2) {
        if (this.avF == null) {
            return false;
        }
        final Editable text = this.avF.getText();
        final com.google.android.gm.ui.g[] array = (com.google.android.gm.ui.g[])((Spanned)text).getSpans(n, n2, (Class)com.google.android.gm.ui.g.class);
        if (array == null || array.length == 0) {
            return false;
        }
        for (final com.google.android.gm.ui.g g : array) {
            final int spanStart = ((Spanned)text).getSpanStart((Object)g);
            final int spanEnd = ((Spanned)text).getSpanEnd((Object)g);
            boolean b;
            if (n2 > spanStart && n2 < spanEnd) {
                b = true;
            }
            else {
                b = false;
            }
            if (b || (n > spanStart && n < spanEnd)) {
                E.d(ComposeActivityGmail.mW, "Overriding intra-chip selection, selection=%s/%s chip=%s/%s", n, n2, spanStart, spanEnd);
                if (n == n2) {
                    this.avF.setSelection(spanEnd);
                }
                else if (b) {
                    this.avF.setSelection(n, spanEnd);
                }
                else {
                    this.avF.setSelection(spanStart, n2);
                }
            }
        }
        return false;
    }
    
    @Override
    protected final z a(final Spanned spanned) {
        if (spanned == null) {
            return null;
        }
        return com.google.android.gm.ui.e.a(spanned, this.aXc);
    }
    
    @Override
    protected final String a(final ReplyFromAccount replyFromAccount) {
        if (replyFromAccount != null && replyFromAccount.isDefault && this.aXk.dp(replyFromAccount.address)) {
            return "";
        }
        return super.a(replyFromAccount);
    }
    
    @Override
    protected final String a(final String s, final Object o) {
        if (s == null) {
            return null;
        }
        return com.google.android.gm.ui.e.d(s, o);
    }
    
    public final void a(final FixPermissionDialogState fixPermissionDialogState, final ArrayList<PotentialFix> list, final int n, final boolean b) {
        if (list == null || list.isEmpty()) {
            this.e(false, b);
            return;
        }
        com.google.android.gm.drive.h.b(fixPermissionDialogState, list, n, b).show(this.getFragmentManager(), "acl-fixer-dialog");
    }
    
    public final void a(final PotentialFix potentialFix, final String s, final FixPermissionDialogState fixPermissionDialogState, final ArrayList<PotentialFix> list, final int n, final boolean b) {
        if (potentialFix == null) {
            this.e(false, b);
            return;
        }
        final List<String> dw = potentialFix.Dw();
        if (dw == null || dw.isEmpty()) {
            this.a(potentialFix, s, b);
            return;
        }
        j.b(potentialFix, s, fixPermissionDialogState, list, n, b).show(this.getFragmentManager(), "outside-domain-warning-dialog");
    }
    
    public final void a(final PotentialFix potentialFix, final String s, final boolean b) {
        this.e(false, b);
        AsyncTask.execute((Runnable)new com.google.android.gm.drive.g((Context)this, this.Nc.uf().name, potentialFix, s));
    }
    
    @Override
    protected final void a(final boolean b, final boolean b2, final ArrayList<String> list) {
        int i = 0;
        if (b) {
            this.e(b, b2);
            return;
        }
        final Editable editableText = this.avF.getEditableText();
        final com.google.android.gm.ui.g[] array = (com.google.android.gm.ui.g[])((Spanned)editableText).getSpans(0, ((Spanned)editableText).length(), (Class)com.google.android.gm.ui.g.class);
        if (array == null || array.length == 0) {
            this.e(b, b2);
            return;
        }
        final ArrayList<Object> fm = Lists.fm(array.length);
        while (i < array.length) {
            fm.add(array[i].Iq().getId());
            ++i;
        }
        com.google.android.gm.drive.a.a(this.Nc.uf().name, list, (ArrayList<String>)fm, b2).show(this.getFragmentManager(), "check-permissions-dialog");
    }
    
    public final void bP(final boolean b) {
        this.e(false, b);
    }
    
    @Override
    protected final void c(final ContentValues contentValues) {
        this.aXd = contentValues.getAsString("refAdEventId");
        if (this.aXd != null) {
            this.getLoaderManager().initLoader(100, (Bundle)null, (LoaderManager$LoaderCallbacks)this.aXe);
        }
    }
    
    @Override
    protected final void d(final Account account) {
        super.d(account);
        final com.google.android.gm.a aXk = this.aXk;
        if (com.google.android.gm.a.y(account)) {
            final String lw = this.Nc.lw();
            this.aXg.onStop();
            this.aXg.a(h.a((Context)this, this.aXg, lw));
            this.aXg.onStart();
        }
    }
    
    @Override
    public final void dy(final int n) {
        if (n == 65537) {
            this.aXf.DE();
        }
        else {
            if (n == 65538) {
                this.aXg.DE();
                return;
            }
            if (n == 1000) {
                this.finish();
            }
        }
    }
    
    @Override
    protected final boolean f(final Account account) {
        final com.google.android.gm.a aXk = this.aXk;
        return com.google.android.gm.a.y(account);
    }
    
    public final void n(final int n, final boolean b) {
        com.google.android.gm.drive.e.o(n, b).show(this.getFragmentManager(), "files-not-shared-dialog");
    }
    
    @Override
    protected void onActivityResult(final int n, final int n2, final Intent intent) {
        int n3;
        if (this.aXf.U(n, n2) || this.aXg.U(n, n2)) {
            n3 = 1;
        }
        else {
            n3 = 0;
        }
        if (n3 == 0 && n == 65539) {
            this.avK = false;
            if (n2 == -1) {
                final DriveId driveId = (DriveId)intent.getParcelableExtra("response_drive_id");
                final n id = this.aXg.ID();
                com.google.android.gms.drive.a.bGt.a(id, driveId).b(id).a(new s(this, driveId));
            }
            n3 = 1;
        }
        if (n3 == 0) {
            super.onActivityResult(n, n2, intent);
        }
    }
    
    @Override
    protected void onCreate(final Bundle bundle) {
        final Intent intent = this.getIntent();
        this.aXk = new com.google.android.gm.a(this.getApplicationContext());
        if (intent.getExtras() != null && intent.getExtras().containsKey("in-reference-to")) {
            intent.putExtra("in-reference-to-message-uri", (Parcelable)GmailProvider.h(intent.getStringExtra("account"), intent.getExtras().getLong("in-reference-to")));
            int intExtra = intent.getIntExtra("action", -1);
            if (intExtra == 1 || intExtra == -1) {
                intExtra = 0;
            }
            intent.putExtra("action", intExtra);
        }
        this.aXf = new q(this, this, bundle, "state-resolving-people-error", "Autocomplete");
        this.aXh = new b(this.aXf.ID(), this.getContentResolver());
        this.aXg = new r(this, this, bundle, "state-resolving-drive-error", "Drive");
        super.onCreate(bundle);
        if (WelcomeTourActivity.d((Context)this, this.getIntent())) {
            this.finish();
            return;
        }
        this.aXc = new i((Context)this);
        final BodyView bodyView = (BodyView)this.findViewById(2131558683);
        bodyView.addTextChangedListener((TextWatcher)new com.google.android.gm.ui.h());
        bodyView.a(this);
        this.aXb = ay.aX((Context)this);
    }
    
    @Override
    public boolean onCreateOptionsMenu(final Menu menu) {
        final boolean onCreateOptionsMenu = super.onCreateOptionsMenu(menu);
        if (onCreateOptionsMenu) {
            this.aXi = menu.findItem(2131559026);
            if (this.aXi != null) {
                this.aXi.setVisible(true);
            }
        }
        return onCreateOptionsMenu;
    }
    
    @Override
    protected void onDestroy() {
        this.aXh.close();
        super.onDestroy();
    }
    
    @Override
    public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
        return ay.dA(n) || super.onKeyDown(n, keyEvent);
    }
    
    public boolean onKeyUp(final int n, final KeyEvent keyEvent) {
        if (ay.dA(n)) {
            this.openOptionsMenu();
            return true;
        }
        return super.onKeyUp(n, keyEvent);
    }
    
    @Override
    public boolean onOptionsItemSelected(final MenuItem menuItem) {
        final int itemId = menuItem.getItemId();
        boolean b;
        if (itemId == 2131559026) {
            if (!this.Cy()) {
                E.e(ComposeActivityGmail.mW, "ignoring pick; GMS Core connection pending/failed. client=%s", this.aXg.ID());
                b = true;
            }
            else {
                final IntentSender c = com.google.android.gms.drive.a.bGt.LU().c(this.aXg.ID());
                try {
                    this.startIntentSenderForResult(c, 65539, (Intent)null, 0, 0, 0);
                    this.avK = true;
                    b = true;
                }
                catch (IntentSender$SendIntentException ex) {
                    E.e(ComposeActivityGmail.mW, (Throwable)ex, "failed to send Drive Picker intent", new Object[0]);
                    b = true;
                }
            }
        }
        else if (itemId == 2131559021) {
            ay.a(this, this.Nc, this.getString(2131296354));
            b = true;
        }
        else {
            b = false;
        }
        return b || super.onOptionsItemSelected(menuItem);
    }
    
    public void onPause() {
        super.onPause();
        if (this.aXj != null) {
            this.aXj.cancel(true);
        }
    }
    
    public boolean onPrepareOptionsMenu(final Menu menu) {
        if (this.aXi != null) {
            final boolean cy = this.Cy();
            this.aXi.setVisible(this.f(this.Nc));
            this.aXi.setEnabled(cy);
            final d oq = com.android.mail.a.a.oq();
            String s;
            if (cy) {
                s = "enabled";
            }
            else {
                s = "disabled";
            }
            oq.a("insert_drive", "open_overflow", s, 0L);
        }
        else {
            com.android.mail.a.a.oq().a("insert_drive", "open_overflow", "no_item", 0L);
        }
        return super.onPrepareOptionsMenu(menu);
    }
    
    @Override
    protected void onResume() {
        super.onResume();
        if (this.aXb != null) {
            this.aXb.g(this.getPackageName(), "activity", "compose");
        }
        if (c.a(this.getContentResolver(), "gmail_enable_conscrypt_provider", true)) {
            (this.aXj = new com.google.android.gm.c.a(this)).execute((Object[])new Void[0]);
        }
    }
    
    @Override
    protected void onSaveInstanceState(final Bundle bundle) {
        this.aXf.onSaveInstanceState(bundle);
        this.aXg.onSaveInstanceState(bundle);
        super.onSaveInstanceState(bundle);
    }
    
    @Override
    protected void onStart() {
        super.onStart();
        this.aXf.onStart();
        this.aXg.onStart();
    }
    
    @Override
    protected void onStop() {
        this.aXg.onStop();
        this.aXf.onStop();
        super.onStop();
    }
    
    @Override
    protected final void p(final List<String> list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        final n ky = new o(this.getApplicationContext()).a(com.google.android.gms.people.q.cgG, new com.google.android.gms.people.t().US().UT()).Ky();
        final com.google.android.gms.common.a kw = ky.Kw();
        if (!kw.Kk()) {
            E.d(ComposeActivityGmail.mW, "Increment connection failed: %s", kw);
            return;
        }
        final Iterator<String> iterator = list.iterator();
        while (iterator.hasNext()) {
            com.google.android.gms.people.q.cgN.a(ky, iterator.next());
        }
        ky.disconnect();
    }
    
    @Override
    protected final com.google.android.mail.common.html.parser.s<Spanned> ss() {
        return new com.google.android.gm.ui.j((Context)this);
    }
    
    @Override
    public final com.android.ex.chips.a sv() {
        return new com.google.android.gms.b.d((Context)this, this.Nc.uf(), this.aXf.ID(), this.aXh);
    }
    
    @Override
    public final DropdownChipLayouter sw() {
        return new com.google.android.gms.b.a(LayoutInflater.from((Context)this), (Context)this);
    }
}
