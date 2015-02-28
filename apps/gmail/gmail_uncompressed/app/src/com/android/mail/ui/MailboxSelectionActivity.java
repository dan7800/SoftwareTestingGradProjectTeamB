package com.android.mail.ui;

import android.support.v7.app.*;
import android.database.*;
import android.view.*;
import com.android.mail.utils.*;
import android.os.*;
import com.android.mail.providers.*;
import android.content.*;
import android.widget.*;
import java.util.*;
import com.android.mail.a.*;
import android.app.*;

public class MailboxSelectionActivity extends g implements LoaderManager$LoaderCallbacks<Cursor>, View$OnClickListener, AdapterView$OnItemClickListener
{
    private static final String[] aLh;
    protected static final String mW;
    private boolean aA;
    private View aHz;
    private boolean aKk;
    private int aKl;
    private final int[] aLi;
    private boolean aLj;
    private SimpleCursorAdapter aLk;
    boolean aLl;
    private ListView aLm;
    private View aLn;
    private Handler mHandler;
    
    static {
        aLh = new String[] { "name" };
        mW = D.AU();
    }
    
    public MailboxSelectionActivity() {
        this.aLi = new int[] { 2131558863 };
        this.aLj = false;
        this.aKk = false;
        this.aKl = 0;
        this.aLl = false;
        this.aA = false;
        this.mHandler = new Handler();
    }
    
    private void g(final Account account) {
        final dF sf = this.sF();
        if (sf != null) {
            sf.p(account);
        }
        else {
            this.aLn.setVisibility(0);
            final dF a = dF.a(account, false);
            final FragmentTransaction beginTransaction = this.getFragmentManager().beginTransaction();
            beginTransaction.setTransition(4097);
            beginTransaction.replace(2131558978, (Fragment)a, "wait-fragment");
            beginTransaction.commitAllowingStateLoss();
        }
        this.aHz.setVisibility(8);
    }
    
    private void l(final Cursor cursor) {
        while (true) {
            Label_0156: {
                if (!this.aKk && !this.aLj) {
                    break Label_0156;
                }
                int n;
                if (cursor == null || cursor.getCount() == 0) {
                    final Intent aq = t.aq((Context)this);
                    if (aq != null) {
                        this.startActivityForResult(aq, 2);
                    }
                    this.aLl = true;
                    n = 0;
                }
                else {
                    if (!this.aKk || cursor.getCount() != 1) {
                        break Label_0156;
                    }
                    this.aLn.setVisibility(8);
                    cursor.moveToFirst();
                    Account.ue();
                    this.u(c.j(cursor));
                    n = 0;
                }
                if (n != 0) {
                    this.aHz.setVisibility(0);
                    if (this.aA) {
                        this.setVisible(true);
                    }
                    this.aLk = new cs(this, (Context)this, cursor, MailboxSelectionActivity.aLh, this.aLi);
                    this.aLm.setAdapter((ListAdapter)this.aLk);
                }
                return;
            }
            int n = 1;
            continue;
        }
    }
    
    private dF sF() {
        return (dF)this.getFragmentManager().findFragmentByTag("wait-fragment");
    }
    
    private void u(final Account account) {
        if (this.aLj || this.aKk) {
            final Intent intent = new Intent((Context)this, (Class)this.zK());
            intent.setFlags(1107296256);
            String action;
            if (this.aLj) {
                action = "android.intent.action.CREATE_SHORTCUT";
            }
            else {
                action = "android.appwidget.action.APPWIDGET_CONFIGURE";
            }
            intent.setAction(action);
            if (this.aKk) {
                intent.putExtra("appWidgetId", this.aKl);
            }
            intent.putExtra("account-shortcut", (Parcelable)account);
            this.startActivity(intent);
        }
        this.finish();
    }
    
    protected final void onActivityResult(final int n, final int n2, final Intent intent) {
        if (n == 2) {
            if (n2 == -1) {
                this.getLoaderManager().initLoader(0, (Bundle)null, (LoaderManager$LoaderCallbacks)this);
                this.g(null);
                return;
            }
            this.finish();
        }
    }
    
    @Override
    public void onBackPressed() {
        this.aLl = false;
        if (this.sF() != null) {
            this.finish();
            return;
        }
        super.onBackPressed();
    }
    
    public void onClick(final View view) {
        if (view.getId() == 2131558812) {
            this.setResult(0);
            this.finish();
        }
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.setContentView(2130968724);
        (this.aLm = (ListView)this.findViewById(16908298)).setOnItemClickListener((AdapterView$OnItemClickListener)this);
        this.aHz = this.findViewById(2131558672);
        this.aLn = this.findViewById(2131558978);
        if (bundle != null) {
            if (bundle.containsKey("createShortcut")) {
                this.aLj = bundle.getBoolean("createShortcut");
            }
            if (bundle.containsKey("createWidget")) {
                this.aKk = bundle.getBoolean("createWidget");
            }
            if (bundle.containsKey("widgetId")) {
                this.aKl = bundle.getInt("widgetId");
            }
            if (bundle.containsKey("waitingForAddAccountResult")) {
                this.aLl = bundle.getBoolean("waitingForAddAccountResult");
            }
        }
        else {
            if ("android.intent.action.CREATE_SHORTCUT".equals(this.getIntent().getAction())) {
                this.aLj = true;
            }
            this.aKl = this.getIntent().getIntExtra("appWidgetId", 0);
            if (this.aKl != 0) {
                this.aKk = true;
            }
        }
        if (this.aLj || this.aKk) {
            this.setTitle((CharSequence)this.getResources().getString(2131296568));
        }
        this.findViewById(2131558812).setOnClickListener((View$OnClickListener)this);
        this.setVisible(false);
        this.setResult(0);
    }
    
    public Loader<Cursor> onCreateLoader(final int n, final Bundle bundle) {
        switch (n) {
            default: {
                return null;
            }
            case 0: {
                return (Loader<Cursor>)new CursorLoader((Context)this, t.vh(), E.aCr, (String)null, (String[])null, (String)null);
            }
        }
    }
    
    public void onItemClick(final AdapterView<?> adapterView, final View view, final int n, final long n2) {
        Account.ue();
        this.u(c.j((Cursor)this.aLk.getItem(n)));
    }
    
    public void onLoaderReset(final Loader<Cursor> loader) {
    }
    
    public void onNewIntent(final Intent intent) {
        super.onNewIntent(intent);
        this.setIntent(intent);
    }
    
    public void onPause() {
        super.onPause();
        this.aA = false;
    }
    
    public void onResume() {
        super.onResume();
        this.aA = true;
        if (!this.aLl) {
            new cq(this, this.getContentResolver()).execute((Object[])new Void[0]);
        }
    }
    
    protected void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("createShortcut", this.aLj);
        bundle.putBoolean("createWidget", this.aKk);
        if (this.aKl != 0) {
            bundle.putInt("widgetId", this.aKl);
        }
        bundle.putBoolean("waitingForAddAccountResult", this.aLl);
    }
    
    public void onStart() {
        super.onStart();
        a.oq().e(this);
    }
    
    @Override
    protected void onStop() {
        super.onStop();
        a.oq().f(this);
    }
    
    protected Class<?> zK() {
        return bR.class;
    }
}
