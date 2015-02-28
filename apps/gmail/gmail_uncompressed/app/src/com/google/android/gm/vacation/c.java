package com.google.android.gm.vacation;

import android.os.*;
import android.app.*;
import android.content.*;
import java.util.*;
import android.widget.*;

public final class c extends DialogFragment
{
    private DatePickerDialog$OnDateSetListener bro;
    
    public static c h(final int n, final int n2, final int n3) {
        final c c = new c();
        final Bundle arguments = new Bundle(3);
        arguments.putInt("year", n);
        arguments.putInt("month", n2);
        arguments.putInt("day", n3);
        c.setArguments(arguments);
        return c;
    }
    
    public final void a(final DatePickerDialog$OnDateSetListener bro) {
        this.bro = bro;
    }
    
    public final Dialog onCreateDialog(final Bundle bundle) {
        final Bundle arguments = this.getArguments();
        final DatePickerDialog datePickerDialog = new DatePickerDialog((Context)this.getActivity(), this.bro, arguments.getInt("year"), arguments.getInt("month"), arguments.getInt("day"));
        final DatePicker datePicker = datePickerDialog.getDatePicker();
        final Calendar instance = Calendar.getInstance();
        instance.set(1970, 0, 1);
        datePicker.setMinDate(instance.getTimeInMillis());
        instance.set(2036, 11, 31);
        datePicker.setMaxDate(instance.getTimeInMillis());
        return (Dialog)datePickerDialog;
    }
}
