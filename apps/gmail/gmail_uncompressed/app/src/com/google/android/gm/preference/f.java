package com.google.android.gm.preference;

import java.util.*;
import android.os.*;
import com.google.android.gm.*;
import android.content.*;
import android.widget.*;
import android.graphics.drawable.*;
import android.app.*;

public final class f extends DialogFragment implements DialogInterface$OnClickListener
{
    private final List<Map<String, Object>> bbv;
    private int bbw;
    private BaseAdapter bbx;
    
    public f() {
        this.bbv = new ArrayList<Map<String, Object>>();
        this.bbw = 0;
    }
    
    public static DialogFragment DI() {
        return new f();
    }
    
    public final void onClick(final DialogInterface dialogInterface, final int bbw) {
        switch (bbw) {
            default: {}
            case -1: {
                switch (this.bbw) {
                    default: {
                        return;
                    }
                    case 0: {
                        a.a(this.getActivity(), null);
                        return;
                    }
                    case 1:
                    case 2: {
                        final Intent intent = new Intent(this.getString(2131296993));
                        if (this.bbw == 2) {
                            intent.putExtra("FLOW_ACCOUNT_TYPE", this.getString(2131296984));
                        }
                        intent.setPackage(this.getActivity().getPackageName());
                        this.startActivity(intent);
                        return;
                    }
                }
                break;
            }
            case 0:
            case 1:
            case 2: {
                this.bbw = bbw;
                final Iterator<Map<String, Object>> iterator = this.bbv.iterator();
                int n = 0;
                while (iterator.hasNext()) {
                    iterator.next().put("option_selected", n == this.bbw);
                    ++n;
                }
                this.bbx.notifyDataSetChanged();
            }
        }
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        this.bbv.clear();
        if (bundle != null) {
            this.bbw = bundle.getInt("EmailGmailDisambiguationDialog.SelectedProtocol", 0);
        }
        final android.support.v4.f.a<String, Boolean> a = new android.support.v4.f.a<String, Boolean>((byte)0);
        a.put("option_selected", this.bbw == 0);
        a.put("option_title", (Boolean)this.getString(2131297226));
        a.put("option_subtitle", (Boolean)this.getString(2131297227));
        this.bbv.add((Map<String, Object>)a);
        final android.support.v4.f.a<String, String> a2 = new android.support.v4.f.a<String, String>((byte)0);
        a2.put("option_selected", this.bbw == 1);
        a2.put("option_title", this.getString(2131297228));
        a2.put("option_subtitle", this.getString(2131297229));
        this.bbv.add((Map<String, Object>)a2);
        if (v.CJ()) {
            final android.support.v4.f.a<String, String> a3 = new android.support.v4.f.a<String, String>((byte)0);
            a3.put("option_selected", this.bbw == 2);
            a3.put("option_title", this.getString(2131297230));
            a3.put("option_subtitle", this.getString(2131297231));
            this.bbv.add((Map<String, Object>)a3);
        }
        this.bbx = (BaseAdapter)new SimpleAdapter((Context)this.getActivity(), (List)this.bbv, 2130968690, new String[] { "option_selected", "option_title", "option_subtitle" }, new int[] { 2131558808, 2131558809, 2131558810 });
        final AlertDialog create = new AlertDialog$Builder((Context)this.getActivity()).setTitle(2131297225).setSingleChoiceItems((ListAdapter)this.bbx, 0, (DialogInterface$OnClickListener)this).setPositiveButton(2131296555, (DialogInterface$OnClickListener)this).setNegativeButton(2131296556, (DialogInterface$OnClickListener)this).create();
        create.getListView().setDivider((Drawable)null);
        return (Dialog)create;
    }
    
    public final void onSaveInstanceState(final Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("EmailGmailDisambiguationDialog.SelectedProtocol", this.bbw);
    }
}
