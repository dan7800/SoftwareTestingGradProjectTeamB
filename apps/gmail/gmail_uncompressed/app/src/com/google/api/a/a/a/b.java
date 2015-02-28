package com.google.api.a.a.a;

import com.google.api.client.json.*;
import java.util.*;
import com.google.api.client.util.*;

public final class b extends com.google.api.client.json.b
{
    @x
    private List<String> fileIds;
    @x
    private String kind;
    @x
    private List<String> recipientEmailAddresses;
    @x
    private String role;
    
    private b u(final String s, final Object o) {
        return (b)super.h(s, o);
    }
    
    public final b V(final List<String> fileIds) {
        this.fileIds = fileIds;
        return this;
    }
    
    public final b W(final List<String> recipientEmailAddresses) {
        this.recipientEmailAddresses = recipientEmailAddresses;
        return this;
    }
    
    public final b hI(final String role) {
        this.role = role;
        return this;
    }
}
