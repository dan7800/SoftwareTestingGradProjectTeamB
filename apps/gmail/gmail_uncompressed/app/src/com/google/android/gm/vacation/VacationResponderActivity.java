package com.google.android.gm.vacation;

import android.text.format.*;
import android.content.*;
import android.text.*;
import android.widget.*;
import android.os.*;
import com.android.mail.utils.*;
import com.google.android.gm.provider.*;
import android.support.v7.app.*;
import android.content.res.*;
import android.view.*;
import android.app.*;

public class VacationResponderActivity extends g implements TextWatcher, View$OnClickListener, CompoundButton$OnCheckedChangeListener, d, j
{
    private static final String mW;
    private String bhS;
    private bH biv;
    private TextView brA;
    private EditText brB;
    private EditText brC;
    private CheckedTextView brD;
    private CheckedTextView brE;
    private a brF;
    private i brG;
    private h brH;
    private f brI;
    private bI brJ;
    private Runnable brK;
    private boolean brp;
    private boolean brq;
    private boolean brr;
    private Time brs;
    private Time brt;
    private Time bru;
    private boolean brv;
    private Switch brw;
    private View brx;
    private View bry;
    private TextView brz;
    private String mAccount;
    
    static {
        mW = D.AU();
    }
    
    public VacationResponderActivity() {
        this.brF = new a(this);
        this.brK = new com.google.android.gm.vacation.g(this);
    }
    
    private void IG() {
        final long normalize = this.brt.normalize(true);
        final long normalize2 = this.bru.normalize(true);
        this.a(this.brz, normalize);
        this.aW(normalize2);
    }
    
    private void IK() {
        this.bru.set(this.brt);
        final Time bru = this.bru;
        bru.monthDay += 7;
        b(this.bru);
    }
    
    private void IL() {
        if (this.brI != null) {
            this.brI.dismiss();
        }
        (this.brI = f.IF()).show(this.getFragmentManager(), "EmptySubjectAndBodyDialog");
    }
    
    private static void a(final Time time) {
        time.setToNow();
        b(time);
    }
    
    private void a(final Time time, final boolean brq) {
        this.brq = brq;
        this.brF.g(time.year, time.month, time.monthDay);
        this.brF.IE().show(this.getFragmentManager(), "DatePickerDialog");
    }
    
    private void a(final CheckedTextView checkedTextView) {
        checkedTextView.setChecked(!checkedTextView.isChecked());
        this.brv = true;
    }
    
    private void a(final TextView textView, final long n) {
        textView.setText((CharSequence)DateUtils.formatDateTime((Context)this, n, 65556));
    }
    
    private void aW(final long n) {
        if (this.brr) {
            this.a(this.brA, n);
            return;
        }
        this.brA.setText(2131296687);
    }
    
    private static void b(final Time time) {
        time.hour = 0;
        time.minute = 0;
        time.second = 0;
    }
    
    private boolean ef(final int n) {
        if (n == 2131558977) {
            this.IM();
        }
        else if (n == 2131558933) {
            final Editable text = this.brB.getText();
            final Editable text2 = this.brC.getText();
            if (this.brw.isChecked() && w((CharSequence)text) && w((CharSequence)text2)) {
                this.IL();
            }
            else {
                if (this.brv) {
                    final bH biv = this.biv;
                    this.brJ = new bI();
                    this.biv.enabled = this.brw.isChecked();
                    this.biv.bnr = this.brt.toMillis(true);
                    if (this.brr) {
                        final Time bru = this.bru;
                        ++bru.monthDay;
                        this.biv.bns = this.bru.toMillis(true);
                    }
                    else {
                        this.biv.bns = 0L;
                    }
                    this.biv.ayV = this.brB.getText().toString();
                    final String string = this.brC.getText().toString();
                    if (!this.biv.bnt.equals(string)) {
                        this.biv.bnt = string;
                    }
                    this.biv.bnp = this.brD.isChecked();
                    this.biv.bnq = this.brE.isChecked();
                    this.biv.a(this.brJ);
                    AsyncTask.execute(this.brK);
                }
                com.android.mail.a.a.oq().a("vacation_responder", "done", null, 0L);
                this.eg(2131296692);
            }
        }
        else if (n == 2131558971) {
            this.a(this.brt, true);
        }
        else if (n == 2131558973) {
            if (!this.brr) {
                this.IK();
            }
            final FragmentManager fragmentManager = this.getFragmentManager();
            this.brG = (i)fragmentManager.findFragmentByTag("EndDateDialog");
            if (this.brG == null) {
                (this.brG = i.fw(DateUtils.formatDateTime((Context)this, this.bru.toMillis(true), 65556))).show(fragmentManager, "EndDateDialog");
            }
        }
        else if (n == 2131558975) {
            this.a(this.brD);
        }
        else {
            if (n != 2131558976) {
                return false;
            }
            this.a(this.brE);
        }
        return true;
    }
    
