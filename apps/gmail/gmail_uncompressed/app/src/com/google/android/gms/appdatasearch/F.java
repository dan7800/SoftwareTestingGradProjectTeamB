package com.google.android.gms.appdatasearch;

import java.util.*;

public final class f
{
    private boolean bvk;
    private List<String> bvl;
    private List<Section> bvm;
    private boolean bvn;
    private int bvo;
    private int bvp;
    private boolean bvq;
    private int bvr;
    
    public f() {
        this.bvr = 0;
    }
    
    public final QuerySpecification Jl() {
        return new QuerySpecification(2, this.bvk, this.bvl, this.bvm, this.bvn, this.bvo, this.bvp, this.bvq, this.bvr);
    }
    
    public final f a(final Section section) {
        if (Section.fI(section.name)) {
            if (this.bvm == null) {
                this.bvq = true;
                this.bvm = new ArrayList<Section>();
            }
            else if (!this.bvq) {
                throw new IllegalArgumentException("Cannot mix literal and semantic sections");
            }
            this.bvm.add(section);
            return this;
        }
        if (this.bvm == null) {
            this.bvq = false;
            this.bvm = new ArrayList<Section>();
        }
        else if (this.bvq) {
            throw new IllegalArgumentException("Cannot mix literal and semantic sections");
        }
        this.bvm.add(section);
        return this;
    }
    
    public final f fB(final String s) {
        if (this.bvl == null) {
            this.bvl = new ArrayList<String>();
        }
        this.bvl.add(s);
        return this;
    }
}
