package com.google.android.gm.c;

import java.util.*;
import com.google.common.collect.*;
import android.text.*;
import android.content.*;
import com.android.mail.providers.*;

public final class c
{
    private static final Map<String, String> bqW;
    
    static {
        bqW = ImmutableMap.Zv().p("gmail.com", "gmail").p("googlemail.com", "gmail").p("google.com", "google-corp").p("hotmail.com", "hotmail").p("hotmail.co.uk", "hotmail").p("hotmail.com.br", "hotmail").p("msn.com", "hotmail").p("live.co.uk", "hotmail").p("windowslive.com", "hotmail").p("outlook.com", "hotmail").p("yahoo.com", "yahoo").p("yahoo.co.uk", "yahoo").p("yahoo.com.br", "yahoo").p("ymail.com", "yahoo").p("aol.com", "aol").p("me.com", "apple").p("mac.com", "apple").p("icloud.com", "apple").p("mail.ru", "mail.ru").p("qq.com", "qq.com").p("comcast.com", "comcast").p("rediffmail.com", "rediffmail").p("docomo.ne.jp", "docomo").p("bol.com.br", "bol.com.br").p("163.com", "163.com").p("ig.com.br", "ig.com.br").p("terra.com.br", "terra.com.br").p("verizon.net", "verizon").p("uol.com.br", "uol.com.br").p("wanadoo.fr", "orange").p("orange.fr", "orange").p("orange.co.uk", "orange").Zo();
    }
    
    public static String fs(final String s) {
        String s2 = c.bqW.get(s);
        if (s2 == null) {
            final String substring = s.substring(0, s.lastIndexOf(46));
            if ("yahoo".equals(substring) || "yahoo.com".equals(substring)) {
                s2 = "yahoo";
            }
            else if ("hotmail".equals(substring) || "live".equals(substring) || "outlook".equals(substring)) {
                s2 = "hotmail";
            }
        }
        if (s2 != null) {
            return s2;
        }
        return "other";
    }
    
    public static String ft(final String s) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            return "";
        }
        return s.substring(1 + s.lastIndexOf(64)).toLowerCase();
    }
    
    public static String fu(String s) {
        if ("other".equals(fs(s))) {
            s = "other";
        }
        return s;
    }
    
    public static String i(final Context context, final Account account) {
        final StringBuilder sb = new StringBuilder();
        String type = account.getType();
        if ("com.google".equals(type)) {
            type = "GMAIL";
        }
        else if (context.getString(2131296987).equals(type)) {
            type = "IMAP";
        }
        else if (context.getString(2131296984).equals(type)) {
            type = "EXCHANGE";
        }
        else if (context.getString(2131296985).equals(type)) {
            type = "POP3";
        }
        return sb.append(type).append(':').append(ft(account.lw())).toString();
    }
}
