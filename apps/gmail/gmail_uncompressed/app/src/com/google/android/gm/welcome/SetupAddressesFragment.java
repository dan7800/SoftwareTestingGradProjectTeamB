package com.google.android.gm.welcome;

import android.widget.*;
import android.os.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.people.*;
import android.provider.*;
import com.google.common.collect.*;
import android.database.*;
import com.google.android.gm.c.*;
import java.util.*;
import com.google.android.gm.*;
import com.android.mail.utils.*;
import android.app.*;
import android.view.*;
import android.content.*;

public class SetupAddressesFragment extends Fragment implements View$OnClickListener, x
{
    private n bbm;
    private a bsd;
    private LinearLayout bse;
    private TextView bsf;
    private final m bsg;
    private l bsh;
    
    public SetupAddressesFragment() {
        this.bsg = new m(this, (byte)0);
    }
    
    private void IR() {
        this.getLoaderManager().restartLoader(21, Bundle.EMPTY, (LoaderManager$LoaderCallbacks)v.a(this.getActivity(), this.getLoaderManager(), this));
    }
    
    private void IS() {
        if (this.bbm.isConnected() && this.bsd != null) {
            q.cgI.a(this.bbm, new g().UN()).a(this.bsd);
        }
    }
    
    private void W(final int n, final int n2) {
        final FragmentManager fragmentManager = this.getFragmentManager();
        final Fragment fragmentByTag = fragmentManager.findFragmentByTag("error-dialog-tag");
        if (fragmentByTag != null) {
            ((DialogFragment)fragmentByTag).dismiss();
        }
        b.V(n, n2).show(fragmentManager, "error-dialog-tag");
    }
    
    private boolean fx(final String s) {
        final Cursor query = this.getActivity().getContentResolver().query(ContactsContract$RawContacts.CONTENT_URI, new String[] { "_id" }, "account_name=? AND account_type='com.google' AND data_set IS NULL AND dirty!= 0", new String[] { s }, (String)null);
        if (query == null) {
            return false;
        }
        try {
            if (query.getCount() > 0) {
                return true;
            }
            return false;
        }
        catch (Exception ex) {
            E.d(E.TAG, ex, "", new Object[0]);
            if (query != null) {
                query.close();
                return false;
            }
            return false;
        }
        finally {
            if (query != null) {
                query.close();
            }
        }
    }
    
    public final void a(final WelcomeTourState welcomeTourState) {
        if (this.bsd == null) {
            this.bsd = new a((Context)this.getActivity(), this.bbm, Lists.f((Iterable<? extends WelcomeTourState$AccountState>)welcomeTourState.IY()), (View$OnClickListener)this);
            this.bsh = new l(this, (byte)0);
            this.bsd.registerDataSetObserver((DataSetObserver)this.bsh);
        }
        else if (this.bsd.IO().equals(welcomeTourState.IY())) {
            return;
        }
        com.android.mail.a.a.oq().f(2, Long.toString(welcomeTourState.size()));
        final ArrayList<Object> f = Lists.f((Iterable<?>)welcomeTourState.IY());
        final ListIterator<WelcomeTourState$AccountState> listIterator = this.bsd.IO().listIterator();
    Label_0093:
        while (listIterator.hasNext()) {
            final WelcomeTourState$AccountState welcomeTourState$AccountState = listIterator.next();
            final String accountId = welcomeTourState$AccountState.getAccountId();
            while (true) {
                for (final WelcomeTourState$AccountState welcomeTourState$AccountState2 : f) {
                    if (welcomeTourState$AccountState2.getAccountId().equals(accountId)) {
                        if (welcomeTourState$AccountState2 != null) {
                            if (!welcomeTourState$AccountState.mr().name.equals(welcomeTourState$AccountState2.mr().name)) {
                                if (welcomeTourState$AccountState.IZ()) {
                                    listIterator.set(welcomeTourState$AccountState2.el(3));
                                    E.c("WelcomeTour", "Rename completed for id: %s", welcomeTourState$AccountState.getAccountId());
                                }
                                else {
                                    listIterator.set(welcomeTourState$AccountState2);
                                    E.c("WelcomeTour", "Address changed but it was not pending for id: %s", welcomeTourState$AccountState.getAccountId());
                                }
                                E.c("WelcomeTour", "Email address changed for id:%s from %s to %s", welcomeTourState$AccountState.getAccountId(), welcomeTourState$AccountState.mr().name, welcomeTourState$AccountState2.mr().name);
                            }
                            else if (!welcomeTourState$AccountState.getDisplayName().equals(welcomeTourState$AccountState2.getDisplayName())) {
                                listIterator.set(welcomeTourState$AccountState.fy(welcomeTourState$AccountState2.getDisplayName()));
                                E.c("WelcomeTour", "Display name changed to %s for account id: %s", welcomeTourState$AccountState2.getDisplayName(), welcomeTourState$AccountState.getAccountId());
                            }
                            else {
                                E.c("WelcomeTour", "Account %s is not changed", welcomeTourState$AccountState.getAccountId());
                            }
                            f.remove(welcomeTourState$AccountState2);
                            continue Label_0093;
                        }
                        E.c("WelcomeTour", "Updated state not found for account: id:%s %s", welcomeTourState$AccountState.getAccountId(), welcomeTourState$AccountState.mr());
                        if (!welcomeTourState$AccountState.IZ()) {
                            E.c("WelcomeTour", "Existing state is not pending for account id:%s %s. Removing it from the list.", welcomeTourState$AccountState.getAccountId(), welcomeTourState$AccountState.mr());
                            listIterator.remove();
                            continue Label_0093;
                        }
                        E.c("WelcomeTour", "Found new account %s", welcomeTourState$AccountState.mr().name);
                        continue Label_0093;
                    }
                }
                WelcomeTourState$AccountState welcomeTourState$AccountState2 = null;
                continue;
            }
        }
        this.bsd.IO().addAll((Collection<? extends WelcomeTourState$AccountState>)f);
        this.bsd.notifyDataSetChanged();
        this.IS();
        for (final WelcomeTourState$AccountState welcomeTourState$AccountState3 : f) {
            com.android.mail.a.a.oq().a("setup_addresses-account_added", c.fu(c.ft(welcomeTourState$AccountState3.mr().name)), welcomeTourState$AccountState3.mr().type, 0L);
        }
    }
    
