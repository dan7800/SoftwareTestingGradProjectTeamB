package com.google.android.gm.provider;

public enum Gmail$PersonalLevel
{
    bfb(0), 
    bfc(1), 
    bfd(2);
    
    private int mLevel;
    
    private Gmail$PersonalLevel(final int mLevel) {
        this.mLevel = mLevel;
    }
    
    public static Gmail$PersonalLevel dN(final int n) {
        switch (n) {
            default: {
                throw new IllegalArgumentException(n + " is not a personal level");
            }
            case 0: {
                return Gmail$PersonalLevel.bfb;
            }
            case 1: {
                return Gmail$PersonalLevel.bfc;
            }
            case 2: {
                return Gmail$PersonalLevel.bfd;
            }
        }
    }
    
    public final int Ex() {
        return this.mLevel;
    }
}
