package com.google.android.gm.ui;

import android.content.*;
import com.google.common.collect.*;
import com.android.mail.compose.*;
import android.text.*;
import java.util.*;

public final class e implements Spanned
{
    private static final Map<String, Integer> bpD;
    public static final Map<String, String> bpE;
    private final Context bcb;
    private final SpannedString bpA;
    private final String bpB;
    private final String bpC;
    private final String id;
    private final String mimeType;
    private final String name;
    
    static {
        bpD = new y<String, Integer>().p("application/pdf", 2130837678).p("text/plain", 2130837684).p("application/vnd.google-apps.document", 2130837672).p("application/vnd.google-apps.spreadsheet", 2130837683).p("application/vnd.google-apps.presentation", 2130837680).p("application/vnd.openxmlformats-officedocument.wordprocessingml.document", 2130837687).p("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", 2130837688).p("application/vnd.openxmlformats-officedocument.presentationml.presentation", 2130837679).p("application/msword", 2130837687).p("application/vnd.ms-excel", 2130837688).p("application/vnd.ms-powerpoint", 2130837679).Zo();
        bpE = new y<String, String>().p("application/pdf", "icon_10_pdf_list.png").p("text/plain", "icon_10_text_list.png").p("application/vnd.google-apps.document", "icon_11_document_list.png").p("application/vnd.google-apps.spreadsheet", "icon_11_spreadsheet_list.png").p("application/vnd.google-apps.presentation", "icon_11_presentation_list.png").p("application/vnd.openxmlformats-officedocument.wordprocessingml.document", "icon_10_word_list.png").p("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", "icon_10_excel_list.png").p("application/vnd.openxmlformats-officedocument.presentationml.presentation", "icon_10_powerpoint_list.png").p("application/msword", "icon_10_word_list.png").p("application/vnd.ms-excel", "icon_10_excel_list.png").p("application/vnd.ms-powerpoint", "icon_10_powerpoint_list.png").Zo();
    }
    
    public e(final Context context, final String s, final String s2, final String s3, final String s4) {
        this(context, s, s2, s3, s4, null);
    }
    
    public e(final Context bcb, final String id, final String name, final String bpB, final String mimeType, final String bpC) {
        this.bcb = bcb;
        this.id = id;
        this.name = name;
        this.bpB = bpB;
        this.mimeType = mimeType;
        this.bpC = bpC;
        final SpannableString spannableString = new SpannableString((CharSequence)(" " + name + " "));
        spannableString.setSpan((Object)new g(this), 0, spannableString.length(), 33);
        this.bpA = new SpannedString((CharSequence)spannableString);
    }
    
    public static z a(final Spanned spanned, final i i) {
        final SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        final f f = new f(i);
        int nextSpanTransition;
        for (int length = spanned.length(), j = 0; j < length; j = nextSpanTransition) {
            nextSpanTransition = spanned.nextSpanTransition(j, length, (Class)g.class);
            final g[] array = (g[])spanned.getSpans(j, nextSpanTransition, (Class)g.class);
            if (array == null || array.length == 0) {
                spannableStringBuilder.append((CharSequence)spanned, j, nextSpanTransition);
            }
            else {
                if (array.length != 1) {
                    throw new IllegalArgumentException("unexpected span count: " + array.length);
                }
                final e iq = array[0].Iq();
                f.bpF.add(iq);
                spannableStringBuilder.append((CharSequence)iq.id);
            }
        }
        return new z((Spanned)spannableStringBuilder, f);
    }
    
    public static String d(final String s, final Object o) {
        final f f = (f)o;
        final StringBuilder sb = new StringBuilder(s);
        final Iterator iterator = f.bpF.iterator();
        int n = 0;
        while (iterator.hasNext()) {
            final e e = iterator.next();
            final int index = sb.indexOf(e.id, n);
            if (index < 0) {
                throw new IllegalStateException("chip not found:\n\n" + e.id + "\n\n\nmsg=" + s);
            }
            final i b = f.bpG;
            b.reset();
            b.a(e.id, e.name, e.bpB, e.mimeType, e.bpC);
            final String xf = b.xf();
            sb.replace(index, index + e.id.length(), xf);
            n = index + xf.length();
        }
        return sb.toString();
    }
    
    public final char charAt(final int n) {
        return this.bpA.charAt(n);
    }
    
    public final String getId() {
        return this.id;
    }
    
    public final int getSpanEnd(final Object o) {
        return this.bpA.getSpanEnd(o);
    }
    
    public final int getSpanFlags(final Object o) {
        return this.bpA.getSpanFlags(o);
    }
    
    public final int getSpanStart(final Object o) {
        return this.bpA.getSpanStart(o);
    }
    
    public final <T> T[] getSpans(final int n, final int n2, final Class<T> clazz) {
        return (T[])this.bpA.getSpans(n, n2, (Class)clazz);
    }
    
    public final int length() {
        return this.bpA.length();
    }
    
    public final int nextSpanTransition(final int n, final int n2, final Class clazz) {
        return this.bpA.nextSpanTransition(n, n2, clazz);
    }
    
    public final CharSequence subSequence(final int n, final int n2) {
        return this.bpA.subSequence(n, n2);
    }
    
    @Override
    public final String toString() {
        return this.bpA.toString();
    }
}