    public void onActivityResult(final int n, final int n2, final Intent intent) {
        if (n == 1) {
            switch (n2) {
                case 0: {
                    com.android.mail.a.a.oq().a("setup_addresses", "address_changed", "cancelled", 0L);
                    return;
                }
                case -1: {
                    final String stringExtra = intent.getStringExtra("account-address");
                    final String stringExtra2 = intent.getStringExtra("changed-address");
                    Label_0213: {
                        if (this.bsd != null) {
                            final ListIterator<WelcomeTourState$AccountState> listIterator = this.bsd.IO().listIterator();
                            while (true) {
                                while (listIterator.hasNext()) {
                                    final WelcomeTourState$AccountState welcomeTourState$AccountState = listIterator.next();
                                    if (stringExtra.equals(welcomeTourState$AccountState.mr().name)) {
                                        E.c("WelcomeTour", "Set account %s as pending", stringExtra);
                                        listIterator.set(welcomeTourState$AccountState.el(2));
                                        com.google.android.gm.persistence.b.DD().M(this.getActivity().getApplicationContext(), welcomeTourState$AccountState.getAccountId());
                                        if (this.bsd != null) {
                                            this.bsd.notifyDataSetChanged();
                                        }
                                        this.bsd.ai(stringExtra, stringExtra2);
                                        break Label_0213;
                                    }
                                }
                                E.e("WelcomeTour", "Failed to mark unknown account as change pending.", new Object[0]);
                                continue;
                            }
                        }
                    }
                    com.android.mail.a.a.oq().a("setup_addresses", "address_changed", "ok", 0L);
                    return;
                }
                case 2: {
                    final int intExtra = intent.getIntExtra("error", -1);
                    switch (intExtra) {
                        default: {
                            this.W(2131297221, 2131297224);
                            break;
                        }
                        case -2: {
                            this.W(2131296580, 2131297222);
                            break;
                        }
                        case -8: {
                            this.W(2131296580, 2131297223);
                            break;
                        }
                    }
                    com.android.mail.a.a.oq().a("setup_addresses", "address_changed", "error_" + intExtra, 0L);
                    return;
                }
            }
        }
        super.onActivityResult(n, n2, intent);
    }
    
