package com.google.api.a.a.a;

import com.google.api.client.json.*;
import com.google.api.client.util.*;

public final class a extends b
{
    @x
    private String fileId;
    @x
    private String kind;
    @x
    private String messageId;
    @x
    private String partId;
    
    private a t(final String s, final Object o) {
        return (a)super.h(s, o);
    }
    
    public final a hG(final String messageId) {
        this.messageId = messageId;
        return this;
    }
    
    public final a hH(final String partId) {
        this.partId = partId;
        return this;
    }
}
