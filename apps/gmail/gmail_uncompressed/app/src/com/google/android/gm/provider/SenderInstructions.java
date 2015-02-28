package com.google.android.gm.provider;

import java.util.*;

public final class SenderInstructions
{
    private int blB;
    private final List<by> bmT;
    private final Set<String> bmU;
    private final Set<String> bmV;
    private final Set<String> bmW;
    private int bmX;
    private int bmY;
    private int state;
    
    public SenderInstructions() {
        this.bmT = new ArrayList<by>();
        this.bmU = new HashSet<String>();
        this.bmV = new HashSet<String>();
        this.bmW = new HashSet<String>();
        this.state = 0;
        this.bmX = 0;
        this.bmY = 0;
    }
    
    public final int HN() {
        return this.bmY;
    }
    
    public final Collection<by> HO() {
        return this.bmT;
    }
    
    public final int HP() {
        return this.bmX;
    }
    
    public final void a(String name, final String abf, final boolean b, final boolean apC, final boolean b2, final int priority) {
        if (b) {
            ++this.bmY;
        }
        else {
            final by by = new by();
            if (b2) {
                name = "";
            }
            by.name = name;
            by.apC = apC;
            by.bmZ = SenderInstructions$Visibility.bnc;
            by.priority = priority;
            by.aBF = abf;
            this.bmT.add(by);
            if (by.apC) {
                this.bmW.add(by.name);
            }
        }
    }
    
    public final void dI(final int blB) {
        this.blB = blB;
    }
    
    protected final void dW(final int n) {
        while (true) {
            boolean b;
            if (this.bmT.size() > 0 && this.state < -1 + (2 + this.bmT.size())) {
                b = true;
            }
            else {
                b = false;
            }
            if (!b || this.bmX >= 5) {
                break;
            }
            int n2 = 0;
            switch (this.state) {
                default: {
                    n2 = -1 + this.bmT.size() - (-2 + this.state);
                    ++this.state;
                    break;
                }
                case 0: {
                    int state;
                    if (this.bmT.get(0).apC || this.bmW.size() == 0) {
                        state = 2;
                    }
                    else {
                        state = 1;
                    }
                    this.state = state;
                    n2 = 0;
                    break;
                }
                case 1: {
                    for (n2 = 1; n2 < this.bmT.size() && !this.bmT.get(n2).apC; ++n2) {}
                    this.state = 2;
                    break;
                }
            }
            final by by = this.bmT.get(n2);
            if (by.bmZ == SenderInstructions$Visibility.bna) {
                continue;
            }
            if (!this.bmU.contains(by.name) || (by.apC && !this.bmV.contains(by.name))) {
                this.bmU.add(by.name);
                if (by.apC) {
                    this.bmV.add(by.name);
                }
                by.bmZ = SenderInstructions$Visibility.bna;
                by.priority = this.bmX;
                ++this.bmX;
            }
            else {
                by.bmZ = SenderInstructions$Visibility.bnb;
            }
        }
        for (final by by2 : this.bmT) {
            if (by2.bmZ == SenderInstructions$Visibility.bnc && this.bmU.contains(by2.name)) {
                by2.bmZ = SenderInstructions$Visibility.bnb;
            }
        }
    }
    
    final void dX(final int bmY) {
        this.bmY = bmY;
    }
    
    public final void reset() {
        this.bmT.clear();
        this.bmU.clear();
        this.bmV.clear();
        this.bmW.clear();
        this.state = 0;
        this.bmY = 0;
        this.bmX = 0;
    }
    
    public final int uH() {
        return this.blB;
    }
}
