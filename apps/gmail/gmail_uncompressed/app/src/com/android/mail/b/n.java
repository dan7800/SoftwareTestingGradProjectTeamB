package com.android.mail.b;

import java.util.*;
import android.content.res.*;
import com.google.common.collect.*;
import com.google.android.gm.c.*;

public final class n extends f
{
    private static Map<String, Integer> akT;
    
    public n(final Resources resources) {
        super(resources);
        if (n.akT == null) {
            n.akT = ImmutableMap.Zv().p("hotmail", resources.getColor(2131362070)).p("hotmail.com", resources.getColor(2131362085)).p("hotmail.co.uk", resources.getColor(2131362085)).p("hotmail.com.br", resources.getColor(2131362085)).p("msn.com", resources.getColor(2131362086)).p("live.co.uk", resources.getColor(2131362087)).p("windowslive.com", resources.getColor(2131362088)).p("yahoo", resources.getColor(2131362071)).p("aol", resources.getColor(2131362072)).p("apple", resources.getColor(2131362073)).p("me.com", resources.getColor(2131362089)).p("icloud.com", resources.getColor(2131362090)).p("mail.ru", resources.getColor(2131362074)).p("qq.com", resources.getColor(2131362075)).p("comcast", resources.getColor(2131362076)).p("docomo", resources.getColor(2131362077)).p("bol.com.br", resources.getColor(2131362078)).p("163.com", resources.getColor(2131362079)).p("ig.com.br", resources.getColor(2131362080)).p("terra.com.br", resources.getColor(2131362081)).p("verizon", resources.getColor(2131362082)).p("uol.com.br", resources.getColor(2131362083)).p("orange", resources.getColor(2131362084)).p("hanmail.com", resources.getColor(2131362091)).p("naver.com", resources.getColor(2131362092)).Zo();
        }
    }
    
    @Override
    public final int bd(final String s) {
        final String ft = c.ft(s);
        final Integer n = com.android.mail.b.n.akT.get(ft);
        if (n != null) {
            return n;
        }
        final Integer n2 = com.android.mail.b.n.akT.get(c.fs(ft));
        if (n2 != null) {
            return n2;
        }
        return super.bd(s);
    }
}
