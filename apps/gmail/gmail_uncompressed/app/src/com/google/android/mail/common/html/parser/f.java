package com.google.android.mail.common.html.parser;

import java.io.*;
import com.google.android.mail.common.base.*;
import java.util.*;

public final class f implements m
{
    private final PrintWriter cuc;
    
    public f(final PrintWriter cuc) {
        this.cuc = cuc;
    }
    
    private void aw(final String s, final String s2) {
        this.cuc.print(s);
        this.cuc.print(": ");
        this.cuc.print(j.coW.C(s2.replace("\n", " ")));
    }
    
    @Override
    public final void a(final e e) {
        this.aw("COMMENT", e.We());
    }
    
    @Override
    public final void a(final k k) {
        this.aw("TEXT", k.getText());
    }
    
    @Override
    public final void b(final HtmlDocument$Tag htmlDocument$Tag) {
        this.cuc.print("==<" + htmlDocument$Tag.getName() + ">");
        final List<com.google.android.mail.common.html.parser.j> wg = htmlDocument$Tag.Wg();
        if (wg != null) {
            final ArrayList<String> list = new ArrayList<String>();
            for (final com.google.android.mail.common.html.parser.j j : wg) {
                list.add("[" + j.getName() + " : " + j.getValue() + "]");
            }
            final String[] array = list.toArray(new String[list.size()]);
            Arrays.sort(array);
            for (int i = 0; i < array.length; ++i) {
                this.cuc.print(" " + array[i]);
            }
        }
        this.cuc.println();
    }
    
    @Override
    public final void b(final g g) {
        this.cuc.println("==</" + g.getName() + ">");
    }
    
    @Override
    public final void finish() {
    }
    
    @Override
    public final void start() {
    }
}
