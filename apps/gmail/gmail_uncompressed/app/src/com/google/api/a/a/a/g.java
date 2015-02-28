package com.google.api.a.a.a;

import com.google.api.client.json.*;
import java.util.*;
import com.google.api.client.util.*;

public final class g extends b
{
    @x
    private List<String> fileIds;
    @x
    private String fixOptionType;
    @x
    private String kind;
    @x
    private List<String> recipientEmailAddresses;
    @x
    private String role;
    
    private g z(final String s, final Object o) {
        return (g)super.h(s, o);
    }
    
    public final g X(final List<String> fileIds) {
        this.fileIds = fileIds;
        return this;
    }
    
    public final g Y(final List<String> recipientEmailAddresses) {
        this.recipientEmailAddresses = recipientEmailAddresses;
        return this;
    }
    
    public final g hJ(final String fixOptionType) {
        this.fixOptionType = fixOptionType;
        return this;
    }
    
    public final g hK(final String role) {
        this.role = role;
        return this;
    }
}
