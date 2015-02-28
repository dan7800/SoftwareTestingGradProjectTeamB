package com.android.mail.ui;

import com.android.mail.providers.*;
import android.support.v7.app.*;
import android.database.*;
import android.app.*;
import com.android.a.*;
import com.android.mail.b.*;
import com.android.mail.widget.*;
import com.android.mail.utils.*;
import android.content.*;
import android.view.*;
import android.os.*;
import android.widget.*;
import java.util.*;

final class bS implements O
{
    final /* synthetic */ bR aKn;
    
    bS(final bR aKn) {
        this.aKn = aKn;
    }
    
    @Override
    public final void a(final boolean b, final Account account, final Folder folder) {
        this.aKn.aDt.notifyChanged();
    }
    
    @Override
    public final void d(final p p) {
    }
    
    @Override
    public final void e(final DataSetObserver dataSetObserver) {
    }
    
    @Override
    public final void f(final DataSetObserver dataSetObserver) {
    }
    
    @Override
    public final void g(final DataSetObserver dataSetObserver) {
    }
    
    @Override
    public final void h(final DataSetObserver dataSetObserver) {
    }
    
    @Override
    public final void i(final DataSetObserver dataSetObserver) {
        this.aKn.aDt.registerObserver((Object)dataSetObserver);
    }
    
    @Override
    public final void j(final DataSetObserver dataSetObserver) {
        this.aKn.aDt.unregisterObserver((Object)dataSetObserver);
    }
    
    @Override
    public final void m(final Account account) {
        E.g(bR.mW, "FolderSelectionActivity.switchToDefaultInboxOrChangeAccount() called when NOT expected.", new Object[0]);
    }
    
    @Override
    public final Account oN() {
        return this.aKn.Nc;
    }
    
    @Override
    public final Account[] uo() {
        return new Account[] { this.aKn.Nc };
    }
    
    @Override
    public final boolean wD() {
        return false;
    }
    
    @Override
    public final aj wz() {
        return null;
    }
    
    @Override
    public final int xh() {
        return 0;
    }
}