    private void eg(final int n) {
        if (this.brv) {
            Toast.makeText((Context)this, (CharSequence)this.getString(n), 0).show();
        }
        this.finish();
    }
    
    private static boolean w(final CharSequence charSequence) {
        return charSequence == null || TextUtils.getTrimmedLength(charSequence) == 0;
    }
    
    public final void IH() {
        this.brr = true;
        this.aW(this.bru.normalize(true));
        this.brv = true;
    }
    
    public final void II() {
        this.a(this.bru, false);
    }
    
    public final void IJ() {
        this.brr = false;
        this.aW(0L);
        this.brv = true;
    }
    
    public final void IM() {
        com.android.mail.a.a.oq().a("vacation_responder", "discard", null, 0L);
        this.eg(2131296693);
    }
    
    public void afterTextChanged(final Editable editable) {
        this.brv = true;
    }
    
    public void beforeTextChanged(final CharSequence charSequence, final int n, final int n2, final int n3) {
    }
    
    public final void i(final int n, final int n2, final int n3) {
        E.c(VacationResponderActivity.mW, "onDateSet: %s %s %s", n, n2, n3);
        final Time brt = this.brt;
        final Time bru = this.bru;
        if (this.brq) {
            brt.year = n;
            brt.month = n2;
            brt.monthDay = n3;
            b(brt);
            if (bru.before(brt)) {
                bru.set(brt);
            }
        }
        else {
            this.brr = true;
            bru.year = n;
            bru.month = n2;
            bru.monthDay = n3;
            b(bru);
            if (bru.before(brt)) {
                brt.set(bru);
            }
        }
        this.IG();
        this.brv = true;
    }
    
    @Override
    public void onBackPressed() {
        if (this.brv) {
            if (this.brH != null) {
                this.brH.dismiss();
            }
            (this.brH = h.IN()).show(this.getFragmentManager(), "DiscardDialog");
            return;
        }
        super.onBackPressed();
    }
    
    public void onCheckedChanged(final CompoundButton compoundButton, final boolean b) {
        if (b) {
            final Editable text = this.brB.getText();
            final Editable text2 = this.brC.getText();
            if (TextUtils.isEmpty((CharSequence)text) && TextUtils.isEmpty((CharSequence)text2)) {
                this.brw.setChecked(false);
                this.IL();
                return;
            }
            if (this.brt.before(this.brs)) {
                this.brt.set(this.brs);
            }
            if (this.bru.before(this.brt)) {
                this.IK();
            }
            this.IG();
        }
        this.brv = true;
    }
    
    public void onClick(final View view) {
        this.ef(view.getId());
    }
    
