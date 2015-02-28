package com.android.mail.ui;

import java.util.*;

final class bY implements Comparable<bY>
{
    public bX aKw;
    public final PriorityQueue<bY> aKx;
    public boolean aKy;
    
    bY(final bX aKw) {
        this.aKx = new PriorityQueue<bY>();
        this.aKy = false;
        this.aKw = aKw;
    }
    
    final void a(final bY by) {
        this.aKx.add(by);
    }
    
    final bY zz() {
        return this.aKx.poll();
    }
}
