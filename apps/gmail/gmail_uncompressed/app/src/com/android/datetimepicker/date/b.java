package com.android.datetimepicker.date;

import java.text.*;
import android.widget.*;
import android.text.format.*;
import android.content.*;
import android.animation.*;
import java.util.*;
import android.os.*;
import android.view.*;
import android.util.*;
import com.android.datetimepicker.*;
import android.view.animation.*;
import android.app.*;
import android.content.res.*;

public final class b extends DialogFragment implements View$OnClickListener, a
{
    private static SimpleDateFormat HM;
    private static SimpleDateFormat HN;
    private final Calendar HO;
    private e HP;
    private HashSet<d> HQ;
    private AccessibleDateAnimator HR;
    private TextView HS;
    private LinearLayout HT;
    private TextView HU;
    private TextView HV;
    private TextView HW;
    private f HX;
    private q HY;
    private Button HZ;
    private int Ia;
    private int Ib;
    private int Ic;
    private int Id;
    private Calendar If;
    private Calendar Ig;
    private com.android.datetimepicker.a Ih;
    private boolean Ii;
    private String Ij;
    private String Ik;
    private String Il;
    private String Im;
    
    static {
        b.HM = new SimpleDateFormat("yyyy", Locale.getDefault());
        b.HN = new SimpleDateFormat("dd", Locale.getDefault());
    }
    
    public b() {
        this.HO = Calendar.getInstance();
        this.HQ = new HashSet<d>();
        this.Ia = -1;
        this.Ib = this.HO.getFirstDayOfWeek();
        this.Ic = 1900;
        this.Id = 2100;
        this.Ii = true;
    }
    
    private void O(final boolean b) {
        if (this.HS != null) {
            this.HS.setText((CharSequence)this.HO.getDisplayName(7, 2, Locale.getDefault()).toUpperCase(Locale.getDefault()));
        }
        this.HU.setText((CharSequence)this.HO.getDisplayName(2, 1, Locale.getDefault()).toUpperCase(Locale.getDefault()));
        this.HV.setText((CharSequence)b.HN.format(this.HO.getTime()));
        this.HW.setText((CharSequence)b.HM.format(this.HO.getTime()));
        final long timeInMillis = this.HO.getTimeInMillis();
        this.HR.d(timeInMillis);
        this.HT.setContentDescription((CharSequence)DateUtils.formatDateTime((Context)this.getActivity(), timeInMillis, 24));
        if (b) {
            i.a((View)this.HR, DateUtils.formatDateTime((Context)this.getActivity(), timeInMillis, 20));
        }
    }
    
    public static b a(final e hp, final int n, final int n2, final int n3) {
        final b b = new b();
        b.HP = hp;
        b.HO.set(1, n);
        b.HO.set(2, n2);
        b.HO.set(5, n3);
        return b;
    }
    
    private void aF(final int n) {
        final long timeInMillis = this.HO.getTimeInMillis();
        switch (n) {
            default: {}
            case 0: {
                final ObjectAnimator a = i.a((View)this.HT, 0.9f, 1.05f);
                if (this.Ii) {
                    a.setStartDelay(500L);
                    this.Ii = false;
                }
                this.HX.gm();
                if (this.Ia != n) {
                    this.HT.setSelected(true);
                    this.HW.setSelected(false);
                    this.HR.setDisplayedChild(0);
                    this.Ia = n;
                }
                a.start();
                this.HR.setContentDescription((CharSequence)(this.Ij + ": " + DateUtils.formatDateTime((Context)this.getActivity(), timeInMillis, 16)));
                i.a((View)this.HR, this.Ik);
            }
            case 1: {
                final ObjectAnimator a2 = i.a((View)this.HW, 0.85f, 1.1f);
                if (this.Ii) {
                    a2.setStartDelay(500L);
                    this.Ii = false;
                }
                this.HY.gm();
                if (this.Ia != n) {
                    this.HT.setSelected(false);
                    this.HW.setSelected(true);
                    this.HR.setDisplayedChild(1);
                    this.Ia = n;
                }
                a2.start();
                this.HR.setContentDescription((CharSequence)(this.Il + ": " + (Object)b.HM.format(timeInMillis)));
                i.a((View)this.HR, this.Im);
            }
        }
    }
    
    private void gl() {
        final Iterator<d> iterator = this.HQ.iterator();
        while (iterator.hasNext()) {
            iterator.next().gm();
        }
    }
    
    public final void a(final d d) {
        this.HQ.add(d);
    }
    
    public final void a(final e hp) {
        this.HP = hp;
    }
    
    public final void aE(final int n) {
        final int value = this.HO.get(2);
        final int value2 = this.HO.get(5);
        final int y = i.y(value, n);
        if (value2 > y) {
            this.HO.set(5, y);
        }
        this.HO.set(1, n);
        this.gl();
        this.aF(0);
        this.O(true);
    }
    
    public final void c(final int n, final int n2, final int n3) {
        this.HO.set(1, n);
        this.HO.set(2, n2);
        this.HO.set(5, n3);
        this.gl();
        this.O(true);
    }
    
    public final void ge() {
        this.Ih.ge();
    }
    
