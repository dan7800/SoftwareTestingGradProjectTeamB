package com.google.android.gms.people.accountswitcherview;

import com.google.android.gms.people.model.*;
import android.accounts.*;
import android.content.*;
import android.os.*;
import java.util.*;

public final class a implements OnAccountsUpdateListener
{
    private AccountManager Ud;
    private ArrayList<d> cgS;
    private Account[] cgT;
    private HashMap<String, d> cgU;
    private boolean cgV;
    private Context mContext;
    
    public a(final Context mContext) {
        this.mContext = mContext;
        this.cgU = new HashMap<String, d>();
        this.cgS = new ArrayList<d>();
    }
    
    public final ArrayList<d> R(final List<d> list) {
        if (list == null || list.isEmpty()) {
            this.detach();
        }
        else {
            if (this.Ud == null) {
                this.Ud = AccountManager.get(this.mContext);
                this.cgT = this.Ud.getAccountsByType("com.google");
            }
            if (!this.cgV) {
                this.Ud.addOnAccountsUpdatedListener((OnAccountsUpdateListener)this, (Handler)null, true);
                this.cgV = true;
            }
            this.cgU.clear();
            if (list != null) {
                for (final d d : list) {
                    this.cgU.put(d.FP(), d);
                }
            }
            if (this.cgU.isEmpty()) {
                this.detach();
            }
            else {
                this.cgS.clear();
                final Account[] cgT = this.cgT;
                for (int length = cgT.length, i = 0; i < length; ++i) {
                    final d d2 = this.cgU.get(cgT[i].name);
                    if (d2 != null) {
                        this.cgS.add(d2);
                    }
                }
            }
        }
        return this.cgS;
    }
    
    final void detach() {
        if (this.cgV) {
            this.Ud.removeOnAccountsUpdatedListener((OnAccountsUpdateListener)this);
            this.cgV = false;
            this.cgU.clear();
            this.cgS.clear();
        }
    }
    
    public final void onAccountsUpdated(final Account[] array) {
        this.cgT = this.Ud.getAccountsByType("com.google");
        this.R(this.cgS);
    }
}
