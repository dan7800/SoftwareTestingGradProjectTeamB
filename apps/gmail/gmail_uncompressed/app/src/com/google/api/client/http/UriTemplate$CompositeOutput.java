package com.google.api.client.http;

import com.google.api.client.a.a.a.a.a.*;

enum UriTemplate$CompositeOutput
{
    cxL('+', "", ",", false, true), 
    cxM('#', "#", ",", false, true), 
    cxN('.', ".", ".", false, false), 
    cxO('/', "/", "/", false, false), 
    cxP(';', ";", ";", true, false), 
    cxQ('?', "?", "&", true, false), 
    cxR('&', "&", "&", true, false), 
    cxS((Character)null, "", ",", false, false);
    
    private final String explodeJoiner;
    private final String outputPrefix;
    private final Character propertyPrefix;
    private final boolean requiresVarAssignment;
    private final boolean reservedExpansion;
    
    private UriTemplate$CompositeOutput(final Character propertyPrefix, final String s2, final String s3, final boolean requiresVarAssignment, final boolean reservedExpansion) {
        this.propertyPrefix = propertyPrefix;
        this.outputPrefix = a.ak(s2);
        this.explodeJoiner = a.ak(s3);
        this.requiresVarAssignment = requiresVarAssignment;
        this.reservedExpansion = reservedExpansion;
        if (propertyPrefix != null) {
            UriTemplate.cxK.put(propertyPrefix, this);
        }
    }
    
    final String XY() {
        return this.outputPrefix;
    }
    
    final String XZ() {
        return this.explodeJoiner;
    }
    
    final boolean Ya() {
        return this.requiresVarAssignment;
    }
    
    final int Yb() {
        if (this.propertyPrefix == null) {
            return 0;
        }
        return 1;
    }
    
    final String ht(final String s) {
        if (this.reservedExpansion) {
            return com.google.api.client.util.a.a.hA(s);
        }
        return com.google.api.client.util.a.a.hy(s);
    }
}
