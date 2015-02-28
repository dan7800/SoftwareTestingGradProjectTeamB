package com.android.mail.widget;

import android.content.*;
import android.graphics.*;
import android.content.res.*;
import android.text.*;
import com.android.mail.providers.*;
import com.android.mail.utils.*;
import android.widget.*;
import android.text.style.*;

public final class d
{
    private static int aRb;
    private static int aRc;
    private static int aRd;
    private static int aRe;
    private static int aRf;
    private static Bitmap anb;
    private e aRg;
    
    public d(final Context context) {
        final Resources resources = context.getResources();
        d.aRb = resources.getColor(2131361917);
        d.aRc = resources.getColor(2131361918);
        d.aRd = resources.getColor(2131361919);
        d.aRe = resources.getColor(2131361921);
        d.aRf = resources.getColor(2131361920);
        d.anb = BitmapFactory.decodeResource(resources, 2130837628);
    }
    
    private static SpannableStringBuilder b(final CharSequence charSequence, final int n, final int n2) {
        final SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(charSequence);
        spannableStringBuilder.setSpan((Object)new AbsoluteSizeSpan(n), 0, charSequence.length(), 33);
        if (n2 != 0) {
            spannableStringBuilder.setSpan((Object)new ForegroundColorSpan(n2), 0, charSequence.length(), 33);
        }
        return spannableStringBuilder;
    }
    
    public final RemoteViews a(final Context context, final CharSequence charSequence, final Conversation conversation, final p p7, final int n, final SpannableStringBuilder spannableStringBuilder, final String s) {
        boolean b;
        if (!conversation.aza) {
            b = true;
        }
        else {
            b = false;
        }
        final String ug = conversation.uG();
        final boolean ayX = conversation.ayX;
        final Resources resources = context.getResources();
        final int dimensionPixelSize = resources.getDimensionPixelSize(2131493062);
        final int dimensionPixelSize2 = resources.getDimensionPixelSize(2131493061);
        int n2;
        if (b) {
            n2 = d.aRf;
        }
        else {
            n2 = d.aRe;
        }
        final SpannableStringBuilder b2 = b(charSequence, dimensionPixelSize, n2);
        if (b) {
            b2.setSpan((Object)new StyleSpan(1), 0, charSequence.length(), 33);
        }
        final String e = Conversation.e(context, null, s);
        final SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder((CharSequence)e);
        if (b) {
            spannableStringBuilder2.setSpan((Object)new StyleSpan(1), 0, e.length(), 33);
        }
        int n3;
        if (b) {
            n3 = d.aRc;
        }
        else {
            n3 = d.aRb;
        }
        spannableStringBuilder2.setSpan((Object)new ForegroundColorSpan(n3), 0, spannableStringBuilder2.length(), 33);
        final SpannableStringBuilder b3 = b((CharSequence)spannableStringBuilder2, dimensionPixelSize2, 0);
        final SpannableStringBuilder spannableStringBuilder3 = new SpannableStringBuilder((CharSequence)ug);
        spannableStringBuilder3.setSpan((Object)new ForegroundColorSpan(d.aRd), 0, spannableStringBuilder3.length(), 33);
        final SpannableStringBuilder b4 = b((CharSequence)spannableStringBuilder3, dimensionPixelSize2, 0);
        Bitmap anb = null;
        if (ayX) {
            anb = d.anb;
        }
        final RemoteViews remoteViews = new RemoteViews(context.getPackageName(), 2130968783);
        remoteViews.setTextViewText(2131559008, (CharSequence)spannableStringBuilder);
        remoteViews.setTextViewText(2131559010, (CharSequence)b2);
        remoteViews.setTextViewText(2131559011, (CharSequence)b3);
        remoteViews.setTextViewText(2131559012, (CharSequence)b4);
        if (anb != null) {
            remoteViews.setViewVisibility(2131559009, 0);
            remoteViews.setImageViewBitmap(2131559009, anb);
        }
        else {
            remoteViews.setViewVisibility(2131559009, 8);
        }
        if (b) {
            remoteViews.setViewVisibility(2131559006, 0);
            remoteViews.setViewVisibility(2131559007, 8);
        }
        else {
            remoteViews.setViewVisibility(2131559006, 8);
            remoteViews.setViewVisibility(2131559007, 0);
        }
        if (context.getResources().getBoolean(2131623945)) {
            (this.aRg = new e(context)).a(conversation, p7, n);
            this.aRg.b(remoteViews);
        }
        return remoteViews;
    }
}
