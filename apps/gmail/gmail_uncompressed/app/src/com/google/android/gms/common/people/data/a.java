package com.google.android.gms.common.people.data;

import com.google.android.gms.common.internal.*;
import java.util.*;

public final class a
{
    public static final Audience bFG;
    private List<AudienceMember> bFC;
    private int bFD;
    private boolean bFF;
    
    static {
        bFG = new a().Lq();
    }
    
    public a() {
        this.bFC = Collections.emptyList();
        this.bFD = 0;
        this.bFF = false;
    }
    
    public final a D(final Collection<AudienceMember> collection) {
        this.bFC = Collections.unmodifiableList((List<? extends AudienceMember>)new ArrayList<AudienceMember>(G.f(collection, "Audience members must not be null.")));
        return this;
    }
    
    public final Audience Lq() {
        return new Audience(this.bFC, this.bFD, this.bFF);
    }
}
