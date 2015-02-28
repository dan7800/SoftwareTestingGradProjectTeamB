package com.android.mail.ui;

import com.android.mail.providers.*;
import android.os.*;
import android.view.*;
import com.android.mail.utils.*;
import android.app.*;
import android.animation.*;
import android.text.*;
import java.util.*;
import android.widget.*;
import android.content.*;

public final class cx implements dE, dy
{
    private MailActivity aCT;
    private z aLK;
    private MaterialSearchActionView aLT;
    private MaterialSearchSuggestionsList aLU;
    private int aLV;
    private int aLW;
    private int aLX;
    private boolean aLY;
    private boolean aLZ;
    private ac aqm;
    
    public cx(final MailActivity act, final ac aqm, final Intent intent, final Bundle bundle) {
        this.aCT = act;
        this.aqm = aqm;
        final boolean b = new Intent("android.speech.action.RECOGNIZE_SPEECH").resolveActivity(this.aCT.getPackageManager()) != null;
        this.aLK = this.aCT.zJ();
        (this.aLU = (MaterialSearchSuggestionsList)this.aCT.findViewById(2131558901)).a(this, this.aLK);
        (this.aLT = (MaterialSearchActionView)this.aCT.findViewById(2131558854)).a(this, intent.getStringExtra("query"), b);
        if (bundle != null && bundle.containsKey("extraSearchViewControllerViewState")) {
            this.aLW = bundle.getInt("extraSearchViewControllerViewState");
        }
        this.aCT.xX().a(this);
    }
    
    private void k(final int alw, final boolean b) {
        int n = 8;
        boolean b2 = true;
        this.aLW = alw;
        final boolean b3 = alw == 2 && this.aqm.cM(this.aLV) && b2;
        final boolean b4 = alw == (b2 ? 1 : 0) && b2;
        final boolean b5 = (b4 || b3) && b2;
        int n2;
        if (b5) {
            n2 = 0;
        }
        else {
            n2 = n;
        }
        if (b4) {
            n = 0;
        }
        if (b) {
            this.q((View)this.aLT, n2);
            this.q((View)this.aLU, n);
        }
        else {
            r((View)this.aLT, n2);
            r((View)this.aLU, n);
        }
        this.aLT.by(b4);
        if (b5 && !this.zM()) {
            b2 = false;
        }
        int n3;
        if (b2) {
            n3 = 2131361994;
        }
        else {
            n3 = 2131361966;
        }
        al.a(this.aCT, n3);
        if (b3) {
            this.zN();
        }
        else {
            if (b4) {
                this.aLT.a(false, 0);
                return;
            }
            if (!dD.dm(this.aLV)) {
                this.aLT.zL();
            }
        }
    }
    
    private void q(final View view, final int n) {
        if (n == 0) {
            view.setVisibility(0);
            view.animate().alpha(1.0f).setDuration(150L).setListener((Animator$AnimatorListener)null);
            return;
        }
        view.animate().alpha(0.0f).setDuration(150L).setListener((Animator$AnimatorListener)new cy(this, view, n));
    }
    
    private static void r(final View view, final int visibility) {
        view.setVisibility(visibility);
        if (visibility == 0) {
            view.setAlpha(1.0f);
            return;
        }
        view.setAlpha(0.0f);
    }
    
    private boolean zM() {
        return this.aqm.zB() && this.aLW == 2 && dD.dm(this.aLV);
    }
    
    private void zN() {
        if (this.aLX != 0) {
            this.aLT.a(this.zM(), this.aLX);
        }
    }
    
    @Override
    public final void cI(final int alv) {
        final int alv2 = this.aLV;
        this.aLV = alv;
        if (this.aqm.cM(this.aLV)) {
            this.k(2, false);
            return;
        }
        if (alv2 == 0) {
            this.k(this.aLW, false);
            return;
        }
        this.k(0, false);
    }
    
    public final void cs(final String s) {
        this.aLU.cr(s);
    }
    
    public final void ct(final String s) {
        final String trim = s.trim();
        if (!TextUtils.isEmpty((CharSequence)trim)) {
            this.aLT.zL();
            this.aqm.ch(trim);
        }
    }
    
    public final void de(final int n) {
        this.k(n, true);
    }
    
    @Override
    public final void j(final int alx, final boolean b) {
        if (this.aLX != alx) {
            this.aLX = alx;
            if (dD.dm(this.aLV)) {
                int n;
                if (this.aqm.cM(this.aLV)) {
                    n = 0;
                }
                else {
                    n = 8;
                }
                final MaterialSearchActionView alt = this.aLT;
                if (b) {
                    n = 4;
                }
                r((View)alt, n);
            }
            this.zN();
        }
    }
    
    public final void n(final Bundle bundle) {
        bundle.putInt("extraSearchViewControllerViewState", this.aLW);
    }
    
    public final void onDestroy() {
        this.aLZ = this.aLY;
        if (!this.aLY) {
            this.aLK.qD();
        }
        this.aCT.xX().b(this);
        this.aCT = null;
        this.aqm = null;
        this.aLT = null;
        this.aLU = null;
    }
    
    public final boolean wb() {
        final boolean cm = this.aqm.cM(this.aLV);
        if (cm && this.aLU.isShown()) {
            this.k(2, true);
            return true;
        }
        if (!cm && this.aLT.isShown()) {
            this.k(0, true);
            return true;
        }
        return false;
    }
    
    public final void zO() {
        if (dD.dm(this.aLV)) {
            this.aCT.setResult(-1);
            this.aCT.finish();
            return;
        }
        this.aLT.zL();
        this.k(0, true);
    }
    
    public final void zP() {
        final Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
        intent.putExtra("android.speech.extra.LANGUAGE", Locale.getDefault().getLanguage());
        try {
            this.aCT.startActivityForResult(intent, 4);
        }
        catch (ActivityNotFoundException ex) {
            Toast.makeText((Context)this.aCT, (CharSequence)this.aCT.getResources().getString(2131296576), 1).show();
        }
    }
}
