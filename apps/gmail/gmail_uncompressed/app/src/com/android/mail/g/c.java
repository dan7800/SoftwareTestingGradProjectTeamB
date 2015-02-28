package com.android.mail.g;

import com.android.ex.photo.*;
import android.database.*;
import android.view.*;
import android.widget.*;
import java.util.*;
import com.android.mail.browse.*;
import com.android.mail.providers.*;
import android.os.*;
import com.android.mail.utils.*;
import java.io.*;
import android.content.*;

public class c extends k
{
    private static final String mW;
    protected a arX;
    private boolean asa;
    private final e axp;
    private String axq;
    private MenuItem axr;
    private MenuItem axs;
    private MenuItem axt;
    private MenuItem axu;
    private MenuItem axv;
    private MenuItem axw;
    private MenuItem axx;
    private Menu axy;
    
    static {
        mW = D.AU();
    }
    
    public c(final e axp) {
        super(axp);
        this.axp = axp;
    }
    
    private void f(final Attachment attachment) {
        if (attachment != null && attachment.ur()) {
            this.arX.a(attachment);
            this.arX.bO(1);
        }
    }
    
    private void ti() {
        final Attachment tj = this.tj();
        if (tj != null && tj.ur()) {
            this.arX.a(tj);
            this.arX.oD();
            this.arX.bO(tj.ayN);
        }
    }
    
    @Override
    public final void a(final com.android.ex.photo.b.a a) {
        super.a(a);
        final Attachment tj = this.tj();
        if (tj.state == 5) {
            this.arX.a(tj);
            this.arX.bO(tj.ayN);
        }
    }
    
    @Override
    public final void a(final com.android.ex.photo.b.a a, final Cursor cursor) {
        super.a(a, cursor);
        final Attachment attachment = new Attachment(cursor);
        final com.android.ex.photo.views.e oc = a.oc();
        final TextView od = a.od();
        final ImageView oe = a.oe();
        if (attachment.uw()) {
            oc.setMax(attachment.size);
            oc.setProgress(attachment.ayO);
            oc.setIndeterminate(false);
        }
        else if (a.of()) {
            oc.setIndeterminate(true);
        }
        if (attachment.ux()) {
            od.setText(2131296589);
            od.setVisibility(0);
            oe.setVisibility(0);
            oe.setOnClickListener((View$OnClickListener)new d(this, od, oe));
            oc.setVisibility(8);
        }
    }
    
    @Override
    public final boolean nQ() {
        this.nR();
        return true;
    }
    
    @Override
    public final void nR() {
        boolean enabled = true;
        final Attachment tj = this.tj();
        if (tj != null && this.axr != null && this.axt != null) {
            this.axr.setEnabled(!tj.ut() && tj.ur() && !tj.uu() && enabled);
            final boolean us = tj.us();
            this.axt.setEnabled(us);
            this.axv.setEnabled(us);
            this.axw.setEnabled(tj.ur() && tj.ut() && enabled);
            final MenuItem axx = this.axx;
            while (true) {
                Label_0386: {
                    if (this.asa) {
                        break Label_0386;
                    }
                    final a arX = this.arX;
                    if (!a.y(this.axq, tj.getContentType())) {
                        break Label_0386;
                    }
                    final boolean visible = enabled;
                    axx.setVisible(visible);
                    final Cursor cursor = this.getCursor();
                    List<Attachment> list;
                    if (cursor == null || cursor.isClosed() || !cursor.moveToFirst()) {
                        list = null;
                    }
                    else {
                        final ArrayList<Attachment> list2 = new ArrayList<Attachment>();
                        do {
                            list2.add(new Attachment(cursor));
                        } while (cursor.moveToNext());
                        list = list2;
                    }
                    Label_0328: {
                        if (list != null) {
                            while (true) {
                                for (final Attachment attachment : list) {
                                    if (!attachment.ut() && attachment.ur() && !attachment.uu()) {
                                        final boolean enabled2 = enabled;
                                        this.axs.setEnabled(enabled2);
                                        final Iterator<Attachment> iterator2 = list.iterator();
                                        while (iterator2.hasNext()) {
                                            if (!iterator2.next().us()) {
                                                enabled = false;
                                                break;
                                            }
                                        }
                                        this.axu.setEnabled(enabled);
                                        break Label_0328;
                                    }
                                }
                                final boolean enabled2 = false;
                                continue;
                            }
                        }
                    }
                    if (!ag.Be()) {
                        this.axt.setVisible(false);
                        this.axu.setVisible(false);
                    }
                    if (!ag.Bg()) {
                        this.axv.setVisible(false);
                        return;
                    }
                    return;
                }
                final boolean visible = false;
                continue;
            }
        }
        if (this.axy != null) {
            this.axy.setGroupEnabled(2131559074, false);
        }
    }
    
