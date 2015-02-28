package com.android.mail;

import java.util.regex.*;
import com.android.mail.utils.*;
import android.text.*;
import android.text.util.*;

public final class d
{
    private static final Matcher ajU;
    public static final String mW;
    private final String WA;
    private final String mName;
    
    static {
        mW = D.AU();
        ajU = Pattern.compile("\\\"?([^\"<]*?)\\\"?\\s*<(.*)>").matcher("");
    }
    
    private d(final String mName, final String wa) {
        this.mName = mName;
        this.WA = wa;
    }
    
    public static d aY(String s) {
        // monitorenter(d.class)
        Label_0023: {
            if (s != null) {
                break Label_0023;
            }
            while (true) {
            Label_0099_Outer:
                while (true) {
                    Label_0203: {
                        while (true) {
                            while (true) {
                                String group2 = null;
                                Label_0191: {
                                    try {
                                        E.f(d.mW, "null rawAddress in EmailAddress#getEmailAddress", new Object[0]);
                                        s = "";
                                        final Matcher reset = d.ajU.reset(s);
                                        if (!reset.matches()) {
                                            final Rfc822Token[] tokenize = Rfc822Tokenizer.tokenize((CharSequence)s);
                                            String s2;
                                            String s3;
                                            if (tokenize.length > 0) {
                                                final String name = tokenize[0].getName();
                                                if (name == null) {
                                                    break Label_0203;
                                                }
                                                s2 = Html.fromHtml(name.trim()).toString();
                                                s3 = Html.fromHtml(tokenize[0].getAddress()).toString();
                                            }
                                            else {
                                                s2 = "";
                                                s3 = Html.fromHtml(s).toString();
                                            }
                                            return new d(s2, s3);
                                        }
                                        final String group = reset.group(1);
                                        group2 = reset.group(2);
                                        if (group == null) {
                                            final String s2 = "";
                                            break Label_0191;
                                        }
                                        String s2 = Html.fromHtml(group.trim()).toString();
                                        break Label_0191;
                                        String s3 = Html.fromHtml(group2).toString();
                                        return new d(s2, s3);
                                    }
                                    finally {
                                    }
                                    // monitorexit(d.class)
                                }
                                if (group2 == null) {
                                    final String s3 = "";
                                    continue Label_0099_Outer;
                                }
                                break;
                            }
                            continue;
                        }
                    }
                    String s2 = "";
                    continue;
                }
            }
        }
    }
    
    public final String getAddress() {
        return this.WA;
    }
    
    public final String getName() {
        return this.mName;
    }
}
