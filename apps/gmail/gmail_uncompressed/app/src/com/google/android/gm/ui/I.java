package com.google.android.gm.ui;

import com.android.mail.ui.*;
import android.content.*;
import com.google.android.gsf.*;
import android.text.*;

public final class i extends M
{
    private final String bpR;
    private final String bpS;
    
    public i(final Context context) {
        super(context);
        this.bpS = c.a(context.getContentResolver(), "gmail-drive-icon-prefix", "https://ssl.gstatic.com/docs/doclist/images/");
        this.bpR = this.cK(2131165188);
    }
    
    public final void a(final String s, final String s2, final String s3, final String s4, String string) {
        String s5;
        if (!TextUtils.isEmpty((CharSequence)string)) {
            s5 = null;
        }
        else if (s4.startsWith("image/")) {
            s5 = "icon_11_image_list.png";
        }
        else if (s4.startsWith("video/")) {
            s5 = "icon_11_video_list.png";
        }
        else if (e.bpE.containsKey(s4)) {
            s5 = e.bpE.get(s4);
        }
        else {
            s5 = "icon_10_generic_list.png";
        }
        if (s5 != null) {
            string = this.bpS + s5;
        }
        this.b(this.bpR, "gmail_drive_chip", s3, s, string, s2);
    }
}
