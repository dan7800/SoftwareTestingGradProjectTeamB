package com.android.email.activity.setup;

import com.android.emailcommon.mail.*;
import android.text.*;
import com.android.mail.utils.*;
import android.os.*;
import android.content.*;
import android.app.*;

public final class az extends DialogFragment
{
    public static int a(final MessagingException ex) {
        switch (ex.lr()) {
            default: {
                return 0;
            }
            case 5:
            case 11: {
                return 1;
            }
            case 16: {
                return 2;
            }
        }
    }
    
    public static String a(final Context context, final MessagingException ex) {
        final String message = ex.getMessage();
        String s;
        if (message != null) {
            s = message.trim();
        }
        else {
            s = message;
        }
        int n = 0;
        switch (ex.lr()) {
            default: {
                if (TextUtils.isEmpty((CharSequence)s)) {
                    n = 2131296882;
                    break;
                }
                n = 2131296883;
                break;
            }
            case 10: {
                if (TextUtils.isEmpty((CharSequence)s)) {
                    n = 2131296877;
                    break;
                }
                n = 2131296878;
                break;
            }
            case 5: {
                n = 2131296874;
                break;
            }
            case 11: {
                n = 2131296876;
                break;
            }
            case 13: {
                n = 2131296881;
                break;
            }
            case 1: {
                n = 2131296887;
                break;
            }
            case 2: {
                n = 2131296884;
                break;
            }
            case 3: {
                n = 2131296885;
                break;
            }
            case 8: {
                final String[] array = (String[])ex.ls();
                if (array == null) {
                    E.e(E.TAG, "No data for unsupported policies?", new Object[0]);
                    n = 2131296892;
                    break;
                }
                final StringBuilder sb = new StringBuilder();
                final int length = array.length;
                int i = 0;
                int n2 = 1;
                while (i < length) {
                    final String s2 = array[i];
                    if (n2 != 0) {
                        n2 = 0;
                    }
                    else {
                        sb.append(", ");
                    }
                    sb.append(s2);
                    ++i;
                }
                s = sb.toString();
                n = 2131296892;
                break;
            }
            case 14: {
                n = 2131296889;
                break;
            }
            case 9: {
                n = 2131296888;
                break;
            }
            case 4: {
                n = 2131296886;
                break;
            }
            case 16: {
                n = 2131296879;
                break;
            }
            case 17: {
                n = 2131296880;
                break;
            }
        }
        if (TextUtils.isEmpty((CharSequence)s)) {
            return context.getString(n);
        }
        return context.getString(n, new Object[] { s });
    }
    
    public static az b(final int n, final String s) {
        final az az = new az();
        final Bundle arguments = new Bundle(2);
        arguments.putString("CheckSettingsErrorDialog.Message", s);
        arguments.putInt("CheckSettingsErrorDialog.ExceptionId", n);
        az.setArguments(arguments);
        return az;
    }
    
    public final void onCancel(final DialogInterface dialogInterface) {
        super.onCancel(dialogInterface);
        ((aD)this.getActivity()).hH();
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        final Activity activity = this.getActivity();
        final Bundle arguments = this.getArguments();
        final String string = arguments.getString("CheckSettingsErrorDialog.Message");
        final int int1 = arguments.getInt("CheckSettingsErrorDialog.ExceptionId");
        this.setCancelable(true);
        final AlertDialog$Builder setMessage = new AlertDialog$Builder((Context)activity).setMessage((CharSequence)string);
        if (int1 == 1) {
            setMessage.setTitle(2131296875);
        }
        else {
            setMessage.setIconAttribute(16843605).setTitle((CharSequence)((Context)activity).getString(2131296864));
        }
        if (int1 == 2) {
            setMessage.setPositiveButton((CharSequence)((Context)activity).getString(17039370), (DialogInterface$OnClickListener)new aA(this));
            setMessage.setNegativeButton((CharSequence)((Context)activity).getString(17039360), (DialogInterface$OnClickListener)new aB(this));
        }
        else {
            setMessage.setPositiveButton((CharSequence)((Context)activity).getString(2131296904), (DialogInterface$OnClickListener)new aC(this));
        }
        return (Dialog)setMessage.create();
    }
}