    @Override
    public final void nU() {
        super.nU();
        final Attachment tj = this.tj();
        final com.android.ex.photo.a nh = this.axp.nH();
        final String e = com.android.mail.utils.b.E(this.axp.getContext(), tj.size);
        if (tj.uu()) {
            nh.setSubtitle(this.axp.getResources().getString(2131296475, new Object[] { e }));
        }
        else if (tj.ut() && tj.ayN == 1) {
            nh.setSubtitle(this.axp.getResources().getString(2131296481));
        }
        else {
            nh.setSubtitle(e);
        }
        this.nR();
    }
    
    @Override
    public void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        (this.arX = new a(this.axp.getContext(), null)).a(this.axp.getFragmentManager());
        final Intent intent = this.axp.getIntent();
        this.axq = intent.getStringExtra(com.android.mail.g.b.axn);
        final String stringExtra = intent.getStringExtra(com.android.mail.g.b.axm);
        final Message message = (Message)intent.getParcelableExtra(com.android.mail.g.b.EXTRA_MESSAGE);
        this.asa = intent.getBooleanExtra(com.android.mail.g.b.axo, false);
        this.arX.be(stringExtra);
        this.arX.a(message);
    }
    
    @Override
    public final boolean onCreateOptionsMenu(final Menu axy) {
        this.axp.getMenuInflater().inflate(2131755024, axy);
        this.axy = axy;
        this.axr = this.axy.findItem(2131559075);
        this.axs = this.axy.findItem(2131559076);
        this.axt = this.axy.findItem(2131559077);
        this.axu = this.axy.findItem(2131559078);
        this.axv = this.axy.findItem(2131559079);
        this.axw = this.axy.findItem(2131559080);
        this.axx = this.axy.findItem(2131559068);
        return true;
    }
    
    @Override
    public final boolean onOptionsItemSelected(final MenuItem menuItem) {
        int n = -1;
        final int itemId = menuItem.getItemId();
        com.android.mail.a.a.oq().b("menu_item", itemId, "photo_viewer");
        if (itemId == 16908332) {
            this.axp.finish();
        }
        else if (itemId == 2131559075) {
            this.f(this.tj());
        }
        else if (itemId == 2131559076) {
            final Cursor nv = this.nV();
            if (nv != null) {
                while (true) {
                    ++n;
                    if (!nv.moveToPosition(n)) {
                        break;
                    }
                    this.f(new Attachment(nv));
                }
            }
        }
        else if (itemId == 2131559077) {
            final Attachment tj = this.tj();
            if (tj != null) {
                this.arX.a(tj);
                this.arX.oG();
            }
        }
        else if (itemId == 2131559078) {
            final Cursor nv2 = this.nV();
            if (nv2 != null) {
                final ArrayList<Parcelable> list = new ArrayList<Parcelable>();
                while (true) {
                    ++n;
                    if (!nv2.moveToPosition(n)) {
                        break;
                    }
                    list.add((Parcelable)ag.C(new Attachment(nv2).ayP));
                }
                this.arX.c(list);
            }
        }
        else if (itemId == 2131559079) {
            final Attachment tj2 = this.tj();
            final Context context = this.axp.getContext();
            final android.support.v4.d.a a = new android.support.v4.d.a(context);
            try {
                a.az();
                a.a(com.android.mail.j.b.t(context, tj2.getName()), tj2.ayP);
            }
            catch (FileNotFoundException ex) {
                E.e(c.mW, ex, "Can't print photo", new Object[0]);
            }
        }
        else if (itemId == 2131559080) {
            this.ti();
        }
        else {
            if (itemId != 2131559068) {
                return super.onOptionsItemSelected(menuItem);
            }
            this.arX.a(this.tj());
            this.arX.oH();
        }
        return true;
    }
    
    protected final Attachment tj() {
        final Cursor nv = this.nV();
        if (nv == null) {
            return null;
        }
        return new Attachment(nv);
    }
    
    public final e tk() {
        return this.axp;
    }
}
