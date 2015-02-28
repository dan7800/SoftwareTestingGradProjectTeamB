package com.google.android.gms.internal;

import android.content.*;
import com.google.android.gms.common.api.*;
import com.google.android.gms.common.internal.*;
import com.google.android.gms.feedback.*;
import android.graphics.*;
import java.io.*;
import android.text.*;
import android.util.*;
import android.os.*;

public final class aq extends f<ar>
{
    public aq(final Context context, final Looper looper, final com.google.android.gms.common.api.p p4, final q q) {
        super(context, looper, p4, q, (String[])null);
    }
    
    @Override
    protected final String La() {
        return "com.google.android.gms.feedback.internal.IFeedbackService";
    }
    
    @Override
    protected final String Lb() {
        return "com.google.android.gms.feedback.internal.IFeedbackService";
    }
    
    @Override
    protected final void a(final B b, final j j) {
        b.m(j, 6174000, this.getContext().getPackageName(), new Bundle());
    }
    
    public final boolean a(final e e) {
        try {
            final ar ar = this.Le();
            final ErrorReport errorReport = new ErrorReport();
            if (e != null) {
                if (e.Mj() != null && e.Mj().size() > 0) {
                    errorReport.bKa = e.Mj();
                }
                if (e.Mh() != null) {
                    final ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    e.Mh().compress(Bitmap$CompressFormat.JPEG, 70, (OutputStream)byteArrayOutputStream);
                    errorReport.bJT = byteArrayOutputStream.toByteArray();
                }
                if (!TextUtils.isEmpty((CharSequence)e.Mi())) {
                    errorReport.blK = e.Mi();
                }
                if (!TextUtils.isEmpty((CharSequence)e.getDescription())) {
                    errorReport.description = e.getDescription();
                }
                if (e.Ml() != null) {
                    errorReport.throwMethodName = e.Ml().throwMethodName;
                    errorReport.throwLineNumber = e.Ml().throwLineNumber;
                    errorReport.throwClassName = e.Ml().throwClassName;
                    errorReport.stackTrace = e.Ml().stackTrace;
                    errorReport.exceptionClassName = e.Ml().exceptionClassName;
                    errorReport.exceptionMessage = e.Ml().exceptionMessage;
                    errorReport.throwFileName = e.Ml().throwFileName;
                }
                if (!TextUtils.isEmpty((CharSequence)e.Mk())) {
                    errorReport.bKg = e.Mk();
                }
                if (!TextUtils.isEmpty((CharSequence)e.Mm())) {
                    errorReport.bKf = e.Mm();
                }
            }
            ar.a(errorReport);
            return true;
        }
        catch (RemoteException ex) {
            if (ex.getMessage() != null) {
                Log.w("FeedbackClientImpl", ex.getMessage());
            }
            else {
                Log.w("FeedbackClientImpl", "Remote Exception: null");
            }
            return false;
        }
    }
}
