package com.google.api.a.a.a;

import com.google.api.client.json.*;
import java.util.*;
import com.google.api.client.util.*;

public final class d extends b
{
    @x
    private e addCollaboratorsInfo;
    @x
    private List<String> allowedRoles;
    @x
    private List<String> fixableFileIds;
    @x
    private List<String> fixableRecipientEmailAddresses;
    @x
    private Boolean fixesEverything;
    @x
    private f increaseDomainVisibilityInfo;
    @x
    private String optionType;
    
    private d w(final String s, final Object o) {
        return (d)super.h(s, o);
    }
    
    public final String Dq() {
        return this.optionType;
    }
    
    public final List<String> Dr() {
        return this.fixableRecipientEmailAddresses;
    }
    
    public final List<String> Ds() {
        return this.fixableFileIds;
    }
    
    public final List<String> Dt() {
        return this.allowedRoles;
    }
    
    public final e YG() {
        return this.addCollaboratorsInfo;
    }
    
    public final Boolean YH() {
        return this.fixesEverything;
    }
    
    public final f YI() {
        return this.increaseDomainVisibilityInfo;
    }
}
