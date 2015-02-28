package com.android.mail.j;

import android.content.*;
import android.content.res.*;
import java.util.*;
import com.android.emailcommon.mail.*;
import com.android.mail.utils.*;
import android.text.*;
import com.android.mail.*;
import com.android.mail.browse.*;
import com.android.mail.providers.*;
import android.webkit.*;
import android.print.*;
import android.annotation.*;

public final class b
{
    private static String a(final Context context, final Resources resources, final Message message) {
        if (!message.ayX) {
            return "";
        }
        final int bj = message.bj(false);
        if (bj == 0) {
            return "";
        }
        final StringBuilder sb = new StringBuilder("<br clear=all><div style=\"width:50%;border-top:2px #AAAAAA solid\"></div><table class=att cellspacing=0 cellpadding=5 border=0>");
        if (bj > 1) {
            sb.append("<tr><td colspan=2><b style=\"padding-left:3\">").append(resources.getQuantityString(2131820564, bj, new Object[] { bj })).append("</b></td></tr>");
        }
        final List<Attachment> vc = message.vC();
        for (int size = vc.size(), i = 0; i < size; ++i) {
            final Attachment attachment = vc.get(i);
            if (!attachment.uB()) {
                sb.append("<tr><td><table cellspacing=\"0\" cellpadding=\"0\"><tr>");
                final StringBuilder append = sb.append("<td><img width=\"16\" height=\"16\" src=\"file:///android_asset/images/");
                final String contentType = attachment.getContentType();
                String s;
                if (contentType.startsWith("application/msword") || contentType.startsWith("application/vnd.oasis.opendocument.text") || contentType.equals("application/rtf") || contentType.equals("application/vnd.openxmlformats-officedocument.wordprocessingml.document")) {
                    s = "doc.gif";
                }
                else if (contentType.startsWith("image/")) {
                    s = "graphic.gif";
                }
                else if (contentType.startsWith("text/html")) {
                    s = "html.gif";
                }
                else if (contentType.startsWith("application/pdf")) {
                    s = "pdf.gif";
                }
                else if (contentType.endsWith("powerpoint") || contentType.equals("application/vnd.oasis.opendocument.presentation") || contentType.equals("application/vnd.openxmlformats-officedocument.presentationml.presentation")) {
                    s = "ppt.gif";
                }
                else if (contentType.startsWith("audio/") || contentType.startsWith("music/")) {
                    s = "sound.gif";
                }
                else if (contentType.startsWith("text/plain")) {
                    s = "txt.gif";
                }
                else if (contentType.endsWith("excel") || contentType.equals("application/vnd.oasis.opendocument.spreadsheet") || contentType.equals("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")) {
                    s = "xls.gif";
                }
                else if (contentType.endsWith("zip") || contentType.endsWith("/x-compress") || contentType.endsWith("/x-compressed")) {
                    s = "zip.gif";
                }
                else {
                    s = "generic.gif";
                }
                append.append(s).append("\"></td><td width=\"7\"></td><td><b>").append(attachment.getName()).append("</b><br>").append(com.android.mail.utils.b.E(context, attachment.size)).append("</td></tr></table></td></tr>");
            }
        }
        sb.append("</table>");
        return sb.toString();
    }
    
    private static String a(final Resources resources, final String[] array, final Map<String, Address> map) {
        if (array == null || array.length == 0) {
            return null;
        }
        final String[] array2 = new String[array.length];
        for (int i = 0; i < array.length; ++i) {
            final Address a = ag.a(map, array[i]);
            final String lj = a.lj();
            final String address = a.getAddress();
            if (TextUtils.isEmpty((CharSequence)lj)) {
                array2[i] = address;
            }
            else {
                array2[i] = resources.getString(2131296672, new Object[] { lj, address });
            }
        }
        return TextUtils.join((CharSequence)resources.getString(2131296553), (Object[])array2);
    }
    
    private static void a(final Context context, final Resources resources, final Message message, final Map<String, Address> map, final a a, final e e) {
        final Address a2 = ag.a(map, message.vq());
        final String l = e.L(message.aBf);
        String lj;
        if (a2 == null) {
            lj = "";
        }
        else {
            lj = a2.lj();
        }
        String address;
        if (a2 == null) {
            address = "";
        }
        else {
            address = a2.getAddress();
        }
        final StringBuilder sb = new StringBuilder();
        a(resources, sb, a(resources, message.vA(), map), "<div class=\"replyto\">", "</div>", 2131296531);
        boolean b;
        if (message.aBk != 0) {
            b = true;
        }
        else {
            b = false;
        }
        final String a3 = a(resources, message.vu(), map);
        if (b && a3 == null) {
            sb.append("<div>").append(resources.getString(2131296675)).append("</div>");
        }
        else {
            int n;
            if (b) {
                n = 2131296674;
            }
            else {
                n = 2131296533;
            }
            a(resources, sb, a3, "<div>", "</div>", n);
        }
        a(resources, sb, a(resources, message.vw(), map), "<div>", "</div>", 2131296534);
        a(resources, sb, a(resources, message.vy(), map), "<div>", "</div>", 2131296535);
        a.a(lj, address, l, sb.toString(), message.vF(), a(context, resources, message));
    }
    
    public static void a(final Context context, final aC ac, final Map<String, Address> map, final String s) {
        if (ac == null) {
            return;
        }
        final a a = new a(context);
        final e e = new e(context);
        if (!ac.moveToFirst()) {
            throw new IllegalStateException("trying to print without a conversation");
        }
        final Conversation pg = ac.pg();
        a.e(pg.ayV, pg.uH());
        final Resources resources = context.getResources();
        do {
            a(context, resources, ac.qL(), map, a, e);
        } while (ac.moveToNext());
        a(context, a.ub(), s, ac.pg().ayV, true);
    }
    
    public static void a(final Context context, final Message message, final String s, final Map<String, Address> map, final String s2, final boolean b) {
        final a a = new a(context);
        final e e = new e(context);
        a.e(s, 1);
        a(context, context.getResources(), message, map, a, e);
        String s3;
        if (b) {
            s3 = a.ub();
        }
        else {
            s3 = a.uc();
        }
        a(context, s3, s2, s, b);
    }
    
    @SuppressLint({ "NewApi", "SetJavaScriptEnabled" })
    private static void a(final Context context, final String s, final String s2, final String s3, final boolean javaScriptEnabled) {
        final WebView webView = new WebView(context);
        final WebSettings settings = webView.getSettings();
        settings.setBlockNetworkImage(false);
        settings.setJavaScriptEnabled(javaScriptEnabled);
        webView.loadDataWithBaseURL(s2, s, "text/html", "utf-8", (String)null);
        final PrintManager printManager = (PrintManager)context.getSystemService("print");
        final String t = t(context, s3);
        PrintDocumentAdapter printDocumentAdapter;
        if (ag.Bh()) {
            printDocumentAdapter = webView.createPrintDocumentAdapter(t);
        }
        else {
            printDocumentAdapter = webView.createPrintDocumentAdapter();
        }
        printManager.print(t, printDocumentAdapter, new PrintAttributes$Builder().build());
    }
    
    private static void a(final Resources resources, final StringBuilder sb, final String s, final String s2, final String s3, final int n) {
        if (s != null) {
            sb.append(s2).append(resources.getString(n)).append(' ').append(s).append(s3);
        }
    }
    
    public static String t(final Context context, final String s) {
        if (TextUtils.isEmpty((CharSequence)s)) {
            return context.getString(2131296377);
        }
        return context.getString(2131296678, new Object[] { s });
    }
}
