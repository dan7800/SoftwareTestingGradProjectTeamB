package com.android.mail.ui;

import android.os.*;
import android.net.*;
import android.text.*;
import android.support.v4.d.*;
import android.view.*;
import android.webkit.*;
import android.print.*;
import android.content.*;
import android.app.*;

public final class HelpFragment extends Fragment
{
    private WebView aKF;
    
    public final void onActivityCreated(final Bundle bundle) {
        super.onActivityCreated(bundle);
        this.aKF.loadUrl(((Uri)this.getActivity().getIntent().getParcelableExtra("help.url")).toString());
    }
    
    public final void onCreateOptionsMenu(final Menu menu, final MenuInflater menuInflater) {
        menuInflater.inflate(2131755020, menu);
        final MenuItem item = menu.findItem(2131559062);
        if (item != null) {
            item.setVisible(!TextUtils.isEmpty((CharSequence)this.getString(2131296709)));
        }
        final MenuItem item2 = menu.findItem(2131559063);
        if (item2 != null) {
            item2.setVisible(a.ay());
        }
    }
    
    public final View onCreateView(final LayoutInflater layoutInflater, final ViewGroup viewGroup, final Bundle bundle) {
        this.setHasOptionsMenu(true);
        final View inflate = layoutInflater.inflate(2130968711, viewGroup, false);
        if (inflate != null) {
            (this.aKF = (WebView)inflate.findViewById(2131558665)).setWebViewClient(new WebViewClient());
            if (bundle != null) {
                this.aKF.restoreState(bundle);
            }
        }
        return inflate;
    }
    
    public final boolean onOptionsItemSelected(final MenuItem menuItem) {
        final int itemId = menuItem.getItemId();
        if (itemId == 16908332) {
            final Activity activity = this.getActivity();
            if (activity != null) {
                activity.finish();
            }
            return true;
        }
        if (itemId == 2131559062) {
            this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.getString(2131296709))));
            return true;
        }
        if (itemId == 2131559063) {
            ((PrintManager)this.getActivity().getSystemService("print")).print(this.getString(2131296678, new Object[] { this.getActivity().getActionBar().getTitle().toString() }), this.aKF.createPrintDocumentAdapter(), new PrintAttributes$Builder().build());
            return true;
        }
        if (itemId == 2131559064) {
            new ce().show(this.getFragmentManager(), "copyright");
            return true;
        }
        if (itemId == 2131559066) {
            final Activity activity2 = this.getActivity();
            ((Context)activity2).startActivity(new Intent((Context)activity2, (Class)cn.class));
            return true;
        }
        if (itemId == 2131559065) {
            this.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(this.getString(2131296713))));
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }
}
