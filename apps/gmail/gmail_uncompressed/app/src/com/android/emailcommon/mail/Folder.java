package com.android.emailcommon.mail;

import android.content.*;
import com.android.emailcommon.service.*;

public abstract class Folder
{
    public abstract Message A(final String p0);
    
    public abstract Message C(final String p0);
    
    public abstract void a(final Context p0, final Message p1, final boolean p2);
    
    public abstract void a(final Folder$OpenMode p0);
    
    public abstract void a(final Message[] p0, final FetchProfile p1, final f p2);
    
    public abstract void a(final Message[] p0, final Folder p1, final g p2);
    
    public abstract void a(final Message[] p0, final Flag[] p1, final boolean p2);
    
    public abstract Message[] a(final long p0, final long p1);
    
    public abstract Message[] a(final SearchParams p0);
    
    public abstract boolean exists();
    
    public abstract String getName();
    
    public abstract Folder$OpenMode iX();
    
    public abstract void iY();
    
    public abstract boolean iZ();
    
    public abstract int ja();
    
    public abstract Flag[] jb();
    
    public abstract Message[] jc();
    
    @Override
    public String toString() {
        return this.getName();
    }
}
