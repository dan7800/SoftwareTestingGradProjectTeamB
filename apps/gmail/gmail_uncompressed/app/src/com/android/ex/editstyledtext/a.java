package com.android.ex.editstyledtext;

import java.util.*;
import android.util.*;

public final class a
{
    private int Mf;
    private i afN;
    private HashMap<Integer, b> afQ;
    
    private b bz(final int n) {
        if (this.afQ.containsKey(n)) {
            return this.afQ.get(n);
        }
        return null;
    }
    
    public final boolean bA(final int n) {
        Log.d("EditModeActions", "--- do the next action: " + n + "," + this.afN.nx());
        if (this.bz(n) == null) {
            Log.e("EditModeActions", "--- invalid action error.");
        }
        else {
            switch (this.afN.nx()) {
                case 0:
                case 1:
                case 2: {
                    break;
                }
                default: {
                    return false;
                }
                case 3: {
                    if (this.afN.nw()) {
                        return false;
                    }
                    break;
                }
            }
        }
        return false;
    }
    
    public final void by(final int mf) {
        this.bz(mf).c(null);
        this.bA(this.Mf = mf);
    }
    
    public final void no() {
        this.bA(5);
    }
}
