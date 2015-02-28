package com.google.android.mail.common.html.parser;

import com.google.android.mail.common.base.*;
import java.util.*;

public final class HtmlDocument$Tag extends i
{
    private final HTML$Element cud;
    private List<j> cug;
    private final boolean cuh;
    private final String cui;
    private final String cuj;
    
    private HtmlDocument$Tag(final HTML$Element cud, final List<j> cug, final boolean cuh, final String cui, final String cuj) {
        M.assertTrue(cud != null);
        this.cud = cud;
        this.cug = cug;
        this.cuh = cuh;
        this.cui = cui;
        this.cuj = cuj;
    }
    
    public final HTML$Element Wf() {
        return this.cud;
    }
    
    public final List<j> Wg() {
        return this.cug;
    }
    
    public final boolean Wh() {
        return this.cuh;
    }
    
    public final String Wi() {
        return this.cui;
    }
    
    public final String Wj() {
        return this.cuj;
    }
    
    public final j a(final a a) {
        if (this.cug != null) {
            for (final j j : this.cug) {
                if (j.Wk().equals(a)) {
                    return j;
                }
            }
        }
        return null;
    }
    
    @Override
    public final void a(final m m) {
        m.b(this);
    }
    
    public final List<j> b(final a a) {
        final ArrayList<j> list = new ArrayList<j>();
        if (this.cug != null) {
            for (final j j : this.cug) {
                if (j.Wk().equals(a)) {
                    list.add(j);
                }
            }
        }
        return list;
    }
    
    public final String getName() {
        return this.cud.getName();
    }
    
    @Override
    public final String toString() {
        final StringBuilder sb = new StringBuilder();
        sb.append("Start Tag: ");
        sb.append(this.cud.getName());
        if (this.cug != null) {
            for (final j j : this.cug) {
                sb.append(' ');
                sb.append(j.toString());
            }
        }
        return sb.toString();
    }
}
