package com.android.email.activity.setup;

import android.widget.*;

public final class bd
{
    public final String label;
    public final Object value;
    
    public bd(final Object value, final String label) {
        this.value = value;
        this.label = label;
    }
    
    public static void a(final Spinner spinner, final Object o) {
        for (int count = spinner.getCount(), i = 0; i < count; ++i) {
            if (((bd)spinner.getItemAtPosition(i)).value.equals(o)) {
                spinner.setSelection(i, true);
                break;
            }
        }
    }
    
    @Override
    public final String toString() {
        return this.label;
    }
}
