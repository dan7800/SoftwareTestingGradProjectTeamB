package com.android.mail.ui;

import com.android.mail.providers.*;
import com.android.mail.utils.*;
import android.content.*;
import java.util.*;
import android.util.*;
import android.view.*;
import android.widget.*;

public class MaterialSearchSuggestionsList extends LinearLayout implements View$OnClickListener, AdapterView$OnItemClickListener
{
    private static final String mW;
    private cx aLB;
    private z aLK;
    private List<cw> aLL;
    private String aLM;
    private cu aLN;
    private cv aLO;
    
    static {
        mW = D.AU();
    }
    
    public MaterialSearchSuggestionsList(final Context context) {
        super(context);
        this.aLL = new ArrayList<cw>();
    }
    
    public MaterialSearchSuggestionsList(final Context context, final AttributeSet set) {
        super(context, set);
        this.aLL = new ArrayList<cw>();
    }
    
    public final void a(final cx alb, final z alk) {
        this.aLB = alb;
        this.aLK = alk;
    }
    
    public final void cr(final String alm) {
        this.aLM = alm;
        if (this.aLO != null) {
            this.aLO.cancel(true);
        }
        (this.aLO = new cv(this, (byte)0)).execute((Object[])new String[] { alm });
    }
    
    public void onClick(final View view) {
        this.aLB.de(2);
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        final ListView listView = (ListView)this.findViewById(2131558857);
        listView.setOnItemClickListener((AdapterView$OnItemClickListener)this);
        this.findViewById(2131558902).setOnClickListener((View$OnClickListener)this);
        listView.setAdapter((ListAdapter)(this.aLN = new cu(this, this.getContext())));
    }
    
    public void onItemClick(final AdapterView<?> adapterView, final View view, final int n, final long n2) {
        this.aLB.ct(this.aLL.get(n).aLR);
    }
    
    public void setVisibility(final int visibility) {
        if (!this.isShown() && visibility == 0) {
            this.cr(this.aLM);
        }
        super.setVisibility(visibility);
    }
}
