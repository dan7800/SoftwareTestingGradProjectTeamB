package com.android.mail.browse;

import com.android.mail.providers.*;
import android.os.*;
import com.google.common.base.*;
import android.content.*;
import android.app.*;

public final class g extends DialogFragment
{
    private Attachment ale;
    private d alf;
    private ProgressDialog all;
    
    static g c(final Attachment attachment) {
        final g g = new g();
        final Bundle arguments = new Bundle(1);
        arguments.putParcelable("attachment", (Parcelable)attachment);
        g.setArguments(arguments);
        return g;
    }
    
    public final boolean d(final Attachment attachment) {
        return this.getDialog() != null && e.b(attachment.uA(), this.ale.uA());
    }
    
    public final boolean isIndeterminate() {
        return this.all != null && this.all.isIndeterminate();
    }
    
    public final void onActivityCreated(final Bundle bundle) {
        super.onActivityCreated(bundle);
        this.alf = new d((Context)this.getActivity());
    }
    
    public final void onCancel(final DialogInterface dialogInterface) {
        this.all = null;
        final ContentValues contentValues = new ContentValues(1);
        contentValues.put("state", 0);
        this.alf.b(this.ale.uri, contentValues);
        super.onCancel(dialogInterface);
    }
    
    public final void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.ale = (Attachment)this.getArguments().getParcelable("attachment");
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        (this.all = new ProgressDialog((Context)this.getActivity())).setTitle(2131296473);
        this.all.setMessage((CharSequence)this.ale.getName());
        this.all.setProgressStyle(1);
        this.all.setIndeterminate(true);
        this.all.setMax(this.ale.size);
        this.all.setProgressNumberFormat((String)null);
        return (Dialog)this.all;
    }
    
    public final void onDismiss(final DialogInterface dialogInterface) {
        this.all = null;
        super.onDismiss(dialogInterface);
    }
    
    public final void setIndeterminate(final boolean indeterminate) {
        if (this.all != null) {
            this.all.setIndeterminate(indeterminate);
        }
    }
    
    public final void setProgress(final int progress) {
        if (this.all != null) {
            this.all.setProgress(progress);
        }
    }
}
