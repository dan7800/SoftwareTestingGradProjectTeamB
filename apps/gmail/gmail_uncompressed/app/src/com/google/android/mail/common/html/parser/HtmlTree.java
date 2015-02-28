package com.google.android.mail.common.html.parser;

import java.util.logging.*;
import android.text.*;
import java.util.*;
import com.google.android.mail.common.base.*;

public class HtmlTree
{
    private static final j cuM;
    private static final t cuN;
    private static final Logger cuU;
    private Stack<Integer> Wr;
    private final Stack<Integer> cuO;
    private final Stack<Integer> cuP;
    private String cuQ;
    private Spanned cuR;
    private int[] cuS;
    private t cuT;
    private int cuV;
    private final List<i> cub;
    
    static {
        cuM = j.x(" \t\f\u200b\r\n");
        cuN = new q();
        cuU = Logger.getLogger(HtmlTree.class.getName());
    }
    
    HtmlTree() {
        this.cub = new ArrayList<i>();
        this.cuO = new Stack<Integer>();
        this.cuP = new Stack<Integer>();
        this.cuT = HtmlTree.cuN;
    }
    
    private void a(final i i, final int n, final int n2) {
        this.cub.add(i);
        this.cuO.add(n);
        this.cuP.add(n2);
    }
    
    public final String Wm() {
        if (this.cuQ == null) {
            M.assertTrue(this.cuQ == null && this.cuS == null);
            final int size = this.cub.size();
            this.cuS = new int[size + 1];
            final s sj = this.cuT.sJ();
            for (int i = 0; i < size; ++i) {
                this.cuS[i] = sj.AS();
                sj.a(this.cub.get(i), i, (int)this.cuP.get(i));
            }
            this.cuS[size] = sj.AS();
            this.cuQ = sj.getObject();
        }
        return this.cuQ;
    }
    
    public final Spanned Wn() {
        if (this.cuR == null) {
            M.assertTrue(this.cuR == null);
            final int size = this.cub.size();
            final s sj = this.cuT.sJ();
            for (int i = 0; i < size; ++i) {
                sj.a(this.cub.get(i), i, (int)this.cuP.get(i));
            }
            this.cuR = sj.getObject();
        }
        return this.cuR;
    }
    
    public final void a(final t cuT) {
        if (cuT == null) {
            throw new NullPointerException("factory must not be null");
        }
        this.cuT = cuT;
    }
    
    final void b(final k k) {
        final int size = this.cub.size();
        this.a(k, size, size);
    }
    
    final void c(final HtmlDocument$Tag htmlDocument$Tag) {
        final int size = this.cub.size();
        this.a(htmlDocument$Tag, size, -1);
        this.Wr.add(this.cuV);
        this.cuV = size;
    }
    
    final void c(final g g) {
        final int size = this.cub.size();
        this.a(g, this.cuV, size);
        if (this.cuV != -1) {
            this.cuP.set(this.cuV, size);
        }
        this.cuV = this.Wr.pop();
    }
    
    final void d(final HtmlDocument$Tag htmlDocument$Tag) {
        final int size = this.cub.size();
        this.a(htmlDocument$Tag, size, size);
    }
    
    final void finish() {
        boolean b = true;
        M.assertTrue(this.Wr.size() == 0 && b);
        if (this.cuV != -1) {
            b = false;
        }
        M.assertTrue(b);
    }
    
    final void start() {
        this.Wr = new Stack<Integer>();
        this.cuV = -1;
    }
}
