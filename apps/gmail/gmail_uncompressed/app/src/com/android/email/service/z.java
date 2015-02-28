package com.android.email.service;

import com.android.emailcommon.service.*;
import com.android.emailcommon.provider.*;
import android.app.admin.*;
import com.android.email.*;
import android.app.*;
import com.android.mail.utils.*;
import android.content.*;
import android.os.*;

final class z extends y
{
    final /* synthetic */ PolicyService VB;
    
    z(final PolicyService vb) {
        this.VB = vb;
    }
    
    public final void a(final long n, final Policy policy, final String s) {
        this.b(n, policy, s, true);
    }
    
    public final boolean a(final Policy policy) {
        try {
            return this.VB.Vz.a(policy);
        }
        catch (RuntimeException ex) {
            E.e(PolicyService.mW, ex, "Exception thrown during call to SecurityPolicy#isActive", new Object[0]);
            throw ex;
        }
    }
    
    public final void b(final long n, final Policy policy, final String s, final boolean b) {
        try {
            this.VB.Vz.a(n, policy, s, b);
        }
        catch (RuntimeException ex) {
            E.e(PolicyService.mW, ex, "Exception thrown from call to SecurityPolicy#setAccountPolicy", new Object[0]);
            throw ex;
        }
    }
    
    public final void b(final long n, final boolean b) {
        SecurityPolicy.a(this.VB.mContext, n, b);
    }
    
    public final void hi() {
        try {
            this.VB.Vz.hi();
        }
        catch (RuntimeException ex) {
            E.e(PolicyService.mW, ex, "Exception thrown during call to SecurityPolicy#remoteWipe", new Object[0]);
            throw ex;
        }
    }
    
    public final boolean kJ() {
        final DevicePolicyManager devicePolicyManager = (DevicePolicyManager)this.VB.mContext.getSystemService("device_policy");
        final ComponentName componentName = new ComponentName(this.VB.mContext, (Class)SecurityPolicy$PolicyAdmin.class);
        if (devicePolicyManager.getCameraDisabled(componentName)) {
            return true;
        }
        try {
            devicePolicyManager.setCameraDisabled(componentName, true);
            devicePolicyManager.setCameraDisabled(componentName, false);
            return true;
        }
        catch (SecurityException ex) {
            E.e(PolicyService.mW, "SecurityException checking camera disabling.", new Object[0]);
            return false;
        }
    }
}
