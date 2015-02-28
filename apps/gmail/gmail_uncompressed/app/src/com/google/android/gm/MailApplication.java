package com.google.android.gm;

import com.android.email.*;
import android.content.*;
import com.android.mail.utils.*;
import android.os.*;
import com.android.email.activity.setup.*;
import com.android.emailcommon.b.*;
import android.content.res.*;

public class MailApplication extends v
{
    static {
        o.a(new aa());
    }
    
    @Override
    public void onCreate() {
        super.onCreate();
        final Resources resources = this.getResources();
        final String string = resources.getString(2131297000);
        final String string2 = resources.getString(2131296999);
        final String string3 = "content://" + resources.getString(2131297243);
        final String string4 = resources.getString(2131297242);
        final Intent intent = new Intent((Context)this, (Class)EmailMigrationService.class);
        intent.putExtra("eas_protocol", string);
        intent.putExtra("pop_protocol", string2);
        intent.putExtra("migration_src_base_authority", string3);
        intent.putExtra("old_email_package_name", string4);
        if (!this.getSharedPreferences("EmailMigration", 0).getBoolean("disable_migration_service", false)) {
            E.c("EmailMigration", "Migration is ENABLED.", new Object[0]);
            this.startService(intent);
        }
        else {
            E.c("EmailMigration", "Migration is DISABLED.", new Object[0]);
        }
        new ab((byte)0).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, (Object[])new Context[] { this });
        MailApplication.aXF = aH.class;
        com.android.emailcommon.b.o.a(new ac(this, (byte)0));
    }
}
