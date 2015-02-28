package com.google.android.gm.welcome;

import android.app.*;
import com.android.mail.utils.*;
import android.content.*;
import com.android.mail.a.*;
import android.view.*;
import android.support.v4.view.*;
import android.os.*;
import java.util.*;
import android.content.res.*;
import android.widget.*;

public final class o extends Fragment implements View$OnClickListener, View$OnFocusChangeListener
{
    private boolean bsn;
    
    private void IT() {
        final FragmentManager fragmentManager = this.getFragmentManager();
        if (fragmentManager.findFragmentByTag("error-dialog-tag") == null) {
            new c().show(fragmentManager, "error-dialog-tag");
        }
    }
    
    public final void onActivityResult(final int n, final int n2, final Intent intent) {
        if (n == 1 && n2 == 1) {
            this.IT();
        }
        super.onActivityResult(n, n2, intent);
    }
    
    public final void onClick(final View view) {
        final int id = view.getId();
        if (id == 2131558990 || id == 2131558994 || id == 2131558991) {
            if (ag.aN((Context)this.getActivity())) {
                final Intent intent = new Intent((Context)this.getActivity(), (Class)WelcomeVideoActivity.class);
                intent.putExtra("gmail_new_user", this.bsn);
                this.startActivityForResult(intent, 1);
                a.oq().a("welcome_tour", "click_button", "play_video", 1L);
                return;
            }
            this.IT();
            a.oq().a("welcome_tour", "click_button", "play_video", 0L);
        }
    }
    
    public final View onCreateView(final LayoutInflater layoutInflater, final ViewGroup viewGroup, final Bundle bundle) {
        boolean b = true;
        this.bsn = (this.getActivity().getIntent().getExtras().getInt("tour-highest-version-seen") == -1 && b);
        int n;
        int n2;
        if (this.bsn) {
            n = 2131297206;
            n2 = 2131297207;
        }
        else {
            n = 2131297208;
            n2 = 2131297209;
        }
        final Resources resources = this.getResources();
        final View inflate = layoutInflater.inflate(2130968780, viewGroup, false);
        ((TextView)inflate.findViewById(2131558992)).setText(resources.getText(n));
        ((TextView)inflate.findViewById(2131558993)).setText(resources.getText(n2));
        final View viewById = inflate.findViewById(2131558990);
        ad.c(viewById, 2);
        if (!com.google.android.gsf.c.a(this.getActivity().getContentResolver(), "gmail_welcome_tour_video_enabled", b) || ag.b(this.getResources()) || (Build$VERSION.SDK_INT < 16 && !Locale.ENGLISH.getLanguage().equals(this.getResources().getConfiguration().locale.getLanguage()))) {
            b = false;
        }
        if (b) {
            viewById.setOnClickListener((View$OnClickListener)this);
            inflate.findViewById(2131558994).setOnClickListener((View$OnClickListener)this);
            inflate.findViewById(2131558991).setOnClickListener((View$OnClickListener)this);
            inflate.findViewById(2131558991).setOnFocusChangeListener((View$OnFocusChangeListener)this);
            return inflate;
        }
        inflate.findViewById(2131558994).setVisibility(8);
        inflate.findViewById(2131558991).setVisibility(8);
        return inflate;
    }
    
    public final void onFocusChange(final View view, final boolean b) {
        if (view.getId() == 2131558991) {
            final ImageView imageView = (ImageView)view;
            if (!b) {
                imageView.clearColorFilter();
                return;
            }
            imageView.setColorFilter(-3355444);
        }
    }
}