    public final int getFirstDayOfWeek() {
        return this.Ib;
    }
    
    public final j gf() {
        return new j(this.HO);
    }
    
    public final int gg() {
        return this.Ic;
    }
    
    public final int gh() {
        return this.Id;
    }
    
    public final Calendar gi() {
        return this.If;
    }
    
    public final Calendar gj() {
        return this.Ig;
    }
    
    public final void gk() {
        this.Ic = 1970;
        this.Id = 2036;
        if (this.HX != null) {
            this.HX.gn();
        }
    }
    
    public final void onClick(final View view) {
        this.Ih.ge();
        if (view.getId() == com.android.datetimepicker.f.HA) {
            this.aF(1);
        }
        else if (view.getId() == com.android.datetimepicker.f.Hz) {
            this.aF(0);
        }
    }
    
    public final void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.getActivity().getWindow().setSoftInputMode(3);
        if (bundle != null) {
            this.HO.set(1, bundle.getInt("year"));
            this.HO.set(2, bundle.getInt("month"));
            this.HO.set(5, bundle.getInt("day"));
        }
    }
    
    public final View onCreateView(final LayoutInflater layoutInflater, final ViewGroup viewGroup, final Bundle bundle) {
        Log.d("DatePickerDialog", "onCreateView: ");
        this.getDialog().getWindow().requestFeature(1);
        final View inflate = layoutInflater.inflate(g.HC, (ViewGroup)null);
        this.HS = (TextView)inflate.findViewById(com.android.datetimepicker.f.Hx);
        (this.HT = (LinearLayout)inflate.findViewById(com.android.datetimepicker.f.Hz)).setOnClickListener((View$OnClickListener)this);
        this.HU = (TextView)inflate.findViewById(com.android.datetimepicker.f.Hy);
        this.HV = (TextView)inflate.findViewById(com.android.datetimepicker.f.Hw);
        (this.HW = (TextView)inflate.findViewById(com.android.datetimepicker.f.HA)).setOnClickListener((View$OnClickListener)this);
        int n;
        int n2;
        int n3;
        if (bundle != null) {
            this.Ib = bundle.getInt("week_start");
            this.Ic = bundle.getInt("year_start");
            this.Id = bundle.getInt("year_end");
            final int int1 = bundle.getInt("current_view");
            final int int2 = bundle.getInt("list_position");
            final int int3 = bundle.getInt("list_position_offset");
            n = int2;
            n2 = int3;
            n3 = int1;
        }
        else {
            n = -1;
            n3 = 0;
            n2 = 0;
        }
        final Activity activity = this.getActivity();
        this.HX = new n((Context)activity, this);
        this.HY = new q((Context)activity, this);
        final Resources resources = this.getResources();
        this.Ij = resources.getString(h.HF);
        this.Ik = resources.getString(h.HI);
        this.Il = resources.getString(h.HK);
        this.Im = resources.getString(h.HJ);
        (this.HR = (AccessibleDateAnimator)inflate.findViewById(com.android.datetimepicker.f.Hv)).addView((View)this.HX);
        this.HR.addView((View)this.HY);
        this.HR.d(this.HO.getTimeInMillis());
        final AlphaAnimation inAnimation = new AlphaAnimation(0.0f, 1.0f);
        ((Animation)inAnimation).setDuration(300L);
        this.HR.setInAnimation((Animation)inAnimation);
        final AlphaAnimation outAnimation = new AlphaAnimation(1.0f, 0.0f);
        ((Animation)outAnimation).setDuration(300L);
        this.HR.setOutAnimation((Animation)outAnimation);
        (this.HZ = (Button)inflate.findViewById(com.android.datetimepicker.f.HB)).setOnClickListener((View$OnClickListener)new c(this));
        this.O(false);
        this.aF(n3);
        if (n != -1) {
            if (n3 == 0) {
                this.HX.aG(n);
            }
            else if (n3 == 1) {
                this.HY.z(n, n2);
            }
        }
        this.Ih = new com.android.datetimepicker.a((Context)activity);
        return inflate;
    }
    
    public final void onPause() {
        super.onPause();
        this.Ih.stop();
    }
    
    public final void onResume() {
        super.onResume();
        this.Ih.start();
    }
    
    public final void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("year", this.HO.get(1));
        bundle.putInt("month", this.HO.get(2));
        bundle.putInt("day", this.HO.get(5));
        bundle.putInt("week_start", this.Ib);
        bundle.putInt("year_start", this.Ic);
        bundle.putInt("year_end", this.Id);
        bundle.putInt("current_view", this.Ia);
        int n = -1;
        if (this.Ia == 0) {
            n = this.HX.gp();
        }
        else if (this.Ia == 1) {
            n = this.HY.getFirstVisiblePosition();
            bundle.putInt("list_position_offset", this.HY.gw());
        }
        bundle.putInt("list_position", n);
    }
    
    public final void setFirstDayOfWeek(final int ib) {
        if (ib <= 0 || ib > 7) {
            throw new IllegalArgumentException("Value must be between Calendar.SUNDAY and Calendar.SATURDAY");
        }
        this.Ib = ib;
        if (this.HX != null) {
            this.HX.gn();
        }
    }
}