    public void onClick(final View view) {
        final int id = view.getId();
        final Activity activity = this.getActivity();
        if (id == 2131558930) {
            com.android.mail.a.a.oq().a("setup_addresses", "learn_more", null, 0L);
            ay.aY((Context)activity);
        }
        else if (id == 2131558926) {
            final String s = (String)view.getTag();
            final Activity activity2 = this.getActivity();
            if (this.fx(s)) {
                new AlertDialog$Builder((Context)this.getActivity()).setMessage(2131297238).setCancelable(false).setPositiveButton(17039370, (DialogInterface$OnClickListener)new j(this)).create().show();
                return;
            }
            if (ag.aN((Context)activity2)) {
                final Intent intent = new Intent((Context)activity2, (Class)ChangeAddressActivity.class);
                intent.putExtra("account-address", s);
                this.startActivityForResult(intent, 1);
                com.android.mail.a.a.oq().a("setup_addresses", "change_address", null, 0L);
                return;
            }
            this.W(2131296580, 2131297222);
            com.android.mail.a.a.oq().a("setup_addresses", "change_address", "no_network", 0L);
        }
        else {
            if (id == 2131558932) {
                com.google.android.gm.a.h(activity);
                com.android.mail.a.a.oq().a("setup_addresses", "add_account", null, 0L);
                return;
            }
            if (id == 2131558933) {
                int count;
                if (this.bsd != null) {
                    count = this.bsd.getCount();
                }
                else {
                    count = 0;
                }
                com.android.mail.a.a.oq().a("setup_addresses", "take_me_to_gmail", "nb_addresses", count);
                if (count == 0) {
                    final FragmentManager fragmentManager = this.getFragmentManager();
                    final Fragment fragmentByTag = fragmentManager.findFragmentByTag("NoAccountsDialog");
                    if (fragmentByTag != null) {
                        ((com.google.android.gm.welcome.h)fragmentByTag).dismiss();
                    }
                    new com.google.android.gm.welcome.h().show(fragmentManager, "NoAccountsDialog");
                    return;
                }
                activity.setResult(-1);
                activity.finish();
            }
        }
    }
    
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        final Intent intent = this.getActivity().getIntent();
        ArrayList<WelcomeTourState$AccountState> list;
        if (bundle != null && bundle.containsKey("pending-changes")) {
            list = (ArrayList<WelcomeTourState$AccountState>)bundle.getParcelableArrayList("pending-changes");
        }
        else if (intent.hasExtra("pending-changes")) {
            list = (ArrayList<WelcomeTourState$AccountState>)intent.getParcelableArrayListExtra("pending-changes");
        }
        else {
            final WelcomeTourState welcomeTourState = (WelcomeTourState)this.getActivity().getIntent().getParcelableExtra("tour-state");
            if (welcomeTourState != null) {
                list = (ArrayList<WelcomeTourState$AccountState>)Lists.f((Iterable<?>)welcomeTourState.IY());
            }
            else {
                this.IR();
                list = null;
            }
        }
        this.bbm = new k(this, this.getActivity(), bundle, "state-resolving-people-error", SetupAddressesFragment.class.getSimpleName()).ID();
        if (list != null) {
            this.bsd = new a((Context)this.getActivity(), this.bbm, list, (View$OnClickListener)this);
        }
    }
    
    public View onCreateView(final LayoutInflater layoutInflater, final ViewGroup viewGroup, final Bundle bundle) {
        final View inflate = layoutInflater.inflate(2130968754, viewGroup, false);
        if (this.getResources().getConfiguration().orientation == 2) {
            inflate.findViewById(2131558929).setVisibility(8);
        }
        final TextView textView = (TextView)inflate.findViewById(2131558930);
        final WelcomeTourState welcomeTourState = (WelcomeTourState)this.getActivity().getIntent().getParcelableExtra("tour-state");
        int n;
        if (welcomeTourState == null || welcomeTourState.IX()) {
            n = 1;
        }
        else {
            n = 0;
        }
        final String string = this.getString(2131297182);
        int n2;
        if (n != 0) {
            n2 = 2131297233;
        }
        else {
            n2 = 2131297234;
        }
        textView.setText((CharSequence)ag.a((Context)this.getActivity(), this.getString(n2, new Object[] { string }), string, 2131231225));
        textView.setOnClickListener((View$OnClickListener)this);
        com.android.mail.a.a.oq().a("welcome_tour", "page", "setup_addresses", 0L);
        inflate.findViewById(2131558933).setOnClickListener((View$OnClickListener)this);
        (this.bsf = (TextView)inflate.findViewById(2131558932)).setOnClickListener((View$OnClickListener)this);
        this.bse = (LinearLayout)inflate.findViewById(2131558931);
        if (this.bsd != null) {
            this.bsd.notifyDataSetChanged();
        }
        return inflate;
    }
    
    public void onPause() {
        while (true) {
            try {
                this.getActivity().unregisterReceiver((BroadcastReceiver)this.bsg);
                super.onPause();
            }
            catch (IllegalArgumentException ex) {
                continue;
            }
            break;
        }
    }
    
    public void onResume() {
        super.onResume();
        this.getActivity().registerReceiver((BroadcastReceiver)this.bsg, this.bsg.bsj);
        this.IR();
    }
    
    public void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        if (this.bsd != null) {
            bundle.putParcelableArrayList("pending-changes", (ArrayList)this.bsd.IO());
        }
    }
    
    public void onStart() {
        super.onStart();
        if (this.bbm != null && !this.bbm.isConnected() && !this.bbm.isConnecting()) {
            this.bbm.connect();
        }
        if (this.bsd != null) {
            this.bsh = new l(this, (byte)0);
            this.bsd.registerDataSetObserver((DataSetObserver)this.bsh);
        }
    }
    
    public void onStop() {
        if (this.bbm != null && (this.bbm.isConnected() || this.bbm.isConnecting())) {
            this.bbm.disconnect();
        }
        if (this.bsh != null) {
            this.bsd.unregisterDataSetObserver((DataSetObserver)this.bsh);
            this.bsh = null;
        }
        super.onStop();
    }
}
