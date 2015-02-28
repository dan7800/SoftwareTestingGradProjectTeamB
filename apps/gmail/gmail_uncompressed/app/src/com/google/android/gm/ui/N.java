package com.google.android.gm.ui;

import android.content.*;
import com.android.mail.providers.*;
import java.util.*;
import com.android.mail.ui.*;
import android.view.*;
import com.google.android.gm.ads.*;

public final class n extends aF
{
    @Override
    public final ArrayList<aL> a(final Context context, final as as, final Account account) {
        final ArrayList<aL> a = super.a(context, as, account);
        if ("com.google".equals(account.getType())) {
            final LayoutInflater from = LayoutInflater.from(context);
            final SectionedInboxTeaserView sectionedInboxTeaserView = (SectionedInboxTeaserView)from.inflate(2130968746, (ViewGroup)null);
            sectionedInboxTeaserView.a(account, as.xZ());
            a.add(sectionedInboxTeaserView);
            final AdTeaserView adTeaserView = (AdTeaserView)from.inflate(2130968629, (ViewGroup)null);
            adTeaserView.a(as, account);
            a.add(adTeaserView);
            final a a2 = new a(context);
            a2.z(account);
            a.add(a2);
        }
        return a;
    }
}