    @Override
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130968772);
        final Resources resources = this.getResources();
        this.brp = !ag.b(resources);
        this.mAccount = this.getIntent().getStringExtra("account_key");
        final MailEngine eo = MailEngine.eO(this.mAccount);
        this.biv = eo.GB();
        this.bhS = eo.Fr();
        final android.support.v7.app.a cf = this.cF();
        if (this.brp) {
            final View inflate = ((LayoutInflater)cf.getThemedContext().getSystemService("layout_inflater")).inflate(2130968773, (ViewGroup)null, false);
            inflate.findViewById(2131558977).setOnClickListener((View$OnClickListener)this);
            inflate.findViewById(2131558933).setOnClickListener((View$OnClickListener)this);
            cf.cC();
            cf.cA();
            cf.setDisplayHomeAsUpEnabled(false);
            cf.cB();
            cf.a(inflate, new b(-1, -1));
        }
        else {
            cf.cA();
            cf.setTitle(2131296680);
            cf.setSubtitle(this.mAccount);
        }
        this.brw = (Switch)this.findViewById(2131558970);
        this.brx = this.findViewById(2131558971);
        this.bry = this.findViewById(2131558973);
        this.brz = (TextView)this.findViewById(2131558972);
        this.brA = (TextView)this.findViewById(2131558974);
        this.brB = (EditText)this.findViewById(2131558697);
        this.brC = (EditText)this.findViewById(2131558683);
        this.brD = (CheckedTextView)this.findViewById(2131558975);
        this.brE = (CheckedTextView)this.findViewById(2131558976);
        a(this.brs = new Time());
        this.brt = new Time();
        this.bru = new Time();
        if (bundle != null) {
            this.brq = bundle.getBoolean("start-date-selected", false);
            this.brr = bundle.getBoolean("end-date-set", false);
            this.brD.setChecked(bundle.getBoolean("send-to-contacts-set", false));
            this.brE.setChecked(bundle.getBoolean("send-to-domain-set", false));
            this.brt.set(bundle.getLong("start-date"));
            this.bru.set(bundle.getLong("end-date"));
            final DialogFragment dialogFragment = (DialogFragment)this.getFragmentManager().findFragmentByTag("DatePickerDialog");
            if (dialogFragment != null) {
                this.brF.a(dialogFragment);
            }
        }
        else {
            this.brw.setChecked(this.biv.enabled);
            final long bnr = this.biv.bnr;
            if (bnr == 0L) {
                a(this.brt);
            }
            else {
                this.brt.set(bnr);
            }
            final long bns = this.biv.bns;
            if (bns <= 0L) {
                this.IK();
                this.brr = false;
            }
            else {
                this.bru.set(bns);
                final Time bru = this.bru;
                --bru.monthDay;
                this.brr = true;
            }
            this.brB.setText((CharSequence)this.biv.ayV);
            this.brC.setText((CharSequence)this.biv.bnt);
            this.brD.setChecked(this.biv.bnp);
            this.brE.setChecked(this.biv.bnq);
            this.brv = false;
        }
        this.brw.setOnCheckedChangeListener((CompoundButton$OnCheckedChangeListener)this);
        this.brx.setOnClickListener((View$OnClickListener)this);
        this.bry.setOnClickListener((View$OnClickListener)this);
        this.brB.addTextChangedListener((TextWatcher)this);
        this.brC.addTextChangedListener((TextWatcher)this);
        this.brD.setOnClickListener((View$OnClickListener)this);
        this.brE.setOnClickListener((View$OnClickListener)this);
        this.IG();
        if (TextUtils.isEmpty((CharSequence)this.bhS)) {
            this.brE.setVisibility(8);
            return;
        }
        this.brE.setText((CharSequence)resources.getString(2131296684, new Object[] { this.bhS }));
    }
    
    public boolean onCreateOptionsMenu(final Menu menu) {
        super.onCreateOptionsMenu(menu);
        if (!this.brp) {
            this.getMenuInflater().inflate(2131755028, menu);
            return true;
        }
        return false;
    }
    
    public boolean onOptionsItemSelected(final MenuItem menuItem) {
        return this.ef(menuItem.getItemId()) || super.onOptionsItemSelected(menuItem);
    }
    
    protected void onRestoreInstanceState(final Bundle bundle) {
        super.onRestoreInstanceState(bundle);
        this.brv = bundle.getBoolean("changes-made", false);
    }
    
    protected void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("start-date-selected", this.brq);
        bundle.putBoolean("end-date-set", this.brr);
        bundle.putBoolean("changes-made", this.brv);
        bundle.putBoolean("send-to-contacts-set", this.brD.isChecked());
        bundle.putBoolean("send-to-domain-set", this.brE.isChecked());
        bundle.putLong("start-date", this.brt.toMillis(true));
        bundle.putLong("end-date", this.bru.toMillis(true));
    }
    
    protected void onStart() {
        super.onStart();
        com.android.mail.a.a.oq().e(this);
    }
    
    @Override
    protected void onStop() {
        super.onStop();
        com.android.mail.a.a.oq().f(this);
    }
    
    public void onTextChanged(final CharSequence charSequence, final int n, final int n2, final int n3) {
    }
}
