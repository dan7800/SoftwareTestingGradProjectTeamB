package com.google.android.gm.welcome;

import com.google.common.base.*;

final class s implements j<WelcomeTourState$AccountState>
{
    final /* synthetic */ WelcomeTourState bsD;
    
    s(final WelcomeTourState bsD) {
        this.bsD = bsD;
    }
    
    @Override
    public final boolean apply(final WelcomeTourState$AccountState welcomeTourState$AccountState) {
        return "com.google".equals(welcomeTourState$AccountState.mr().type);
    }
}
