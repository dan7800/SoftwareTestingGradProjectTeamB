package com.android.mail.compose;

import android.content.*;
import android.util.*;
import android.text.*;
import java.util.*;
import com.android.mail.providers.*;
import com.google.common.collect.*;
import android.widget.*;
import android.view.*;

public class FromAddressSpinner extends Spinner implements AdapterView$OnItemSelectedListener
{
    private List<Account> awE;
    private ReplyFromAccount awF;
    private final List<ReplyFromAccount> awG;
    private x awH;
    
    public FromAddressSpinner(final Context context) {
        this(context, null);
    }
    
    public FromAddressSpinner(final Context context, final AttributeSet set) {
        super(context, set);
        this.awG = new ArrayList<ReplyFromAccount>();
    }
    
    private void sO() {
        if (this.awF != null) {
            final Iterator<ReplyFromAccount> iterator = this.awG.iterator();
            int n = 0;
            while (iterator.hasNext()) {
                final ReplyFromAccount replyFromAccount = iterator.next();
                if (TextUtils.equals((CharSequence)this.awF.name, (CharSequence)replyFromAccount.name) && TextUtils.equals((CharSequence)this.awF.address, (CharSequence)replyFromAccount.address)) {
                    this.setSelection(n, true);
                    return;
                }
                ++n;
            }
        }
    }
    
    private void sQ() {
        if (this.awE == null || this.awE.size() == 0) {
            return;
        }
        final y adapter = new y(this.getContext());
        this.awG.clear();
        final Iterator<Account> iterator = this.awE.iterator();
        while (iterator.hasNext()) {
            this.awG.addAll(iterator.next().uk());
        }
        adapter.q(this.awG);
        this.setAdapter((SpinnerAdapter)adapter);
        this.sO();
        this.setOnItemSelectedListener((AdapterView$OnItemSelectedListener)this);
    }
    
    public final void a(final int n, Account account, final Account[] array, final Message message) {
        final List<Account> awE = this.awE;
        final ArrayList<Account> awE2 = new ArrayList<Account>();
        final ArrayList<String> list = new ArrayList<String>();
        if (awE != null) {
            final Iterator<Account> iterator = awE.iterator();
            while (iterator.hasNext()) {
                list.add(iterator.next().lw());
            }
        }
        for (int i = 0; i < array.length; ++i) {
            array[i].lw();
            awE2.add(array[i]);
        }
        if (n == -1) {
            this.awE = awE2;
        }
        else {
            if (message != null && message.azj != null) {
                for (final Account account2 : awE2) {
                    if (account2.uri.equals((Object)message.azj)) {
                        account = account2;
                        break;
                    }
                }
            }
            this.awE = ImmutableList.aE(account);
        }
        this.sQ();
    }
    
    public final void a(final x awH) {
        this.awH = awH;
    }
    
    public final void b(final ReplyFromAccount awF) {
        this.awF = awF;
        this.sO();
    }
    
    public final ReplyFromAccount bx(final String s) {
        if (!TextUtils.isEmpty((CharSequence)s)) {
            for (final ReplyFromAccount replyFromAccount : this.awG) {
                if (s.equals(replyFromAccount.address)) {
                    return replyFromAccount;
                }
            }
        }
        return null;
    }
    
    public void onItemSelected(final AdapterView<?> adapterView, final View view, final int n, final long n2) {
        final ReplyFromAccount awF = (ReplyFromAccount)this.getItemAtPosition(n);
        if (!awF.address.equals(this.awF.address)) {
            this.awF = awF;
            this.awH.sD();
        }
    }
    
    public void onNothingSelected(final AdapterView<?> adapterView) {
    }
    
    public final ReplyFromAccount sP() {
        return this.awF;
    }
    
    public final List<ReplyFromAccount> sR() {
        return this.awG;
    }
}
